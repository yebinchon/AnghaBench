
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_boolean_t ;
typedef scalar_t__ apr_size_t ;


 int FALSE ;
 scalar_t__ memcmp (void const*,void const*,scalar_t__) ;

__attribute__((used)) static svn_boolean_t
equal(const void *left, apr_size_t left_len,
      const void *right, apr_size_t right_len)
{
  if (left_len != right_len)
    return FALSE;

  return memcmp(left, right, right_len) == 0;
}
