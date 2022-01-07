
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int wint_t ;
typedef int locale_t ;
struct TYPE_4__ {int _mbstate; } ;
typedef TYPE_1__ FILE ;


 int __fgetwc_mbs (TYPE_1__*,int *,int*,int ) ;

__attribute__((used)) static inline wint_t
__fgetwc(FILE *fp, locale_t locale)
{
 int nread;

 return (__fgetwc_mbs(fp, &fp->_mbstate, &nread, locale));
}
