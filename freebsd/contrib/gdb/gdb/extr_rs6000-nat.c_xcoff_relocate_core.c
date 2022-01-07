
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct vmap {scalar_t__ objfile; int dend; int dstart; int bfd; int tend; int tstart; } ;
struct target_ops {struct section_table* to_sections_end; } ;
struct section_table {int endaddr; int addr; int bfd; void* the_bfd_section; } ;
struct cleanup {int dummy; } ;
struct bfd_section {int dummy; } ;
struct TYPE_9__ {int ldinfo_fd; } ;
struct TYPE_8__ {int ldinfo_fd; } ;
struct TYPE_10__ {TYPE_2__ l32; TYPE_1__ l64; } ;
typedef TYPE_3__ LdInfo ;


 int ARCH64 () ;
 scalar_t__ LDI_FILENAME (TYPE_3__*,int) ;
 scalar_t__ LDI_NEXT (TYPE_3__*,int) ;
 struct vmap* add_vmap (TYPE_3__*) ;
 int bfd_errmsg (int ) ;
 int bfd_get_error () ;
 void* bfd_get_section_by_name (int ,char*) ;
 scalar_t__ bfd_get_section_contents (int ,struct bfd_section*,char*,int,int) ;
 int breakpoint_re_set () ;
 int core_bfd ;
 int do_cleanups (struct cleanup*) ;
 int fprintf_filtered (int ,char*,int ) ;
 int free_current_contents ;
 int gdb_stderr ;
 struct cleanup* make_cleanup (int ,char**) ;
 int target_new_objfile_hook (scalar_t__) ;
 int target_resize_to_sections (struct target_ops*,int) ;
 struct vmap* vmap ;
 int vmap_exec () ;
 int vmap_secs (struct vmap*,TYPE_3__*,int) ;
 int vmap_symtab (struct vmap*) ;
 char* xmalloc (int) ;
 char* xrealloc (char*,int) ;

void
xcoff_relocate_core (struct target_ops *target)
{
  struct bfd_section *ldinfo_sec;
  int offset = 0;
  LdInfo *ldi;
  struct vmap *vp;
  int arch64 = ARCH64 ();


  int nonfilesz = (int)LDI_FILENAME ((LdInfo *)0, arch64);


  int buffer_size = nonfilesz;
  char *buffer = xmalloc (buffer_size);
  struct cleanup *old = make_cleanup (free_current_contents, &buffer);

  ldinfo_sec = bfd_get_section_by_name (core_bfd, ".ldinfo");
  if (ldinfo_sec == ((void*)0))
    {
    bfd_err:
      fprintf_filtered (gdb_stderr, "Couldn't get ldinfo from core file: %s\n",
   bfd_errmsg (bfd_get_error ()));
      do_cleanups (old);
      return;
    }
  do
    {
      int i;
      int names_found = 0;


      if (bfd_get_section_contents (core_bfd, ldinfo_sec, buffer,
        offset, nonfilesz) == 0)
 goto bfd_err;


      i = nonfilesz;
      do
 {
   if (i == buffer_size)
     {
       buffer_size *= 2;
       buffer = xrealloc (buffer, buffer_size);
     }
   if (bfd_get_section_contents (core_bfd, ldinfo_sec, &buffer[i],
     offset + i, 1) == 0)
     goto bfd_err;
   if (buffer[i++] == '\0')
     ++names_found;
 }
      while (names_found < 2);

      ldi = (LdInfo *) buffer;


      if (arch64)
 ldi->l64.ldinfo_fd = -1;
      else
 ldi->l32.ldinfo_fd = -1;


      if (offset == 0 && vmap != ((void*)0))
 vp = vmap;
      else
 vp = add_vmap (ldi);


      offset += LDI_NEXT (ldi, arch64);
      if (vp == ((void*)0))
 continue;

      vmap_secs (vp, ldi, arch64);



      if (vp != vmap)
 {
   struct section_table *stp;

   target_resize_to_sections (target, 2);
   stp = target->to_sections_end - 2;

   stp->bfd = vp->bfd;
   stp->the_bfd_section = bfd_get_section_by_name (stp->bfd, ".text");
   stp->addr = vp->tstart;
   stp->endaddr = vp->tend;
   stp++;

   stp->bfd = vp->bfd;
   stp->the_bfd_section = bfd_get_section_by_name (stp->bfd, ".data");
   stp->addr = vp->dstart;
   stp->endaddr = vp->dend;
 }

      vmap_symtab (vp);

      if (target_new_objfile_hook && vp != vmap && vp->objfile)
 target_new_objfile_hook (vp->objfile);
    }
  while (LDI_NEXT (ldi, arch64) != 0);
  vmap_exec ();
  breakpoint_re_set ();
  do_cleanups (old);
}
