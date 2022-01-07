
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned char final; char interm; char vers; int type; } ;
typedef TYPE_1__ _ISO2022Charset ;


 int CS94 ;
 int CS94MULTI ;
 int CS96 ;
 int CS96MULTI ;
 int strncmp (char const*,char*,int) ;

__attribute__((used)) static __inline int
getcs(const char * __restrict p, _ISO2022Charset * __restrict cs)
{

 if (!strncmp(p, "94$", 3) && p[3] && !p[4]) {
  cs->final = (unsigned char)(p[3] & 0xff);
  cs->interm = '\0';
  cs->vers = '\0';
  cs->type = CS94MULTI;
 } else if (!strncmp(p, "96$", 3) && p[3] && !p[4]) {
  cs->final = (unsigned char)(p[3] & 0xff);
  cs->interm = '\0';
  cs->vers = '\0';
  cs->type = CS96MULTI;
 } else if (!strncmp(p, "94", 2) && p[2] && !p[3]) {
  cs->final = (unsigned char)(p[2] & 0xff);
  cs->interm = '\0';
  cs->vers = '\0';
  cs->type = CS94;
 } else if (!strncmp(p, "96", 2) && p[2] && !p[3]) {
  cs->final = (unsigned char )(p[2] & 0xff);
  cs->interm = '\0';
  cs->vers = '\0';
  cs->type = CS96;
 } else
  return (1);

 return (0);
}
