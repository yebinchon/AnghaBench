
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_uint64_t ;
typedef scalar_t__ apr_int64_t ;


 int APR_UINT64_MAX ;
 unsigned char* svn__decode_uint (int*,unsigned char const*,unsigned char const*) ;

const unsigned char *
svn__decode_int(apr_int64_t *val,
                const unsigned char *p,
                const unsigned char *end)
{
  apr_uint64_t value;
  const unsigned char *result = svn__decode_uint(&value, p, end);

  value = value & 1
        ? (APR_UINT64_MAX - value / 2)
        : value / 2;
  *val = (apr_int64_t)value;

  return result;
}
