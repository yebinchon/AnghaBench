
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct env_var {int ev_flags; struct env_var* ev_value; struct env_var* ev_name; struct env_var* ev_next; TYPE_1__* ev_prev; } ;
struct TYPE_2__ {struct env_var* ev_next; } ;


 int EV_DYNAMIC ;
 struct env_var* environ ;
 int free (struct env_var*) ;

__attribute__((used)) static void
env_discard(struct env_var *ev)
{
    if (ev->ev_prev)
 ev->ev_prev->ev_next = ev->ev_next;
    if (ev->ev_next)
 ev->ev_next->ev_prev = ev->ev_prev;
    if (environ == ev)
 environ = ev->ev_next;
    free(ev->ev_name);
    if (ev->ev_value != ((void*)0) && (ev->ev_flags & EV_DYNAMIC) != 0)
 free(ev->ev_value);
    free(ev);
}
