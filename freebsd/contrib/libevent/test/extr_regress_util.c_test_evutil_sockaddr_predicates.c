
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
struct sa_pred_ent {scalar_t__ is_loopback; scalar_t__ parse; } ;
typedef int ss ;


 int TT_FAIL (char*) ;
 int evutil_parse_sockaddr_port (scalar_t__,struct sockaddr*,int*) ;
 scalar_t__ evutil_sockaddr_is_loopback_ (struct sockaddr*) ;
 struct sa_pred_ent* sa_pred_entries ;

__attribute__((used)) static void
test_evutil_sockaddr_predicates(void *ptr)
{
 struct sockaddr_storage ss;
 int r, i;

 for (i=0; sa_pred_entries[i].parse; ++i) {
  struct sa_pred_ent *ent = &sa_pred_entries[i];
  int len = sizeof(ss);

  r = evutil_parse_sockaddr_port(ent->parse, (struct sockaddr*)&ss, &len);

  if (r<0) {
   TT_FAIL(("Couldn't parse %s!", ent->parse));
   continue;
  }


  if (ent->is_loopback != evutil_sockaddr_is_loopback_((struct sockaddr*)&ss)) {
   TT_FAIL(("evutil_sockaddr_loopback(%s) not as expected",
    ent->parse));
  }
 }
}
