
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntlm_targetinfo {int dnstreename; int dnsservername; int dnsdomainname; int domainname; int servername; } ;


 int free (int ) ;
 int memset (struct ntlm_targetinfo*,int ,int) ;

void
heim_ntlm_free_targetinfo(struct ntlm_targetinfo *ti)
{
    free(ti->servername);
    free(ti->domainname);
    free(ti->dnsdomainname);
    free(ti->dnsservername);
    free(ti->dnstreename);
    memset(ti, 0, sizeof(*ti));
}
