
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct utmpx {int ut_type; int ut_id; } ;
struct futx {int fu_type; int fu_id; } ;





 int MIN (int,int) ;

 struct utmpx* futx_to_utx (struct futx*) ;
 scalar_t__ getfutxent (struct futx*) ;
 int memcmp (int ,int ,int ) ;

struct utmpx *
getutxid(const struct utmpx *id)
{
 struct futx fu;

 for (;;) {
  if (getfutxent(&fu) != 0)
   return (((void*)0));

  switch (fu.fu_type) {
  case 128:
  case 130:
  case 129:
  case 131:
   switch (id->ut_type) {
   case 128:
   case 130:
   case 129:
   case 131:
    if (memcmp(fu.fu_id, id->ut_id,
        MIN(sizeof(fu.fu_id), sizeof(id->ut_id))) ==
        0)
     goto found;
   }
   break;
  default:
   if (fu.fu_type == id->ut_type)
    goto found;
   break;
  }
 }

found:
 return (futx_to_utx(&fu));
}
