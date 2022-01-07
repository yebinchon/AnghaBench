
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evutil_addrinfo {int ai_flags; struct evutil_addrinfo* ai_canonname; struct evutil_addrinfo* ai_next; } ;


 int EVUTIL_AI_LIBEVENT_ALLOCATED ;
 int freeaddrinfo (struct evutil_addrinfo*) ;
 int mm_free (struct evutil_addrinfo*) ;

void
evutil_freeaddrinfo(struct evutil_addrinfo *ai)
{






 while (ai) {
  struct evutil_addrinfo *next = ai->ai_next;
  if (ai->ai_canonname)
   mm_free(ai->ai_canonname);
  mm_free(ai);
  ai = next;
 }
}
