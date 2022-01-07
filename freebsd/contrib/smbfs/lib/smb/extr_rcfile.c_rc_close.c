
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcsection {int dummy; } ;
struct rcfile {struct rcfile* rf_name; int rf_sect; int rf_f; } ;


 struct rcsection* SLIST_FIRST (int *) ;
 struct rcsection* SLIST_NEXT (struct rcsection*,int ) ;
 int SLIST_REMOVE (int *,struct rcfile*,int ,int ) ;
 int fclose (int ) ;
 int free (struct rcfile*) ;
 int pf_head ;
 int rc_freesect (struct rcfile*,struct rcsection*) ;
 int rcfile ;
 int rf_next ;
 int rs_next ;

int
rc_close(struct rcfile *rcp)
{
 struct rcsection *p, *n;

 fclose(rcp->rf_f);
 for(p = SLIST_FIRST(&rcp->rf_sect); p;) {
  n = p;
  p = SLIST_NEXT(p,rs_next);
  rc_freesect(rcp, n);
 }
 free(rcp->rf_name);
 SLIST_REMOVE(&pf_head, rcp, rcfile, rf_next);
 free(rcp);
 return 0;
}
