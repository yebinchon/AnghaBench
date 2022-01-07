
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* getenv (char*) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static int get_always_bf(void)
{
 char *env;

 env = getenv("MLX5_POST_SEND_PREFER_BF");
 if (!env)
  return 1;

 return strcmp(env, "0") ? 1 : 0;
}
