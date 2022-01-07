
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ev_base; } ;
struct event_once {TYPE_1__ ev; int arg; int (* cb ) (int ,short,int ) ;} ;
typedef int evutil_socket_t ;


 int EVBASE_ACQUIRE_LOCK (int ,int ) ;
 int EVBASE_RELEASE_LOCK (int ,int ) ;
 int LIST_REMOVE (struct event_once*,int ) ;
 int event_debug_unassign (TYPE_1__*) ;
 int mm_free (struct event_once*) ;
 int next_once ;
 int stub1 (int ,short,int ) ;
 int th_base_lock ;

__attribute__((used)) static void
event_once_cb(evutil_socket_t fd, short events, void *arg)
{
 struct event_once *eonce = arg;

 (*eonce->cb)(fd, events, eonce->arg);
 EVBASE_ACQUIRE_LOCK(eonce->ev.ev_base, th_base_lock);
 LIST_REMOVE(eonce, next_once);
 EVBASE_RELEASE_LOCK(eonce->ev.ev_base, th_base_lock);
 event_debug_unassign(&eonce->ev);
 mm_free(eonce);
}
