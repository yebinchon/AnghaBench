
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_filesize_t ;
typedef int svn_error_t ;
struct TYPE_4__ {int expanded_size; } ;
typedef TYPE_1__ representation_t ;
struct TYPE_5__ {TYPE_1__* data_rep; } ;
typedef TYPE_2__ node_revision_t ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;

svn_error_t *
svn_fs_fs__file_length(svn_filesize_t *length,
                       node_revision_t *noderev,
                       apr_pool_t *pool)
{
  representation_t *data_rep = noderev->data_rep;
  if (!data_rep)
    {

      *length = 0;
    }
  else
    {
      *length = data_rep->expanded_size;
    }

  return SVN_NO_ERROR;
}
