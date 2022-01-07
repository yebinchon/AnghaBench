
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t svn_checksum_kind_t ;


 unsigned char const** empty_string_digests ;

const unsigned char *
svn__empty_string_digest(svn_checksum_kind_t kind)
{
  return empty_string_digests[kind];
}
