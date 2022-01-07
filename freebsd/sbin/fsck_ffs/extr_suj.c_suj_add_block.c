
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ufs_lbn_t ;
typedef int ufs2_daddr_t ;
typedef int ino_t ;


 int fs ;
 int fsbtodb (int ,int) ;
 int jblocks_add (int ,int ,int ) ;
 int suj_jblocks ;

__attribute__((used)) static void
suj_add_block(ino_t ino, ufs_lbn_t lbn, ufs2_daddr_t blk, int frags)
{

 jblocks_add(suj_jblocks, fsbtodb(fs, blk), fsbtodb(fs, frags));
}
