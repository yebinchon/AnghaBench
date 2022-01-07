
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct reg_info {int compute_sum; int buf_sha512; int buf_sha384; int buf_sha256; int buf_sha1; int buf_rmd160; int buf_md5; int crc; } ;
struct mtree_writer {int compute_sum; int crc_len; int sha512ctx; int sha384ctx; int sha256ctx; int sha1ctx; int rmd160ctx; int md5ctx; int crc; } ;


 int COMPUTE_CRC (int ,int) ;
 int F_CKSUM ;
 int F_MD5 ;
 int F_RMD160 ;
 int F_SHA1 ;
 int F_SHA256 ;
 int F_SHA384 ;
 int F_SHA512 ;
 int archive_md5_final (int *,int ) ;
 int archive_rmd160_final (int *,int ) ;
 int archive_sha1_final (int *,int ) ;
 int archive_sha256_final (int *,int ) ;
 int archive_sha384_final (int *,int ) ;
 int archive_sha512_final (int *,int ) ;

__attribute__((used)) static void
sum_final(struct mtree_writer *mtree, struct reg_info *reg)
{

 if (mtree->compute_sum & F_CKSUM) {
  uint64_t len;

  for (len = mtree->crc_len; len != 0; len >>= 8)
   COMPUTE_CRC(mtree->crc, len & 0xff);
  reg->crc = ~mtree->crc;
 }
 reg->compute_sum = mtree->compute_sum;
}
