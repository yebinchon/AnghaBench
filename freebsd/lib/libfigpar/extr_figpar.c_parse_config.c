
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct figpar_config {int (* action ) (struct figpar_config*,int,char*,char*) ;int * directive; } ;
typedef scalar_t__ ssize_t ;
typedef int off_t ;


 int FIGPAR_BREAK_ON_EQUALS ;
 int FIGPAR_BREAK_ON_SEMICOLON ;
 int FIGPAR_CASE_SENSITIVE ;
 int FIGPAR_REQUIRE_EQUALS ;
 int FIGPAR_STRICT_EQUALS ;
 int FNM_NOESCAPE ;
 int FNM_NOMATCH ;
 int O_RDONLY ;
 int PATH_MAX ;
 int SEEK_CUR ;
 int SEEK_SET ;
 int close (int) ;
 int fnmatch (int *,char*,int ) ;
 scalar_t__ isspace (char) ;
 int lseek (int,int,int ) ;
 char* malloc (int) ;
 int open (char*,int ) ;
 scalar_t__ read (int,char*,int) ;
 char* realloc (char*,int) ;
 scalar_t__ realpath (char const*,char*) ;
 scalar_t__ replaceall (char*,char*,char*) ;
 int strcount (char*,char*) ;
 int strexpand (char*) ;
 int strtolower (char*) ;
 int stub1 (struct figpar_config*,int,char*,char*) ;

