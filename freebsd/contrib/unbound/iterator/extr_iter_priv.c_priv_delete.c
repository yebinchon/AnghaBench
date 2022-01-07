
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iter_priv {int region; } ;


 int free (struct iter_priv*) ;
 int regional_destroy (int ) ;

void priv_delete(struct iter_priv* priv)
{
 if(!priv) return;
 regional_destroy(priv->region);
 free(priv);
}
