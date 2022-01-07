
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL ;
typedef int BIO ;


 int BIO_printf (int *,char*,int ) ;
 int NID_undef ;
 int OBJ_nid2sn (int) ;
 scalar_t__ SSL_get_peer_signature_nid (int *,int*) ;
 scalar_t__ SSL_get_peer_signature_type_nid (int *,int*) ;
 int SSL_is_server (int *) ;
 int do_print_sigalgs (int *,int *,int) ;
 int get_sigtype (int) ;
 int ssl_print_client_cert_types (int *,int *) ;

int ssl_print_sigalgs(BIO *out, SSL *s)
{
    int nid;
    if (!SSL_is_server(s))
        ssl_print_client_cert_types(out, s);
    do_print_sigalgs(out, s, 0);
    do_print_sigalgs(out, s, 1);
    if (SSL_get_peer_signature_nid(s, &nid) && nid != NID_undef)
        BIO_printf(out, "Peer signing digest: %s\n", OBJ_nid2sn(nid));
    if (SSL_get_peer_signature_type_nid(s, &nid))
        BIO_printf(out, "Peer signature type: %s\n", get_sigtype(nid));
    return 1;
}
