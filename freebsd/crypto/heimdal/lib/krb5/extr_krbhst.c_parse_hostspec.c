
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct krb5_krbhst_info {char* hostname; int port; int def_port; void* proto; } ;
struct krb5_krbhst_data {int dummy; } ;
typedef int krb5_context ;


 void* KRB5_KRBHST_HTTP ;
 void* KRB5_KRBHST_TCP ;
 struct krb5_krbhst_info* calloc (int,scalar_t__) ;
 int free (struct krb5_krbhst_info*) ;
 int krb5_getportbyname (int ,char*,char*,int) ;
 void* krbhst_get_default_proto (struct krb5_krbhst_data*) ;
 int memcpy (char*,char const*,int) ;
 int ntohs (int ) ;
 char* strchr (char const*,char) ;
 size_t strcspn (char*,char*) ;
 scalar_t__ strlen (char const*) ;
 int strlwr (char*) ;
 scalar_t__ strncmp (char const*,char*,int) ;
 scalar_t__ strsep_copy (char const**,char*,char*,scalar_t__) ;
 int strtol (char const*,char**,int ) ;

__attribute__((used)) static struct krb5_krbhst_info*
parse_hostspec(krb5_context context, struct krb5_krbhst_data *kd,
        const char *spec, int def_port, int port)
{
    const char *p = spec, *q;
    struct krb5_krbhst_info *hi;

    hi = calloc(1, sizeof(*hi) + strlen(spec));
    if(hi == ((void*)0))
 return ((void*)0);

    hi->proto = krbhst_get_default_proto(kd);

    if(strncmp(p, "http://", 7) == 0){
 hi->proto = KRB5_KRBHST_HTTP;
 p += 7;
    } else if(strncmp(p, "http/", 5) == 0) {
 hi->proto = KRB5_KRBHST_HTTP;
 p += 5;
 def_port = ntohs(krb5_getportbyname (context, "http", "tcp", 80));
    }else if(strncmp(p, "tcp/", 4) == 0){
 hi->proto = KRB5_KRBHST_TCP;
 p += 4;
    } else if(strncmp(p, "udp/", 4) == 0) {
 p += 4;
    }

    if (p[0] == '[' && (q = strchr(p, ']')) != ((void*)0)) {


 memcpy(hi->hostname, &p[1], q - p - 1);
 hi->hostname[q - p - 1] = '\0';
 p = q + 1;

 if (p[0] == ':')
     p++;
    } else if(strsep_copy(&p, ":", hi->hostname, strlen(spec) + 1) < 0) {

 free(hi);
 return ((void*)0);
    }

    hi->hostname[strcspn(hi->hostname, "/")] = '\0';
    strlwr(hi->hostname);

    hi->port = hi->def_port = def_port;
    if(p != ((void*)0) && p[0]) {
 char *end;
 hi->port = strtol(p, &end, 0);
 if(end == p) {
     free(hi);
     return ((void*)0);
 }
    }
    if (port)
 hi->port = port;
    return hi;
}
