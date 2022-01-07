
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int const wchar_t ;
struct dirent {int * d_name; } ;
typedef int dir ;
struct TYPE_3__ {int const* cursor; int const* buffer; } ;
typedef TYPE_1__ LineInfoW ;
typedef int EditLine ;
typedef int DIR ;


 unsigned char CC_ERROR ;
 unsigned char CC_REFRESH ;
 int MB_LEN_MAX ;
 int closedir (int *) ;
 int el_winsertstr (int *,int const*) ;
 TYPE_1__* el_wline (int *) ;
 int err (int,char*) ;
 int free (char*) ;
 int iswspace (int const) ;
 char* malloc (int) ;
 int mbstowcs (int const*,int *,int) ;
 int * opendir (char*) ;
 struct dirent* readdir (int *) ;
 int strlen (int *) ;
 scalar_t__ strncmp (int *,char*,int) ;
 int wctomb (char*,int const) ;

__attribute__((used)) static unsigned char
complete(EditLine *el, int ch)
{
 DIR *dd = opendir(".");
 struct dirent *dp;
 const wchar_t *ptr;
 char *buf, *bptr;
 const LineInfoW *lf = el_wline(el);
 int len, mblen, i;
 unsigned char res = 0;
 wchar_t dir[1024];


 for (ptr = lf->cursor -1; !iswspace(*ptr) && ptr > lf->buffer; --ptr)
  continue;
 len = lf->cursor - ++ptr;


 wctomb(((void*)0), 0);
 mblen = MB_LEN_MAX * len + 1;
 buf = bptr = malloc(mblen);
 if (buf == ((void*)0))
  err(1, "malloc");
 for (i = 0; i < len; ++i) {

  bptr += wctomb(bptr, ptr[i]);
 }
 *bptr = 0;
 mblen = bptr - buf;


 for (dp = readdir(dd); dp != ((void*)0); dp = readdir(dd)) {
  if (mblen > strlen(dp->d_name))
   continue;
  if (strncmp(dp->d_name, buf, mblen) == 0) {
   mbstowcs(dir, &dp->d_name[mblen],
       sizeof(dir) / sizeof(*dir));
   if (el_winsertstr(el, dir) == -1)
    res = CC_ERROR;
   else
    res = CC_REFRESH;
   break;
  }
 }

 closedir(dd);
 free(buf);
 return res;
}
