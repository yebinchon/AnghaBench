
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* notify_pipe ;
 int write (int,char*,int) ;

__attribute__((used)) static void
notify_parent(void)
{
 if (notify_pipe[1] != -1)
  (void)write(notify_pipe[1], "", 1);
}
