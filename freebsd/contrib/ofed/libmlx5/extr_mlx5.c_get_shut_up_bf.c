
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* getenv (char*) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static int get_shut_up_bf(void)
{
 char *env;

 env = getenv("MLX5_SHUT_UP_BF");
 if (!env)
  return 0;

 return strcmp(env, "0") ? 1 : 0;
}
