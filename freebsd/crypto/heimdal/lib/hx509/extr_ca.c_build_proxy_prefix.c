
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
typedef int hx509_context ;
typedef int Name ;


 int ENOMEM ;
 int _hx509_name_modify (int ,int *,int,int *,char*) ;
 int asn1_oid_id_at_commonName ;
 int asprintf (char**,char*,unsigned long) ;
 int copy_Name (int const*,int *) ;
 int free (char*) ;
 int free_Name (int *) ;
 int hx509_set_error_string (int ,int ,int,char*) ;
 scalar_t__ time (int *) ;

__attribute__((used)) static int
build_proxy_prefix(hx509_context context, const Name *issuer, Name *subject)
{
    char *tstr;
    time_t t;
    int ret;

    ret = copy_Name(issuer, subject);
    if (ret) {
 hx509_set_error_string(context, 0, ret,
          "Failed to copy subject name");
 return ret;
    }

    t = time(((void*)0));
    asprintf(&tstr, "ts-%lu", (unsigned long)t);
    if (tstr == ((void*)0)) {
 hx509_set_error_string(context, 0, ENOMEM,
          "Failed to copy subject name");
 return ENOMEM;
    }

    ret = _hx509_name_modify(context, subject, 1, &asn1_oid_id_at_commonName, tstr);
    free(tstr);
    if (ret)
 free_Name(subject);
    return ret;
}
