
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netent_data {int stayopen; int * netf; } ;


 int _PATH_NETWORKS ;
 int * fopen (int ,char*) ;
 int rewind (int *) ;

void
_setnethtent(int f, struct netent_data *ned)
{

 if (ned->netf == ((void*)0))
  ned->netf = fopen(_PATH_NETWORKS, "re");
 else
  rewind(ned->netf);
 ned->stayopen |= f;
}
