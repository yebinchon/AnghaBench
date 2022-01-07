
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int buf ;


 int snprintf (char*,int,char*,int,int,int,int) ;

const char *
icmp_tstamp_print(u_int tstamp)
{
    u_int msec,sec,min,hrs;

    static char buf[64];

    msec = tstamp % 1000;
    sec = tstamp / 1000;
    min = sec / 60; sec -= min * 60;
    hrs = min / 60; min -= hrs * 60;
    snprintf(buf, sizeof(buf), "%02u:%02u:%02u.%03u",hrs,min,sec,msec);
    return buf;
}
