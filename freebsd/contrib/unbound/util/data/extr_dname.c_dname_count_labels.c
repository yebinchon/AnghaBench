
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;



int
dname_count_labels(uint8_t* dname)
{
 uint8_t lablen;
 int labs = 1;

 lablen = *dname++;
 while(lablen) {
  labs++;
  dname += lablen;
  lablen = *dname++;
 }
 return labs;
}
