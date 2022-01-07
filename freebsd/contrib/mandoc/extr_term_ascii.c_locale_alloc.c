
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct manoutput {int dummy; } ;


 int TERMENC_LOCALE ;
 void* ascii_init (int ,struct manoutput const*) ;

void *
locale_alloc(const struct manoutput *outopts)
{

 return ascii_init(TERMENC_LOCALE, outopts);
}
