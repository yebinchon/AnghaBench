
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned char const* digest; int kind; } ;
typedef TYPE_1__ svn_checksum_t ;
typedef int svn_checksum_kind_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;


 char const* svn_checksum_to_cstring_display (TYPE_1__*,int *) ;

__attribute__((used)) static const char *
format_digest(const unsigned char *digest,
              svn_checksum_kind_t kind,
              svn_boolean_t is_null,
              apr_pool_t *result_pool)
{
  svn_checksum_t checksum;
  checksum.digest = digest;
  checksum.kind = kind;

  if (is_null)
    return "(null)";

  return svn_checksum_to_cstring_display(&checksum, result_pool);
}
