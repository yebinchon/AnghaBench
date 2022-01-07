
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ub_randstate {int dummy; } ;


 int free (struct ub_randstate*) ;

void
ub_randfree(struct ub_randstate* s)
{
 free(s);

}
