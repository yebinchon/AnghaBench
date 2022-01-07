
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct search_state {struct search_state* next; struct search_state* head; int refcount; } ;
struct search_domain {struct search_domain* next; struct search_domain* head; int refcount; } ;


 int mm_free (struct search_state* const) ;

__attribute__((used)) static void
search_state_decref(struct search_state *const state) {
 if (!state) return;
 state->refcount--;
 if (!state->refcount) {
  struct search_domain *next, *dom;
  for (dom = state->head; dom; dom = next) {
   next = dom->next;
   mm_free(dom);
  }
  mm_free(state);
 }
}
