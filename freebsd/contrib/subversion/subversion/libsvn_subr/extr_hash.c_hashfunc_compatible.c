
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int apr_uint32_t ;
typedef int apr_ssize_t ;


 int APR_HASH_KEY_STRING ;
 int strlen (char const*) ;

__attribute__((used)) static unsigned int
hashfunc_compatible(const char *char_key, apr_ssize_t *klen)
{
    unsigned int hash = 0;
    const unsigned char *key = (const unsigned char *)char_key;
    const unsigned char *p;
    apr_ssize_t i;

    if (*klen == APR_HASH_KEY_STRING)
      *klen = strlen(char_key);
    for (p = key, i = *klen; i >= 4; i-=4, p+=4)
      {
        hash = hash * 33 * 33 * 33 * 33
              + p[0] * 33 * 33 * 33
              + p[1] * 33 * 33
              + p[2] * 33
              + p[3];
      }

    for (; i; i--, p++)
        hash = hash * 33 + *p;

    return hash;
}
