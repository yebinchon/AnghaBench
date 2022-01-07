
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* ERR_error_string (unsigned long,int *) ;
 unsigned long ERR_get_error () ;
 int RAND_bytes (void*,int ) ;
 int arc4random_buf (void*,size_t) ;
 int size2int_chk (size_t) ;

int
ntp_crypto_random_buf(
 void *buf,
 size_t nbytes
 )
{
 arc4random_buf(buf, nbytes);
 return 0;

}
