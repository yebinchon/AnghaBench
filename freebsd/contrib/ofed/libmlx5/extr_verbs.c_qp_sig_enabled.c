
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* getenv (char*) ;

__attribute__((used)) static int qp_sig_enabled(void)
{
 char *env;

 env = getenv("MLX5_QP_SIGNATURE");
 if (env)
  return 1;

 return 0;
}
