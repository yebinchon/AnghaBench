
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcsection {int rs_keys; } ;
struct rckey {void* rk_value; void* rk_name; } ;


 int SLIST_INSERT_HEAD (int *,struct rckey*,int ) ;
 int free (void*) ;
 struct rckey* malloc (int) ;
 struct rckey* rc_sect_findkey (struct rcsection*,char const*) ;
 int rk_next ;
 void* strdup (char const*) ;

__attribute__((used)) static struct rckey *
rc_sect_addkey(struct rcsection *rsp, const char *name, const char *value)
{
 struct rckey *p;

 p = rc_sect_findkey(rsp, name);
 if (p) {
  free(p->rk_value);
 } else {
  p = malloc(sizeof(*p));
  if (!p) return ((void*)0);
  SLIST_INSERT_HEAD(&rsp->rs_keys, p, rk_next);
  p->rk_name = strdup(name);
 }
 p->rk_value = value ? strdup(value) : strdup("");
 return p;
}
