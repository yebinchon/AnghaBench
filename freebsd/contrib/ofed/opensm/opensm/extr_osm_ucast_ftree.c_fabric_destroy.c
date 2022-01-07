
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ftree_fabric_t ;


 int fabric_clear (int *) ;
 int free (int *) ;

__attribute__((used)) static void fabric_destroy(ftree_fabric_t * p_ftree)
{
 if (!p_ftree)
  return;
 fabric_clear(p_ftree);
 free(p_ftree);
}
