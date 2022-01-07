
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MKTEMP_FILE ;
 int mktemp_internal (char*,int,int ) ;

int
mkstemps(char *path, int slen)
{
 return(mktemp_internal(path, slen, MKTEMP_FILE));
}
