
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct req {int dummy; } ;
typedef int ssize_t ;
typedef int FILE ;


 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int free (char*) ;
 int getline (char**,size_t*,int *) ;
 int html_putchar (char) ;
 int printf (char*) ;
 int putchar (char) ;
 int puts (char*) ;

__attribute__((used)) static void
resp_catman(const struct req *req, const char *file)
{
 FILE *f;
 char *p;
 size_t sz;
 ssize_t len;
 int i;
 int italic, bold;

 if ((f = fopen(file, "r")) == ((void*)0)) {
  puts("<p>You specified an invalid manual file.</p>");
  return;
 }

 puts("<div class=\"catman\">\n"
      "<pre>");

 p = ((void*)0);
 sz = 0;

 while ((len = getline(&p, &sz, f)) != -1) {
  bold = italic = 0;
  for (i = 0; i < len - 1; i++) {






   if ('\b' == p[i] || '\n' == p[i])
    continue;
   if ('\b' != p[i + 1]) {
    if (italic)
     printf("</i>");
    if (bold)
     printf("</b>");
    italic = bold = 0;
    html_putchar(p[i]);
    continue;
   } else if (i + 2 >= len)
    continue;



   if ('_' == p[i]) {
    if (bold)
     printf("</b>");
    if ( ! italic)
     printf("<i>");
    bold = 0;
    italic = 1;
    i += 2;
    html_putchar(p[i]);
    continue;
   }






   if (('+' == p[i] && 'o' == p[i + 2]) ||
     ('o' == p[i] && '+' == p[i + 2]) ||
     ('|' == p[i] && '=' == p[i + 2]) ||
     ('=' == p[i] && '|' == p[i + 2]) ||
     ('*' == p[i] && '=' == p[i + 2]) ||
     ('=' == p[i] && '*' == p[i + 2]) ||
     ('*' == p[i] && '|' == p[i + 2]) ||
     ('|' == p[i] && '*' == p[i + 2])) {
    if (italic)
     printf("</i>");
    if (bold)
     printf("</b>");
    italic = bold = 0;
    putchar('*');
    i += 2;
    continue;
   } else if (('|' == p[i] && '-' == p[i + 2]) ||
     ('-' == p[i] && '|' == p[i + 1]) ||
     ('+' == p[i] && '-' == p[i + 1]) ||
     ('-' == p[i] && '+' == p[i + 1]) ||
     ('+' == p[i] && '|' == p[i + 1]) ||
     ('|' == p[i] && '+' == p[i + 1])) {
    if (italic)
     printf("</i>");
    if (bold)
     printf("</b>");
    italic = bold = 0;
    putchar('+');
    i += 2;
    continue;
   }



   if (italic)
    printf("</i>");
   if ( ! bold)
    printf("<b>");
   bold = 1;
   italic = 0;
   i += 2;
   html_putchar(p[i]);
  }






  if (italic)
   printf("</i>");
  if (bold)
   printf("</b>");

  if (i == len - 1 && p[i] != '\n')
   html_putchar(p[i]);

  putchar('\n');
 }
 free(p);

 puts("</pre>\n"
      "</div>");

 fclose(f);
}
