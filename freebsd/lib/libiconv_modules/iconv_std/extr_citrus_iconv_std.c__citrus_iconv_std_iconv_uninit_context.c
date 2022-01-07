
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _citrus_iconv {int cv_closure; } ;


 int free (int ) ;

__attribute__((used)) static void
_citrus_iconv_std_iconv_uninit_context(struct _citrus_iconv *cv)
{

 free(cv->cv_closure);
}
