
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ wint_t ;
typedef scalar_t__ wchar_t ;
typedef int cchar_t ;
typedef int WINDOW ;


 int A_NORMAL ;
 int setcchar (int *,scalar_t__*,int ,short,int *) ;
 int wadd_wch (int *,int *) ;

__attribute__((used)) static int
wadd_wint(WINDOW *win, wint_t *src)
{
    cchar_t tmp;
    wchar_t wch[2];

    wch[0] = (wchar_t) (*src);
    wch[1] = 0;
    setcchar(&tmp, wch, A_NORMAL, (short) 0, ((void*)0));
    return wadd_wch(win, &tmp);
}
