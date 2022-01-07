
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int svn_fs_t ;
struct TYPE_12__ {int stream; } ;
typedef TYPE_1__ svn_fs_fs__revision_file_t ;
struct TYPE_13__ {scalar_t__ type; } ;
typedef TYPE_2__ svn_fs_fs__rep_header_t ;
typedef int svn_error_t ;
struct TYPE_14__ {void* kind; int digest; } ;
typedef TYPE_3__ svn_checksum_t ;
struct TYPE_15__ {int expanded_size; int size; int item_index; int revision; int sha1_digest; scalar_t__ has_sha1; int md5_digest; int txn_id; } ;
typedef TYPE_4__ representation_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int assert (int) ;
 int open_and_seek_revision (TYPE_1__**,int *,int ,int ,int *) ;
 TYPE_3__* svn_checksum_empty_checksum (void*,int *) ;
 int svn_checksum_match (TYPE_3__*,TYPE_3__*) ;
 void* svn_checksum_md5 ;
 void* svn_checksum_sha1 ;
 int svn_fs_fs__close_revision_file (TYPE_1__*) ;
 int svn_fs_fs__id_txn_used (int *) ;
 int svn_fs_fs__read_rep_header (TYPE_2__**,int ,int *,int *) ;
 scalar_t__ svn_fs_fs__rep_plain ;

svn_error_t *
svn_fs_fs__fixup_expanded_size(svn_fs_t *fs,
                               representation_t *rep,
                               apr_pool_t *scratch_pool)
{
  svn_checksum_t checksum;
  svn_checksum_t *empty_md5;
  svn_fs_fs__revision_file_t *revision_file;
  svn_fs_fs__rep_header_t *rep_header;





  if (!rep || rep->expanded_size != 0 || rep->size == 0)
    return SVN_NO_ERROR;


  assert(!svn_fs_fs__id_txn_used(&rep->txn_id));
  empty_md5 = svn_checksum_empty_checksum(svn_checksum_md5, scratch_pool);

  checksum.digest = rep->md5_digest;
  checksum.kind = svn_checksum_md5;
  if (!svn_checksum_match(empty_md5, &checksum))
    {
      rep->expanded_size = rep->size;
      return SVN_NO_ERROR;
    }



  if (rep->has_sha1)
    {
      svn_checksum_t *empty_sha1
        = svn_checksum_empty_checksum(svn_checksum_sha1, scratch_pool);

      checksum.digest = rep->sha1_digest;
      checksum.kind = svn_checksum_sha1;
      if (!svn_checksum_match(empty_sha1, &checksum))
        {
          rep->expanded_size = rep->size;
          return SVN_NO_ERROR;
        }
    }
  if (rep->size == 4)
    {

      return SVN_NO_ERROR;
    }




  SVN_ERR(open_and_seek_revision(&revision_file, fs, rep->revision,
                                 rep->item_index, scratch_pool));
  SVN_ERR(svn_fs_fs__read_rep_header(&rep_header, revision_file->stream,
                                     scratch_pool, scratch_pool));
  SVN_ERR(svn_fs_fs__close_revision_file(revision_file));


  if (rep_header->type == svn_fs_fs__rep_plain)
    rep->expanded_size = rep->size;

  return SVN_NO_ERROR;
}
