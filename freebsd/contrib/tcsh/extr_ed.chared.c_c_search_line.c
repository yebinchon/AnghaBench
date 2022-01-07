
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char Char ;
typedef int CCRETVAL ;


 int CC_ERROR ;
 int CC_NORM ;
 char* Cursor ;
 int F_UP_SEARCH_HIST ;
 scalar_t__ Gmatch (char*,char*) ;
 char* InputBuf ;
 char* InputLim ;
 size_t Strlen (char*) ;
 scalar_t__ Strncmp (char*,char*,size_t) ;

__attribute__((used)) static CCRETVAL
c_search_line(Char *pattern, int dir)
{
    Char *cp;
    size_t len;

    len = Strlen(pattern);

    if (dir == F_UP_SEARCH_HIST) {
 for (cp = Cursor; cp >= InputBuf; cp--)
     if (Strncmp(cp, pattern, len) == 0 ||
  Gmatch(cp, pattern)) {
  Cursor = cp;
  return(CC_NORM);
     }
 return(CC_ERROR);
    } else {
 for (cp = Cursor; *cp != '\0' && cp < InputLim; cp++)
     if (Strncmp(cp, pattern, len) == 0 ||
  Gmatch(cp, pattern)) {
  Cursor = cp;
  return(CC_NORM);
     }
 return(CC_ERROR);
    }
}
