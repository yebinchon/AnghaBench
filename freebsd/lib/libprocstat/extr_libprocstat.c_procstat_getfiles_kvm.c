
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vmspace ;
typedef int vmentry ;
typedef int * vm_object_t ;
typedef TYPE_5__* vm_map_t ;
typedef int * vm_map_entry_t ;
typedef void vnode ;
struct TYPE_9__ {int * vm_object; } ;
struct TYPE_6__ {int * next; } ;
struct TYPE_10__ {TYPE_1__ header; } ;
struct vmspace {void* fd_rdir; void* fd_cdir; void* fd_jdir; int fd_lastfile; int f_type; int eflags; scalar_t__ type; int protection; void* handle; int * backing_object; TYPE_4__ object; int * next; TYPE_5__ vm_map; int f_flag; void* f_data; void* f_vnode; scalar_t__ fd_ofiles; } ;
struct vm_object {void* fd_rdir; void* fd_cdir; void* fd_jdir; int fd_lastfile; int f_type; int eflags; scalar_t__ type; int protection; void* handle; int * backing_object; TYPE_4__ object; int * next; TYPE_5__ vm_map; int f_flag; void* f_data; void* f_vnode; scalar_t__ fd_ofiles; } ;
struct vm_map_entry {void* fd_rdir; void* fd_cdir; void* fd_jdir; int fd_lastfile; int f_type; int eflags; scalar_t__ type; int protection; void* handle; int * backing_object; TYPE_4__ object; int * next; TYPE_5__ vm_map; int f_flag; void* f_data; void* f_vnode; scalar_t__ fd_ofiles; } ;
struct procstat {int * kd; } ;
struct kinfo_proc {void* ki_tracep; void* ki_textvp; TYPE_3__* ki_vmspace; int * ki_fd; } ;
struct filestat_list {int dummy; } ;
struct filestat {int dummy; } ;
struct filedesc {void* fd_rdir; void* fd_cdir; void* fd_jdir; int fd_lastfile; int f_type; int eflags; scalar_t__ type; int protection; void* handle; int * backing_object; TYPE_4__ object; int * next; TYPE_5__ vm_map; int f_flag; void* f_data; void* f_vnode; scalar_t__ fd_ofiles; } ;
struct file {void* fd_rdir; void* fd_cdir; void* fd_jdir; int fd_lastfile; int f_type; int eflags; scalar_t__ type; int protection; void* handle; int * backing_object; TYPE_4__ object; int * next; TYPE_5__ vm_map; int f_flag; void* f_data; void* f_vnode; scalar_t__ fd_ofiles; } ;
typedef int object ;
typedef int kvm_t ;
typedef int filed ;
struct TYPE_7__ {int header; } ;
struct TYPE_8__ {TYPE_2__ vm_map; } ;
 int MAP_ENTRY_COW ;
 int MAP_ENTRY_IS_SUB_MAP ;
 scalar_t__ OBJT_VNODE ;
 int PS_FST_FFLAG_READ ;
 int PS_FST_FFLAG_WRITE ;
 int PS_FST_TYPE_DEV ;
 int PS_FST_TYPE_FIFO ;
 int PS_FST_TYPE_PIPE ;
 int PS_FST_TYPE_PROCDESC ;
 int PS_FST_TYPE_PTS ;
 int PS_FST_TYPE_SEM ;
 int PS_FST_TYPE_SHM ;
 int PS_FST_TYPE_SOCKET ;
 int PS_FST_TYPE_VNODE ;
 int PS_FST_UFLAG_CDIR ;
 int PS_FST_UFLAG_CTTY ;
 int PS_FST_UFLAG_JAIL ;
 int PS_FST_UFLAG_MMAP ;
 int PS_FST_UFLAG_RDIR ;
 int PS_FST_UFLAG_TEXT ;
 int PS_FST_UFLAG_TRACE ;
 int STAILQ_INIT (struct filestat_list*) ;
 int STAILQ_INSERT_TAIL (struct filestat_list*,struct filestat*,int ) ;
 int VM_PROT_READ ;
 int VM_PROT_WRITE ;
 int assert (struct procstat*) ;
 struct filestat* filestat_new_entry (void*,int,int,int,int ,int ,int ,int *,int *) ;
 int free (struct vmspace**) ;
 void* getctty (int *,struct kinfo_proc*) ;
 int kvm_read_all (int *,unsigned long,...) ;
 void* malloc (unsigned int) ;
 int next ;
 int to_filestat_flags (int ) ;
 int warn (char*,unsigned int) ;
 int warnx (char*,void*,...) ;

