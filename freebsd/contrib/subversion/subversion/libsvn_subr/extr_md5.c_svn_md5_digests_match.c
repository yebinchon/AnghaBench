
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_boolean_t ;


 int APR_MD5_DIGESTSIZE ;
 int svn__digests_match (unsigned char const*,unsigned char const*,int ) ;

svn_boolean_t
svn_md5_digests_match(const unsigned char d1[], const unsigned char d2[])
{
  return svn__digests_match(d1, d2, APR_MD5_DIGESTSIZE);
}
