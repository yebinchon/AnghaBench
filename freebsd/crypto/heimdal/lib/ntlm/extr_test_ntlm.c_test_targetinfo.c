
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ti ;
struct ntlm_targetinfo {int avflags; int * dnsservername; } ;
struct ntlm_buf {int dummy; } ;


 int errx (int,char*,...) ;
 int heim_ntlm_decode_targetinfo (struct ntlm_buf*,int,struct ntlm_targetinfo*) ;
 int heim_ntlm_encode_targetinfo (struct ntlm_targetinfo*,int,struct ntlm_buf*) ;
 int heim_ntlm_free_targetinfo (struct ntlm_targetinfo*) ;
 int memset (struct ntlm_targetinfo*,int ,int) ;
 int * rk_UNCONST (char const*) ;
 scalar_t__ strcmp (int *,char const*) ;

__attribute__((used)) static int
test_targetinfo(void)
{
    struct ntlm_targetinfo ti;
    struct ntlm_buf buf;
    const char *dnsservername = "dnsservername";
    int ret;

    memset(&ti, 0, sizeof(ti));

    ti.dnsservername = rk_UNCONST(dnsservername);
    ti.avflags = 1;
    ret = heim_ntlm_encode_targetinfo(&ti, 1, &buf);
    if (ret)
 return ret;

    memset(&ti, 0, sizeof(ti));

    ret = heim_ntlm_decode_targetinfo(&buf, 1, &ti);
    if (ret)
 return ret;

    if (ti.dnsservername == ((void*)0) ||
 strcmp(ti.dnsservername, dnsservername) != 0)
 errx(1, "ti.dnshostname != %s", dnsservername);
    if (ti.avflags != 1)
 errx(1, "ti.avflags != 1");

    heim_ntlm_free_targetinfo(&ti);

    return 0;
}
