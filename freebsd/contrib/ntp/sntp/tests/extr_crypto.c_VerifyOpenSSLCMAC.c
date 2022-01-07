
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key {int dummy; } ;


 int TEST_IGNORE_MESSAGE (char*) ;

void
VerifyOpenSSLCMAC(struct key *cmac)
{
 TEST_IGNORE_MESSAGE("OpenSSL not found, skipping...");


 return;
}
