
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct roff {int dummy; } ;
struct buf {char* buf; int * next; scalar_t__ sz; } ;


 char ASCII_ESC ;
 int MANDOCERR_ARG_QUOTE ;
 int MANDOCERR_SPACE_EOL ;
 int ROFF_IGN ;
 int free (char*) ;
 int mandoc_msg (int ,int,int,int *) ;
 void* mandoc_strdup (char*) ;
 int roff_expand (struct roff*,struct buf*,int,int ,char) ;
 scalar_t__ strlen (char*) ;

char *
roff_getarg(struct roff *r, char **cpp, int ln, int *pos)
{
 struct buf buf;
 char *cp, *start;
 int newesc, pairs, quoted, white;


 start = *cpp;
 quoted = 0;
 if ('"' == *start) {
  quoted = 1;
  start++;
 }

 newesc = pairs = white = 0;
 for (cp = start; '\0' != *cp; cp++) {





  if (pairs)
   cp[-pairs] = cp[0];

  if ('\\' == cp[0]) {




   switch (cp[1]) {
   case 'a':
   case 't':
    cp[-pairs] = '\t';
    pairs++;
    cp++;
    break;
   case '\\':
    newesc = 1;
    cp[-pairs] = ASCII_ESC;
    pairs++;
    cp++;
    break;
   case ' ':

    if (0 == quoted)
     cp++;
    break;
   default:
    break;
   }
  } else if (0 == quoted) {
   if (' ' == cp[0]) {

    white = 1;
    break;
   }
  } else if ('"' == cp[0]) {
   if ('"' == cp[1]) {

    pairs++;
    cp++;
   } else {

    quoted = 2;
    break;
   }
  }
 }


 if (1 == quoted)
  mandoc_msg(MANDOCERR_ARG_QUOTE, ln, *pos, ((void*)0));


 if (pairs)
  cp[-pairs] = '\0';
 if ('\0' != *cp) {
  *cp++ = '\0';
  while (' ' == *cp)
   cp++;
 }
 *pos += (int)(cp - start) + (quoted ? 1 : 0);
 *cpp = cp;

 if ('\0' == *cp && (white || ' ' == cp[-1]))
  mandoc_msg(MANDOCERR_SPACE_EOL, ln, *pos, ((void*)0));

 start = mandoc_strdup(start);
 if (newesc == 0)
  return start;

 buf.buf = start;
 buf.sz = strlen(start) + 1;
 buf.next = ((void*)0);
 if (roff_expand(r, &buf, ln, 0, ASCII_ESC) & ROFF_IGN) {
  free(buf.buf);
  buf.buf = mandoc_strdup("");
 }
 return buf.buf;
}
