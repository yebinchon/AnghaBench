
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ufs2_daddr_t ;
struct data_blk {int db_size; int * db_buf; } ;


 int bread (int *,int ,int *,int) ;
 struct data_blk* dblk_lookup (int ) ;
 int disk ;
 int err_suj (char*,int ) ;
 int * errmalloc (int) ;
 int free (int *) ;
 int fs ;
 int fsbtodb (int ,int ) ;

__attribute__((used)) static uint8_t *
dblk_read(ufs2_daddr_t blk, int size)
{
 struct data_blk *dblk;

 dblk = dblk_lookup(blk);




 if (size != dblk->db_size) {
  if (dblk->db_buf)
   free(dblk->db_buf);
  dblk->db_buf = errmalloc(size);
  dblk->db_size = size;
  if (bread(&disk, fsbtodb(fs, blk), dblk->db_buf, size) == -1)
   err_suj("Failed to read data block %jd\n", blk);
 }
 return (dblk->db_buf);
}
