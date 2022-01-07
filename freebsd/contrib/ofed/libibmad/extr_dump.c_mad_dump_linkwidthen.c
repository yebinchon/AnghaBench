
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dump_linkwidth (char*,int,int) ;

void mad_dump_linkwidthen(char *buf, int bufsz, void *val, int valsz)
{
 int width = *(int *)val;

 dump_linkwidth(buf, bufsz, width);
}
