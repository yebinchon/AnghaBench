
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_6__ {int cancel_baton; int (* cancel_func ) (int ) ;TYPE_1__* fs; } ;
typedef TYPE_2__ pack_context_t ;
struct TYPE_7__ {int block_size; } ;
typedef TYPE_3__ fs_fs_data_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;
typedef int apr_off_t ;
typedef int apr_file_t ;
struct TYPE_5__ {TYPE_3__* fsap_data; } ;


 int MIN (int,int ) ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 char* apr_palloc (int *,int ) ;
 int stub1 (int ) ;
 int svn_io_file_read_full2 (int *,char*,int,int *,int *,int *) ;
 int svn_io_file_write_full (int *,char*,int,int *,int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;

__attribute__((used)) static svn_error_t *
copy_file_data(pack_context_t *context,
               apr_file_t *dest,
               apr_file_t *source,
               apr_off_t size,
               apr_pool_t *pool)
{


  enum { STACK_BUFFER_SIZE = 1024 };

  if (size < STACK_BUFFER_SIZE)
    {

      char buffer[STACK_BUFFER_SIZE];
      SVN_ERR(svn_io_file_read_full2(source, buffer, (apr_size_t)size,
                                     ((void*)0), ((void*)0), pool));
      SVN_ERR(svn_io_file_write_full(dest, buffer, (apr_size_t)size,
                                     ((void*)0), pool));
    }
  else
    {



      fs_fs_data_t *ffd = context->fs->fsap_data;
      apr_pool_t *copypool = svn_pool_create(pool);
      char *buffer = apr_palloc(copypool, ffd->block_size);

      while (size)
        {
          apr_size_t to_copy = (apr_size_t)(MIN(size, ffd->block_size));
          if (context->cancel_func)
            SVN_ERR(context->cancel_func(context->cancel_baton));

          SVN_ERR(svn_io_file_read_full2(source, buffer, to_copy,
                                         ((void*)0), ((void*)0), pool));
          SVN_ERR(svn_io_file_write_full(dest, buffer, to_copy,
                                         ((void*)0), pool));

          size -= to_copy;
        }

      svn_pool_destroy(copypool);
    }

  return SVN_NO_ERROR;
}
