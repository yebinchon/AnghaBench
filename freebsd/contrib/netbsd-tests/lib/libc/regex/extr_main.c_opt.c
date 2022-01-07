
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * strchr (char*,int) ;

int
opt(int c, char *s)
{
 return(strchr(s, c) != ((void*)0));
}
