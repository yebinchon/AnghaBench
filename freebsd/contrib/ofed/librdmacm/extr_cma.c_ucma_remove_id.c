
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cma_id_private {scalar_t__ handle; } ;


 scalar_t__ IDX_MAX_INDEX ;
 int idm_clear (int *,scalar_t__) ;
 int ucma_idm ;

__attribute__((used)) static void ucma_remove_id(struct cma_id_private *id_priv)
{
 if (id_priv->handle <= IDX_MAX_INDEX)
  idm_clear(&ucma_idm, id_priv->handle);
}
