
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dbm_match {int dummy; } ;


 int ITER_DESC ;
 int assert (int ) ;
 int page_bytitle (int ,struct dbm_match const*) ;

void
dbm_page_bydesc(const struct dbm_match *match)
{
 assert(match != ((void*)0));
 page_bytitle(ITER_DESC, match);
}
