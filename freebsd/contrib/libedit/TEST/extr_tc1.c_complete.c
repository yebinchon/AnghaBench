
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct dirent {int * d_name; } ;
struct TYPE_3__ {char* cursor; char const* buffer; } ;
typedef TYPE_1__ LineInfo ;
typedef int EditLine ;
typedef int DIR ;


 int CC_ERROR ;
 int CC_REFRESH ;
 int closedir (int *) ;
 int el_insertstr (int *,int *) ;
 TYPE_1__* el_line (int *) ;
 int isspace (unsigned char) ;
 int * opendir (char*) ;
 struct dirent* readdir (int *) ;
 int strlen (int *) ;
 scalar_t__ strncmp (int *,char const*,int) ;

__attribute__((used)) static unsigned char
complete(EditLine *el, int ch)
{
 DIR *dd = opendir(".");
 struct dirent *dp;
 const char* ptr;
 const LineInfo *lf = el_line(el);
 int len;
 int res = CC_ERROR;




 for (ptr = lf->cursor - 1;
     !isspace((unsigned char)*ptr) && ptr > lf->buffer; ptr--)
  continue;
 len = lf->cursor - ++ptr;

 for (dp = readdir(dd); dp != ((void*)0); dp = readdir(dd)) {
  if (len > strlen(dp->d_name))
   continue;
  if (strncmp(dp->d_name, ptr, len) == 0) {
   if (el_insertstr(el, &dp->d_name[len]) == -1)
    res = CC_ERROR;
   else
    res = CC_REFRESH;
   break;
  }
 }

 closedir(dd);
 return res;
}