int
parse_config(struct figpar_config options[], const char *path,
    int (*unknown)(struct figpar_config *option, uint32_t line,
    char *directive, char *value), uint16_t processing_options)
{
 uint8_t bequals;
 uint8_t bsemicolon;
 uint8_t case_sensitive;
 uint8_t comment = 0;
 uint8_t end;
 uint8_t found;
 uint8_t have_equals = 0;
 uint8_t quote;
 uint8_t require_equals;
 uint8_t strict_equals;
 char p[2];
 char *directive;
 char *t;
 char *value;
 int error;
 int fd;
 ssize_t r = 1;
 uint32_t dsize;
 uint32_t line = 1;
 uint32_t n;
 uint32_t vsize;
 uint32_t x;
 off_t charpos;
 off_t curpos;
 char rpath[PATH_MAX];


 if (options == ((void*)0) && unknown == ((void*)0))
  return (-1);


 bequals = (processing_options & FIGPAR_BREAK_ON_EQUALS) == 0 ? 0 : 1;
 bsemicolon =
  (processing_options & FIGPAR_BREAK_ON_SEMICOLON) == 0 ? 0 : 1;
 case_sensitive =
  (processing_options & FIGPAR_CASE_SENSITIVE) == 0 ? 0 : 1;
 require_equals =
  (processing_options & FIGPAR_REQUIRE_EQUALS) == 0 ? 0 : 1;
 strict_equals =
  (processing_options & FIGPAR_STRICT_EQUALS) == 0 ? 0 : 1;


 directive = value = 0;
 vsize = dsize = 0;


 if (realpath(path, rpath) == 0)
  return (-1);


 if ((fd = open(rpath, O_RDONLY)) < 0)
  return (-1);


 while (r != 0) {
  r = read(fd, p, 1);


  while (r != 0 && (isspace(*p) || *p == '#' || comment ||
      (bsemicolon && *p == ';'))) {
   if (*p == '#')
    comment = 1;
   else if (*p == '\n') {
    comment = 0;
    line++;
   }
   r = read(fd, p, 1);
  }

  if (r == 0) {
   close(fd);
   return (0);
  }


  curpos = lseek(fd, 0, SEEK_CUR) - 1;
  if (curpos == -1) {
   close(fd);
   return (-1);
  }


  for (n = 0; r != 0; n++) {
   if (isspace(*p))
    break;
   if (bequals && *p == '=') {
    have_equals = 1;
    break;
   }
   if (bsemicolon && *p == ';')
    break;
   r = read(fd, p, 1);
  }


  if (n == 0 && r == 0) {
   close(fd);
   return (0);
  }


  error = (int)lseek(fd, curpos, SEEK_SET);
  if (error == (curpos - 1)) {
   close(fd);
   return (-1);
  }


  if (n > dsize) {
   if ((directive = realloc(directive, n + 1)) == ((void*)0)) {
    close(fd);
    return (-1);
   }
   dsize = n;
  }
  r = read(fd, directive, n);


  if (bequals && *p == '=') {
   if (lseek(fd, 1, SEEK_CUR) != -1)
    r = read(fd, p, 1);
   if (strict_equals && isspace(*p))
    *p = '\n';
  }


  directive[n] = '\0';


  if (!case_sensitive)
   strtolower(directive);


  if (!(bsemicolon && *p == ';') &&
      !(strict_equals && *p == '=')) {
   while (r != 0 && isspace(*p) && *p != '\n')
    r = read(fd, p, 1);
  }


  if (r != 0 && bequals && *p == '=' && !strict_equals) {
   have_equals = 1;
   r = read(fd, p, 1);
   while (r != 0 && isspace(*p) && *p != '\n')
    r = read(fd, p, 1);
  }


  if (r == 0 || *p == '\n' || *p == '#' ||
      (bsemicolon && *p == ';')) {

   if (value == ((void*)0) && (value = malloc(1)) == ((void*)0)) {
    close(fd);
    return (-1);
   }
   value[0] = '\0';
   goto call_function;
  }


  curpos = lseek(fd, 0, SEEK_CUR) - 1;
  if (curpos == -1) {
   close(fd);
   return (-1);
  }


  quote = 0;
  end = 0;
  while (r != 0 && end == 0) {

   if (*p != '\"' && *p != '#' && *p != '\n' &&
       (!bsemicolon || *p != ';')) {
    r = read(fd, p, 1);
    continue;
   }






   charpos = lseek(fd, 0, SEEK_CUR) - 1;
   if (charpos == -1) {
    close(fd);
    return (-1);
   }






   error = (int)lseek(fd, -2, SEEK_CUR);
   if (error == -3) {
    close(fd);
    return (-1);
   }
   r = read(fd, p, 1);





   for (n = 1; *p == '\\'; n++) {

    error = (int)lseek(fd, -2, SEEK_CUR);
    if (error == -3) {
     close(fd);
     return (-1);
    }
    r = read(fd, p, 1);
   }


   error = (int)lseek(fd, charpos, SEEK_SET);
   if (error == (charpos - 1)) {
    close(fd);
    return (-1);
   }
   r = read(fd, p, 1);





   if ((n & 1) == 1) {
    switch (*p) {
    case '\"':





     quote = !quote;
     break;
    case '#':





     if (!quote)
      end = 1;
     break;
    case '\n':






     end = 1;
    case ';':
     if (!quote && bsemicolon)
      end = 1;
     break;
    }
   } else if (*p == '\n')

    line++;


   r = read(fd, p, 1);
  }


  charpos = lseek(fd, 0, SEEK_CUR) - 1;
  if (charpos == -1) {
   close(fd);
   return (-1);
  }


  n = (uint32_t)(charpos - curpos);
  if (r != 0)
   n--;


  error = (int)lseek(fd, curpos, SEEK_SET);
  if (error == (curpos - 1)) {
   close(fd);
   return (-1);
  }


  if (n > vsize) {
   if ((value = realloc(value, n + 1)) == ((void*)0)) {
    close(fd);
    return (-1);
   }
   vsize = n;
  }
  r = read(fd, value, n);


  value[n] = '\0';


  t = value + n;
  while (isspace(*--t))
   *t = '\0';


  x = strcount(value, "\\\"");
  if (x != 0 && (n + x) > vsize) {
   if ((value = realloc(value, n + x + 1)) == ((void*)0)) {
    close(fd);
    return (-1);
   }
   vsize = n + x;
  }
  if (replaceall(value, "\\\"", "\\\\\"") < 0) {

   close(fd);
   return (-1);
  }


  if (replaceall(value, "\\\n", "") < 0) {

   close(fd);
   return (-1);
  }


  strexpand(value);

call_function:

  if (require_equals && !have_equals)
   return (-1);

  found = have_equals = 0;


  if (options == ((void*)0) && unknown != ((void*)0)) {
   error = unknown(((void*)0), line, directive, value);
   if (error != 0) {
    close(fd);
    return (error);
   }
   continue;
  }


  for (n = 0; options[n].directive != ((void*)0); n++) {
   error = fnmatch(options[n].directive, directive,
       FNM_NOESCAPE);
   if (error == 0) {
    found = 1;

    if (options[n].action != ((void*)0)) {
     error = options[n].action(
         &options[n],
         line, directive, value);
     if (error != 0) {
      close(fd);
      return (error);
     }
    }
   } else if (error != FNM_NOMATCH) {

    close(fd);
    return (-1);
   }
  }
  if (!found && unknown != ((void*)0)) {




   error = unknown(((void*)0), line, directive, value);
   if (error != 0) {
    close(fd);
    return (error);
   }
  }
 }

 close(fd);
 return (0);
}
