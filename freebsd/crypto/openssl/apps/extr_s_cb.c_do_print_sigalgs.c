
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL ;
typedef int BIO ;


 int BIO_printf (int *,char*,...) ;
 int BIO_puts (int *,char*) ;
 int NID_undef ;
 int OBJ_nid2sn (int) ;
 int SSL_get_shared_sigalgs (int *,int,int*,int*,int *,unsigned char*,unsigned char*) ;
 int SSL_get_sigalgs (int *,int,int*,int*,int *,unsigned char*,unsigned char*) ;
 scalar_t__ SSL_is_server (int *) ;
 char* get_sigtype (int) ;

__attribute__((used)) static int do_print_sigalgs(BIO *out, SSL *s, int shared)
{
    int i, nsig, client;
    client = SSL_is_server(s) ? 0 : 1;
    if (shared)
        nsig = SSL_get_shared_sigalgs(s, 0, ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0));
    else
        nsig = SSL_get_sigalgs(s, -1, ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0));
    if (nsig == 0)
        return 1;

    if (shared)
        BIO_puts(out, "Shared ");

    if (client)
        BIO_puts(out, "Requested ");
    BIO_puts(out, "Signature Algorithms: ");
    for (i = 0; i < nsig; i++) {
        int hash_nid, sign_nid;
        unsigned char rhash, rsign;
        const char *sstr = ((void*)0);
        if (shared)
            SSL_get_shared_sigalgs(s, i, &sign_nid, &hash_nid, ((void*)0),
                                   &rsign, &rhash);
        else
            SSL_get_sigalgs(s, i, &sign_nid, &hash_nid, ((void*)0), &rsign, &rhash);
        if (i)
            BIO_puts(out, ":");
        sstr = get_sigtype(sign_nid);
        if (sstr)
            BIO_printf(out, "%s", sstr);
        else
            BIO_printf(out, "0x%02X", (int)rsign);
        if (hash_nid != NID_undef)
            BIO_printf(out, "+%s", OBJ_nid2sn(hash_nid));
        else if (sstr == ((void*)0))
            BIO_printf(out, "+0x%02X", (int)rhash);
    }
    BIO_puts(out, "\n");
    return 1;
}
