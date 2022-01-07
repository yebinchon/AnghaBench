
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netent_data {scalar_t__ stayopen; } ;


 int _endnethtent (struct netent_data*) ;
 int free (struct netent_data*) ;

__attribute__((used)) static void
netent_data_free(void *ptr)
{
 struct netent_data *ned = ptr;

 if (ned == ((void*)0))
  return;
 ned->stayopen = 0;
 _endnethtent(ned);
 free(ned);
}
