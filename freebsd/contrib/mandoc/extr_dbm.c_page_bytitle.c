
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dbm_res {int member_0; char bits; scalar_t__ page; int member_1; } ;
struct dbm_match {int dummy; } ;
typedef scalar_t__ int32_t ;
typedef enum iter { ____Placeholder_iter } iter ;
struct TYPE_2__ {int desc; int sect; int name; } ;




 int ITER_NONE ;

 int abort () ;
 int assert (int) ;
 char* dbm_get (int ) ;
 scalar_t__ dbm_match (struct dbm_match const*,char const*) ;
 int iteration ;
 scalar_t__ npages ;
 TYPE_1__* pages ;
 char* strchr (char const*,char) ;

__attribute__((used)) static struct dbm_res
page_bytitle(enum iter arg_iter, const struct dbm_match *arg_match)
{
 static const struct dbm_match *match;
 static const char *cp;
 static int32_t ip;
 struct dbm_res res = {-1, 0};

 assert(arg_iter == 129 || arg_iter == 130 ||
     arg_iter == 128);



 if (arg_match != ((void*)0)) {
  iteration = arg_iter;
  match = arg_match;
  switch (iteration) {
  case 129:
   cp = dbm_get(pages[0].name);
   break;
  case 128:
   cp = dbm_get(pages[0].sect);
   break;
  case 130:
   cp = dbm_get(pages[0].desc);
   break;
  default:
   abort();
  }
  if (cp == ((void*)0)) {
   iteration = ITER_NONE;
   match = ((void*)0);
   cp = ((void*)0);
   ip = npages;
  } else
   ip = 0;
  return res;
 }



 while (ip < npages) {
  if (iteration == 129)
   cp++;
  if (dbm_match(match, cp))
   break;
  cp = strchr(cp, '\0') + 1;
  if (iteration == 130)
   ip++;
  else if (*cp == '\0') {
   cp++;
   ip++;
  }
 }



 if (ip == npages) {
  iteration = ITER_NONE;
  match = ((void*)0);
  cp = ((void*)0);
  return res;
 }



 res.page = ip;
 res.bits = iteration == 129 ? cp[-1] : 0;



 if (++ip < npages) {
  do {
   cp++;
  } while (cp[-1] != '\0' ||
      (iteration != 130 && cp[-2] != '\0'));
 }
 return res;
}
