
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char u8 ;


 int SHA1_MAC_LEN ;
 int os_memcpy (unsigned char*,unsigned char*,int) ;
 scalar_t__ sha1_vector (int,unsigned char const**,size_t*,unsigned char*) ;

int challenge_hash(const u8 *peer_challenge, const u8 *auth_challenge,
     const u8 *username, size_t username_len, u8 *challenge)
{
 u8 hash[SHA1_MAC_LEN];
 const unsigned char *addr[3];
 size_t len[3];

 addr[0] = peer_challenge;
 len[0] = 16;
 addr[1] = auth_challenge;
 len[1] = 16;
 addr[2] = username;
 len[2] = username_len;

 if (sha1_vector(3, addr, len, hash))
  return -1;
 os_memcpy(challenge, hash, 8);
 return 0;
}
