
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_long ;
struct parse {size_t nargs; TYPE_1__* argval; } ;
typedef int dummy ;
struct TYPE_2__ {int uval; } ;
typedef int FILE ;


 scalar_t__ IMPL_XNTPD ;
 scalar_t__ IMPL_XNTPD_OLD ;
 int INFO_ERR_IMPL ;
 int MAXARGS ;
 int doquery (scalar_t__,int,int,int,int,char*,size_t*,size_t*,char const**,int ,int) ;
 int fprintf (int *,char*) ;
 scalar_t__ impl_ver ;

__attribute__((used)) static void
do_trustkey(
 struct parse *pcmd,
 FILE *fp,
 int req
 )
{
 u_long keyids[MAXARGS];
 size_t i;
 size_t items;
 size_t itemsize;
 const char *dummy;
 int ritems;
 int res;

 ritems = 0;
 for (i = 0; i < pcmd->nargs; i++) {
  keyids[ritems++] = pcmd->argval[i].uval;
 }

again:
 res = doquery(impl_ver, req, 1, ritems, sizeof(u_long),
        (char *)keyids, &items, &itemsize, &dummy, 0,
        sizeof(dummy));

 if (res == INFO_ERR_IMPL && impl_ver == IMPL_XNTPD) {
  impl_ver = IMPL_XNTPD_OLD;
  goto again;
 }

 if (res == 0)
     (void) fprintf(fp, "done!\n");
 return;
}
