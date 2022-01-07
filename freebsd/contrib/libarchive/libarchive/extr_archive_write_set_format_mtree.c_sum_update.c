
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtree_writer {int compute_sum; size_t crc_len; int sha512ctx; int sha384ctx; int sha256ctx; int sha1ctx; int rmd160ctx; int md5ctx; int crc; } ;


 int COMPUTE_CRC (int ,unsigned char const) ;
 int F_CKSUM ;
 int F_MD5 ;
 int F_RMD160 ;
 int F_SHA1 ;
 int F_SHA256 ;
 int F_SHA384 ;
 int F_SHA512 ;
 int archive_md5_update (int *,void const*,size_t) ;
 int archive_rmd160_update (int *,void const*,size_t) ;
 int archive_sha1_update (int *,void const*,size_t) ;
 int archive_sha256_update (int *,void const*,size_t) ;
 int archive_sha384_update (int *,void const*,size_t) ;
 int archive_sha512_update (int *,void const*,size_t) ;

__attribute__((used)) static void
sum_update(struct mtree_writer *mtree, const void *buff, size_t n)
{
 if (mtree->compute_sum & F_CKSUM) {



  const unsigned char *p;
  size_t nn;

  for (nn = n, p = buff; nn--; ++p)
   COMPUTE_CRC(mtree->crc, *p);
  mtree->crc_len += n;
 }
}
