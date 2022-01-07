
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int atoi (char*) ;
 char* getenv (char*) ;

__attribute__((used)) static int get_cqe_size(void)
{
 char *env;
 int size = 64;

 env = getenv("MLX5_CQE_SIZE");
 if (env)
  size = atoi(env);

 switch (size) {
 case 64:
 case 128:
  return size;

 default:
  return -EINVAL;
 }
}
