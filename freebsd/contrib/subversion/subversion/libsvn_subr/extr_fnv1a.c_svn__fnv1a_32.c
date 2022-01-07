
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_uint32_t ;
typedef int apr_size_t ;


 int FNV1_BASE_32 ;
 int fnv1a_32 (int ,void const*,int ) ;

apr_uint32_t
svn__fnv1a_32(const void *input, apr_size_t len)
{
  return fnv1a_32(FNV1_BASE_32, input, len);
}
