
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* getenv (char*) ;
 int p_freelines ;
 int p_maxlines ;
 int strtol (char*,char**,int ) ;

void
pager_open(void)
{
    int nlines;
    char *cp, *lp;

    nlines = 24;
    if ((cp = getenv("LINES")) != ((void*)0)) {
 nlines = strtol(cp, &lp, 0);
    }

    p_maxlines = nlines - 1;
    if (p_maxlines < 1)
 p_maxlines = 1;
    p_freelines = p_maxlines;
}
