
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mon_entry ;


 int DEBUG_INSIST (int) ;
 int UNLINK_DLIST (int *,int ) ;
 int ZERO (int ) ;
 int mru ;
 int remove_from_hash (int *) ;

__attribute__((used)) static inline void
mon_reclaim_entry(
 mon_entry *m
 )
{
 DEBUG_INSIST(((void*)0) != m);

 UNLINK_DLIST(m, mru);
 remove_from_hash(m);
 ZERO(*m);
}
