
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _citrus_iconv {int * cv_closure; } ;



__attribute__((used)) static int

_citrus_iconv_none_iconv_init_context(struct _citrus_iconv *cv)
{

 cv->cv_closure = ((void*)0);
 return (0);
}
