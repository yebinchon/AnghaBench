#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vmspace ;
typedef  int /*<<< orphan*/  vmentry ;
typedef  int /*<<< orphan*/ * vm_object_t ;
typedef  TYPE_5__* vm_map_t ;
typedef  int /*<<< orphan*/ * vm_map_entry_t ;
typedef  void vnode ;
struct TYPE_9__ {int /*<<< orphan*/ * vm_object; } ;
struct TYPE_6__ {int /*<<< orphan*/ * next; } ;
struct TYPE_10__ {TYPE_1__ header; } ;
struct vmspace {void* fd_rdir; void* fd_cdir; void* fd_jdir; int fd_lastfile; int f_type; int eflags; scalar_t__ type; int protection; void* handle; int /*<<< orphan*/ * backing_object; TYPE_4__ object; int /*<<< orphan*/ * next; TYPE_5__ vm_map; int /*<<< orphan*/  f_flag; void* f_data; void* f_vnode; scalar_t__ fd_ofiles; } ;
struct vm_object {void* fd_rdir; void* fd_cdir; void* fd_jdir; int fd_lastfile; int f_type; int eflags; scalar_t__ type; int protection; void* handle; int /*<<< orphan*/ * backing_object; TYPE_4__ object; int /*<<< orphan*/ * next; TYPE_5__ vm_map; int /*<<< orphan*/  f_flag; void* f_data; void* f_vnode; scalar_t__ fd_ofiles; } ;
struct vm_map_entry {void* fd_rdir; void* fd_cdir; void* fd_jdir; int fd_lastfile; int f_type; int eflags; scalar_t__ type; int protection; void* handle; int /*<<< orphan*/ * backing_object; TYPE_4__ object; int /*<<< orphan*/ * next; TYPE_5__ vm_map; int /*<<< orphan*/  f_flag; void* f_data; void* f_vnode; scalar_t__ fd_ofiles; } ;
struct procstat {int /*<<< orphan*/ * kd; } ;
struct kinfo_proc {void* ki_tracep; void* ki_textvp; TYPE_3__* ki_vmspace; int /*<<< orphan*/ * ki_fd; } ;
struct filestat_list {int dummy; } ;
struct filestat {int dummy; } ;
struct filedesc {void* fd_rdir; void* fd_cdir; void* fd_jdir; int fd_lastfile; int f_type; int eflags; scalar_t__ type; int protection; void* handle; int /*<<< orphan*/ * backing_object; TYPE_4__ object; int /*<<< orphan*/ * next; TYPE_5__ vm_map; int /*<<< orphan*/  f_flag; void* f_data; void* f_vnode; scalar_t__ fd_ofiles; } ;
struct file {void* fd_rdir; void* fd_cdir; void* fd_jdir; int fd_lastfile; int f_type; int eflags; scalar_t__ type; int protection; void* handle; int /*<<< orphan*/ * backing_object; TYPE_4__ object; int /*<<< orphan*/ * next; TYPE_5__ vm_map; int /*<<< orphan*/  f_flag; void* f_data; void* f_vnode; scalar_t__ fd_ofiles; } ;
typedef  int /*<<< orphan*/  object ;
typedef  int /*<<< orphan*/  kvm_t ;
typedef  int /*<<< orphan*/  filed ;
struct TYPE_7__ {int /*<<< orphan*/  header; } ;
struct TYPE_8__ {TYPE_2__ vm_map; } ;

