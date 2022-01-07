
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hmac_test {scalar_t__* hash384; int* data; size_t data_len; int key_len; int key; } ;


 unsigned int ARRAY_SIZE (struct hmac_test*) ;
 int MSG_INFO ;
 scalar_t__ hmac_sha384 (int ,int ,int*,size_t,int*) ;
 scalar_t__ hmac_sha384_vector (int ,int ,int,int const**,size_t*,int*) ;
 struct hmac_test* hmac_tests ;
 scalar_t__ os_memcmp (int*,int const*,int) ;
 scalar_t__ sha384_vector (int,int const**,size_t*,int*) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static int test_sha384(void)
{
 return 0;

}
