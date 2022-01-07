
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mi_interp_query_hook ;
 int query_hook ;

__attribute__((used)) static void
mi_insert_notify_hooks (void)
{
  query_hook = mi_interp_query_hook;
}
