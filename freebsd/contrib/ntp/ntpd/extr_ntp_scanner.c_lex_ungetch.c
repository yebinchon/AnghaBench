
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_2__ {int ncol; } ;
struct FILE_INFO {int backch; TYPE_1__ curpos; TYPE_1__ bakpos; scalar_t__ fpi; scalar_t__ force_eof; } ;


 int EOF ;
 int conf_file_sum ;

__attribute__((used)) static int
lex_ungetch(
 int ch,
 struct FILE_INFO *stream
 )
{

 if (((void*)0) == stream || stream->force_eof)
  return EOF;
 if (EOF != stream->backch || EOF == ch)
  return EOF;


 stream->backch = (u_char)ch;
 if (stream->fpi)
  conf_file_sum -= stream->backch;


 if (stream->backch == '\n') {
     stream->curpos = stream->bakpos;
     stream->bakpos.ncol = -1;
 }
 stream->curpos.ncol--;
 return stream->backch;
}
