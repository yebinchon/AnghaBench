
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UNKNOWN_ENTRY_POINT ;
 int afs_entry_point ;
 int k_hasafs () ;

int
k_hasafs_recheck(void)
{
    afs_entry_point = UNKNOWN_ENTRY_POINT;
    return k_hasafs();
}
