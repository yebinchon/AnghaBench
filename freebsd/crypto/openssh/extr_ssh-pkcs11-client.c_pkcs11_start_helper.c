
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AF_UNIX ;
 int SOCK_STREAM ;
 int STDIN_FILENO ;
 int STDOUT_FILENO ;
 char* _PATH_SSH_PKCS11_HELPER ;
 int _exit (int) ;
 int close (int) ;
 int dup2 (int,int ) ;
 int errno ;
 int error (char*,char*) ;
 int execlp (char*,char*,char*) ;
 int fd ;
 int fork () ;
 int fprintf (int ,char*,char*,...) ;
 int pid ;
 int socketpair (int ,int ,int ,int*) ;
 int stderr ;
 char* strerror (int ) ;

__attribute__((used)) static int
pkcs11_start_helper(void)
{
 int pair[2];

 if (socketpair(AF_UNIX, SOCK_STREAM, 0, pair) == -1) {
  error("socketpair: %s", strerror(errno));
  return (-1);
 }
 if ((pid = fork()) == -1) {
  error("fork: %s", strerror(errno));
  return (-1);
 } else if (pid == 0) {
  if ((dup2(pair[1], STDIN_FILENO) == -1) ||
      (dup2(pair[1], STDOUT_FILENO) == -1)) {
   fprintf(stderr, "dup2: %s\n", strerror(errno));
   _exit(1);
  }
  close(pair[0]);
  close(pair[1]);
  execlp(_PATH_SSH_PKCS11_HELPER, _PATH_SSH_PKCS11_HELPER,
      (char *)((void*)0));
  fprintf(stderr, "exec: %s: %s\n", _PATH_SSH_PKCS11_HELPER,
      strerror(errno));
  _exit(1);
 }
 close(pair[1]);
 fd = pair[0];
 return (0);
}
