
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hs20_osu_client {unsigned long workarounds; int http; } ;
typedef int buf ;
typedef int FILE ;


 int MSG_INFO ;
 int WORKAROUND_OCSP_OPTIONAL ;
 int fclose (int *) ;
 scalar_t__ fgets (char*,int,int *) ;
 int * fopen (char*,char*) ;
 int http_ocsp_set (int ,int) ;
 unsigned long strtoul (char*,int *,int) ;
 int wpa_printf (int ,char*,unsigned long) ;

__attribute__((used)) static void check_workarounds(struct hs20_osu_client *ctx)
{
 FILE *f;
 char buf[100];
 unsigned long int val = 0;

 f = fopen("hs20-osu-client.workarounds", "r");
 if (f == ((void*)0))
  return;

 if (fgets(buf, sizeof(buf), f))
  val = strtoul(buf, ((void*)0), 16);

 fclose(f);

 if (val) {
  wpa_printf(MSG_INFO, "Workarounds enabled: 0x%lx", val);
  ctx->workarounds = val;
  if (ctx->workarounds & WORKAROUND_OCSP_OPTIONAL)
   http_ocsp_set(ctx->http, 1);
 }
}
