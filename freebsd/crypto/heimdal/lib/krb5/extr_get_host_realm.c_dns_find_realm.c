
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rk_dns_reply {int head; } ;
typedef int krb5_realm ;
typedef int krb5_context ;
typedef int dom ;


 int MAXHOSTNAMELEN ;
 int copy_txt_to_realms (int ,int **) ;
 int krb5_config_free_strings (char**) ;
 char** krb5_config_get_strings (int ,int *,char*,char*,int *) ;
 int rk_dns_free_data (struct rk_dns_reply*) ;
 struct rk_dns_reply* rk_dns_lookup (char*,char*) ;
 int snprintf (char*,int,char*,char const*,char const*) ;

__attribute__((used)) static int
dns_find_realm(krb5_context context,
        const char *domain,
        krb5_realm **realms)
{
    static const char *default_labels[] = { "_kerberos", ((void*)0) };
    char dom[MAXHOSTNAMELEN];
    struct rk_dns_reply *r;
    const char **labels;
    char **config_labels;
    int i, ret;

    config_labels = krb5_config_get_strings(context, ((void*)0), "libdefaults",
         "dns_lookup_realm_labels", ((void*)0));
    if(config_labels != ((void*)0))
 labels = (const char **)config_labels;
    else
 labels = default_labels;
    if(*domain == '.')
 domain++;
    for (i = 0; labels[i] != ((void*)0); i++) {
 ret = snprintf(dom, sizeof(dom), "%s.%s.", labels[i], domain);
 if(ret < 0 || (size_t)ret >= sizeof(dom)) {
     if (config_labels)
  krb5_config_free_strings(config_labels);
     return -1;
 }
     r = rk_dns_lookup(dom, "TXT");
     if(r != ((void*)0)) {
     ret = copy_txt_to_realms (r->head, realms);
     rk_dns_free_data(r);
     if(ret == 0) {
  if (config_labels)
      krb5_config_free_strings(config_labels);
  return 0;
     }
 }
    }
    if (config_labels)
 krb5_config_free_strings(config_labels);
    return -1;
}
