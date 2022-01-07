
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wordent {char* word; struct wordent* next; struct wordent* prev; } ;
struct Strbuf {scalar_t__ len; } ;
typedef char Char ;


 char HIST ;
 char INVALID_BYTE ;
 char QUOTE ;
 struct Strbuf Strbuf_INIT ;
 int Strbuf_append1 (struct Strbuf*,char) ;
 char* Strbuf_finish (struct Strbuf*) ;
 char TRIM ;

Char *
expand_lex(const struct wordent *sp0, int from, int to)
{
    struct Strbuf buf = Strbuf_INIT;
    const struct wordent *sp;
    Char *s;
    Char prev_c;
    int i;

    prev_c = '\0';

    if (!sp0 || (sp = sp0->next) == sp0 || sp == (sp0 = sp0->prev))
 return Strbuf_finish(&buf);

    for (i = 0; ; i++) {
 if ((i >= from) && (i <= to)) {
     for (s = sp->word; *s; s++) {





  if ((*s & QUOTE)
      && (((*s & TRIM) == HIST && HIST != '\0') ||
   (((*s & TRIM) == '\'') && (prev_c != '\\')) ||
   (((*s & TRIM) == '\"') && (prev_c != '\\')))) {
      Strbuf_append1(&buf, '\\');
  }






  Strbuf_append1(&buf, *s & TRIM);

  prev_c = *s;
     }
     Strbuf_append1(&buf, ' ');
 }
 sp = sp->next;
 if (sp == sp0)
     break;
    }
    if (buf.len != 0)
 buf.len--;

    return Strbuf_finish(&buf);
}
