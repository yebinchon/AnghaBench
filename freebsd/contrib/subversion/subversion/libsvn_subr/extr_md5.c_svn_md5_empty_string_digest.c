
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char const* svn__empty_string_digest (int ) ;
 int svn_checksum_md5 ;

const unsigned char *
svn_md5_empty_string_digest(void)
{
  return svn__empty_string_digest(svn_checksum_md5);
}
