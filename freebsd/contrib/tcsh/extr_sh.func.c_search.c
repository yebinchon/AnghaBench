
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wordent {struct wordent* next; struct wordent* prev; void* word; } ;
struct whyle {struct whyle* w_next; } ;
struct Strbuf {char* s; size_t len; } ;
struct Ain {scalar_t__ a_seek; scalar_t__ f_seek; scalar_t__ type; } ;
typedef struct Strbuf Char ;


 int Dfix1 (char*) ;
 int Gmatch (struct Strbuf*,struct Strbuf*) ;
 void* STRNULL ;
 struct Strbuf* STRdefault ;
 struct Strbuf* STRthen ;
 struct Strbuf* Sgoal ;
 struct Strbuf Strbuf_INIT ;
 int Strbuf_cleanup (struct wordent*) ;
 int Strbuf_terminate (struct Strbuf*) ;
 scalar_t__ Strlen (char*) ;
 void* Strsave (char*) ;
 int Stype ;
 scalar_t__ TCSH_F_SEEK ;
 int TC_BREAK ;
 int TC_BRKSW ;







 int TC_GOTO ;




 scalar_t__ aret ;
 int bseek (struct Ain*) ;
 int cleanup_push (struct Strbuf*,int (*) (struct wordent*)) ;
 int cleanup_until (struct Strbuf*) ;
 int eq (char*,struct Strbuf*) ;
 scalar_t__ feobp ;
 int freelex (struct wordent*) ;
 scalar_t__ fseekp ;
 int getword (struct Strbuf*) ;
 struct wordent* histgetword (struct wordent*) ;
 scalar_t__ intty ;
 int isrchx (int) ;
 int printprompt (int,int ) ;
 int savehist (struct wordent*,int ) ;
 int srchx (char*) ;
 struct Strbuf* strip (int ) ;
 struct whyle* whyles ;
 int wpfree (struct whyle*) ;
 int xfree (struct wordent*) ;
 void* xmalloc (int) ;
 int zlast ;

__attribute__((used)) static void
search(int type, int level, Char *goal)
{
    struct Strbuf word = Strbuf_INIT;
    Char *cp;
    struct whyle *wp;
    int wlevel = 0;
    struct wordent *histent = ((void*)0), *ohistent = ((void*)0);

    Stype = type;
    Sgoal = goal;
    if (type == TC_GOTO) {
 struct Ain a;
 a.type = TCSH_F_SEEK;
 a.f_seek = 0;
 a.a_seek = 0;
 bseek(&a);
    }
    cleanup_push(&word, Strbuf_cleanup);
    do {

 if (intty) {
     histent = xmalloc(sizeof(*histent));
     ohistent = xmalloc(sizeof(*histent));
     ohistent->word = STRNULL;
     ohistent->next = histent;
     histent->prev = ohistent;
 }

 if (intty && fseekp == feobp && aret == TCSH_F_SEEK)
     printprompt(1, isrchx(type == TC_BREAK ? zlast : type));

 (void) getword(&word);
 Strbuf_terminate(&word);

 if (intty && Strlen(word.s) > 0) {
     histent->word = Strsave(word.s);
     histent->next = xmalloc(sizeof(*histent));
     histent->next->prev = histent;
     histent = histent->next;
 }

 switch (srchx(word.s)) {

 case 136:
     if (level == 0 && type == 131)
  goto end;
     break;

 case 131:
     while (getword(&word)) {
  if (intty) {
      histent->word = Strsave(word.s);
      histent->next = xmalloc(sizeof(*histent));
      histent->next->prev = histent;
      histent = histent->next;
  }
  continue;
     }

     if ((type == 131 || type == 136) &&
  eq(word.s, STRthen))
  level++;
     break;

 case 134:
     if (type == 131 || type == 136)
  level--;
     break;

 case 132:
 case 128:
     wlevel++;
     if (type == TC_BREAK)
  level++;
     break;

 case 135:
     if (type == TC_BRKSW) {
  if (wlevel == 0) {
      wp = whyles;
      if (wp) {
       whyles = wp->w_next;
       wpfree(wp);
      }
  }
     }
     if (type == TC_BREAK)
  level--;
     wlevel--;
     break;

 case 129:
     if (type == 129 || type == TC_BRKSW)
  level++;
     break;

 case 133:
     if (type == 129 || type == TC_BRKSW)
  level--;
     break;

 case 130:
     if (type == TC_GOTO && getword(&word) && eq(word.s, goal))
  level = -1;
     break;

 default:
     if (type != TC_GOTO && (type != 129 || level != 0))
  break;
     if (word.len == 0 || word.s[word.len - 1] != ':')
  break;
     word.s[--word.len] = 0;
     if ((type == TC_GOTO && eq(word.s, goal)) ||
  (type == 129 && eq(word.s, STRdefault)))
  level = -1;
     break;

 case 138:
     if (type != 129 || level != 0)
  break;
     (void) getword(&word);
     if (word.len != 0 && word.s[word.len - 1] == ':')
  word.s[--word.len] = 0;
     cp = strip(Dfix1(word.s));
     cleanup_push(cp, xfree);
     if (Gmatch(goal, cp))
  level = -1;
     cleanup_until(cp);
     break;

 case 137:
     if (type == 129 && level == 0)
  level = -1;
     break;
 }
 if (intty) {
     ohistent->prev = histgetword(histent);
     ohistent->prev->next = ohistent;
     savehist(ohistent, 0);
     freelex(ohistent);
     xfree(ohistent);
 } else
     (void) getword(((void*)0));
    } while (level >= 0);
 end:
    cleanup_until(&word);
}
