
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int insertstr ;
struct TYPE_4__ {int sl_cur; char** sl_str; } ;
typedef TYPE_1__ StringList ;


 unsigned char CC_ERROR ;
 unsigned char CC_REDISPLAY ;
 unsigned char CC_REFRESH ;
 unsigned char CC_REFRESH_BEEP ;
 int MAXPATHLEN ;
 int comparstr ;
 int el ;
 int el_insertstr (int ,char*) ;
 int ftpvis (char*,int,char*,size_t) ;
 int list_vertical (TYPE_1__*) ;
 int putc (char,int ) ;
 int qsort (char**,size_t,int,int ) ;
 size_t strlen (char*) ;
 int ttyout ;

__attribute__((used)) static unsigned char
complete_ambiguous(char *word, int list, StringList *words)
{
 char insertstr[MAXPATHLEN];
 char *lastmatch, *p;
 size_t i, j;
 size_t matchlen, wordlen;

 wordlen = strlen(word);
 if (words->sl_cur == 0)
  return (CC_ERROR);

 if (words->sl_cur == 1) {
  p = words->sl_str[0] + wordlen;
  if (*p == '\0')
   return (CC_REFRESH);
  ftpvis(insertstr, sizeof(insertstr), p, strlen(p));
  if (el_insertstr(el, insertstr) == -1)
   return (CC_ERROR);
  else
   return (CC_REFRESH);
 }

 if (!list) {
  matchlen = 0;
  lastmatch = words->sl_str[0];
  matchlen = strlen(lastmatch);
  for (i = 1 ; i < words->sl_cur ; i++) {
   for (j = wordlen ; j < strlen(words->sl_str[i]); j++)
    if (lastmatch[j] != words->sl_str[i][j])
     break;
   if (j < matchlen)
    matchlen = j;
  }
  if (matchlen > wordlen) {
   ftpvis(insertstr, sizeof(insertstr),
       lastmatch + wordlen, matchlen - wordlen);
   if (el_insertstr(el, insertstr) == -1)
    return (CC_ERROR);
   else
    return (CC_REFRESH_BEEP);
  }
 }

 putc('\n', ttyout);
 qsort(words->sl_str, words->sl_cur, sizeof(char *), comparstr);
 list_vertical(words);
 return (CC_REDISPLAY);
}
