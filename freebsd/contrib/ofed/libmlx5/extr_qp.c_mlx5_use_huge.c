
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* getenv (char const*) ;
 int strcmp (char*,char*) ;

int mlx5_use_huge(const char *key)
{
 char *e;
 e = getenv(key);
 if (e && !strcmp(e, "y"))
  return 1;

 return 0;
}
