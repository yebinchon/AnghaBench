
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* getenv (char*) ;
 int strcmp (char*,char*) ;

__attribute__((used)) static int use_scatter_to_cqe(void)
{
 char *env;

 env = getenv("MLX5_SCATTER_TO_CQE");
 if (env && !strcmp(env, "0"))
  return 0;

 return 1;
}
