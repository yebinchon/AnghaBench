
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcsection {int rs_keys; int rs_name; } ;
struct rcfile {int rf_sect; } ;


 int SLIST_INIT (int *) ;
 int SLIST_INSERT_HEAD (int *,struct rcsection*,int ) ;
 struct rcsection* malloc (int) ;
 struct rcsection* rc_findsect (struct rcfile*,char const*) ;
 int rs_next ;
 int strdup (char const*) ;

__attribute__((used)) static struct rcsection *
rc_addsect(struct rcfile *rcp, const char *sectname)
{
 struct rcsection *p;

 p = rc_findsect(rcp, sectname);
 if (p) return p;
 p = malloc(sizeof(*p));
 if (!p) return ((void*)0);
 p->rs_name = strdup(sectname);
 SLIST_INIT(&p->rs_keys);
 SLIST_INSERT_HEAD(&rcp->rf_sect, p, rs_next);
 return p;
}
