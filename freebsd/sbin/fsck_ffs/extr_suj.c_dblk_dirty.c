
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ufs2_daddr_t ;
struct data_blk {int db_dirty; } ;


 struct data_blk* dblk_lookup (int ) ;

__attribute__((used)) static void
dblk_dirty(ufs2_daddr_t blk)
{
 struct data_blk *dblk;

 dblk = dblk_lookup(blk);
 dblk->db_dirty = 1;
}
