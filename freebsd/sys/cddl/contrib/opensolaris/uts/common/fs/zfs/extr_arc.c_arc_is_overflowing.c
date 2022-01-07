
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int64_t ;
typedef int boolean_t ;


 scalar_t__ MAX (int ,int) ;
 int SPA_MAXBLOCKSIZE ;
 scalar_t__ aggsum_lower_bound (int *) ;
 int arc_c ;
 int arc_size ;
 int zfs_arc_overflow_shift ;

__attribute__((used)) static boolean_t
arc_is_overflowing(void)
{

 int64_t overflow = MAX(SPA_MAXBLOCKSIZE,
     arc_c >> zfs_arc_overflow_shift);
 return (aggsum_lower_bound(&arc_size) >= (int64_t)arc_c + overflow);
}
