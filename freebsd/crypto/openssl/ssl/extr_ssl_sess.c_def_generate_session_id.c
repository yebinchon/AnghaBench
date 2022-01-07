
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL ;


 unsigned int MAX_SESS_ID_ATTEMPTS ;
 scalar_t__ RAND_bytes (unsigned char*,unsigned int) ;
 scalar_t__ SSL_has_matching_session_id (int *,unsigned char*,unsigned int) ;

__attribute__((used)) static int def_generate_session_id(SSL *ssl, unsigned char *id,
                                   unsigned int *id_len)
{
    unsigned int retry = 0;
    do
        if (RAND_bytes(id, *id_len) <= 0)
            return 0;
    while (SSL_has_matching_session_id(ssl, id, *id_len) &&
           (++retry < MAX_SESS_ID_ATTEMPTS)) ;
    if (retry < MAX_SESS_ID_ATTEMPTS)
        return 1;
    return 0;
}
