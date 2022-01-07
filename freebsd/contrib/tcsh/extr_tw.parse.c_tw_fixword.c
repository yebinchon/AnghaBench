
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Strbuf {char* len; int s; } ;
typedef char Char ;


 int Strbuf_append (struct Strbuf*,char*) ;
 int Strbuf_append1 (struct Strbuf*,char) ;
 int Strbuf_terminate (struct Strbuf*) ;
 char* Strrchr (int ,char) ;





 int quote (char*) ;

__attribute__((used)) static void
tw_fixword(int looking, struct Strbuf *word, Char *dir, Char *exp_name)
{
    Char *ptr;

    switch (looking) {
    case 130:
 word->len = 0;
 Strbuf_append1(word, '~');
 break;

    case 128:
 if ((ptr = Strrchr(word->s, '$')) != ((void*)0)) {
     if (ptr[1] == '{') ptr++;
     word->len = ptr + 1 - word->s;
 } else
     word->len = 0;
 break;

    case 132:
    case 131:
    case 129:
 word->len = 0;
 Strbuf_append(word, dir);
 break;

    default:
 word->len = 0;
 break;
    }

    (void) quote(exp_name);
    Strbuf_append(word, exp_name);
    Strbuf_terminate(word);
}
