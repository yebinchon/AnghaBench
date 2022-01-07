
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_stringbuf_t ;
struct TYPE_4__ {TYPE_2__* result; int * missing; } ;
typedef TYPE_1__ svn_fs_x__rep_extractor_t ;
typedef int svn_error_t ;
typedef scalar_t__ apr_size_t ;
typedef int apr_pool_t ;
struct TYPE_5__ {scalar_t__ len; scalar_t__ data; } ;


 int SVN_ERR_ASSERT (int ) ;
 int * SVN_NO_ERROR ;
 int * svn_stringbuf_dup (TYPE_2__*,int *) ;
 int * svn_stringbuf_ncreate (scalar_t__,scalar_t__,int *) ;

svn_error_t *
svn_fs_x__extractor_drive(svn_stringbuf_t **contents,
                          svn_fs_x__rep_extractor_t *extractor,
                          apr_size_t start_offset,
                          apr_size_t size,
                          apr_pool_t *result_pool,
                          apr_pool_t *scratch_pool)
{

  SVN_ERR_ASSERT(extractor->missing == ((void*)0));

  if (size == 0)
    {
      *contents = svn_stringbuf_dup(extractor->result, result_pool);
    }
  else
    {

      if (start_offset > extractor->result->len)
        start_offset = extractor->result->len;

      if (size > extractor->result->len - start_offset)
        size = extractor->result->len - start_offset;

      *contents = svn_stringbuf_ncreate(extractor->result->data + start_offset,
                                        size, result_pool);
    }

  return SVN_NO_ERROR;
}