/* Variables and functions */
#define  DTYPE_DEV 136 
#define  DTYPE_FIFO 135 
#define  DTYPE_PIPE 134 
#define  DTYPE_PROCDESC 133 
#define  DTYPE_PTS 132 
#define  DTYPE_SEM 131 
#define  DTYPE_SHM 130 
#define  DTYPE_SOCKET 129 
#define  DTYPE_VNODE 128 
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
 int /*<<< orphan*/  PS_FST_UFLAG_CDIR ; 
 int /*<<< orphan*/  PS_FST_UFLAG_CTTY ; 
 int /*<<< orphan*/  PS_FST_UFLAG_JAIL ; 
 int /*<<< orphan*/  PS_FST_UFLAG_MMAP ; 
 int /*<<< orphan*/  PS_FST_UFLAG_RDIR ; 
 int /*<<< orphan*/  PS_FST_UFLAG_TEXT ; 
 int /*<<< orphan*/  PS_FST_UFLAG_TRACE ; 
 int /*<<< orphan*/  FUNC0 (struct filestat_list*) ; 
 int /*<<< orphan*/  FUNC1 (struct filestat_list*,struct filestat*,int /*<<< orphan*/ ) ; 
 int VM_PROT_READ ; 
 int VM_PROT_WRITE ; 
 int /*<<< orphan*/  FUNC2 (struct procstat*) ; 
 struct filestat* FUNC3 (void*,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct vmspace**) ; 
 void* FUNC5 (int /*<<< orphan*/ *,struct kinfo_proc*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long,...) ; 
 void* FUNC7 (unsigned int) ; 
 int /*<<< orphan*/  next ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (char*,void*,...) ; 

__attribute__((used)) static struct filestat_list *
FUNC11(struct procstat *procstat, struct kinfo_proc *kp, int mmapped)
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

	FUNC2(procstat);
	kd = procstat->kd;
	if (kd == NULL)
		return (NULL);
	if (kp->ki_fd == NULL)
		return (NULL);
	if (!FUNC6(kd, (unsigned long)kp->ki_fd, &filed,
	    sizeof(filed))) {
		FUNC10("can't read filedesc at %p", (void *)kp->ki_fd);
		return (NULL);
	}

	/*
	 * Allocate list head.
	 */
	head = FUNC7(sizeof(*head));
	if (head == NULL)
		return (NULL);
	FUNC0(head);

	/* root directory vnode, if one. */
	if (filed.fd_rdir) {
		entry = FUNC3(filed.fd_rdir, PS_FST_TYPE_VNODE, -1,
		    PS_FST_FFLAG_READ, PS_FST_UFLAG_RDIR, 0, 0, NULL, NULL);
		if (entry != NULL)
			FUNC1(head, entry, next);
	}
	/* current working directory vnode. */
	if (filed.fd_cdir) {
		entry = FUNC3(filed.fd_cdir, PS_FST_TYPE_VNODE, -1,
		    PS_FST_FFLAG_READ, PS_FST_UFLAG_CDIR, 0, 0, NULL, NULL);
		if (entry != NULL)
			FUNC1(head, entry, next);
	}
	/* jail root, if any. */
	if (filed.fd_jdir) {
		entry = FUNC3(filed.fd_jdir, PS_FST_TYPE_VNODE, -1,
		    PS_FST_FFLAG_READ, PS_FST_UFLAG_JAIL, 0, 0, NULL, NULL);
		if (entry != NULL)
			FUNC1(head, entry, next);
	}
	/* ktrace vnode, if one */
	if (kp->ki_tracep) {
		entry = FUNC3(kp->ki_tracep, PS_FST_TYPE_VNODE, -1,
		    PS_FST_FFLAG_READ | PS_FST_FFLAG_WRITE,
		    PS_FST_UFLAG_TRACE, 0, 0, NULL, NULL);
		if (entry != NULL)
			FUNC1(head, entry, next);
	}
	/* text vnode, if one */
	if (kp->ki_textvp) {
		entry = FUNC3(kp->ki_textvp, PS_FST_TYPE_VNODE, -1,
		    PS_FST_FFLAG_READ, PS_FST_UFLAG_TEXT, 0, 0, NULL, NULL);
		if (entry != NULL)
			FUNC1(head, entry, next);
	}
	/* Controlling terminal. */
	if ((vp = FUNC5(kd, kp)) != NULL) {
		entry = FUNC3(vp, PS_FST_TYPE_VNODE, -1,
		    PS_FST_FFLAG_READ | PS_FST_FFLAG_WRITE,
		    PS_FST_UFLAG_CTTY, 0, 0, NULL, NULL);
		if (entry != NULL)
			FUNC1(head, entry, next);
	}

	nfiles = filed.fd_lastfile + 1;
	ofiles = FUNC7(nfiles * sizeof(struct file *));
	if (ofiles == NULL) {
		FUNC9("malloc(%zu)", nfiles * sizeof(struct file *));
		goto do_mmapped;
	}
	if (!FUNC6(kd, (unsigned long)filed.fd_ofiles, ofiles,
	    nfiles * sizeof(struct file *))) {
		FUNC10("cannot read file structures at %p",
		    (void *)filed.fd_ofiles);
		FUNC4(ofiles);
		goto do_mmapped;
	}
	for (i = 0; i <= filed.fd_lastfile; i++) {
		if (ofiles[i] == NULL)
			continue;
		if (!FUNC6(kd, (unsigned long)ofiles[i], &file,
		    sizeof(struct file))) {
			FUNC10("can't read file %d at %p", i,
			    (void *)ofiles[i]);
			continue;
		}
		switch (file.f_type) {
		case DTYPE_VNODE:
			type = PS_FST_TYPE_VNODE;
			data = file.f_vnode;
			break;
		case DTYPE_SOCKET:
			type = PS_FST_TYPE_SOCKET;
			data = file.f_data;
			break;
		case DTYPE_PIPE:
			type = PS_FST_TYPE_PIPE;
			data = file.f_data;
			break;
		case DTYPE_FIFO:
			type = PS_FST_TYPE_FIFO;
			data = file.f_vnode;
			break;
#ifdef DTYPE_PTS
		case DTYPE_PTS:
			type = PS_FST_TYPE_PTS;
			data = file.f_data;
			break;
#endif
		case DTYPE_SEM:
			type = PS_FST_TYPE_SEM;
			data = file.f_data;
			break;
		case DTYPE_SHM:
			type = PS_FST_TYPE_SHM;
			data = file.f_data;
			break;
		case DTYPE_PROCDESC:
			type = PS_FST_TYPE_PROCDESC;
			data = file.f_data;
			break;
		case DTYPE_DEV:
			type = PS_FST_TYPE_DEV;
			data = file.f_data;
			break;
		default:
			continue;
		}
		/* XXXRW: No capability rights support for kvm yet. */
		entry = FUNC3(data, type, i,
		    FUNC8(file.f_flag), 0, 0, 0, NULL, NULL);
		if (entry != NULL)
			FUNC1(head, entry, next);
	}
	FUNC4(ofiles);

