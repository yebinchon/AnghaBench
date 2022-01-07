
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int trail_t ;
typedef int svn_fs_t ;
typedef int svn_fs_id_t ;
typedef int svn_error_t ;
struct TYPE_3__ {char const* src_path; char const* src_txn_id; int const* dst_noderev_id; int kind; } ;
typedef TYPE_1__ copy_t ;
typedef int copy_kind_t ;
typedef int apr_pool_t ;


 int * put_copy (int *,TYPE_1__*,char const*,int *,int *) ;

svn_error_t *
svn_fs_bdb__create_copy(svn_fs_t *fs,
                        const char *copy_id,
                        const char *src_path,
                        const char *src_txn_id,
                        const svn_fs_id_t *dst_noderev_id,
                        copy_kind_t kind,
                        trail_t *trail,
                        apr_pool_t *pool)
{
  copy_t copy;
  copy.kind = kind;
  copy.src_path = src_path;
  copy.src_txn_id = src_txn_id;
  copy.dst_noderev_id = dst_noderev_id;
  return put_copy(fs, &copy, copy_id, trail, pool);
}
