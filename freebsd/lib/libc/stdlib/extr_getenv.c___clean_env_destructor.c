
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __clean_env (int) ;

__attribute__((used)) static void
__clean_env_destructor(void)
{
 __clean_env(1);

 return;
}
