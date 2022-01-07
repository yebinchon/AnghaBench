
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int svn_stream_t ;
struct TYPE_13__ {TYPE_5__* fsap_data; } ;
typedef TYPE_2__ svn_fs_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
struct TYPE_12__ {int revision; } ;
struct rep_read_baton {TYPE_1__ fulltext_cache_key; scalar_t__ fulltext_cache; } ;
struct TYPE_14__ {int expanded_size; int revision; int item_index; } ;
typedef TYPE_3__ representation_t ;
struct TYPE_15__ {int second; int revision; int member_0; } ;
typedef TYPE_4__ pair_cache_key_t ;
struct TYPE_16__ {scalar_t__ fulltext_cache; } ;
typedef TYPE_5__ fs_fs_data_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_INVALID_REVNUM ;
 scalar_t__ SVN_IS_VALID_REVNUM (int ) ;
 int * SVN_NO_ERROR ;
 scalar_t__ fulltext_size_is_cachable (TYPE_5__*,int ) ;
 int rep_read_contents ;
 int rep_read_contents_close ;
 int rep_read_get_baton (struct rep_read_baton**,TYPE_2__*,TYPE_3__*,TYPE_4__,int *) ;
 int * svn_stream_create (struct rep_read_baton*,int *) ;
 int * svn_stream_empty (int *) ;
 int svn_stream_set_close (int *,int ) ;
 int svn_stream_set_read2 (int *,int *,int ) ;

svn_error_t *
svn_fs_fs__get_contents(svn_stream_t **contents_p,
                        svn_fs_t *fs,
                        representation_t *rep,
                        svn_boolean_t cache_fulltext,
                        apr_pool_t *pool)
{
  if (! rep)
    {
      *contents_p = svn_stream_empty(pool);
    }
  else
    {
      fs_fs_data_t *ffd = fs->fsap_data;
      struct rep_read_baton *rb;

      pair_cache_key_t fulltext_cache_key = { 0 };
      fulltext_cache_key.revision = rep->revision;
      fulltext_cache_key.second = rep->item_index;



      SVN_ERR(rep_read_get_baton(&rb, fs, rep, fulltext_cache_key, pool));




      if (ffd->fulltext_cache && cache_fulltext
          && SVN_IS_VALID_REVNUM(rep->revision)
          && fulltext_size_is_cachable(ffd, rep->expanded_size))
        {
          rb->fulltext_cache = ffd->fulltext_cache;
        }
      else
        {


          rb->fulltext_cache_key.revision = SVN_INVALID_REVNUM;
        }

      *contents_p = svn_stream_create(rb, pool);
      svn_stream_set_read2(*contents_p, ((void*)0) ,
                           rep_read_contents);
      svn_stream_set_close(*contents_p, rep_read_contents_close);
    }

  return SVN_NO_ERROR;
}
