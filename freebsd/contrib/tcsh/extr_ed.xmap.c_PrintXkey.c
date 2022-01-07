
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct Strbuf {int dummy; } ;
struct TYPE_4__ {scalar_t__ len; int buf; } ;
typedef TYPE_1__ CStr ;


 int CGETS (int,int,char*) ;
 int Lookup (struct Strbuf*,TYPE_1__*,int *) ;
 int STRNULL ;
 struct Strbuf Strbuf_INIT ;
 int Strbuf_append1 (struct Strbuf*,char) ;
 int Strbuf_cleanup ;
 int * Xmap ;
 int cleanup_push (struct Strbuf*,int ) ;
 int cleanup_until (struct Strbuf*) ;
 int xprintf (int ,int ) ;

void
PrintXkey(const CStr *key)
{
    struct Strbuf buf = Strbuf_INIT;
    CStr cs;

    if (key) {
 cs.buf = key->buf;
 cs.len = key->len;
    }
    else {
 cs.buf = STRNULL;
 cs.len = 0;
    }

    if (Xmap == ((void*)0) && cs.len == 0)
 return;

    Strbuf_append1(&buf, '"');
    cleanup_push(&buf, Strbuf_cleanup);
    if (Lookup(&buf, &cs, Xmap) <= -1)

 xprintf(CGETS(9, 4, "Unbound extended key \"%S\"\n"), cs.buf);
    cleanup_until(&buf);
}
