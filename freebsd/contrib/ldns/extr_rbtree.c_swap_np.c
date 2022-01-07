
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_rbnode_t ;



__attribute__((used)) static void swap_np(ldns_rbnode_t** x, ldns_rbnode_t** y)
{
 ldns_rbnode_t* t = *x; *x = *y; *y = t;
}
