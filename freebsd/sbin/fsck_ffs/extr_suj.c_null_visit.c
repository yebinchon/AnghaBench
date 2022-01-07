
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ufs_lbn_t ;
typedef int ufs2_daddr_t ;
typedef int ino_t ;


 scalar_t__ visitlbn ;

__attribute__((used)) static void
null_visit(ino_t ino, ufs_lbn_t lbn, ufs2_daddr_t blk, int frags)
{
 if (lbn > 0)
  visitlbn = lbn;
}
