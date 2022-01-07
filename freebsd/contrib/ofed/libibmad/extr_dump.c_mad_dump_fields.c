
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _dump_fields (char*,int,void*,int,int) ;

void mad_dump_fields(char *buf, int bufsz, void *val, int valsz, int start,
       int end)
{
 _dump_fields(buf, bufsz, val, start, end);
}
