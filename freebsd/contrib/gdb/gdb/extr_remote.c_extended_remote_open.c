
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int extended_remote_ops ;
 int remote_open_1 (char*,int,int *,int,int ) ;

__attribute__((used)) static void
extended_remote_open (char *name, int from_tty)
{
  remote_open_1 (name, from_tty, &extended_remote_ops, 1 ,
   0 );
}
