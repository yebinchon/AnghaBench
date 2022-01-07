
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* getenv (char*) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static int single_threaded_app(void)
{

 char *env;

 env = getenv("MLX5_SINGLE_THREADED");
 if (env)
  return strcmp(env, "1") ? 0 : 1;

 return 0;
}