do_mmapped:

	/*
	 * Process mmapped files if requested.
	 */
	if (mmapped) {
		if (!FUNC6(kd, (unsigned long)kp->ki_vmspace, &vmspace,
		    sizeof(vmspace))) {
			FUNC10("can't read vmspace at %p",
			    (void *)kp->ki_vmspace);
			goto exit;
		}
		map = &vmspace.vm_map;

		for (entryp = map->header.next;
		    entryp != &kp->ki_vmspace->vm_map.header;
		    entryp = vmentry.next) {
			if (!FUNC6(kd, (unsigned long)entryp, &vmentry,
			    sizeof(vmentry))) {
				FUNC10("can't read vm_map_entry at %p",
				    (void *)entryp);
				continue;
			}
			if (vmentry.eflags & MAP_ENTRY_IS_SUB_MAP)
				continue;
			if ((objp = vmentry.object.vm_object) == NULL)
				continue;
			for (; objp; objp = object.backing_object) {
				if (!FUNC6(kd, (unsigned long)objp,
				    &object, sizeof(object))) {
					FUNC10("can't read vm_object at %p",
					    (void *)objp);
					break;
				}
			}

			/* We want only vnode objects. */
			if (object.type != OBJT_VNODE)
				continue;

			prot = vmentry.protection;
			fflags = 0;
			if (prot & VM_PROT_READ)
				fflags = PS_FST_FFLAG_READ;
			if ((vmentry.eflags & MAP_ENTRY_COW) == 0 &&
			    prot & VM_PROT_WRITE)
				fflags |= PS_FST_FFLAG_WRITE;

			/*
			 * Create filestat entry.
			 */
			entry = FUNC3(object.handle,
			    PS_FST_TYPE_VNODE, -1, fflags,
			    PS_FST_UFLAG_MMAP, 0, 0, NULL, NULL);
			if (entry != NULL)
				FUNC1(head, entry, next);
		}
	}
exit:
	return (head);
}