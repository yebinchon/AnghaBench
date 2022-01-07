
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int buf ;
typedef int X509 ;
struct TYPE_3__ {int name; } ;
typedef int SSL ;
typedef TYPE_1__ SRTP_PROTECTION_PROFILE ;


 int BIO_flush (int ) ;
 int BIO_printf (int ,char*,...) ;
 int BIO_write (int ,unsigned char const*,unsigned int) ;
 int BUFSIZ ;
 int OPENSSL_free (unsigned char*) ;
 int PEM_write_bio_SSL_SESSION (int ,int ) ;
 int PEM_write_bio_X509 (int ,int *) ;
 char* SSL_CIPHER_get_name (int ) ;
 int SSL_OP_NO_RENEGOTIATION ;
 int SSL_export_keying_material (int *,unsigned char*,int,int *,int ,int *,int ,int ) ;
 int SSL_get0_next_proto_negotiated (int *,unsigned char const**,unsigned int*) ;
 int SSL_get_current_cipher (int *) ;
 int SSL_get_options (int *) ;
 int * SSL_get_peer_certificate (int *) ;
 scalar_t__ SSL_get_secure_renegotiation_support (int *) ;
 TYPE_1__* SSL_get_selected_srtp_profile (int *) ;
 int SSL_get_session (int *) ;
 int * SSL_get_shared_ciphers (int *,char*,int) ;
 scalar_t__ SSL_session_reused (int *) ;
 int X509_free (int *) ;
 unsigned char* app_malloc (int,char*) ;
 int bio_s_out ;
 int dump_cert_text (int ,int *) ;
 int * keymatexportlabel ;
 int keymatexportlen ;
 int print_ca_names (int ,int *) ;
 int print_ssl_summary (int *) ;
 scalar_t__ s_brief ;
 int ssl_print_groups (int ,int *,int ) ;
 int ssl_print_point_formats (int ,int *) ;
 int ssl_print_sigalgs (int ,int *) ;
 int strlen (int *) ;

__attribute__((used)) static void print_connection_info(SSL *con)
{
    const char *str;
    X509 *peer;
    char buf[BUFSIZ];

    const unsigned char *next_proto_neg;
    unsigned next_proto_neg_len;

    unsigned char *exportedkeymat;
    int i;

    if (s_brief)
        print_ssl_summary(con);

    PEM_write_bio_SSL_SESSION(bio_s_out, SSL_get_session(con));

    peer = SSL_get_peer_certificate(con);
    if (peer != ((void*)0)) {
        BIO_printf(bio_s_out, "Client certificate\n");
        PEM_write_bio_X509(bio_s_out, peer);
        dump_cert_text(bio_s_out, peer);
        X509_free(peer);
        peer = ((void*)0);
    }

    if (SSL_get_shared_ciphers(con, buf, sizeof(buf)) != ((void*)0))
        BIO_printf(bio_s_out, "Shared ciphers:%s\n", buf);
    str = SSL_CIPHER_get_name(SSL_get_current_cipher(con));
    ssl_print_sigalgs(bio_s_out, con);

    ssl_print_point_formats(bio_s_out, con);
    ssl_print_groups(bio_s_out, con, 0);

    print_ca_names(bio_s_out, con);
    BIO_printf(bio_s_out, "CIPHER is %s\n", (str != ((void*)0)) ? str : "(NONE)");


    SSL_get0_next_proto_negotiated(con, &next_proto_neg, &next_proto_neg_len);
    if (next_proto_neg) {
        BIO_printf(bio_s_out, "NEXTPROTO is ");
        BIO_write(bio_s_out, next_proto_neg, next_proto_neg_len);
        BIO_printf(bio_s_out, "\n");
    }


    {
        SRTP_PROTECTION_PROFILE *srtp_profile
            = SSL_get_selected_srtp_profile(con);

        if (srtp_profile)
            BIO_printf(bio_s_out, "SRTP Extension negotiated, profile=%s\n",
                       srtp_profile->name);
    }

    if (SSL_session_reused(con))
        BIO_printf(bio_s_out, "Reused session-id\n");
    BIO_printf(bio_s_out, "Secure Renegotiation IS%s supported\n",
               SSL_get_secure_renegotiation_support(con) ? "" : " NOT");
    if ((SSL_get_options(con) & SSL_OP_NO_RENEGOTIATION))
        BIO_printf(bio_s_out, "Renegotiation is DISABLED\n");

    if (keymatexportlabel != ((void*)0)) {
        BIO_printf(bio_s_out, "Keying material exporter:\n");
        BIO_printf(bio_s_out, "    Label: '%s'\n", keymatexportlabel);
        BIO_printf(bio_s_out, "    Length: %i bytes\n", keymatexportlen);
        exportedkeymat = app_malloc(keymatexportlen, "export key");
        if (!SSL_export_keying_material(con, exportedkeymat,
                                        keymatexportlen,
                                        keymatexportlabel,
                                        strlen(keymatexportlabel),
                                        ((void*)0), 0, 0)) {
            BIO_printf(bio_s_out, "    Error\n");
        } else {
            BIO_printf(bio_s_out, "    Keying material: ");
            for (i = 0; i < keymatexportlen; i++)
                BIO_printf(bio_s_out, "%02X", exportedkeymat[i]);
            BIO_printf(bio_s_out, "\n");
        }
        OPENSSL_free(exportedkeymat);
    }

    (void)BIO_flush(bio_s_out);
}
