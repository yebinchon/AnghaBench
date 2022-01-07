
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sadb_sa {int sadb_sa_replay; scalar_t__ sadb_sa_flags; int sadb_sa_encrypt; int sadb_sa_auth; scalar_t__ sadb_sa_state; int sadb_sa_spi; int sadb_sa_exttype; int sadb_sa_len; } ;


 int PFKEY_UNIT64 (int) ;
 int SADB_AALG_MD5HMAC ;
 int SADB_EALG_DESCBC ;
 int SADB_EXT_SA ;
 int htonl (int) ;
 scalar_t__ m_buf ;
 scalar_t__ m_len ;
 int memcpy (scalar_t__,struct sadb_sa*,int) ;

void
key_setsadbsa()
{
 struct sadb_sa m_sa;

 m_sa.sadb_sa_len = PFKEY_UNIT64(sizeof(struct sadb_sa));
 m_sa.sadb_sa_exttype = SADB_EXT_SA;
 m_sa.sadb_sa_spi = htonl(0x12345678);
 m_sa.sadb_sa_replay = 4;
 m_sa.sadb_sa_state = 0;
 m_sa.sadb_sa_auth = SADB_AALG_MD5HMAC;
 m_sa.sadb_sa_encrypt = SADB_EALG_DESCBC;
 m_sa.sadb_sa_flags = 0;

 memcpy(m_buf + m_len, &m_sa, sizeof(struct sadb_sa));
 m_len += sizeof(struct sadb_sa);

 return;
}
