
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regional {int dummy; } ;


 int free (struct regional*) ;
 int regional_free_all (struct regional*) ;

void
regional_destroy(struct regional *r)
{
 if(!r) return;
 regional_free_all(r);
 free(r);
}
