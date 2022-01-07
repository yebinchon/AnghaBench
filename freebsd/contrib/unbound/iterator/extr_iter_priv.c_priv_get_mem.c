
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iter_priv {int region; } ;


 size_t regional_get_mem (int ) ;

size_t priv_get_mem(struct iter_priv* priv)
{
 if(!priv) return 0;
 return sizeof(*priv) + regional_get_mem(priv->region);
}
