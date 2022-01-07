
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u_char ;
struct sadb_prop {scalar_t__* sadb_prop_reserved; scalar_t__ sadb_prop_replay; int sadb_prop_exttype; int sadb_prop_len; } ;
struct sadb_comb {int sadb_comb_auth_minbits; int sadb_comb_auth_maxbits; int sadb_comb_encrypt_minbits; int sadb_comb_encrypt_maxbits; scalar_t__ sadb_comb_hard_usetime; scalar_t__ sadb_comb_soft_usetime; scalar_t__ sadb_comb_hard_addtime; scalar_t__ sadb_comb_soft_addtime; scalar_t__ sadb_comb_hard_bytes; scalar_t__ sadb_comb_soft_bytes; scalar_t__ sadb_comb_hard_allocations; scalar_t__ sadb_comb_soft_allocations; scalar_t__ sadb_comb_reserved; scalar_t__ sadb_comb_flags; int sadb_comb_encrypt; int sadb_comb_auth; } ;
typedef int m_prop ;
typedef int m_comb ;
typedef int caddr_t ;


 int PFKEY_UNIT64 (int) ;
 int SADB_AALG_MD5HMAC ;
 int SADB_AALG_SHA1HMAC ;
 int SADB_EALG_3DESCBC ;
 int SADB_EALG_DESCBC ;
 int SADB_EXT_PROPOSAL ;
 int key_setsadbextbuf (int ,int ,int ,int,int *,int) ;
 int m_buf ;
 int m_len ;

void
key_setsadbprop()
{
 struct sadb_prop m_prop;
 struct sadb_comb *m_comb;
 u_char buf[256];
 u_int len = sizeof(m_prop) + sizeof(m_comb) * 2;


 m_prop.sadb_prop_len = PFKEY_UNIT64(len);
 m_prop.sadb_prop_exttype = SADB_EXT_PROPOSAL;
 m_prop.sadb_prop_replay = 0;
 m_prop.sadb_prop_reserved[0] = 0;
 m_prop.sadb_prop_reserved[1] = 0;
 m_prop.sadb_prop_reserved[2] = 0;


 m_comb = (struct sadb_comb *)buf;
 m_comb->sadb_comb_auth = SADB_AALG_MD5HMAC;
 m_comb->sadb_comb_encrypt = SADB_EALG_DESCBC;
 m_comb->sadb_comb_flags = 0;
 m_comb->sadb_comb_auth_minbits = 8;
 m_comb->sadb_comb_auth_maxbits = 96;
 m_comb->sadb_comb_encrypt_minbits = 64;
 m_comb->sadb_comb_encrypt_maxbits = 64;
 m_comb->sadb_comb_reserved = 0;
 m_comb->sadb_comb_soft_allocations = 0;
 m_comb->sadb_comb_hard_allocations = 0;
 m_comb->sadb_comb_soft_bytes = 0;
 m_comb->sadb_comb_hard_bytes = 0;
 m_comb->sadb_comb_soft_addtime = 0;
 m_comb->sadb_comb_hard_addtime = 0;
 m_comb->sadb_comb_soft_usetime = 0;
 m_comb->sadb_comb_hard_usetime = 0;


 m_comb = (struct sadb_comb *)(buf + sizeof(*m_comb));
 m_comb->sadb_comb_auth = SADB_AALG_SHA1HMAC;
 m_comb->sadb_comb_encrypt = SADB_EALG_3DESCBC;
 m_comb->sadb_comb_flags = 0;
 m_comb->sadb_comb_auth_minbits = 8;
 m_comb->sadb_comb_auth_maxbits = 96;
 m_comb->sadb_comb_encrypt_minbits = 64;
 m_comb->sadb_comb_encrypt_maxbits = 64;
 m_comb->sadb_comb_reserved = 0;
 m_comb->sadb_comb_soft_allocations = 0;
 m_comb->sadb_comb_hard_allocations = 0;
 m_comb->sadb_comb_soft_bytes = 0;
 m_comb->sadb_comb_hard_bytes = 0;
 m_comb->sadb_comb_soft_addtime = 0;
 m_comb->sadb_comb_hard_addtime = 0;
 m_comb->sadb_comb_soft_usetime = 0;
 m_comb->sadb_comb_hard_usetime = 0;

 key_setsadbextbuf(m_buf, m_len,
   (caddr_t)&m_prop, sizeof(struct sadb_prop),
   buf, sizeof(*m_comb) * 2);
 m_len += len;

 return;
}
