
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct internal_base {int base; struct internal_base* eb; int now; int secs; } ;
struct comm_base {int base; struct comm_base* eb; int now; int secs; } ;


 int VERB_ALGO ;
 scalar_t__ calloc (int,int) ;
 int free (struct internal_base*) ;
 int ub_comm_base_now (struct internal_base*) ;
 int ub_default_event_base (int,int *,int *) ;
 int ub_get_event_sys (int ,char const**,char const**,char const**) ;
 int verbose (int ,char*,char const*,char const*,char const*) ;

struct comm_base*
comm_base_create(int sigs)
{
 struct comm_base* b = (struct comm_base*)calloc(1,
  sizeof(struct comm_base));
 const char *evnm="event", *evsys="", *evmethod="";

 if(!b)
  return ((void*)0);
 b->eb = (struct internal_base*)calloc(1, sizeof(struct internal_base));
 if(!b->eb) {
  free(b);
  return ((void*)0);
 }
 b->eb->base = ub_default_event_base(sigs, &b->eb->secs, &b->eb->now);
 if(!b->eb->base) {
  free(b->eb);
  free(b);
  return ((void*)0);
 }
 ub_comm_base_now(b);
 ub_get_event_sys(b->eb->base, &evnm, &evsys, &evmethod);
 verbose(VERB_ALGO, "%s %s uses %s method.", evnm, evsys, evmethod);
 return b;
}
