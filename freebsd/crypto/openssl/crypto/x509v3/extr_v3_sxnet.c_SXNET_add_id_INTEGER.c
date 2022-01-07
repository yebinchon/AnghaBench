
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int ids; int version; } ;
struct TYPE_10__ {int * zone; int user; } ;
typedef TYPE_1__ SXNETID ;
typedef TYPE_2__ SXNET ;
typedef int ASN1_INTEGER ;


 int ASN1_INTEGER_set (int ,int ) ;
 int ASN1_OCTET_STRING_set (int ,unsigned char const*,int) ;
 int ERR_R_MALLOC_FAILURE ;
 int SXNETID_free (TYPE_1__*) ;
 TYPE_1__* SXNETID_new () ;
 int SXNET_free (TYPE_2__*) ;
 scalar_t__ SXNET_get_id_INTEGER (TYPE_2__*,int *) ;
 TYPE_2__* SXNET_new () ;
 int X509V3_F_SXNET_ADD_ID_INTEGER ;
 int X509V3_R_DUPLICATE_ZONE_ID ;
 int X509V3_R_INVALID_NULL_ARGUMENT ;
 int X509V3_R_USER_TOO_LONG ;
 int X509V3err (int ,int ) ;
 int sk_SXNETID_push (int ,TYPE_1__*) ;
 int strlen (char const*) ;

int SXNET_add_id_INTEGER(SXNET **psx, ASN1_INTEGER *zone, const char *user,
                         int userlen)
{
    SXNET *sx = ((void*)0);
    SXNETID *id = ((void*)0);
    if (!psx || !zone || !user) {
        X509V3err(X509V3_F_SXNET_ADD_ID_INTEGER,
                  X509V3_R_INVALID_NULL_ARGUMENT);
        return 0;
    }
    if (userlen == -1)
        userlen = strlen(user);
    if (userlen > 64) {
        X509V3err(X509V3_F_SXNET_ADD_ID_INTEGER, X509V3_R_USER_TOO_LONG);
        return 0;
    }
    if (*psx == ((void*)0)) {
        if ((sx = SXNET_new()) == ((void*)0))
            goto err;
        if (!ASN1_INTEGER_set(sx->version, 0))
            goto err;
        *psx = sx;
    } else
        sx = *psx;
    if (SXNET_get_id_INTEGER(sx, zone)) {
        X509V3err(X509V3_F_SXNET_ADD_ID_INTEGER, X509V3_R_DUPLICATE_ZONE_ID);
        return 0;
    }

    if ((id = SXNETID_new()) == ((void*)0))
        goto err;
    if (userlen == -1)
        userlen = strlen(user);

    if (!ASN1_OCTET_STRING_set(id->user, (const unsigned char *)user, userlen))
        goto err;
    if (!sk_SXNETID_push(sx->ids, id))
        goto err;
    id->zone = zone;
    return 1;

 err:
    X509V3err(X509V3_F_SXNET_ADD_ID_INTEGER, ERR_R_MALLOC_FAILURE);
    SXNETID_free(id);
    SXNET_free(sx);
    *psx = ((void*)0);
    return 0;
}
