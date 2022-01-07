
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_12__ ;


struct TYPE_14__ {int fulltext_cache; } ;
typedef TYPE_1__ svn_fs_x__data_t ;
typedef int svn_error_t ;
struct TYPE_15__ {int digest; int kind; } ;
typedef TYPE_2__ svn_checksum_t ;
typedef scalar_t__ svn_boolean_t ;
struct TYPE_16__ {scalar_t__ off; scalar_t__ len; int * current_fulltext; int scratch_pool; int fulltext_cache_key; TYPE_12__* fs; int md5_checksum_ctx; scalar_t__ checksum_finalized; int md5_digest; int fulltext_delivered; int filehandle_pool; int rep; int src_state; int base_window; int rs_list; int * fulltext_cache; } ;
typedef TYPE_3__ rep_read_baton_t ;
typedef int apr_size_t ;
struct TYPE_13__ {TYPE_1__* fsap_data; } ;


 int SVN_ERR (int ) ;
 int SVN_ERR_FS_CORRUPT ;
 int * SVN_NO_ERROR ;
 scalar_t__ TRUE ;
 int _ (char*) ;
 int build_rep_list (int *,int *,int *,TYPE_12__*,int *,int ,int ) ;
 int get_contents_from_fulltext (scalar_t__*,TYPE_3__*,char*,int *) ;
 int get_contents_from_windows (TYPE_3__*,char*,int *) ;
 int skip_contents (TYPE_3__*,int ) ;
 int svn_cache__set (int ,int *,int *,int ) ;
 int svn_checksum_final (TYPE_2__**,int ,int ) ;
 int svn_checksum_match (TYPE_2__*,TYPE_2__*) ;
 int svn_checksum_md5 ;
 int svn_checksum_mismatch_err (TYPE_2__*,TYPE_2__*,int ,int ) ;
 int svn_checksum_update (int ,char*,int ) ;
 int * svn_error_create (int ,int ,int *) ;
 int svn_stringbuf_appendbytes (int *,char*,int ) ;

__attribute__((used)) static svn_error_t *
rep_read_contents(void *baton,
                  char *buf,
                  apr_size_t *len)
{
  rep_read_baton_t *rb = baton;


  if (rb->fulltext_cache)
    {
      svn_boolean_t cached;
      SVN_ERR(get_contents_from_fulltext(&cached, rb, buf, len));
      if (cached)
        return SVN_NO_ERROR;



      rb->fulltext_cache = ((void*)0);
    }


  if (!rb->rs_list)
    {

      SVN_ERR(build_rep_list(&rb->rs_list, &rb->base_window,
                             &rb->src_state, rb->fs, &rb->rep,
                             rb->filehandle_pool, rb->scratch_pool));




      SVN_ERR(skip_contents(rb, rb->fulltext_delivered));
    }




  if (rb->off == rb->len)
    *len = 0;
  else
    SVN_ERR(get_contents_from_windows(rb, buf, len));

  if (rb->current_fulltext)
    svn_stringbuf_appendbytes(rb->current_fulltext, buf, *len);





  if (!rb->checksum_finalized)
    {
      SVN_ERR(svn_checksum_update(rb->md5_checksum_ctx, buf, *len));
      rb->off += *len;
      if (rb->off == rb->len)
        {
          svn_checksum_t *md5_checksum;
          svn_checksum_t expected;
          expected.kind = svn_checksum_md5;
          expected.digest = rb->md5_digest;

          rb->checksum_finalized = TRUE;
          SVN_ERR(svn_checksum_final(&md5_checksum, rb->md5_checksum_ctx,
                                     rb->scratch_pool));
          if (!svn_checksum_match(md5_checksum, &expected))
            return svn_error_create(SVN_ERR_FS_CORRUPT,
                    svn_checksum_mismatch_err(&expected, md5_checksum,
                        rb->scratch_pool,
                        _("Checksum mismatch while reading representation")),
                    ((void*)0));
        }
    }

  if (rb->off == rb->len && rb->current_fulltext)
    {
      svn_fs_x__data_t *ffd = rb->fs->fsap_data;
      SVN_ERR(svn_cache__set(ffd->fulltext_cache, &rb->fulltext_cache_key,
                             rb->current_fulltext, rb->scratch_pool));
      rb->current_fulltext = ((void*)0);
    }

  return SVN_NO_ERROR;
}
