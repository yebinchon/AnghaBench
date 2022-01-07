
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wordent {struct wordent* next; struct wordent* prev; int word; } ;
struct command {struct command* next; struct command* prev; int word; } ;
typedef int Char ;


 int ERR_OLD ;
 int STR0 ;
 int STRstatus ;
 int Strsave (int ) ;
 int TRUE ;
 int VAR_READWRITE ;
 int alias (struct wordent*) ;
 int cleanup_push (struct wordent*,int ) ;
 int cleanup_until (struct wordent*) ;
 int execute (struct wordent*,int,int *,int *,int ) ;
 int initlex (struct wordent*) ;
 int lex_cleanup ;
 int setcopy (int ,int ,int ) ;
 scalar_t__ seterr ;
 int stderror (int ) ;
 struct wordent* syntax (struct wordent*,struct wordent*,int ) ;
 int syntax_cleanup ;
 struct wordent* xcalloc (int,int) ;

__attribute__((used)) static void
evalav(Char **v)
{
    struct wordent paraml1;
    struct wordent *hp = &paraml1;
    struct command *t;
    struct wordent *wdp = hp;

    setcopy(STRstatus, STR0, VAR_READWRITE);
    initlex(hp);
    while (*v) {
 struct wordent *new = xcalloc(1, sizeof *wdp);

 new->prev = wdp;
 new->next = hp;
 wdp->next = new;
 wdp = new;
 wdp->word = Strsave(*v++);
    }
    hp->prev = wdp;
    cleanup_push(&paraml1, lex_cleanup);
    alias(&paraml1);
    t = syntax(paraml1.next, &paraml1, 0);
    cleanup_push(t, syntax_cleanup);
    if (seterr)
 stderror(ERR_OLD);
    execute(t, -1, ((void*)0), ((void*)0), TRUE);
    cleanup_until(&paraml1);
}
