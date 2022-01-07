
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibv_context {int dummy; } ;


 char* getenv (char*) ;

__attribute__((used)) static int rwq_sig_enabled(struct ibv_context *context)
{
 char *env;

 env = getenv("MLX5_RWQ_SIGNATURE");
 if (env)
  return 1;

 return 0;
}
