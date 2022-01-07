
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uid_t ;
typedef void* pid_t ;
typedef TYPE_1__* heim_icred ;
typedef int gid_t ;
struct TYPE_4__ {void* session; void* pid; int gid; int uid; } ;


 int ENOMEM ;
 TYPE_1__* calloc (int,int) ;

int
_heim_ipc_create_cred(uid_t uid, gid_t gid, pid_t pid, pid_t session, heim_icred *cred)
{
    *cred = calloc(1, sizeof(**cred));
    if (*cred == ((void*)0))
 return ENOMEM;
    (*cred)->uid = uid;
    (*cred)->gid = gid;
    (*cred)->pid = pid;
    (*cred)->session = session;
    return 0;
}
