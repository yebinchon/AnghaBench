
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ count; int * root; } ;
typedef TYPE_1__ ldns_radix_t ;



void
ldns_radix_init(ldns_radix_t* tree)
{

 if (tree) {
  tree->root = ((void*)0);
  tree->count = 0;
 }
 return;
}
