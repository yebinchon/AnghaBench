
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 scalar_t__ tolower (unsigned char) ;

void
query_dname_tolower(uint8_t* dname)
{

 uint8_t labellen;
 labellen = *dname;
 while(labellen) {
  dname++;
  while(labellen--) {
   *dname = (uint8_t)tolower((unsigned char)*dname);
   dname++;
  }
  labellen = *dname;
 }
}
