
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 int R_CURSOR ;
 int R_FIRST ;
 int R_IAFTER ;
 int R_IBEFORE ;
 int R_LAST ;
 int R_NEXT ;
 int R_NOOVERWRITE ;
 int R_PREV ;
 int R_SETCURSOR ;
 int errx (int,char*,int ,char*) ;
 scalar_t__ isspace (unsigned char) ;
 int lineno ;
 char* strchr (char*,char) ;
 int strcmp (char*,char*) ;

__attribute__((used)) static u_int
setflags(char *s)
{
 char *p;

 for (; isspace((unsigned char)*s); ++s);
 if (*s == '\n' || *s == '\0')
  return 0;
 if ((p = strchr(s, '\n')) != ((void*)0))
  *p = '\0';
 if (!strcmp(s, "R_CURSOR")) return R_CURSOR;
 if (!strcmp(s, "R_FIRST")) return R_FIRST;
 if (!strcmp(s, "R_IAFTER")) return R_IAFTER;
 if (!strcmp(s, "R_IBEFORE")) return R_IBEFORE;
 if (!strcmp(s, "R_LAST")) return R_LAST;
 if (!strcmp(s, "R_NEXT")) return R_NEXT;
 if (!strcmp(s, "R_NOOVERWRITE")) return R_NOOVERWRITE;
 if (!strcmp(s, "R_PREV")) return R_PREV;
 if (!strcmp(s, "R_SETCURSOR")) return R_SETCURSOR;

 errx(1, "line %zu: %s: unknown flag", lineno, s);

}
