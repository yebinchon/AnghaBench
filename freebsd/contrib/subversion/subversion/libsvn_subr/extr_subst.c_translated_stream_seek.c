
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int svn_stream_mark_t ;
typedef int svn_error_t ;
struct translated_stream_baton {scalar_t__ readbuf_off; int readbuf; scalar_t__ written; TYPE_5__* out_baton; TYPE_3__* in_baton; int stream; int buf; int iterpool; } ;
struct TYPE_7__ {int buf; scalar_t__ readbuf_off; TYPE_1__* readbuf; scalar_t__ written; TYPE_5__* out_baton; TYPE_3__* in_baton; } ;
struct TYPE_9__ {TYPE_2__ saved_baton; int mark; } ;
typedef TYPE_4__ mark_translated_t ;
struct TYPE_10__ {scalar_t__ src_format_len; scalar_t__ keyword_off; scalar_t__ newline_off; } ;
struct TYPE_8__ {scalar_t__ src_format_len; scalar_t__ keyword_off; scalar_t__ newline_off; } ;
struct TYPE_6__ {int len; int data; } ;


 scalar_t__ FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int SVN__TRANSLATION_BUF_SIZE ;
 int memcpy (int ,int ,int ) ;
 int svn_stream_reset (int ) ;
 int svn_stream_seek (int ,int ) ;
 int svn_stringbuf_appendbytes (int ,int ,int ) ;
 int svn_stringbuf_setempty (int ) ;
 int translate_chunk (int ,TYPE_5__*,int *,int ,int ) ;

__attribute__((used)) static svn_error_t *
translated_stream_seek(void *baton, const svn_stream_mark_t *mark)
{
  struct translated_stream_baton *b = baton;

  if (mark != ((void*)0))
    {
      const mark_translated_t *mt = (const mark_translated_t *)mark;


      if (b->written)
        SVN_ERR(translate_chunk(b->stream, b->out_baton, ((void*)0), 0,
                                b->iterpool));

      SVN_ERR(svn_stream_seek(b->stream, mt->mark));


      *b->in_baton = *mt->saved_baton.in_baton;
      *b->out_baton = *mt->saved_baton.out_baton;
      b->written = mt->saved_baton.written;
      svn_stringbuf_setempty(b->readbuf);
      svn_stringbuf_appendbytes(b->readbuf, mt->saved_baton.readbuf->data,
                                mt->saved_baton.readbuf->len);
      b->readbuf_off = mt->saved_baton.readbuf_off;
      memcpy(b->buf, mt->saved_baton.buf, SVN__TRANSLATION_BUF_SIZE);
    }
  else
    {
      SVN_ERR(svn_stream_reset(b->stream));

      b->in_baton->newline_off = 0;
      b->in_baton->keyword_off = 0;
      b->in_baton->src_format_len = 0;
      b->out_baton->newline_off = 0;
      b->out_baton->keyword_off = 0;
      b->out_baton->src_format_len = 0;

      b->written = FALSE;
      svn_stringbuf_setempty(b->readbuf);
      b->readbuf_off = 0;
    }

  return SVN_NO_ERROR;
}
