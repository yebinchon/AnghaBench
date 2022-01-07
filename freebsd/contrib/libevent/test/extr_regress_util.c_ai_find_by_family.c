
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evutil_addrinfo {int ai_family; struct evutil_addrinfo* ai_next; } ;



struct evutil_addrinfo *
ai_find_by_family(struct evutil_addrinfo *ai, int family)
{
 while (ai) {
  if (ai->ai_family == family)
   return ai;
  ai = ai->ai_next;
 }
 return ((void*)0);
}
