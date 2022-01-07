
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct env_var {char* ev_value; } ;


 struct env_var* env_getenv (char const*) ;

char *
getenv(const char *name)
{
    struct env_var *ev;


    if ((ev = env_getenv(name)) != ((void*)0)) {
 if (ev->ev_value != ((void*)0))
     return(ev->ev_value);
 return("");
    }
    return(((void*)0));
}
