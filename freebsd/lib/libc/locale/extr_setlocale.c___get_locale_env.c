
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char** categories ;
 char* getenv (char*) ;

const char *
__get_locale_env(int category)
{
 const char *env;


 env = getenv(categories[0]);


 if (env == ((void*)0) || !*env)
  env = getenv(categories[category]);


 if (env == ((void*)0) || !*env)
  env = getenv("LANG");


 if (env == ((void*)0) || !*env)
  env = "C";

 return (env);
}
