
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct roff_man {int flags; int roff; } ;
typedef enum margserr { ____Placeholder_margserr } margserr ;
typedef enum argsflag { ____Placeholder_argsflag } argsflag ;


 int ARGSFL_DELIM ;
 int ARGSFL_TABSEP ;
 int ARGS_ALLOC ;
 int ARGS_EOLN ;
 int ARGS_PHRASE ;
 int ARGS_PUNCT ;
 int ARGS_WORD ;
 int MANDOCERR_ARG_QUOTE ;
 int MANDOCERR_SPACE_EOL ;
 int MDOC_PHRASE ;
 int MDOC_PHRASELIT ;
 int MDOC_PHRASEQF ;
 int MDOC_PHRASEQL ;
 int MDOC_PHRASEQN ;
 scalar_t__ args_checkpunct (char*,int) ;
 int free (char*) ;
 int mandoc_msg (int ,int,int,int *) ;
 char* roff_getarg (int ,char**,int,int*) ;
 char* strchr (char*,char) ;

__attribute__((used)) static enum margserr
args(struct roff_man *mdoc, int line, int *pos,
  char *buf, enum argsflag fl, char **v)
{
 char *p;
 char *v_local;
 int pairs;

 if (buf[*pos] == '\0') {
  if (mdoc->flags & MDOC_PHRASELIT &&
      ! (mdoc->flags & MDOC_PHRASE)) {
   mandoc_msg(MANDOCERR_ARG_QUOTE, line, *pos, ((void*)0));
   mdoc->flags &= ~MDOC_PHRASELIT;
  }
  mdoc->flags &= ~MDOC_PHRASEQL;
  return ARGS_EOLN;
 }

 if (v == ((void*)0))
  v = &v_local;
 *v = buf + *pos;

 if (fl == ARGSFL_DELIM && args_checkpunct(buf, *pos))
  return ARGS_PUNCT;






 if (fl == ARGSFL_TABSEP) {
  if ((p = strchr(*v, '\t')) != ((void*)0)) {







   if (p > buf && p[-1] != ' ')
    mdoc->flags |= MDOC_PHRASEQL;
   if (p[1] != ' ')
    mdoc->flags |= MDOC_PHRASEQN;







   *pos += (int)(p - *v) + 1;
   while (buf[*pos] == ' ' && buf[*pos + 1] == ' ')
    (*pos)++;






   if (buf[*pos] == '\0' || buf[*pos + 1] == '\0')
    mdoc->flags |= MDOC_PHRASEQN;
  } else {
   p = strchr(*v, '\0');
   if (p[-1] == ' ')
    mandoc_msg(MANDOCERR_SPACE_EOL,
        line, *pos, ((void*)0));
   *pos += (int)(p - *v);
  }


  while (p > *v && p[-1] == ' ' &&
      (p - 1 == *v || p[-2] != '\\'))
   p--;
  *p = '\0';

  return ARGS_PHRASE;
 }
 if (mdoc->flags & MDOC_PHRASELIT ||
     (mdoc->flags & MDOC_PHRASE && buf[*pos] == '\"')) {
  if ((mdoc->flags & MDOC_PHRASELIT) == 0) {
   *v = &buf[++(*pos)];
   mdoc->flags |= MDOC_PHRASELIT;
  }
  pairs = 0;
  for ( ; buf[*pos]; (*pos)++) {

   if (pairs)
    buf[*pos - pairs] = buf[*pos];
   if ('\"' != buf[*pos])
    continue;

   if ('\"' != buf[*pos + 1])
    break;

   pairs++;
   (*pos)++;
  }
  if (pairs)
   buf[*pos - pairs] = '\0';

  if (buf[*pos] == '\0') {
   if ( ! (mdoc->flags & MDOC_PHRASE))
    mandoc_msg(MANDOCERR_ARG_QUOTE,
        line, *pos, ((void*)0));
   return ARGS_WORD;
  }

  mdoc->flags &= ~MDOC_PHRASELIT;
  buf[(*pos)++] = '\0';

  if ('\0' == buf[*pos])
   return ARGS_WORD;

  while (' ' == buf[*pos])
   (*pos)++;

  if ('\0' == buf[*pos])
   mandoc_msg(MANDOCERR_SPACE_EOL, line, *pos, ((void*)0));

  return ARGS_WORD;
 }

 p = &buf[*pos];
 *v = roff_getarg(mdoc->roff, &p, line, pos);
 if (v == &v_local)
  free(*v);






 if (*p == '\0' && mdoc->flags & MDOC_PHRASEQL) {
  mdoc->flags &= ~MDOC_PHRASEQL;
  mdoc->flags |= MDOC_PHRASEQF;
 }
 return ARGS_ALLOC;
}
