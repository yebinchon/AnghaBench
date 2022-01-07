
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dbm_match {int dummy; } ;


 int assert (int ) ;
 int page_byarch (struct dbm_match const*) ;

void
dbm_page_byarch(const struct dbm_match *match)
{
 assert(match != ((void*)0));
 page_byarch(match);
}
