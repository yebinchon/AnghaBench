
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DTLS1_BAD_VER ;

 int DTLS_MAX_VERSION ;
 int DTLS_VERSION_GT (int,int ) ;
 int DTLS_VERSION_LT (int,int ) ;
 int SSL3_VERSION ;

 int TLS_MAX_VERSION ;

int ssl_set_version_bound(int method_version, int version, int *bound)
{
    if (version == 0) {
        *bound = version;
        return 1;
    }
    switch (method_version) {
    default:







        return 0;

    case 128:
        if (version < SSL3_VERSION || version > TLS_MAX_VERSION)
            return 0;
        break;

    case 129:
        if (DTLS_VERSION_GT(version, DTLS_MAX_VERSION) ||
            DTLS_VERSION_LT(version, DTLS1_BAD_VER))
            return 0;
        break;
    }

    *bound = version;
    return 1;
}
