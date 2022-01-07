
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* locale_t ;
struct TYPE_4__ {int using_messages_locale; int using_time_locale; int using_numeric_locale; int using_monetary_locale; } ;



__attribute__((used)) static void
copyflags(locale_t new, locale_t old)
{
 new->using_monetary_locale = old->using_monetary_locale;
 new->using_numeric_locale = old->using_numeric_locale;
 new->using_time_locale = old->using_time_locale;
 new->using_messages_locale = old->using_messages_locale;
}
