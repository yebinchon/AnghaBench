
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf_filtered (char*) ;
 int remote_open (char*,int) ;

void
push_remote_target (char *name, int from_tty)
{
  printf_filtered ("Switching to remote protocol\n");
  remote_open (name, from_tty);
}
