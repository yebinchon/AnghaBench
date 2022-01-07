
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccdata {scalar_t__ cookie; struct cc_funcs const* funcs; int free_sigs; int def_sigs; int sigs; int orphaned_conns; int port_list; int user_list; } ;
struct cc_funcs {int dummy; } ;


 struct ccdata* CCMALLOC (int) ;
 int LIST_INIT (int *) ;
 int TAILQ_INIT (int *) ;

struct ccdata *
cc_create(const struct cc_funcs *vtab)
{
 struct ccdata *cc;

 cc = CCMALLOC(sizeof(*cc));
 if (cc == ((void*)0))
  return (((void*)0));

 LIST_INIT(&cc->user_list);
 TAILQ_INIT(&cc->port_list);
 LIST_INIT(&cc->orphaned_conns);
 TAILQ_INIT(&cc->sigs);
 TAILQ_INIT(&cc->def_sigs);
 TAILQ_INIT(&cc->free_sigs);
 cc->funcs = vtab;
 cc->cookie = 0;

 return (cc);
}
