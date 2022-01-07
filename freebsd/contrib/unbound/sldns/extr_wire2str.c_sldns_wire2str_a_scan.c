
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int socklen_t ;
typedef int buf ;


 int AF_INET ;
 int inet_ntop (int ,int *,char*,int ) ;
 int sldns_str_print (char**,size_t*,char*,char*) ;

int sldns_wire2str_a_scan(uint8_t** d, size_t* dl, char** s, size_t* sl)
{
 char buf[32];
 int w;
 if(*dl < 4) return -1;
 if(!inet_ntop(AF_INET, *d, buf, (socklen_t)sizeof(buf)))
  return -1;
 w = sldns_str_print(s, sl, "%s", buf);
 (*d)+=4;
 (*dl)-=4;
 return w;
}
