
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct env_var {int (* ev_sethook ) (struct env_var*,int,void const*) ;char* ev_value; int ev_flags; struct env_var* ev_prev; struct env_var* ev_next; void* ev_name; int ev_unsethook; } ;
typedef int ev_unsethook_t ;
typedef int (* ev_sethook_t ) (struct env_var*,int,void const*) ;


 int EV_DYNAMIC ;
 int EV_NOHOOK ;
 int EV_VOLATILE ;
 struct env_var* env_getenv (char const*) ;
 struct env_var* environ ;
 int free (char*) ;
 struct env_var* malloc (int) ;
 scalar_t__ strcmp (void*,void*) ;
 void* strdup (void const*) ;
 int stub1 (struct env_var*,int,void const*) ;

int
env_setenv(const char *name, int flags, const void *value,
    ev_sethook_t sethook, ev_unsethook_t unsethook)
{
    struct env_var *ev, *curr, *last;

    if ((ev = env_getenv(name)) != ((void*)0)) {




 if ((ev->ev_sethook != ((void*)0)) && !(flags & EV_NOHOOK))
     return (ev->ev_sethook(ev, flags, value));


 if (ev->ev_value != ((void*)0) && (ev->ev_flags & EV_DYNAMIC) != 0)
     free(ev->ev_value);
 ev->ev_value = ((void*)0);
 ev->ev_flags &= ~EV_DYNAMIC;

    } else {




 ev = malloc(sizeof(struct env_var));
 ev->ev_name = strdup(name);
 ev->ev_value = ((void*)0);
 ev->ev_flags = 0;

 ev->ev_sethook = sethook;
 ev->ev_unsethook = unsethook;


 ev->ev_prev = ((void*)0);
 ev->ev_next = ((void*)0);

 for (last = ((void*)0), curr = environ;
      curr != ((void*)0);
      last = curr, curr = curr->ev_next) {

     if (strcmp(ev->ev_name, curr->ev_name) < 0) {
  if (curr->ev_prev) {
      curr->ev_prev->ev_next = ev;
  } else {
      environ = ev;
  }
  ev->ev_next = curr;
  ev->ev_prev = curr->ev_prev;
  curr->ev_prev = ev;
  break;
     }
 }
 if (curr == ((void*)0)) {
     if (last == ((void*)0)) {
  environ = ev;
     } else {
  last->ev_next = ev;
  ev->ev_prev = last;
     }
 }
    }


    if (flags & EV_VOLATILE) {
 ev->ev_value = strdup(value);
 ev->ev_flags |= EV_DYNAMIC;
    } else {
 ev->ev_value = (char *)value;
 ev->ev_flags |= flags & EV_DYNAMIC;
    }

    return(0);
}
