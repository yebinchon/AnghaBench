
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 char* fgetln (int *,size_t*) ;
 int fputc (char,int *) ;
 int fwrite (char*,int,int,int *) ;
 scalar_t__ isspace (unsigned char) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static void
http_print_html(FILE *out, FILE *in)
{
 size_t len;
 char *line, *p, *q;
 int comment, tag;

 comment = tag = 0;
 while ((line = fgetln(in, &len)) != ((void*)0)) {
  while (len && isspace((unsigned char)line[len - 1]))
   --len;
  for (p = q = line; q < line + len; ++q) {
   if (comment && *q == '-') {
    if (q + 2 < line + len &&
        strcmp(q, "-->") == 0) {
     tag = comment = 0;
     q += 2;
    }
   } else if (tag && !comment && *q == '>') {
    p = q + 1;
    tag = 0;
   } else if (!tag && *q == '<') {
    if (q > p)
     fwrite(p, q - p, 1, out);
    tag = 1;
    if (q + 3 < line + len &&
        strcmp(q, "<!--") == 0) {
     comment = 1;
     q += 3;
    }
   }
  }
  if (!tag && q > p)
   fwrite(p, q - p, 1, out);
  fputc('\n', out);
 }
}
