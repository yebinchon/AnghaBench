
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 int isalnum (unsigned char) ;
 scalar_t__ sldns_str_print (char**,size_t*,char*,char) ;

int sldns_wire2str_tag_scan(uint8_t** d, size_t* dl, char** s, size_t* sl)
{
 size_t i, n;
 int w = 0;
 if(*dl < 1)
  return -1;
 n = (size_t)((*d)[0]);
 if(*dl < 1+n)
  return -1;
 for(i=0; i<n; i++)
  if(!isalnum((unsigned char)(*d)[i+1]))
   return -1;
 for(i=0; i<n; i++)
  w += sldns_str_print(s, sl, "%c", (char)(*d)[i+1]);
 (*d)+=n+1;
 (*dl)-=(n+1);
 return w;
}
