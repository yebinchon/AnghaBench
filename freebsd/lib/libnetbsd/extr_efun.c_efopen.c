
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int efunc (int,char*,char const*) ;
 int * fopen (char const*,char const*) ;
 int stub1 (int,char*,char const*) ;

FILE *
efopen(const char *p, const char *m)
{
 FILE *fp = fopen(p, m);
 if (fp == ((void*)0))
  (*efunc)(1, "Cannot open `%s'", p);
 return fp;
}
