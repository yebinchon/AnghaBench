
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct full_dynamic_vlan {int s; } ;


 int close (int ) ;
 int eloop_unregister_read_sock (int ) ;
 int os_free (struct full_dynamic_vlan*) ;

void full_dynamic_vlan_deinit(struct full_dynamic_vlan *priv)
{
 if (priv == ((void*)0))
  return;
 eloop_unregister_read_sock(priv->s);
 close(priv->s);
 os_free(priv);
}
