
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
struct reg_info {int compute_sum; int buf_sha512; int buf_sha384; int buf_sha256; int buf_sha1; int buf_rmd160; int buf_md5; scalar_t__ crc; } ;
struct archive_string {int dummy; } ;


 int F_CKSUM ;
 int F_MD5 ;
 int F_RMD160 ;
 int F_SHA1 ;
 int F_SHA256 ;
 int F_SHA384 ;
 int F_SHA512 ;
 int archive_strcat (struct archive_string*,char*) ;
 int archive_string_sprintf (struct archive_string*,char*,int ) ;
 int strappend_bin (struct archive_string*,int ,int) ;

__attribute__((used)) static void
sum_write(struct archive_string *str, struct reg_info *reg)
{

 if (reg->compute_sum & F_CKSUM) {
  archive_string_sprintf(str, " cksum=%ju",
      (uintmax_t)reg->crc);
 }
}
