
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AF_UNIX ;
 int SOCK_STREAM ;
 int STDOUT_FILENO ;
 int fatal (int ,char*,char*) ;
 scalar_t__ socketpair (int ,int ,int ,int*) ;

__attribute__((used)) static void
pipe_a_like (int fd[2])
{
    if (socketpair (AF_UNIX, SOCK_STREAM, 0, fd) < 0)
 fatal (STDOUT_FILENO, "socketpair", "Pipe creation failed.");
}
