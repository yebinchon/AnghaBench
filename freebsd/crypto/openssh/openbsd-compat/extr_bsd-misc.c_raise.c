
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int getpid () ;
 int kill (int ,int) ;

int
raise(int sig)
{
 kill(getpid(), sig);
}
