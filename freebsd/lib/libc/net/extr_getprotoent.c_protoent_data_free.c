
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct protoent_data {int dummy; } ;


 int free (struct protoent_data*) ;
 int protoent_data_clear (struct protoent_data*) ;

__attribute__((used)) static void
protoent_data_free(void *ptr)
{
 struct protoent_data *ped = ptr;

 protoent_data_clear(ped);
 free(ped);
}
