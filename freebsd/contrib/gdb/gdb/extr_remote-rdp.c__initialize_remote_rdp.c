
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int add_target (int *) ;
 int init_remote_rdp_ops () ;
 int remote_rdp_ops ;

void
_initialize_remote_rdp (void)
{
  init_remote_rdp_ops ();
  add_target (&remote_rdp_ops);
}
