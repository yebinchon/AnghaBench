
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wint_t ;


 int fgetwc (int ) ;
 int stdin ;

wint_t
getwchar(void)
{
 return (fgetwc(stdin));
}
