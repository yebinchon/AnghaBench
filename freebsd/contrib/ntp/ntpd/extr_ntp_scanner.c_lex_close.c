
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct FILE_INFO {int * fpi; } ;


 int fclose (int *) ;
 int free (struct FILE_INFO*) ;

__attribute__((used)) static void
lex_close(
 struct FILE_INFO *stream
 )
{
 if (((void*)0) != stream) {
  if (((void*)0) != stream->fpi)
   fclose(stream->fpi);
  free(stream);
 }
}
