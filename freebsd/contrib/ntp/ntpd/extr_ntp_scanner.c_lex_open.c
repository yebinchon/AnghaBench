
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nline; } ;
struct FILE_INFO {int * fpi; int fname; int backch; TYPE_1__ curpos; } ;


 int EOF ;
 struct FILE_INFO* emalloc_zero (int) ;
 int * fopen (char const*,char const*) ;
 int free (struct FILE_INFO*) ;
 int memcpy (int ,char const*,size_t) ;
 size_t strlen (char const*) ;

__attribute__((used)) static struct FILE_INFO *
lex_open(
 const char *path,
 const char *mode
 )
{
 struct FILE_INFO *stream;
 size_t nnambuf;

 nnambuf = strlen(path);
 stream = emalloc_zero(sizeof(*stream) + nnambuf);
 stream->curpos.nline = 1;
 stream->backch = EOF;

 memcpy(stream->fname, path, nnambuf);

 if (((void*)0) != mode) {
  stream->fpi = fopen(path, mode);
  if (((void*)0) == stream->fpi) {
   free(stream);
   stream = ((void*)0);
  }
 }
 return stream;
}
