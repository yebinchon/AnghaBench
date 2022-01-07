
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cma_id_private {int dummy; } ;


 struct cma_id_private* idm_lookup (int *,int) ;
 int ucma_idm ;

__attribute__((used)) static struct cma_id_private *ucma_lookup_id(int handle)
{
 return idm_lookup(&ucma_idm, handle);
}
