
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* data_rep; } ;
typedef TYPE_2__ svn_fs_x__noderev_t ;
typedef int svn_error_t ;
struct TYPE_10__ {int kind; int digest; } ;
typedef TYPE_3__ svn_checksum_t ;
typedef int svn_checksum_kind_t ;
typedef int apr_pool_t ;
struct TYPE_8__ {int sha1_digest; int has_sha1; int md5_digest; } ;


 int * SVN_NO_ERROR ;
 TYPE_3__* svn_checksum_dup (TYPE_3__*,int *) ;



svn_error_t *
svn_fs_x__file_checksum(svn_checksum_t **checksum,
                        svn_fs_x__noderev_t *noderev,
                        svn_checksum_kind_t kind,
                        apr_pool_t *result_pool)
{
  *checksum = ((void*)0);

  if (noderev->data_rep)
    {
      svn_checksum_t temp;
      temp.kind = kind;

      switch(kind)
        {
          case 129:
            temp.digest = noderev->data_rep->md5_digest;
            break;

          case 128:
            if (! noderev->data_rep->has_sha1)
              return SVN_NO_ERROR;

            temp.digest = noderev->data_rep->sha1_digest;
            break;

          default:
            return SVN_NO_ERROR;
        }

      *checksum = svn_checksum_dup(&temp, result_pool);
    }

  return SVN_NO_ERROR;
}
