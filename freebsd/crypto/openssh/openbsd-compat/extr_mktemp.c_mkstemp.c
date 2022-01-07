
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MKTEMP_FILE ;
 int mktemp_internal (char*,int ,int ) ;

int
mkstemp(char *path)
{
 return(mktemp_internal(path, 0, MKTEMP_FILE));
}
