
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcmp (char const* const,char const* const) ;

__attribute__((used)) static int
helpsort(
 const void *t1,
 const void *t2
 )
{
 const char * const * name1 = t1;
 const char * const * name2 = t2;

 return strcmp(*name1, *name2);
}
