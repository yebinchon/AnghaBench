
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int snprintf (char*,int,char*,char*) ;

void mad_dump_string(char *buf, int bufsz, void *val, int valsz)
{
 if (bufsz < valsz)
  valsz = bufsz;

 snprintf(buf, valsz, "'%s'", (char *)val);
}
