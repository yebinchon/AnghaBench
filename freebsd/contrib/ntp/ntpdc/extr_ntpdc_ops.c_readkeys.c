
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parse {int dummy; } ;
typedef int dummy ;
typedef int FILE ;


 scalar_t__ IMPL_XNTPD ;
 scalar_t__ IMPL_XNTPD_OLD ;
 int INFO_ERR_IMPL ;
 int REQ_REREAD_KEYS ;
 int doquery (scalar_t__,int ,int,int ,int ,char*,size_t*,size_t*,char const**,int ,int) ;
 int fprintf (int *,char*) ;
 scalar_t__ impl_ver ;

__attribute__((used)) static void
readkeys(
 struct parse *pcmd,
 FILE *fp
 )
{
 size_t items;
 size_t itemsize;
 const char *dummy;
 int res;

again:
 res = doquery(impl_ver, REQ_REREAD_KEYS, 1, 0, 0, (char *)0,
        &items, &itemsize, &dummy, 0, sizeof(dummy));

 if (res == INFO_ERR_IMPL && impl_ver == IMPL_XNTPD) {
  impl_ver = IMPL_XNTPD_OLD;
  goto again;
 }

 if (res == 0)
     (void) fprintf(fp, "done!\n");
 return;
}
