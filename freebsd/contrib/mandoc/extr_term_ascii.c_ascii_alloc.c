
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct manoutput {int dummy; } ;


 int TERMENC_ASCII ;
 void* ascii_init (int ,struct manoutput const*) ;

void *
ascii_alloc(const struct manoutput *outopts)
{

 return ascii_init(TERMENC_ASCII, outopts);
}
