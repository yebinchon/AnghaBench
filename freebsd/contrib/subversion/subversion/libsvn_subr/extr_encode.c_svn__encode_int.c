
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_uint64_t ;
typedef int apr_int64_t ;


 int APR_UINT64_C (int) ;
 int APR_UINT64_MAX ;
 unsigned char* svn__encode_uint (unsigned char*,int) ;

unsigned char *
svn__encode_int(unsigned char *p, apr_int64_t val)
{
  apr_uint64_t value = val;
  value = value & APR_UINT64_C(0x8000000000000000)
        ? APR_UINT64_MAX - (2 * value)
        : 2 * value;

  return svn__encode_uint(p, value);
}
