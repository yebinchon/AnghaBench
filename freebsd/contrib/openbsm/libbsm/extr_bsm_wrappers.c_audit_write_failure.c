
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
 int au_free_token (int *) ;
 int * au_to_subject32 (int ,int ,int ,int ,int ,int ,int ,int *) ;
 int * au_to_text (char*) ;
 int audit_write (short,int *,int *,int,int) ;
 int kAUMakeSubjectTokErr ;
 int kAUMakeTextTokErr ;
 int syslog (int ,char*,char*) ;

int
audit_write_failure(short event_code, char *errmsg, int errcode, au_id_t auid,
    uid_t euid, gid_t egid, uid_t ruid, gid_t rgid, pid_t pid, au_asid_t sid,
    au_tid_t *tid)
{
 char *func = "audit_write_failure()";
 token_t *subject, *errtok;

 subject = au_to_subject32(auid, euid, egid, ruid, rgid, pid, sid, tid);
 if (subject == ((void*)0)) {
  syslog(LOG_ERR, "%s: au_to_subject32() failed", func);
  return (kAUMakeSubjectTokErr);
 }


 if ((errtok = au_to_text(errmsg)) == ((void*)0)) {
  au_free_token(subject);
  syslog(LOG_ERR, "%s: au_to_text() failed", func);
  return (kAUMakeTextTokErr);
 }

 return (audit_write(event_code, subject, errtok, -1, errcode));
}
