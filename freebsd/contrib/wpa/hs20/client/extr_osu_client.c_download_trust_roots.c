
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hs20_osu_client {int dummy; } ;
typedef int fname ;


 int cmd_dl_aaa_ca (struct hs20_osu_client*,char const*,char*) ;
 int cmd_dl_osu_ca (struct hs20_osu_client*,char const*,char*) ;
 int cmd_dl_polupd_ca (struct hs20_osu_client*,char const*,char*) ;
 int os_free (char*) ;
 char* os_strdup (char const*) ;
 char* os_strrchr (char*,char) ;
 int snprintf (char*,int,char*,char*) ;

__attribute__((used)) static int download_trust_roots(struct hs20_osu_client *ctx,
    const char *pps_fname)
{
 char *dir, *pos;
 char fname[300];
 int ret, ret1;

 dir = os_strdup(pps_fname);
 if (dir == ((void*)0))
  return -1;
 pos = os_strrchr(dir, '/');
 if (pos == ((void*)0)) {
  os_free(dir);
  return -1;
 }
 *pos = '\0';

 snprintf(fname, sizeof(fname), "%s/ca.pem", dir);
 ret = cmd_dl_osu_ca(ctx, pps_fname, fname);
 snprintf(fname, sizeof(fname), "%s/polupd-ca.pem", dir);
 ret1 = cmd_dl_polupd_ca(ctx, pps_fname, fname);
 if (ret == 0 && ret1 == -1)
  ret = -1;
 snprintf(fname, sizeof(fname), "%s/aaa-ca.pem", dir);
 ret1 = cmd_dl_aaa_ca(ctx, pps_fname, fname);
 if (ret == 0 && ret1 == -1)
  ret = -1;

 os_free(dir);

 return ret;
}
