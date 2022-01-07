
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * fopen (char const*,char*) ;
 int * ofp ;

int
dba_open(const char *fname)
{
 ofp = fopen(fname, "w");
 return ofp == ((void*)0) ? -1 : 0;
}
