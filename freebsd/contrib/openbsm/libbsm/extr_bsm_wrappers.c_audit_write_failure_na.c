
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
typedef int pid_t ;
typedef int au_tid_t ;


 int audit_write_failure (short,char*,int,int,int ,int ,int,int,int ,int,int *) ;

int
audit_write_failure_na(short event_code, char *errmsg, int errret, uid_t euid,
    uid_t egid, pid_t pid, au_tid_t *tid)
{

 return (audit_write_failure(event_code, errmsg, errret, -1, euid,
     egid, -1, -1, pid, -1, tid));
}
