
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ svn_revnum_t ;
struct TYPE_8__ {int chunk_index; int item_index; scalar_t__ revision; } ;
typedef TYPE_2__ svn_fs_x__window_cache_key_t ;
struct TYPE_7__ {int number; int change_set; } ;
struct TYPE_9__ {int chunk_index; TYPE_1__ rep_id; } ;
typedef TYPE_3__ rep_state_t ;
typedef scalar_t__ apr_uint32_t ;


 scalar_t__ APR_UINT32_MAX ;
 int assert (int) ;
 scalar_t__ svn_fs_x__get_revnum (int ) ;

__attribute__((used)) static svn_fs_x__window_cache_key_t *
get_window_key(svn_fs_x__window_cache_key_t *key,
               rep_state_t *rs)
{
  svn_revnum_t revision = svn_fs_x__get_revnum(rs->rep_id.change_set);
  assert(revision <= APR_UINT32_MAX);

  key->revision = (apr_uint32_t)revision;
  key->item_index = rs->rep_id.number;
  key->chunk_index = rs->chunk_index;

  return key;
}
