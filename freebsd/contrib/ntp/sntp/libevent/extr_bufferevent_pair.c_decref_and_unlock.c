
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufferevent_pair {scalar_t__ partner; } ;
struct bufferevent {int dummy; } ;


 int bufferevent_decref_and_unlock_ (struct bufferevent*) ;
 struct bufferevent* downcast (scalar_t__) ;
 struct bufferevent_pair* upcast (struct bufferevent*) ;

__attribute__((used)) static inline void
decref_and_unlock(struct bufferevent *b)
{
 struct bufferevent_pair *bevp = upcast(b);
 if (bevp->partner)
  bufferevent_decref_and_unlock_(downcast(bevp->partner));
 bufferevent_decref_and_unlock_(b);
}
