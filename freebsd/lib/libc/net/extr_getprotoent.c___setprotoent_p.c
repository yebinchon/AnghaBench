
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct protoent_data {int stayopen; int * fp; } ;


 int _PATH_PROTOCOLS ;
 int * fopen (int ,char*) ;
 int rewind (int *) ;

void
__setprotoent_p(int f, struct protoent_data *ped)
{
 if (ped->fp == ((void*)0))
  ped->fp = fopen(_PATH_PROTOCOLS, "re");
 else
  rewind(ped->fp);
 ped->stayopen |= f;
}
