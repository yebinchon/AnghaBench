
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 scalar_t__ challenge_response (int const*,int *,int *) ;
 scalar_t__ nt_password_hash (int const*,size_t,int *) ;

int nt_challenge_response(const u8 *challenge, const u8 *password,
     size_t password_len, u8 *response)
{
 u8 password_hash[16];

 if (nt_password_hash(password, password_len, password_hash) ||
     challenge_response(challenge, password_hash, response))
  return -1;
 return 0;
}
