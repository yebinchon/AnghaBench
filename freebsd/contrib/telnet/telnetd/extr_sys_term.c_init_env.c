
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* envinit ;
 void* environ ;
 char* getenv (char*) ;

void
init_env(void)
{
 char **envp;

 envp = envinit;
 if ((*envp = getenv("TZ")))
  *envp++ -= 3;
 *envp = 0;
 environ = envinit;
}
