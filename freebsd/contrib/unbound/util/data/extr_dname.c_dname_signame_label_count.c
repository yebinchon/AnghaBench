
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



int
dname_signame_label_count(uint8_t* dname)
{
 uint8_t lablen;
 int count = 0;
 if(!*dname)
  return 0;
 if(dname[0] == 1 && dname[1] == '*')
  dname += 2;
 lablen = dname[0];
 while(lablen) {
  count++;
  dname += lablen;
  dname += 1;
  lablen = dname[0];
 }
 return count;
}
