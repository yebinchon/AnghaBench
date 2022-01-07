
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * lookup_printer (int) ;

int
has_printer(int type)
{
 return (lookup_printer(type) != ((void*)0));
}
