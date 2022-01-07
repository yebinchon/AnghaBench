
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct logpage_function {int dummy; } ;


 struct logpage_function* SLIST_FIRST (int *) ;
 int SLIST_INSERT_AFTER (struct logpage_function*,struct logpage_function*,int ) ;
 int SLIST_INSERT_HEAD (int *,struct logpage_function*,int ) ;
 struct logpage_function* SLIST_NEXT (struct logpage_function*,int ) ;
 int link ;
 scalar_t__ logpage_compare (struct logpage_function*,struct logpage_function*) ;
 int logpages ;

void
logpage_register(struct logpage_function *p)
{
 struct logpage_function *l, *a;

 a = ((void*)0);
 l = SLIST_FIRST(&logpages);
 while (l != ((void*)0)) {
  if (logpage_compare(l, p) > 0)
   break;
  a = l;
  l = SLIST_NEXT(l, link);
 }
 if (a == ((void*)0))
  SLIST_INSERT_HEAD(&logpages, p, link);
 else
  SLIST_INSERT_AFTER(a, p, link);
}
