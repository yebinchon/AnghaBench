
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int EINVAL ;
 int ENOMEM ;
 int EOF ;
 int PAM_LOG_DEBUG ;
 int errno ;
 scalar_t__ ferror (int *) ;
 int fgetc (int *) ;
 int free (char*) ;
 int getc (int *) ;
 int is_ws (int) ;
 int openpam_log (int ,char*) ;
 scalar_t__ openpam_straddch (char**,size_t*,size_t*,int) ;
 int ungetc (int,int *) ;

char *
openpam_readword(FILE *f, int *lineno, size_t *lenp)
{
 char *word;
 size_t size, len;
 int ch, escape, quote;
 int serrno;

 errno = 0;


 escape = quote = 0;
 while ((ch = getc(f)) != EOF) {
  if (ch == '\n') {

   if (!escape)
    break;
   if (lineno != ((void*)0))
    ++*lineno;
   escape = 0;
  } else if (escape) {

   break;
  } else if (ch == '#') {

   while ((ch = getc(f)) != EOF)
    if (ch == '\n')
     break;
   break;
  } else if (ch == '\\') {
   escape = 1;
  } else if (!is_ws(ch)) {
   break;
  }
 }
 if (ch == EOF)
  return (((void*)0));
 ungetc(ch, f);
 if (ch == '\n')
  return (((void*)0));

 word = ((void*)0);
 size = len = 0;
 while ((ch = fgetc(f)) != EOF && (!is_ws(ch) || quote || escape)) {
  if (ch == '\\' && !escape && quote != '\'') {

   escape = ch;
  } else if ((ch == '\'' || ch == '"') && !quote && !escape) {

   quote = ch;

   if (openpam_straddch(&word, &size, &len, 0) != 0)
    return (((void*)0));
  } else if (ch == quote && !escape) {

   quote = 0;
  } else if (ch == '\n' && escape) {

   escape = 0;
  } else {
   if (escape && quote && ch != '\\' && ch != quote &&
       openpam_straddch(&word, &size, &len, '\\') != 0) {
    free(word);
    errno = ENOMEM;
    return (((void*)0));
   }
   if (openpam_straddch(&word, &size, &len, ch) != 0) {
    free(word);
    errno = ENOMEM;
    return (((void*)0));
   }
   escape = 0;
  }
  if (lineno != ((void*)0) && ch == '\n')
   ++*lineno;
 }
 if (ch == EOF && ferror(f)) {
  serrno = errno;
  free(word);
  errno = serrno;
  return (((void*)0));
 }
 if (ch == EOF && (escape || quote)) {

  openpam_log(PAM_LOG_DEBUG, "unexpected end of file");
  free(word);
  errno = EINVAL;
  return (((void*)0));
 }
 ungetc(ch, f);
 if (lenp != ((void*)0))
  *lenp = len;
 return (word);
}
