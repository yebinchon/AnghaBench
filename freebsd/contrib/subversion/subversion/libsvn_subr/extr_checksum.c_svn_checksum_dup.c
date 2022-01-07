
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int kind; int digest; } ;
typedef TYPE_1__ svn_checksum_t ;
typedef int apr_pool_t ;


 int SVN_ERR_MALFUNCTION_NO_RETURN () ;
 TYPE_1__* checksum_create (int,int ,int *) ;





svn_checksum_t *
svn_checksum_dup(const svn_checksum_t *checksum,
                 apr_pool_t *pool)
{

  if (checksum == ((void*)0))
    return ((void*)0);






  switch (checksum->kind)
    {
      case 129:
      case 128:
      case 131:
      case 130:
        return checksum_create(checksum->kind, checksum->digest, pool);

      default:
        SVN_ERR_MALFUNCTION_NO_RETURN();
        break;
    }
}
