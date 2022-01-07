
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGALRM ;
 scalar_t__ run ;
 int signal (int ,void (*) (int)) ;

__attribute__((used)) static void alarmed(int sig)
{
    signal(SIGALRM, alarmed);
    run = 0;
}
