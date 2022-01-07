
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* model; char* mhz; } ;


 int DEBUG (char*,int) ;
 int IBWARN (char*) ;



 TYPE_1__* cpus ;
 int getdomainname (char*,int) ;
 int gethostname (char*,int) ;
 int host_ncpu ;
 int snprintf (char*,int,char*,...) ;
 int strlen (char*) ;

__attribute__((used)) static int mk_reply(int attr, void *data, int sz)
{
 char *s = data;
 int n, i, ret = 0;

 switch (attr) {
 case 128:
  break;
 case 129:
  if (gethostname(s, sz) < 0)
   snprintf(s, sz, "?hostname?");
  s[sz - 1] = 0;
  if ((n = strlen(s)) >= sz - 1) {
   ret = sz;
   break;
  }
  s[n] = '.';
  s += n + 1;
  sz -= n + 1;
  ret += n + 1;
  if (getdomainname(s, sz) < 0)
   snprintf(s, sz, "?domainname?");
  if ((n = strlen(s)) == 0)
   s[-1] = 0;
  else
   ret += n;
  break;
 case 130:
  s[0] = '\0';
  for (i = 0; i < host_ncpu && sz > 0; i++) {
   n = snprintf(s, sz, "cpu %d: model %s MHZ %s\n",
         i, cpus[i].model, cpus[i].mhz);
   if (n >= sz) {
    IBWARN("cpuinfo truncated");
    ret = sz;
    break;
   }
   sz -= n;
   s += n;
   ret += n;
  }
  ret++;
  break;
 default:
  DEBUG("unknown attr %d", attr);
 }
 return ret;
}
