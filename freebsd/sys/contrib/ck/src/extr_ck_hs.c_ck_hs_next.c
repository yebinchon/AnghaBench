
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ck_hs_iterator {int dummy; } ;
struct ck_hs {int map; } ;


 int _ck_hs_next (struct ck_hs*,int ,struct ck_hs_iterator*,void**) ;

bool
ck_hs_next(struct ck_hs *hs, struct ck_hs_iterator *i, void **key)
{
 return _ck_hs_next(hs, hs->map, i, key);
}
