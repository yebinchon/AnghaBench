
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int chunk_index; int item_index; scalar_t__ revision; } ;
typedef TYPE_1__ window_cache_key_t ;
struct TYPE_7__ {scalar_t__ revision; int chunk_index; int item_index; } ;
typedef TYPE_2__ rep_state_t ;
typedef scalar_t__ apr_uint32_t ;


 scalar_t__ APR_UINT32_MAX ;
 int assert (int) ;

__attribute__((used)) static window_cache_key_t *
get_window_key(window_cache_key_t *key, rep_state_t *rs)
{
  assert(rs->revision <= APR_UINT32_MAX);
  key->revision = (apr_uint32_t)rs->revision;
  key->item_index = rs->item_index;
  key->chunk_index = rs->chunk_index;

  return key;
}
