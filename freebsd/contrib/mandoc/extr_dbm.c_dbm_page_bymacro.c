
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dbm_match {int dummy; } ;
typedef scalar_t__ int32_t ;


 scalar_t__ MACRO_MAX ;
 int assert (int) ;
 int page_bymacro (scalar_t__,struct dbm_match const*) ;

void
dbm_page_bymacro(int32_t im, const struct dbm_match *match)
{
 assert(im >= 0);
 assert(im < MACRO_MAX);
 assert(match != ((void*)0));
 page_bymacro(im, match);
}
