
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FORWARD_ADM ;
 int FORWARD_LOCAL ;
 int FORWARD_REMOTE ;
 int FORWARD_USER ;
 int fatal (char*,int,int) ;

__attribute__((used)) static const char *
fwd_ident(int who, int where)
{
 if (who == FORWARD_ADM) {
  if (where == FORWARD_LOCAL)
   return "admin local";
  else if (where == FORWARD_REMOTE)
   return "admin remote";
 } else if (who == FORWARD_USER) {
  if (where == FORWARD_LOCAL)
   return "user local";
  else if (where == FORWARD_REMOTE)
   return "user remote";
 }
 fatal("Unknown forward permission list %d/%d", who, where);
}
