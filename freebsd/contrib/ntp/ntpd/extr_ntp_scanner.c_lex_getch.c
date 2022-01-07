
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_3__ {scalar_t__ ncol; int nline; } ;
struct FILE_INFO {int backch; TYPE_1__ curpos; TYPE_1__ bakpos; scalar_t__ fpi; scalar_t__ force_eof; } ;
struct TYPE_4__ {char* buffer; size_t pos; } ;


 int EOF ;
 int SCHAR_MAX ;
 int conf_file_sum ;
 int fgetc (scalar_t__) ;
 TYPE_2__ remote_config ;

__attribute__((used)) static int
lex_getch(
 struct FILE_INFO *stream
 )
{
 int ch;

 if (((void*)0) == stream || stream->force_eof)
  return EOF;

 if (EOF != stream->backch) {
  ch = stream->backch;
  stream->backch = EOF;
  if (stream->fpi)
   conf_file_sum += ch;
  stream->curpos.ncol++;
 } else if (stream->fpi) {

  while ((ch = fgetc(stream->fpi)) != EOF && ch > SCHAR_MAX)
   stream->curpos.ncol++;
  if (EOF != ch) {
   conf_file_sum += ch;
   stream->curpos.ncol++;
  }
 } else {

  const char * scan;
  scan = &remote_config.buffer[remote_config.pos];
  while ((ch = (u_char)*scan) > SCHAR_MAX) {
   scan++;
   stream->curpos.ncol++;
  }
  if ('\0' != ch) {
   scan++;
   stream->curpos.ncol++;
  } else {
   ch = EOF;
  }
  remote_config.pos = (int)(scan - remote_config.buffer);
 }





 if (EOF == ch && stream->curpos.ncol != 0)
  ch = '\n';


 if (ch == '\n') {
  stream->bakpos = stream->curpos;
  stream->curpos.nline++;
  stream->curpos.ncol = 0;
 }

 return ch;
}
