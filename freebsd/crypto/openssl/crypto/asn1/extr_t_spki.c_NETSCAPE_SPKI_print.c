
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_11__ {int data; scalar_t__ length; } ;
struct TYPE_8__ {int * algorithm; } ;
struct TYPE_10__ {TYPE_3__* signature; TYPE_2__ sig_algor; TYPE_1__* spkac; } ;
struct TYPE_9__ {int length; scalar_t__ data; } ;
struct TYPE_7__ {TYPE_5__* challenge; int pubkey; } ;
typedef TYPE_4__ NETSCAPE_SPKI ;
typedef int EVP_PKEY ;
typedef int BIO ;
typedef int ASN1_OBJECT ;
typedef TYPE_5__ ASN1_IA5STRING ;


 int BIO_printf (int *,char*,...) ;
 int BIO_write (int *,char*,int) ;
 int EVP_PKEY_free (int *) ;
 int EVP_PKEY_print_public (int *,int *,int,int *) ;
 int NID_undef ;
 char* OBJ_nid2ln (int) ;
 int OBJ_obj2nid (int *) ;
 int * X509_PUBKEY_get (int ) ;
 int X509_PUBKEY_get0_param (int **,int *,int *,int *,int ) ;

int NETSCAPE_SPKI_print(BIO *out, NETSCAPE_SPKI *spki)
{
    EVP_PKEY *pkey;
    ASN1_IA5STRING *chal;
    ASN1_OBJECT *spkioid;
    int i, n;
    char *s;
    BIO_printf(out, "Netscape SPKI:\n");
    X509_PUBKEY_get0_param(&spkioid, ((void*)0), ((void*)0), ((void*)0), spki->spkac->pubkey);
    i = OBJ_obj2nid(spkioid);
    BIO_printf(out, "  Public Key Algorithm: %s\n",
               (i == NID_undef) ? "UNKNOWN" : OBJ_nid2ln(i));
    pkey = X509_PUBKEY_get(spki->spkac->pubkey);
    if (!pkey)
        BIO_printf(out, "  Unable to load public key\n");
    else {
        EVP_PKEY_print_public(out, pkey, 4, ((void*)0));
        EVP_PKEY_free(pkey);
    }
    chal = spki->spkac->challenge;
    if (chal->length)
        BIO_printf(out, "  Challenge String: %s\n", chal->data);
    i = OBJ_obj2nid(spki->sig_algor.algorithm);
    BIO_printf(out, "  Signature Algorithm: %s",
               (i == NID_undef) ? "UNKNOWN" : OBJ_nid2ln(i));

    n = spki->signature->length;
    s = (char *)spki->signature->data;
    for (i = 0; i < n; i++) {
        if ((i % 18) == 0)
            BIO_write(out, "\n      ", 7);
        BIO_printf(out, "%02x%s", (unsigned char)s[i],
                   ((i + 1) == n) ? "" : ":");
    }
    BIO_write(out, "\n", 1);
    return 1;
}
