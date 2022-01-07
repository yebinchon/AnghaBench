
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_3__ {int flags; int nid; int secbits; } ;
typedef TYPE_1__ TLS_GROUP_INFO ;
typedef int SSL ;


 int TLS_CURVE_CHAR2 ;
 int ssl_security (int *,int,int ,int ,void*) ;
 TYPE_1__* tls1_group_id_lookup (int) ;

int tls_curve_allowed(SSL *s, uint16_t curve, int op)
{
    const TLS_GROUP_INFO *cinfo = tls1_group_id_lookup(curve);
    unsigned char ctmp[2];

    if (cinfo == ((void*)0))
        return 0;




    ctmp[0] = curve >> 8;
    ctmp[1] = curve & 0xff;
    return ssl_security(s, op, cinfo->secbits, cinfo->nid, (void *)ctmp);
}
