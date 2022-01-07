
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 scalar_t__ challenge_hash (int const*,int const*,int const*,size_t,int *) ;
 scalar_t__ challenge_response (int *,int *,int *) ;
 scalar_t__ nt_password_hash (int const*,size_t,int *) ;

int generate_nt_response(const u8 *auth_challenge, const u8 *peer_challenge,
    const u8 *username, size_t username_len,
    const u8 *password, size_t password_len,
    u8 *response)
{
 u8 challenge[8];
 u8 password_hash[16];

 if (challenge_hash(peer_challenge, auth_challenge, username,
      username_len, challenge) ||
     nt_password_hash(password, password_len, password_hash) ||
     challenge_response(challenge, password_hash, response))
  return -1;
 return 0;
}
