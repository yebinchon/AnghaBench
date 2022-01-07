
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_4__* desc; TYPE_4__* name; } ;
struct TYPE_8__ {TYPE_4__* pem_name; int blob; } ;
struct TYPE_9__ {int crl; int x509; int pkey; int params; TYPE_1__ name; TYPE_2__ embedded; } ;
struct TYPE_10__ {int type; TYPE_3__ _; } ;
typedef TYPE_4__ OSSL_STORE_INFO ;


 int BUF_MEM_free (int ) ;
 int EVP_PKEY_free (int ) ;
 int OPENSSL_free (TYPE_4__*) ;






 int X509_CRL_free (int ) ;
 int X509_free (int ) ;

void OSSL_STORE_INFO_free(OSSL_STORE_INFO *info)
{
    if (info != ((void*)0)) {
        switch (info->type) {
        case 131:
            BUF_MEM_free(info->_.embedded.blob);
            OPENSSL_free(info->_.embedded.pem_name);
            break;
        case 130:
            OPENSSL_free(info->_.name.name);
            OPENSSL_free(info->_.name.desc);
            break;
        case 129:
            EVP_PKEY_free(info->_.params);
            break;
        case 128:
            EVP_PKEY_free(info->_.pkey);
            break;
        case 133:
            X509_free(info->_.x509);
            break;
        case 132:
            X509_CRL_free(info->_.crl);
            break;
        }
        OPENSSL_free(info);
    }
}
