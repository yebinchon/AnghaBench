
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* getenv (char*) ;

__attribute__((used)) static const char*
get_env_user(void)
{
    const char *user = getenv("USER");
    if(user == ((void*)0))
 user = getenv("LOGNAME");
    if(user == ((void*)0))
 user = getenv("USERNAME");
    return user;
}
