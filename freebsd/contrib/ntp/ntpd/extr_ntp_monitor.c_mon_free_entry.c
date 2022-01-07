
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mon_entry ;


 int LINK_SLIST (int ,int *,int ) ;
 int ZERO (int ) ;
 int hash_next ;
 int mon_free ;

__attribute__((used)) static inline void
mon_free_entry(
 mon_entry *m
 )
{
 ZERO(*m);
 LINK_SLIST(mon_free, m, hash_next);
}
