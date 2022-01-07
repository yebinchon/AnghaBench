
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread_info {int dummy; } ;
struct kthr {int tid; } ;
struct cleanup {int dummy; } ;
typedef int kvm_t ;
struct TYPE_2__ {int tid; } ;


 int O_RDONLY ;
 int O_RDWR ;
 struct thread_info* add_thread (int ) ;
 int bfd_get_filename (int ) ;
 char* concat (int ,char*,char*,int *) ;
 TYPE_1__* curkthr ;
 int current_directory ;
 int discard_cleanups (struct cleanup*) ;
 int error (char*,...) ;
 int exec_bfd ;
 int flush_cached_frames () ;
 int frame_relative_level (int ) ;
 int get_current_frame () ;
 int get_selected_frame () ;
 int inferior_ptid ;
 int init_thread_list () ;
 int kgdb_core_cleanup (char*) ;
 int kgdb_dmesg () ;
 int kgdb_resolve_symbol ;
 struct kthr* kgdb_thr_init () ;
 struct kthr* kgdb_thr_next (struct kthr*) ;
 int kgdb_trgt_ops ;
 int kld_init () ;
 int * kvm ;
 int kvm_err ;
 int * kvm_open2 (int ,char*,int ,int ,int ) ;
 struct cleanup* make_cleanup (int (*) (char*),char*) ;
 int pid_to_ptid (int ) ;
 int print_stack_frame (int ,int ,int) ;
 int push_target (int *) ;
 int select_frame (int ) ;
 int target_longname ;
 int target_preopen (int) ;
 char* tilde_expand (char*) ;
 int unpush_target (int *) ;
 char* vmcore ;
 int warning (char*,int ) ;
 scalar_t__ write_files ;
 int xfree (char*) ;

__attribute__((used)) static void
kgdb_trgt_open(char *filename, int from_tty)
{
 struct cleanup *old_chain;
 struct thread_info *ti;
 struct kthr *kt;
 kvm_t *nkvm;
 char *temp;
 int ontop;

 target_preopen (from_tty);
 if (!filename)
  error ("No vmcore file specified.");
 if (!exec_bfd)
  error ("Can't open a vmcore without a kernel");

 filename = tilde_expand (filename);
 if (filename[0] != '/') {
  temp = concat (current_directory, "/", filename, ((void*)0));
  xfree(filename);
  filename = temp;
 }

 old_chain = make_cleanup (xfree, filename);

 nkvm = kvm_open2(bfd_get_filename(exec_bfd), filename,
     write_files ? O_RDWR : O_RDONLY, kvm_err, kgdb_resolve_symbol);
 if (nkvm == ((void*)0))
  error ("Failed to open vmcore: %s", kvm_err);


 discard_cleanups(old_chain);
 unpush_target(&kgdb_trgt_ops);

 kvm = nkvm;
 vmcore = filename;
 old_chain = make_cleanup(kgdb_core_cleanup, ((void*)0));

 ontop = !push_target (&kgdb_trgt_ops);
 discard_cleanups (old_chain);

 kgdb_dmesg();

 init_thread_list();
 kt = kgdb_thr_init();
 while (kt != ((void*)0)) {
  ti = add_thread(pid_to_ptid(kt->tid));
  kt = kgdb_thr_next(kt);
 }
 if (curkthr != 0)
  inferior_ptid = pid_to_ptid(curkthr->tid);

 if (ontop) {

  kld_init();
  flush_cached_frames();
  select_frame (get_current_frame());
  print_stack_frame(get_selected_frame(),
      frame_relative_level(get_selected_frame()), 1);
 } else
  warning(
 "you won't be able to access this vmcore until you terminate\nyour %s; do ``info files''", target_longname);

}
