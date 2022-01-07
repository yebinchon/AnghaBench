
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct dbm_res {int member_0; struct page* page; int member_1; } ;
struct dbm_match {int dummy; } ;
typedef size_t int32_t ;
struct TYPE_2__ {int pages; int value; } ;


 scalar_t__ ITER_MACRO ;
 scalar_t__ ITER_NONE ;
 size_t MACRO_MAX ;
 int assert (int) ;
 char* dbm_get (int ) ;
 scalar_t__ dbm_match (struct dbm_match const*,char const*) ;
 scalar_t__ iteration ;
 TYPE_1__** macros ;
 int* nvals ;
 int pages ;
 char* strchr (char const*,char) ;

__attribute__((used)) static struct dbm_res
page_bymacro(int32_t arg_im, const struct dbm_match *arg_match)
{
 static const struct dbm_match *match;
 static const int32_t *pp;
 static const char *cp;
 static int32_t im, iv;
 struct dbm_res res = {-1, 0};

 assert(im >= 0);
 assert(im < MACRO_MAX);



 if (arg_match != ((void*)0)) {
  iteration = ITER_MACRO;
  match = arg_match;
  im = arg_im;
  cp = nvals[im] ? dbm_get(macros[im]->value) : ((void*)0);
  pp = ((void*)0);
  iv = -1;
  return res;
 }
 if (iteration != ITER_MACRO)
  return res;



 while (pp == ((void*)0) || *pp == 0) {
  if (++iv == nvals[im]) {
   iteration = ITER_NONE;
   return res;
  }
  if (iv)
   cp = strchr(cp, '\0') + 1;
  if (dbm_match(match, cp))
   pp = dbm_get(macros[im][iv].pages);
 }



 res.page = (struct page *)dbm_get(*pp++) - pages;
 return res;
}
