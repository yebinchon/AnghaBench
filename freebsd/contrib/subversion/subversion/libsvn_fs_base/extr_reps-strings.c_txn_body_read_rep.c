
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int pool; } ;
typedef TYPE_2__ trail_t ;
typedef int svn_error_t ;
struct read_rep_args {scalar_t__* len; TYPE_1__* rb; int buf; } ;
struct TYPE_10__ {scalar_t__ sha1_checksum; scalar_t__ md5_checksum; } ;
typedef TYPE_3__ representation_t ;
struct TYPE_8__ {scalar_t__ offset; scalar_t__ size; scalar_t__ rep_key; int sha1_checksum; int md5_checksum; int fs; scalar_t__ checksum_finalized; int sha1_checksum_ctx; int md5_checksum_ctx; int scratch_pool; } ;


 int SVN_ERR (int ) ;
 int SVN_ERR_FS_CORRUPT ;
 int SVN_ERR_FS_REP_CHANGED ;
 int * SVN_NO_ERROR ;
 scalar_t__ TRUE ;
 int * _ (char*) ;
 int rep_read_range (int ,scalar_t__,scalar_t__,int ,scalar_t__*,TYPE_2__*,int ) ;
 int svn_checksum_final (int *,int ,int ) ;
 int svn_checksum_match (scalar_t__,int ) ;
 int * svn_checksum_mismatch_err (scalar_t__,int ,int ,int *,scalar_t__) ;
 int svn_checksum_update (int ,int ,scalar_t__) ;
 int * svn_error_create (int ,int *,int *) ;
 int * svn_error_createf (int ,int *,int *) ;
 int svn_fs_bdb__read_rep (TYPE_3__**,int ,scalar_t__,TYPE_2__*,int ) ;

__attribute__((used)) static svn_error_t *
txn_body_read_rep(void *baton, trail_t *trail)
{
  struct read_rep_args *args = baton;

  if (args->rb->rep_key)
    {
      SVN_ERR(rep_read_range(args->rb->fs,
                             args->rb->rep_key,
                             args->rb->offset,
                             args->buf,
                             args->len,
                             trail,
                             args->rb->scratch_pool));

      args->rb->offset += *(args->len);
      if (! args->rb->checksum_finalized)
        {
          SVN_ERR(svn_checksum_update(args->rb->md5_checksum_ctx, args->buf,
                                      *(args->len)));
          SVN_ERR(svn_checksum_update(args->rb->sha1_checksum_ctx, args->buf,
                                      *(args->len)));

          if (args->rb->offset == args->rb->size)
            {
              representation_t *rep;

              SVN_ERR(svn_checksum_final(&args->rb->md5_checksum,
                                         args->rb->md5_checksum_ctx,
                                         trail->pool));
              SVN_ERR(svn_checksum_final(&args->rb->sha1_checksum,
                                         args->rb->sha1_checksum_ctx,
                                         trail->pool));
              args->rb->checksum_finalized = TRUE;

              SVN_ERR(svn_fs_bdb__read_rep(&rep, args->rb->fs,
                                           args->rb->rep_key,
                                           trail, trail->pool));

              if (rep->md5_checksum
                  && (! svn_checksum_match(rep->md5_checksum,
                                           args->rb->md5_checksum)))
                return svn_error_create(SVN_ERR_FS_CORRUPT,
                        svn_checksum_mismatch_err(rep->md5_checksum,
                             args->rb->md5_checksum, trail->pool,
                             _("MD5 checksum mismatch on representation '%s'"),
                             args->rb->rep_key),
                        ((void*)0));

              if (rep->sha1_checksum
                  && (! svn_checksum_match(rep->sha1_checksum,
                                           args->rb->sha1_checksum)))
                return svn_error_createf(SVN_ERR_FS_CORRUPT,
                        svn_checksum_mismatch_err(rep->sha1_checksum,
                            args->rb->sha1_checksum, trail->pool,
                            _("SHA1 checksum mismatch on representation '%s'"),
                            args->rb->rep_key),
                        ((void*)0));
            }
        }
    }
  else if (args->rb->offset > 0)
    {
      return
        svn_error_create
        (SVN_ERR_FS_REP_CHANGED, ((void*)0),
         _("Null rep, but offset past zero already"));
    }
  else
    *(args->len) = 0;

  return SVN_NO_ERROR;
}
