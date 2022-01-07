
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct wordent {char* word; struct wordent* prev; struct wordent* next; } ;
typedef char eChar ;
struct TYPE_3__ {int len; char* s; } ;


 int ERR_LTOOLONG ;
 scalar_t__ HISTSUB ;
 char* STRNULL ;
 int Strbuf_terminate (TYPE_1__*) ;
 int btell (int *) ;
 int cleanup_ignore (struct wordent*) ;
 int cleanup_push (struct wordent*,int ) ;
 int cleanup_until (struct wordent*) ;
 int enterhist ;
 int getexcl (char) ;
 int hadhist ;
 TYPE_1__ histline ;
 int histvalid ;
 scalar_t__ intty ;
 int lex_cleanup ;
 int lineloc ;
 int postcmd_active ;
 char readc (int ) ;
 int stderror (int ) ;
 int unreadc (char) ;
 char* word (int) ;
 struct wordent* xmalloc (int) ;

int
lex(struct wordent *hp)
{
    struct wordent *wdp;
    eChar c;
    int parsehtime = enterhist;
    int toolong = 0;

    histvalid = 0;
    histline.len = 0;

    if (!postcmd_active)
 btell(&lineloc);
    hp->next = hp->prev = hp;
    hp->word = STRNULL;
    hadhist = 0;
    do
 c = readc(0);
    while (c == ' ' || c == '\t');
    if (c == (eChar)HISTSUB && intty)

 getexcl(c);
    else
 unreadc(c);
    cleanup_push(hp, lex_cleanup);
    wdp = hp;




    do {
 struct wordent *new;

 new = xmalloc(sizeof(*new));
 new->word = ((void*)0);
 new->prev = wdp;
 new->next = hp;
 wdp->next = new;
 hp->prev = new;
 wdp = new;
 wdp->word = word(parsehtime);
 parsehtime = 0;
 if (enterhist && toolong++ > 10 * 1024)
     stderror(ERR_LTOOLONG);
    } while (wdp->word[0] != '\n');
    cleanup_ignore(hp);
    cleanup_until(hp);
    Strbuf_terminate(&histline);
    if (histline.len != 0 && histline.s[histline.len - 1] == '\n')
 histline.s[histline.len - 1] = '\0';
    histvalid = 1;

    return (hadhist);
}
