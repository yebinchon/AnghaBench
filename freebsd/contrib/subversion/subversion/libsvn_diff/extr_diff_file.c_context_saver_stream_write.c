
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_2__ {int context_size; char const** data; size_t next_slot; int total_writes; int * len; } ;
typedef TYPE_1__ context_saver_t ;
typedef int apr_size_t ;


 int * SVN_NO_ERROR ;

__attribute__((used)) static svn_error_t *
context_saver_stream_write(void *baton,
                           const char *data,
                           apr_size_t *len)
{
  context_saver_t *cs = baton;

  if (cs->context_size > 0)
    {
      cs->data[cs->next_slot] = data;
      cs->len[cs->next_slot] = *len;
      cs->next_slot = (cs->next_slot + 1) % cs->context_size;
      cs->total_writes++;
    }
  return SVN_NO_ERROR;
}
