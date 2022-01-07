
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
typedef int token_t ;
typedef int pid_t ;
typedef int gid_t ;
typedef int au_tid_t ;
typedef int au_id_t ;
typedef int au_asid_t ;


 int LOG_ERR ;
 int * au_to_subject32 (int ,int ,int ,int ,int ,int ,int ,int *) ;
 int audit_write (short,int *,int *,int ,int ) ;
 int kAUMakeSubjectTokErr ;
 int syslog (int ,char*,char*) ;

int
audit_write_success(short event_code, token_t *tok, au_id_t auid, uid_t euid,
    gid_t egid, uid_t ruid, gid_t rgid, pid_t pid, au_asid_t sid,
    au_tid_t *tid)
{
 char *func = "audit_write_success()";
 token_t *subject = ((void*)0);


 subject = au_to_subject32(auid, euid, egid, ruid, rgid, pid, sid,
     tid);
 if (subject == ((void*)0)) {
  syslog(LOG_ERR, "%s: au_to_subject32() failed", func);
  return kAUMakeSubjectTokErr;
 }

 return (audit_write(event_code, subject, tok, 0, 0));
}
