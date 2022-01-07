
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ context_size; int pool; int output_stream; TYPE_2__* context_saver; } ;
typedef TYPE_1__ merge_output_baton_t ;
struct TYPE_6__ {scalar_t__ context_size; void* len; void* data; int stream; } ;
typedef TYPE_2__ context_saver_t ;


 void* apr_pcalloc (int ,int) ;
 int assert (int) ;
 int context_saver_stream_write ;
 int svn_pool_clear (int ) ;
 int svn_stream_empty (int ) ;
 int svn_stream_set_baton (int ,TYPE_2__*) ;
 int svn_stream_set_write (int ,int ) ;

__attribute__((used)) static void
make_context_saver(merge_output_baton_t *mob)
{
  context_saver_t *cs;

  assert(mob->context_size > 0);

  svn_pool_clear(mob->pool);
  cs = apr_pcalloc(mob->pool, sizeof(*cs));
  cs->stream = svn_stream_empty(mob->pool);
  svn_stream_set_baton(cs->stream, cs);
  svn_stream_set_write(cs->stream, context_saver_stream_write);
  mob->context_saver = cs;
  mob->output_stream = cs->stream;
  cs->context_size = mob->context_size;
  cs->data = apr_pcalloc(mob->pool, sizeof(*cs->data) * cs->context_size);
  cs->len = apr_pcalloc(mob->pool, sizeof(*cs->len) * cs->context_size);
}
