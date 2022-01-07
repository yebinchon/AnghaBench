
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char Char ;


 int DIR_LINE ;
 int DIR_LONG ;
 int DIR_OLD ;
 int DIR_PRINT ;
 int DIR_VERT ;
 int ERR_DIRUS ;
 int short2str (char*) ;
 int stderror (int ,int ,char const*,char const*) ;
 char* strchr (char const*,int ) ;

__attribute__((used)) static int
skipargs(Char ***v, const char *dstr, const char *str)
{
    Char **n = *v, *s;

    int dflag = 0, loop = 1;
    for (n++; loop && *n != ((void*)0) && (*n)[0] == '-'; n++)
 if (*(s = &((*n)[1])) == '\0')
     dflag |= DIR_OLD;
 else if ((*n)[1] == '-' && (*n)[2] == '\0') {
     n++;
     break;
 } else {
     char *p;
     while (*s != '\0') {
  if ((p = strchr(dstr, *s++)) != ((void*)0))
      dflag |= (1 << (p - dstr));
         else
      stderror(ERR_DIRUS, short2str(**v), dstr, str);
     }
 }
    if (*n && (dflag & DIR_OLD))
 stderror(ERR_DIRUS, short2str(**v), dstr, str);
    *v = n;

    if (dflag & (DIR_LONG|DIR_VERT|DIR_LINE))
 dflag |= DIR_PRINT;
    return dflag;
}
