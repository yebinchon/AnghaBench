
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* getenv (char*) ;
 int mlx5_freeze_on_error_cqe ;
 int strtol (char*,int *,int ) ;

__attribute__((used)) static void set_freeze_on_error(void)
{
 char *env;

 env = getenv("MLX5_FREEZE_ON_ERROR_CQE");
 if (env)
  mlx5_freeze_on_error_cqe = strtol(env, ((void*)0), 0);
}
