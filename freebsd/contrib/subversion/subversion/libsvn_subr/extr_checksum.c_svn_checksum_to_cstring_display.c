
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int kind; int digest; } ;
typedef TYPE_1__ svn_checksum_t ;
typedef int apr_pool_t ;


 int * digest_sizes ;
 char const* svn__digest_to_cstring_display (int ,int ,int *) ;





const char *
svn_checksum_to_cstring_display(const svn_checksum_t *checksum,
                                apr_pool_t *pool)
{
  switch (checksum->kind)
    {
      case 129:
      case 128:
      case 131:
      case 130:
        return svn__digest_to_cstring_display(checksum->digest,
                                              digest_sizes[checksum->kind],
                                              pool);

      default:

        return ((void*)0);
    }
}
