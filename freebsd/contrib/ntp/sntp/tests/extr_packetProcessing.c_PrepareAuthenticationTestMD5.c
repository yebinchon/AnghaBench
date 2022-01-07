
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PrepareAuthenticationTest (int,int,char*,void const*) ;

void
PrepareAuthenticationTestMD5(
 int key_id,
 int key_len,
 const void * key_seq
 )
{
 PrepareAuthenticationTest(key_id, key_len, "MD5", key_seq);
}
