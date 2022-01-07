
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pam_ctxt {int pam_psock; int pam_csock; } ;
typedef int sp_pthread_t ;
typedef int pid_t ;


 int SIGCHLD ;
 int _exit (int) ;
 int close (int) ;
 int errno ;
 int error (char*,int ) ;
 int fork () ;
 int signal (int ,int ) ;
 int sshpam_oldsig ;
 int sshpam_sigchld_handler ;
 int sshpam_thread_status ;
 int strerror (int ) ;

__attribute__((used)) static int
pthread_create(sp_pthread_t *thread, const void *attr,
    void *(*thread_start)(void *), void *arg)
{
 pid_t pid;
 struct pam_ctxt *ctx = arg;

 sshpam_thread_status = -1;
 switch ((pid = fork())) {
 case -1:
  error("fork(): %s", strerror(errno));
  return (-1);
 case 0:
  close(ctx->pam_psock);
  ctx->pam_psock = -1;
  thread_start(arg);
  _exit(1);
 default:
  *thread = pid;
  close(ctx->pam_csock);
  ctx->pam_csock = -1;
  sshpam_oldsig = signal(SIGCHLD, sshpam_sigchld_handler);
  return (0);
 }
}
