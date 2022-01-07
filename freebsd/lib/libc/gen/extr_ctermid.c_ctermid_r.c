
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* ctermid (char*) ;

char *
ctermid_r(char *s)
{

 return (s != ((void*)0) ? ctermid(s) : ((void*)0));
}
