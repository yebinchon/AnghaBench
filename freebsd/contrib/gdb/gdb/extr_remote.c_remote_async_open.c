
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int remote_async_ops ;
 int remote_open_1 (char*,int,int *,int ,int) ;

__attribute__((used)) static void
remote_async_open (char *name, int from_tty)
{
  remote_open_1 (name, from_tty, &remote_async_ops, 0, 1);
}
