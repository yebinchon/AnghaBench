
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int EditLine ;


 int EOF ;
 int ERANGE ;
 int el_wgetc (int *,int *) ;
 int errno ;
 int wctob (int ) ;

int
el_getc(EditLine *el, char *cp)
{
 int num_read;
 wchar_t wc = 0;

 num_read = el_wgetc(el, &wc);
 *cp = '\0';
 if (num_read <= 0)
  return num_read;
 num_read = wctob(wc);
 if (num_read == EOF) {
  errno = ERANGE;
  return -1;
 } else {
  *cp = (char)num_read;
  return 1;
 }
}
