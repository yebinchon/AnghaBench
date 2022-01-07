
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct env_var {int (* ev_unsethook ) (struct env_var*) ;} ;


 int ENOENT ;
 int env_discard (struct env_var*) ;
 struct env_var* env_getenv (char const*) ;
 int stub1 (struct env_var*) ;

int
unsetenv(const char *name)
{
    struct env_var *ev;
    int err;

    err = 0;
    if ((ev = env_getenv(name)) == ((void*)0)) {
 err = ENOENT;
    } else {
 if (ev->ev_unsethook != ((void*)0))
     err = ev->ev_unsethook(ev);
 if (err == 0) {
     env_discard(ev);
 }
    }
    return(err);
}
