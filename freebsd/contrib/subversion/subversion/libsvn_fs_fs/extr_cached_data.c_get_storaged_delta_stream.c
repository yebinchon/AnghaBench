
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_txdelta_stream_t ;
struct delta_read_baton {int md5_digest; int * rs; } ;
typedef int rep_state_t ;
struct TYPE_5__ {TYPE_1__* data_rep; } ;
typedef TYPE_2__ node_revision_t ;
typedef int apr_pool_t ;
struct TYPE_4__ {int md5_digest; } ;


 struct delta_read_baton* apr_pcalloc (int *,int) ;
 int delta_read_md5_digest ;
 int delta_read_next_window ;
 int memcpy (int ,int ,int) ;
 int * svn_txdelta_stream_create (struct delta_read_baton*,int ,int ,int *) ;

__attribute__((used)) static svn_txdelta_stream_t *
get_storaged_delta_stream(rep_state_t *rep_state,
                          node_revision_t *target,
                          apr_pool_t *pool)
{

  struct delta_read_baton *drb = apr_pcalloc(pool, sizeof(*drb));
  drb->rs = rep_state;
  memcpy(drb->md5_digest, target->data_rep->md5_digest,
         sizeof(drb->md5_digest));
  return svn_txdelta_stream_create(drb, delta_read_next_window,
                                   delta_read_md5_digest, pool);
}
