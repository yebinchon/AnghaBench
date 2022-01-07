
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct padinfo {int tmr_num; int * ballname; } ;
typedef int muxmode ;


 unsigned int RXACTIVE ;
 struct padinfo* dmtpps_padinfo ;
 int snprintf (char*,int,char*,int) ;
 scalar_t__ strcmp (char*,char const*) ;
 int ti_pinmux_padconf_get (int *,char const**,unsigned int*) ;

__attribute__((used)) static int
dmtpps_find_tmr_num_by_padconf(void)
{
 int err;
 unsigned int padstate;
 const char * padmux;
 struct padinfo *pi;
 char muxmode[12];

 for (pi = dmtpps_padinfo; pi->ballname != ((void*)0); pi++) {
  err = ti_pinmux_padconf_get(pi->ballname, &padmux, &padstate);
  snprintf(muxmode, sizeof(muxmode), "timer%d", pi->tmr_num);
  if (err == 0 && (padstate & RXACTIVE) != 0 &&
      strcmp(muxmode, padmux) == 0)
   return (pi->tmr_num);
 }

 return (0);
}
