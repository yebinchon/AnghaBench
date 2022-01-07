
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iter_priv {int n; int a; int region; } ;


 int addr_tree_init (int *) ;
 scalar_t__ calloc (int,int) ;
 int name_tree_init (int *) ;
 int priv_delete (struct iter_priv*) ;
 int regional_create () ;

struct iter_priv* priv_create(void)
{
 struct iter_priv* priv = (struct iter_priv*)calloc(1, sizeof(*priv));
 if(!priv)
  return ((void*)0);
 priv->region = regional_create();
 if(!priv->region) {
  priv_delete(priv);
  return ((void*)0);
 }
 addr_tree_init(&priv->a);
 name_tree_init(&priv->n);
 return priv;
}
