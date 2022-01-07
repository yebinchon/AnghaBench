
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int Argon2_id ;
 int argon2_hash (int const,int const,int const,void const*,size_t const,void const*,size_t const,void*,size_t const,int *,int ,int ) ;

int
argon2id_hash_raw(const uint32_t t_cost, const uint32_t m_cost,
                  const uint32_t parallelism, const void *pwd,
                  const size_t pwdlen, const void *salt, const size_t saltlen,
                  void *hash, const size_t hashlen)
{
    return argon2_hash(t_cost, m_cost, parallelism, pwd, pwdlen, salt, saltlen,
                       hash, hashlen, ((void*)0), 0, Argon2_id);
}
