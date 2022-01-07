
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long uint16_t ;


 int ERR_R_MALLOC_FAILURE ;
 int OPENSSL_free (long*) ;
 long* OPENSSL_malloc (size_t) ;
 int SSL_F_TLS1_SET_GROUPS ;
 int SSL_R_BAD_LENGTH ;
 int SSLerr (int ,int ) ;
 long tls1_nid2group_id (int) ;

int tls1_set_groups(uint16_t **pext, size_t *pextlen,
                    int *groups, size_t ngroups)
{
    uint16_t *glist;
    size_t i;




    unsigned long dup_list = 0;

    if (ngroups == 0) {
        SSLerr(SSL_F_TLS1_SET_GROUPS, SSL_R_BAD_LENGTH);
        return 0;
    }
    if ((glist = OPENSSL_malloc(ngroups * sizeof(*glist))) == ((void*)0)) {
        SSLerr(SSL_F_TLS1_SET_GROUPS, ERR_R_MALLOC_FAILURE);
        return 0;
    }
    for (i = 0; i < ngroups; i++) {
        unsigned long idmask;
        uint16_t id;

        id = tls1_nid2group_id(groups[i]);
        idmask = 1L << id;
        if (!id || (dup_list & idmask)) {
            OPENSSL_free(glist);
            return 0;
        }
        dup_list |= idmask;
        glist[i] = id;
    }
    OPENSSL_free(*pext);
    *pext = glist;
    *pextlen = ngroups;
    return 1;
}