__attribute__((used)) static struct filestat_list *
procstat_getfiles_kvm(struct procstat *procstat, struct kinfo_proc *kp, int mmapped)
{
 struct file file;
 struct filedesc filed;
 struct vm_map_entry vmentry;
 struct vm_object object;
 struct vmspace vmspace;
 vm_map_entry_t entryp;
 vm_map_t map;
 vm_object_t objp;
 struct vnode *vp;
 struct file **ofiles;
 struct filestat *entry;
 struct filestat_list *head;
 kvm_t *kd;
 void *data;
 int i, fflags;
 int prot, type;
 unsigned int nfiles;

 assert(procstat);
 kd = procstat->kd;
 if (kd == ((void*)0))
  return (((void*)0));
 if (kp->ki_fd == ((void*)0))
  return (((void*)0));
 if (!kvm_read_all(kd, (unsigned long)kp->ki_fd, &filed,
     sizeof(filed))) {
  warnx("can't read filedesc at %p", (void *)kp->ki_fd);
  return (((void*)0));
 }




 head = malloc(sizeof(*head));
 if (head == ((void*)0))
  return (((void*)0));
 STAILQ_INIT(head);


 if (filed.fd_rdir) {
  entry = filestat_new_entry(filed.fd_rdir, PS_FST_TYPE_VNODE, -1,
      PS_FST_FFLAG_READ, PS_FST_UFLAG_RDIR, 0, 0, ((void*)0), ((void*)0));
  if (entry != ((void*)0))
   STAILQ_INSERT_TAIL(head, entry, next);
 }

 if (filed.fd_cdir) {
  entry = filestat_new_entry(filed.fd_cdir, PS_FST_TYPE_VNODE, -1,
      PS_FST_FFLAG_READ, PS_FST_UFLAG_CDIR, 0, 0, ((void*)0), ((void*)0));
  if (entry != ((void*)0))
   STAILQ_INSERT_TAIL(head, entry, next);
 }

 if (filed.fd_jdir) {
  entry = filestat_new_entry(filed.fd_jdir, PS_FST_TYPE_VNODE, -1,
      PS_FST_FFLAG_READ, PS_FST_UFLAG_JAIL, 0, 0, ((void*)0), ((void*)0));
  if (entry != ((void*)0))
   STAILQ_INSERT_TAIL(head, entry, next);
 }

 if (kp->ki_tracep) {
  entry = filestat_new_entry(kp->ki_tracep, PS_FST_TYPE_VNODE, -1,
      PS_FST_FFLAG_READ | PS_FST_FFLAG_WRITE,
      PS_FST_UFLAG_TRACE, 0, 0, ((void*)0), ((void*)0));
  if (entry != ((void*)0))
   STAILQ_INSERT_TAIL(head, entry, next);
 }

 if (kp->ki_textvp) {
  entry = filestat_new_entry(kp->ki_textvp, PS_FST_TYPE_VNODE, -1,
      PS_FST_FFLAG_READ, PS_FST_UFLAG_TEXT, 0, 0, ((void*)0), ((void*)0));
  if (entry != ((void*)0))
   STAILQ_INSERT_TAIL(head, entry, next);
 }

 if ((vp = getctty(kd, kp)) != ((void*)0)) {
  entry = filestat_new_entry(vp, PS_FST_TYPE_VNODE, -1,
      PS_FST_FFLAG_READ | PS_FST_FFLAG_WRITE,
      PS_FST_UFLAG_CTTY, 0, 0, ((void*)0), ((void*)0));
  if (entry != ((void*)0))
   STAILQ_INSERT_TAIL(head, entry, next);
 }

 nfiles = filed.fd_lastfile + 1;
 ofiles = malloc(nfiles * sizeof(struct file *));
 if (ofiles == ((void*)0)) {
  warn("malloc(%zu)", nfiles * sizeof(struct file *));
  goto do_mmapped;
 }
 if (!kvm_read_all(kd, (unsigned long)filed.fd_ofiles, ofiles,
     nfiles * sizeof(struct file *))) {
  warnx("cannot read file structures at %p",
      (void *)filed.fd_ofiles);
  free(ofiles);
  goto do_mmapped;
 }
 for (i = 0; i <= filed.fd_lastfile; i++) {
  if (ofiles[i] == ((void*)0))
   continue;
  if (!kvm_read_all(kd, (unsigned long)ofiles[i], &file,
      sizeof(struct file))) {
   warnx("can't read file %d at %p", i,
       (void *)ofiles[i]);
   continue;
  }
  switch (file.f_type) {
  case 128:
   type = PS_FST_TYPE_VNODE;
   data = file.f_vnode;
   break;
  case 129:
   type = PS_FST_TYPE_SOCKET;
   data = file.f_data;
   break;
  case 134:
   type = PS_FST_TYPE_PIPE;
   data = file.f_data;
   break;
  case 135:
   type = PS_FST_TYPE_FIFO;
   data = file.f_vnode;
   break;

  case 132:
   type = PS_FST_TYPE_PTS;
   data = file.f_data;
   break;

  case 131:
   type = PS_FST_TYPE_SEM;
   data = file.f_data;
   break;
  case 130:
   type = PS_FST_TYPE_SHM;
   data = file.f_data;
   break;
  case 133:
   type = PS_FST_TYPE_PROCDESC;
   data = file.f_data;
   break;
  case 136:
   type = PS_FST_TYPE_DEV;
   data = file.f_data;
   break;
  default:
   continue;
  }

  entry = filestat_new_entry(data, type, i,
      to_filestat_flags(file.f_flag), 0, 0, 0, ((void*)0), ((void*)0));
  if (entry != ((void*)0))
   STAILQ_INSERT_TAIL(head, entry, next);
 }
 free(ofiles);

do_mmapped:




 if (mmapped) {
  if (!kvm_read_all(kd, (unsigned long)kp->ki_vmspace, &vmspace,
      sizeof(vmspace))) {
   warnx("can't read vmspace at %p",
       (void *)kp->ki_vmspace);
   goto exit;
  }
  map = &vmspace.vm_map;

  for (entryp = map->header.next;
      entryp != &kp->ki_vmspace->vm_map.header;
      entryp = vmentry.next) {
   if (!kvm_read_all(kd, (unsigned long)entryp, &vmentry,
       sizeof(vmentry))) {
    warnx("can't read vm_map_entry at %p",
        (void *)entryp);
    continue;
   }
   if (vmentry.eflags & MAP_ENTRY_IS_SUB_MAP)
    continue;
   if ((objp = vmentry.object.vm_object) == ((void*)0))
    continue;
   for (; objp; objp = object.backing_object) {
    if (!kvm_read_all(kd, (unsigned long)objp,
        &object, sizeof(object))) {
     warnx("can't read vm_object at %p",
         (void *)objp);
     break;
    }
   }


   if (object.type != OBJT_VNODE)
    continue;

   prot = vmentry.protection;
   fflags = 0;
   if (prot & VM_PROT_READ)
    fflags = PS_FST_FFLAG_READ;
   if ((vmentry.eflags & MAP_ENTRY_COW) == 0 &&
       prot & VM_PROT_WRITE)
    fflags |= PS_FST_FFLAG_WRITE;




   entry = filestat_new_entry(object.handle,
       PS_FST_TYPE_VNODE, -1, fflags,
       PS_FST_UFLAG_MMAP, 0, 0, ((void*)0), ((void*)0));
   if (entry != ((void*)0))
    STAILQ_INSERT_TAIL(head, entry, next);
  }
 }
exit:
 return (head);
}
