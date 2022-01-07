
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * options; } ;


 TYPE_1__* filters ;
 size_t filters_count ;
 int free (int *) ;

__attribute__((used)) static void
forget_filter_chain(void)
{


 while (filters_count > 0) {
  --filters_count;
  free(filters[filters_count].options);
  filters[filters_count].options = ((void*)0);
 }

 return;
}
