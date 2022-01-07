
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
typedef int token_t ;
struct auditinfo_addr {int ai_termid; } ;
typedef int pid_t ;
typedef int aia ;


 int ADE_AU_CLOSE ;
 int ADE_AU_OPEN ;
 int ADE_INVAL ;
 int ADE_NOERR ;
 int ADE_NOMEM ;
 int AUE_audit_recovery ;
 int AUE_audit_shutdown ;
 int AUE_audit_startup ;
 int asprintf (char**,char*,int ) ;
 int au_close (int,int,int) ;
 int au_open () ;
 int * au_to_path (char*) ;
 int * au_to_return32 (int ,int ) ;
 int * au_to_subject32_ex (int ,int ,int ,int ,int ,int ,int ,int *) ;
 int * au_to_text (char*) ;
 int au_write (int,int *) ;
 int bzero (struct auditinfo_addr*,int) ;
 int free (char*) ;
 int getegid () ;
 int geteuid () ;
 int getgid () ;
 int getpid () ;
 int getprogname () ;
 int getuid () ;

int
auditd_gen_record(int event, char *path)
{
 int aufd;
 uid_t uid;
 pid_t pid;
 char *autext = ((void*)0);
 token_t *tok;
 struct auditinfo_addr aia;

 if (event == AUE_audit_startup)
  asprintf(&autext, "%s::Audit startup", getprogname());
 else if (event == AUE_audit_shutdown)
  asprintf(&autext, "%s::Audit shutdown", getprogname());
 else if (event == AUE_audit_recovery)
  asprintf(&autext, "%s::Audit recovery", getprogname());
 else
  return (ADE_INVAL);
 if (autext == ((void*)0))
  return (ADE_NOMEM);

 if ((aufd = au_open()) == -1) {
  free(autext);
  return (ADE_AU_OPEN);
 }
 bzero(&aia, sizeof(aia));
 uid = getuid(); pid = getpid();
 if ((tok = au_to_subject32_ex(uid, geteuid(), getegid(), uid, getgid(),
     pid, pid, &aia.ai_termid)) != ((void*)0))
  au_write(aufd, tok);
 if ((tok = au_to_text(autext)) != ((void*)0))
  au_write(aufd, tok);
 free(autext);
 if (path != ((void*)0) && (tok = au_to_path(path)) != ((void*)0))
  au_write(aufd, tok);
 if ((tok = au_to_return32(0, 0)) != ((void*)0))
  au_write(aufd, tok);
 if (au_close(aufd, 1, event) == -1)
  return (ADE_AU_CLOSE);

 return (ADE_NOERR);
}
