
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;



int
dname_count_size_labels(uint8_t* dname, size_t* size)
{
 uint8_t lablen;
 int labs = 1;
 size_t sz = 1;

 lablen = *dname++;
 while(lablen) {
  labs++;
  sz += lablen+1;
  dname += lablen;
  lablen = *dname++;
 }
 *size = sz;
 return labs;
}
