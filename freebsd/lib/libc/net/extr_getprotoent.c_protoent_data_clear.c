
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct protoent_data {int * fp; } ;


 int fclose (int *) ;

__attribute__((used)) static void
protoent_data_clear(struct protoent_data *ped)
{
 if (ped->fp) {
  fclose(ped->fp);
  ped->fp = ((void*)0);
 }
}
