
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_uint32_t ;
typedef size_t apr_size_t ;


 int FNV1_BASE_32 ;
 size_t SCALING ;
 int fnv1a_32 (int ,char const*,size_t) ;
 size_t fnv1a_32x4 (int *,void const*,size_t) ;

void
svn__fnv1a_32x4_raw(apr_uint32_t hashes[4],
                    const void *input,
                    apr_size_t len)
{
  apr_size_t processed;

  apr_size_t i;
  for (i = 0; i < SCALING; ++i)
    hashes[i] = FNV1_BASE_32;


  processed = fnv1a_32x4(hashes, input, len);


  hashes[0] = fnv1a_32(hashes[0], (const char *)input + processed,
                       len - processed);
}
