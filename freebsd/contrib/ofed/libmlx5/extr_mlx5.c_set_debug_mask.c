
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* getenv (char*) ;
 int mlx5_debug_mask ;
 int strtol (char*,int *,int ) ;

__attribute__((used)) static void set_debug_mask(void)
{
 char *env;

 env = getenv("MLX5_DEBUG_MASK");
 if (env)
  mlx5_debug_mask = strtol(env, ((void*)0), 0);
}
