
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef int FILE ;


 scalar_t__ fgets (char*,int,int *) ;
 scalar_t__ newline_terminated (char*,int) ;

__attribute__((used)) static void skip_line_end(FILE *stream)
{
 char buf[100];
 while (fgets(buf, sizeof(buf), stream)) {
  buf[sizeof(buf) - 1] = '\0';
  if (newline_terminated(buf, sizeof(buf)))
   return;
 }
}
