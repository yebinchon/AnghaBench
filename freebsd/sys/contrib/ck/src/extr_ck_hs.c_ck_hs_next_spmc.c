
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ck_hs_map {int dummy; } ;
struct ck_hs_iterator {struct ck_hs_map* map; } ;
struct ck_hs {int map; } ;


 int _ck_hs_next (struct ck_hs*,struct ck_hs_map*,struct ck_hs_iterator*,void**) ;
 struct ck_hs_map* ck_pr_load_ptr (int *) ;

bool
ck_hs_next_spmc(struct ck_hs *hs, struct ck_hs_iterator *i, void **key)
{
 struct ck_hs_map *m = i->map;
 if (m == ((void*)0)) {
  m = i->map = ck_pr_load_ptr(&hs->map);
 }
 return _ck_hs_next(hs, m, i, key);
}
