
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* name ;
 int printf (char*,char*) ;
 scalar_t__ printifname ;

void printifnamemaybe()
{
 if (printifname)
  printf("%s\n", name);
}
