
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TCSAFLUSH ;
 int exit (int) ;
 int oldterm ;
 int tcsetattr (int ,int ,int *) ;

void
test_exit(void *arg, int v)
{

 tcsetattr(0, TCSAFLUSH, &oldterm);
 exit(v);
}
