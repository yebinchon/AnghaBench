
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dump_linkspeed (char*,int,int) ;

void mad_dump_linkspeeden(char *buf, int bufsz, void *val, int valsz)
{
 int speed = *(int *)val;

 dump_linkspeed(buf, bufsz, speed);
}
