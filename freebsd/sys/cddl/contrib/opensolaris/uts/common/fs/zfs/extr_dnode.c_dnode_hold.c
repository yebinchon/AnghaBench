
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int objset_t ;
typedef int dnode_t ;


 int DNODE_MUST_BE_ALLOCATED ;
 int dnode_hold_impl (int *,int ,int ,int ,void*,int **) ;

int
dnode_hold(objset_t *os, uint64_t object, void *tag, dnode_t **dnp)
{
 return (dnode_hold_impl(os, object, DNODE_MUST_BE_ALLOCATED, 0, tag,
     dnp));
}
