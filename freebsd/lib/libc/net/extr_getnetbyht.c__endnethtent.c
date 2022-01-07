
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netent_data {scalar_t__ stayopen; int * netf; } ;


 int fclose (int *) ;

void
_endnethtent(struct netent_data *ned)
{

 if (ned->netf) {
  fclose(ned->netf);
  ned->netf = ((void*)0);
 }
 ned->stayopen = 0;
}
