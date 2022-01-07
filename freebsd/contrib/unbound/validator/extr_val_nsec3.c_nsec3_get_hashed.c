
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int sldns_buffer ;


 int log_err (char*,int) ;
 size_t nsec3_hash_algo_size_supported (int) ;
 int query_dname_tolower (scalar_t__) ;
 int secalgo_nsec3_hash (int,unsigned char*,int ,unsigned char*) ;
 scalar_t__ sldns_buffer_begin (int *) ;
 int sldns_buffer_clear (int *) ;
 int sldns_buffer_flip (int *) ;
 int sldns_buffer_limit (int *) ;
 int sldns_buffer_write (int *,int *,size_t) ;

size_t
nsec3_get_hashed(sldns_buffer* buf, uint8_t* nm, size_t nmlen, int algo,
 size_t iter, uint8_t* salt, size_t saltlen, uint8_t* res, size_t max)
{
 size_t i, hash_len;

 sldns_buffer_clear(buf);
 sldns_buffer_write(buf, nm, nmlen);
 query_dname_tolower(sldns_buffer_begin(buf));
 sldns_buffer_write(buf, salt, saltlen);
 sldns_buffer_flip(buf);
 hash_len = nsec3_hash_algo_size_supported(algo);
 if(hash_len == 0) {
  log_err("nsec3 hash of unknown algo %d", algo);
  return 0;
 }
 if(hash_len > max)
  return 0;
 if(!secalgo_nsec3_hash(algo, (unsigned char*)sldns_buffer_begin(buf),
  sldns_buffer_limit(buf), (unsigned char*)res))
  return 0;
 for(i=0; i<iter; i++) {
  sldns_buffer_clear(buf);
  sldns_buffer_write(buf, res, hash_len);
  sldns_buffer_write(buf, salt, saltlen);
  sldns_buffer_flip(buf);
  if(!secalgo_nsec3_hash(algo,
   (unsigned char*)sldns_buffer_begin(buf),
   sldns_buffer_limit(buf), (unsigned char*)res))
   return 0;
 }
 return hash_len;
}
