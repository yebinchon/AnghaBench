
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * hid_data_t ;


 int free (int *) ;

void
hid_end_parse(hid_data_t s)
{

 if (s == ((void*)0))
  return;

 free(s);
}
