
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lc_messages_T {int * nostr; int * yesstr; } ;
struct xlocale_messages {int buffer; struct lc_messages_T locale; } ;


 int LCMESSAGES_SIZE_FULL ;
 int LCMESSAGES_SIZE_MIN ;
 int _LDP_LOADED ;
 int __part_load_locale (char const*,int*,int *,char*,int ,int ,char const**) ;
 void* empty ;

__attribute__((used)) static int
messages_load_locale(struct xlocale_messages *loc, int *using_locale, const char *name)
{
 int ret;
 struct lc_messages_T *l = &loc->locale;

 ret = __part_load_locale(name, using_locale,
    &loc->buffer, "LC_MESSAGES",
    LCMESSAGES_SIZE_FULL, LCMESSAGES_SIZE_MIN,
    (const char **)l);
 if (ret == _LDP_LOADED) {
  if (l->yesstr == ((void*)0))
   l->yesstr = empty;
  if (l->nostr == ((void*)0))
   l->nostr = empty;
 }
 return (ret);
}
