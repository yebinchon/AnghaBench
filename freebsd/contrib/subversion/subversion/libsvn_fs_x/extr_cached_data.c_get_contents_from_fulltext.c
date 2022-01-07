
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
struct TYPE_5__ {scalar_t__ fulltext_delivered; int scratch_pool; int fulltext_cache_key; int fulltext_cache; } ;
typedef TYPE_1__ rep_read_baton_t ;
struct TYPE_6__ {char* buffer; scalar_t__ read; scalar_t__ len; scalar_t__ start; } ;
typedef TYPE_2__ fulltext_baton_t ;
typedef scalar_t__ apr_size_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 int * SVN_NO_ERROR ;
 int get_fulltext_partial ;
 int svn_cache__get_partial (void**,scalar_t__*,int ,int *,int ,TYPE_2__*,int ) ;

__attribute__((used)) static svn_error_t *
get_contents_from_fulltext(svn_boolean_t *cached,
                           rep_read_baton_t *baton,
                           char *buffer,
                           apr_size_t *len)
{
  void *dummy;
  fulltext_baton_t fulltext_baton;

  SVN_ERR_ASSERT((apr_size_t)baton->fulltext_delivered
                 == baton->fulltext_delivered);
  fulltext_baton.buffer = buffer;
  fulltext_baton.start = (apr_size_t)baton->fulltext_delivered;
  fulltext_baton.len = *len;
  fulltext_baton.read = 0;

  SVN_ERR(svn_cache__get_partial(&dummy, cached, baton->fulltext_cache,
                                 &baton->fulltext_cache_key,
                                 get_fulltext_partial, &fulltext_baton,
                                 baton->scratch_pool));

  if (*cached)
    {
      baton->fulltext_delivered += fulltext_baton.read;
      *len = fulltext_baton.read;
    }

  return SVN_NO_ERROR;
}
