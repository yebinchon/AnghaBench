
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_stream_t ;
typedef int svn_error_t ;
struct TYPE_3__ {int context_size; int next_slot; size_t* len; scalar_t__* data; } ;
typedef TYPE_1__ context_saver_t ;
typedef size_t apr_size_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_stream_write (int *,scalar_t__,size_t*) ;

__attribute__((used)) static svn_error_t *
flush_context_saver(context_saver_t *cs,
                    svn_stream_t *output_stream)
{
  int i;
  for (i = 0; i < cs->context_size; i++)
    {
      apr_size_t slot = (i + cs->next_slot) % cs->context_size;
      if (cs->data[slot])
        {
          apr_size_t len = cs->len[slot];
          SVN_ERR(svn_stream_write(output_stream, cs->data[slot], &len));
        }
    }
  return SVN_NO_ERROR;
}
