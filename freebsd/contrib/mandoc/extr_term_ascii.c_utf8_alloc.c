
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct manoutput {int dummy; } ;


 int TERMENC_UTF8 ;
 void* ascii_init (int ,struct manoutput const*) ;

void *
utf8_alloc(const struct manoutput *outopts)
{

 return ascii_init(TERMENC_UTF8, outopts);
}
