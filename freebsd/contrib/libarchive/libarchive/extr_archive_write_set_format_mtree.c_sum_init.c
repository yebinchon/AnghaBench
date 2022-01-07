
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtree_writer {int compute_sum; int keys; int sha512ctx; int sha384ctx; int sha256ctx; int sha1ctx; int rmd160ctx; int md5ctx; scalar_t__ crc_len; scalar_t__ crc; } ;


 scalar_t__ ARCHIVE_OK ;
 int F_CKSUM ;
 int F_MD5 ;
 int F_RMD160 ;
 int F_SHA1 ;
 int F_SHA256 ;
 int F_SHA384 ;
 int F_SHA512 ;
 scalar_t__ archive_md5_init (int *) ;
 scalar_t__ archive_rmd160_init (int *) ;
 scalar_t__ archive_sha1_init (int *) ;
 scalar_t__ archive_sha256_init (int *) ;
 scalar_t__ archive_sha384_init (int *) ;
 scalar_t__ archive_sha512_init (int *) ;

__attribute__((used)) static void
sum_init(struct mtree_writer *mtree)
{

 mtree->compute_sum = 0;

 if (mtree->keys & F_CKSUM) {
  mtree->compute_sum |= F_CKSUM;
  mtree->crc = 0;
  mtree->crc_len = 0;
 }
}
