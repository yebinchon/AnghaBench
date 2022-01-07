
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strrchr (char*,char) ;

char *
tail(char *path)
{
 char *p;

 if ((p = strrchr(path, '/')) == ((void*)0))
  return (path);
 return (p + 1);
}
