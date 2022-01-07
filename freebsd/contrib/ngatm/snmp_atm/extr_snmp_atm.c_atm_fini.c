
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atmif_priv {int dummy; } ;


 struct atmif_priv* TAILQ_FIRST (int *) ;
 int atmif_destroy (struct atmif_priv*) ;
 int atmif_list ;
 int mib_unregister_newif (int ) ;
 int module ;
 int or_unregister (int ) ;
 int reg_atm ;

__attribute__((used)) static int
atm_fini(void)
{
 struct atmif_priv *aif;

 while ((aif = TAILQ_FIRST(&atmif_list)) != ((void*)0))
  atmif_destroy(aif);

 mib_unregister_newif(module);
 or_unregister(reg_atm);

 return (0);
}
