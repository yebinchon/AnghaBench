
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct protoent_data {scalar_t__ stayopen; int * fp; } ;


 int fclose (int *) ;

void
__endprotoent_p(struct protoent_data *ped)
{
 if (ped->fp) {
  fclose(ped->fp);
  ped->fp = ((void*)0);
 }
 ped->stayopen = 0;
}
