
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_RDWR ;
 int STDERR_FILENO ;
 int STDIN_FILENO ;
 int STDOUT_FILENO ;
 int close (int) ;
 scalar_t__ daemon (int,int ) ;
 int dup2 (int,int ) ;
 int errno ;
 int exit (int ) ;
 int fatal_exit (char*,int ) ;
 int fork () ;
 int open (char*,int ,int ) ;
 int setsid () ;
 int strerror (int ) ;

__attribute__((used)) static void
detach(void)
{
}
