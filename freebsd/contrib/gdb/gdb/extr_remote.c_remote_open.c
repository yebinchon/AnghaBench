
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int remote_open_1 (char*,int,int *,int ,int ) ;
 int remote_ops ;

__attribute__((used)) static void
remote_open (char *name, int from_tty)
{
  remote_open_1 (name, from_tty, &remote_ops, 0, 0);
}
