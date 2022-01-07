
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int session_id_length; unsigned char const* session_id; } ;
typedef TYPE_1__ SSL_SESSION ;


 int SSL_F_SSL_SESSION_SET1_ID ;
 unsigned int SSL_MAX_SSL_SESSION_ID_LENGTH ;
 int SSL_R_SSL_SESSION_ID_TOO_LONG ;
 int SSLerr (int ,int ) ;
 int memcpy (unsigned char const*,unsigned char const*,unsigned int) ;

int SSL_SESSION_set1_id(SSL_SESSION *s, const unsigned char *sid,
                        unsigned int sid_len)
{
    if (sid_len > SSL_MAX_SSL_SESSION_ID_LENGTH) {
      SSLerr(SSL_F_SSL_SESSION_SET1_ID,
             SSL_R_SSL_SESSION_ID_TOO_LONG);
      return 0;
    }
    s->session_id_length = sid_len;
    if (sid != s->session_id)
        memcpy(s->session_id, sid, sid_len);
    return 1;
}
