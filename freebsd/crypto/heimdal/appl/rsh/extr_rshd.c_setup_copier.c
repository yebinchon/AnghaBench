
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ pid_t ;


 int STDERR_FILENO ;
 int STDIN_FILENO ;
 int STDOUT_FILENO ;
 int close (int) ;
 int dup2 (int,int ) ;
 int fatal (int ,char*,char*) ;
 scalar_t__ fork () ;
 int net_write (int ,char*,int) ;
 int pipe_a_like (int*) ;
 int rshd_loop (int ,int,int ,int,int ,int,int) ;

__attribute__((used)) static void
setup_copier (int have_errsock)
{
    int p0[2], p1[2], p2[2];
    pid_t pid;

    pipe_a_like(p0);
    pipe_a_like(p1);
    pipe_a_like(p2);
    pid = fork ();
    if (pid < 0)
 fatal (STDOUT_FILENO, "fork", "Could not create child process.");
    if (pid == 0) {
 close (p0[1]);
 close (p1[0]);
 close (p2[0]);
 dup2 (p0[0], STDIN_FILENO);
 dup2 (p1[1], STDOUT_FILENO);
 dup2 (p2[1], STDERR_FILENO);
 close (p0[0]);
 close (p1[1]);
 close (p2[1]);
    } else {
 close (p0[0]);
 close (p1[1]);
 close (p2[1]);

 if (net_write (STDOUT_FILENO, "", 1) != 1)
     fatal (STDOUT_FILENO, "net_write", "Write failure.");

 rshd_loop (STDIN_FILENO, p0[1],
       STDOUT_FILENO, p1[0],
       STDERR_FILENO, p2[0],
       have_errsock);
    }
}
