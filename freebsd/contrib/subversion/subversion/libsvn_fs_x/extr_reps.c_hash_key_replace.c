
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hash_key_t ;


 int MATCH_BLOCKSIZE ;

__attribute__((used)) static hash_key_t
hash_key_replace(hash_key_t adler32, const char c_out, const char c_in)
{
  adler32 -= (MATCH_BLOCKSIZE * 0x10000u * ((unsigned char) c_out));

  adler32 -= (unsigned char)c_out;
  adler32 += (unsigned char)c_in;

  return adler32 + adler32 * 0x10000;
}
