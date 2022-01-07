
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ apr_uint64_t ;
typedef scalar_t__ apr_size_t ;


 scalar_t__ APR_SIZE_MAX ;
 unsigned char* svn__decode_uint (scalar_t__*,unsigned char const*,unsigned char const*) ;

__attribute__((used)) static const unsigned char *
decode_size(apr_size_t *val,
            const unsigned char *p,
            const unsigned char *end)
{
  apr_uint64_t temp = 0;
  const unsigned char *result = svn__decode_uint(&temp, p, end);
  if (temp > APR_SIZE_MAX)
    return ((void*)0);

  *val = (apr_size_t)temp;
  return result;
}
