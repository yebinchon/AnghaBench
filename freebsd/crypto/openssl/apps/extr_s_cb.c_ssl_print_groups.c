
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL ;
typedef int BIO ;


 int BIO_printf (int *,char*,...) ;
 int BIO_puts (int *,char*) ;
 char* EC_curve_nid2nist (int) ;
 char* OBJ_nid2sn (int) ;
 int OPENSSL_free (int*) ;
 int SSL_get1_groups (int *,int*) ;
 int SSL_get_shared_group (int *,int) ;
 int TLSEXT_nid_unknown ;
 int* app_malloc (int,char*) ;

int ssl_print_groups(BIO *out, SSL *s, int noshared)
{
    int i, ngroups, *groups, nid;
    const char *gname;

    ngroups = SSL_get1_groups(s, ((void*)0));
    if (ngroups <= 0)
        return 1;
    groups = app_malloc(ngroups * sizeof(int), "groups to print");
    SSL_get1_groups(s, groups);

    BIO_puts(out, "Supported Elliptic Groups: ");
    for (i = 0; i < ngroups; i++) {
        if (i)
            BIO_puts(out, ":");
        nid = groups[i];

        if (nid & TLSEXT_nid_unknown) {
            BIO_printf(out, "0x%04X", nid & 0xFFFF);
        } else {


            gname = EC_curve_nid2nist(nid);
            if (gname == ((void*)0))
                gname = OBJ_nid2sn(nid);
            BIO_printf(out, "%s", gname);
        }
    }
    OPENSSL_free(groups);
    if (noshared) {
        BIO_puts(out, "\n");
        return 1;
    }
    BIO_puts(out, "\nShared Elliptic groups: ");
    ngroups = SSL_get_shared_group(s, -1);
    for (i = 0; i < ngroups; i++) {
        if (i)
            BIO_puts(out, ":");
        nid = SSL_get_shared_group(s, i);

        gname = EC_curve_nid2nist(nid);
        if (gname == ((void*)0))
            gname = OBJ_nid2sn(nid);
        BIO_printf(out, "%s", gname);
    }
    if (ngroups == 0)
        BIO_puts(out, "NONE");
    BIO_puts(out, "\n");
    return 1;
}
