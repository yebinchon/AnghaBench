
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct lc_messages_T {int dummy; } ;
struct xlocale_messages {struct lc_messages_T locale; } ;
typedef TYPE_1__* locale_t ;
struct TYPE_3__ {scalar_t__* components; scalar_t__ using_messages_locale; } ;


 size_t XLC_MESSAGES ;
 int _C_messages_locale ;

struct lc_messages_T *
__get_current_messages_locale(locale_t loc)
{
 return (loc->using_messages_locale
  ? &((struct xlocale_messages *)loc->components[XLC_MESSAGES])->locale
  : (struct lc_messages_T *)&_C_messages_locale);
}
