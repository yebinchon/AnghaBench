
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned char const* digest; int member_1; int * member_0; } ;
typedef TYPE_1__ svn_checksum_t ;
typedef int apr_uint32_t ;
typedef int apr_pool_t ;


 int htonl (int ) ;
 int svn_checksum_fnv1a_32 ;
 char const* svn_checksum_to_cstring_display (TYPE_1__*,int *) ;

__attribute__((used)) static const char *
fnv1_to_string(apr_uint32_t fnv1,
               apr_pool_t *pool)
{

  svn_checksum_t checksum = { ((void*)0), svn_checksum_fnv1a_32 };
  apr_uint32_t digest = htonl(fnv1);
  checksum.digest = (const unsigned char *)&digest;


  return svn_checksum_to_cstring_display(&checksum, pool);
}
