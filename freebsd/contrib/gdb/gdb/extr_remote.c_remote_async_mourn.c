
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int remote_async_ops ;
 int remote_mourn_1 (int *) ;

__attribute__((used)) static void
remote_async_mourn (void)
{
  remote_mourn_1 (&remote_async_ops);
}
