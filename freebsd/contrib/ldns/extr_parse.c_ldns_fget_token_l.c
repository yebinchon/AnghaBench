
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int FILE ;


 int EOF ;
 char* LDNS_PARSE_NORMAL ;
 int getc (int *) ;
 int ldns_fskipcs_l (int *,char const*,int*) ;

ssize_t
ldns_fget_token_l(FILE *f, char *token, const char *delim, size_t limit, int *line_nr)
{
 int c, prev_c;
 int p;
 int com, quoted;
 char *t;
 size_t i;
 const char *d;
 const char *del;


 if (!delim) {

  del = LDNS_PARSE_NORMAL;
 } else {
  del = delim;
 }

 p = 0;
 i = 0;
 com = 0;
 quoted = 0;
 prev_c = 0;
 t = token;
 if (del[0] == '"') {
  quoted = 1;
 }
 while ((c = getc(f)) != EOF) {
  if (c == '\r')
   c = ' ';
  if (c == '(' && prev_c != '\\' && !quoted) {

   if (com == 0) {
    p++;
   }
   prev_c = c;
   continue;
  }

  if (c == ')' && prev_c != '\\' && !quoted) {

   if (com == 0) {
    p--;
   }
   prev_c = c;
   continue;
  }

  if (p < 0) {

   *t = '\0';
   return 0;
  }


  if (c == ';' && quoted == 0) {
   if (prev_c != '\\') {
    com = 1;
   }
  }
  if (c == '\"' && com == 0 && prev_c != '\\') {
   quoted = 1 - quoted;
  }

  if (c == '\n' && com != 0) {

   com = 0;
   *t = ' ';
   if (line_nr) {
    *line_nr = *line_nr + 1;
   }
   if (p == 0 && i > 0) {
    goto tokenread;
   } else {
    prev_c = c;
    continue;
   }
  }

  if (com == 1) {
   *t = ' ';
   prev_c = c;
   continue;
  }

  if (c == '\n' && p != 0 && t > token) {

   if (line_nr) {
    *line_nr = *line_nr + 1;
   }
   *t++ = ' ';
   prev_c = c;
   continue;
  }


  for (d = del; *d; d++) {
   if (c == *d && i > 0 && prev_c != '\\' && p == 0) {
    if (c == '\n' && line_nr) {
     *line_nr = *line_nr + 1;
    }
    goto tokenread;
   }
  }
  if (c != '\0' && c != '\n') {
   i++;
  }
  if (limit > 0 && (i >= limit || (size_t)(t-token) >= limit)) {
   *t = '\0';
   return -1;
  }
  if (c != '\0' && c != '\n') {
   *t++ = c;
  }
  if (c == '\\' && prev_c == '\\')
   prev_c = 0;
  else prev_c = c;
 }
 *t = '\0';
 if (c == EOF) {
  return (ssize_t)i;
 }

 if (i == 0) {

  return -1;
 }
 if (p != 0) {
  return -1;
 }
 return (ssize_t)i;

tokenread:
 if(*del == '"')
  ldns_fskipcs_l(f, del+1, line_nr);
 else ldns_fskipcs_l(f, del, line_nr);
 *t = '\0';
 if (p != 0) {
  return -1;
 }

 return (ssize_t)i;
}
