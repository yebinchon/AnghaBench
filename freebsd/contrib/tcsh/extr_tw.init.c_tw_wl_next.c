
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Strbuf ;
typedef char Char ;


 scalar_t__ Isspace (char) ;
 int Strbuf_appendn (int*,char const*,int) ;
 int USE (int*) ;
 char* tw_word ;

int
tw_wl_next(struct Strbuf *res, struct Strbuf *dir, int *flags)
{
    const Char *p;

    USE(dir);
    USE(flags);
    if (tw_word == ((void*)0) || tw_word[0] == '\0')
 return 0;

    while (*tw_word && Isspace(*tw_word)) tw_word++;

    for (p = tw_word; *tw_word && !Isspace(*tw_word); tw_word++)
 continue;
    if (tw_word == p)
 return 0;
    Strbuf_appendn(res, p, tw_word - p);
    if (*tw_word)
 tw_word++;
    return 1;
}
