
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct html {int * tblt; } ;


 int assert (int *) ;
 int print_tagq (struct html*,int *) ;

void
print_tblclose(struct html *h)
{

 assert(h->tblt);
 print_tagq(h, h->tblt);
 h->tblt = ((void*)0);
}
