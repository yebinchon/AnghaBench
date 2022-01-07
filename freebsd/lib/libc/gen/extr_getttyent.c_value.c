
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strchr (char*,char) ;

__attribute__((used)) static char *
value(char *p)
{

 return ((p = strchr(p, '=')) ? ++p : ((void*)0));
}
