
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int refcount; int linkmap; int dl_refcount; int * path; } ;
typedef int RtldLockState ;
typedef TYPE_1__ Obj_Entry ;


 int GDB_STATE (int ,int *) ;
 int LD_UTRACE (int ,void*,int *,int ,int ,int *) ;
 int RT_CONSISTENT ;
 int RT_DELETE ;
 int UTRACE_DLCLOSE_START ;
 int UTRACE_DLCLOSE_STOP ;
 TYPE_1__* dlcheck (void*) ;
 int list_fini ;
 int objlist_call_fini (int *,TYPE_1__*,int *) ;
 int unload_object (TYPE_1__*,int *) ;
 int unref_dag (TYPE_1__*) ;

__attribute__((used)) static int
dlclose_locked(void *handle, RtldLockState *lockstate)
{
    Obj_Entry *root;

    root = dlcheck(handle);
    if (root == ((void*)0))
 return -1;
    LD_UTRACE(UTRACE_DLCLOSE_START, handle, ((void*)0), 0, root->dl_refcount,
 root->path);


    root->dl_refcount--;

    if (root->refcount == 1) {




 objlist_call_fini(&list_fini, root, lockstate);

 unref_dag(root);


 GDB_STATE(RT_DELETE,&root->linkmap);
 unload_object(root, lockstate);
 GDB_STATE(RT_CONSISTENT,((void*)0));
    } else
 unref_dag(root);

    LD_UTRACE(UTRACE_DLCLOSE_STOP, handle, ((void*)0), 0, 0, ((void*)0));
    return 0;
}
