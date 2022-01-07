
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cclass {char* name; } ;
typedef char Char ;


 int M_CLASS ;
 struct cclass* cclasses ;
 char* g_strchr (char const*,char) ;
 int g_strncmp (char const*,char*,size_t) ;

__attribute__((used)) static int
g_charclass(const Char **patternp, Char **bufnextp)
{
 const Char *pattern = *patternp + 1;
 Char *bufnext = *bufnextp;
 const Char *colon;
 struct cclass *cc;
 size_t len;

 if ((colon = g_strchr(pattern, ':')) == ((void*)0) || colon[1] != ']')
  return 1;

 len = (size_t)(colon - pattern);
 for (cc = cclasses; cc->name != ((void*)0); cc++) {
  if (!g_strncmp(pattern, cc->name, len) && cc->name[len] == '\0')
   break;
 }
 if (cc->name == ((void*)0))
  return -1;
 *bufnext++ = M_CLASS;
 *bufnext++ = (Char)(cc - &cclasses[0]);
 *bufnextp = bufnext;
 *patternp += len + 3;

 return 0;
}
