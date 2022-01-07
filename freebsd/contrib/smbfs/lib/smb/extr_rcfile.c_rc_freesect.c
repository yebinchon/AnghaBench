
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcsection {struct rcsection* rs_name; int rs_keys; } ;
struct rckey {int dummy; } ;
struct rcfile {int rf_sect; } ;


 struct rckey* SLIST_FIRST (int *) ;
 struct rckey* SLIST_NEXT (struct rckey*,int ) ;
 int SLIST_REMOVE (int *,struct rcsection*,int ,int ) ;
 int free (struct rcsection*) ;
 int rc_key_free (struct rckey*) ;
 int rcsection ;
 int rk_next ;
 int rs_next ;

__attribute__((used)) static int
rc_freesect(struct rcfile *rcp, struct rcsection *rsp)
{
 struct rckey *p,*n;

 SLIST_REMOVE(&rcp->rf_sect, rsp, rcsection, rs_next);
 for(p = SLIST_FIRST(&rsp->rs_keys);p;) {
  n = p;
  p = SLIST_NEXT(p,rk_next);
  rc_key_free(n);
 }
 free(rsp->rs_name);
 free(rsp);
 return 0;
}
