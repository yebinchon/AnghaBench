
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct parse {int dummy; } ;
struct info_auth {int expired; int decryptions; int encryptions; int keyuncached; int keynotfound; int keylookups; int numfreekeys; int numkeys; int timereset; } ;
typedef int FILE ;


 scalar_t__ IMPL_XNTPD ;
 scalar_t__ IMPL_XNTPD_OLD ;
 int INFO_ERR_IMPL ;
 int REQ_AUTHINFO ;
 int check1item (size_t,int *) ;
 int checkitemsize (size_t,int) ;
 int doquery (scalar_t__,int ,int ,int ,int ,int *,size_t*,size_t*,void*,int ,int) ;
 int fprintf (int *,char*,int ) ;
 scalar_t__ impl_ver ;
 scalar_t__ ntohl (int ) ;

__attribute__((used)) static void
authinfo(
 struct parse *pcmd,
 FILE *fp
 )
{
 struct info_auth *ia;
 size_t items;
 size_t itemsize;
 int res;

again:
 res = doquery(impl_ver, REQ_AUTHINFO, 0, 0, 0, ((void*)0), &items,
        &itemsize, (void *)&ia, 0, sizeof(*ia));

 if (res == INFO_ERR_IMPL && impl_ver == IMPL_XNTPD) {
  impl_ver = IMPL_XNTPD_OLD;
  goto again;
 }

 if (res != 0)
  return;

 if (!check1item(items, fp))
  return;

 if (!checkitemsize(itemsize, sizeof(*ia)))
  return;

 fprintf(fp, "time since reset:     %lu\n",
  (u_long)ntohl(ia->timereset));
 fprintf(fp, "stored keys:          %lu\n",
  (u_long)ntohl(ia->numkeys));
 fprintf(fp, "free keys:            %lu\n",
  (u_long)ntohl(ia->numfreekeys));
 fprintf(fp, "key lookups:          %lu\n",
  (u_long)ntohl(ia->keylookups));
 fprintf(fp, "keys not found:       %lu\n",
  (u_long)ntohl(ia->keynotfound));
 fprintf(fp, "uncached keys:        %lu\n",
  (u_long)ntohl(ia->keyuncached));
 fprintf(fp, "encryptions:          %lu\n",
  (u_long)ntohl(ia->encryptions));
 fprintf(fp, "decryptions:          %lu\n",
  (u_long)ntohl(ia->decryptions));
 fprintf(fp, "expired keys:         %lu\n",
  (u_long)ntohl(ia->expired));
}
