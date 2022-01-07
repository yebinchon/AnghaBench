
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int do_kex (char*) ;

void
kex_tests(void)
{
 do_kex("curve25519-sha256@libssh.org");





 do_kex("diffie-hellman-group-exchange-sha256");
 do_kex("diffie-hellman-group-exchange-sha1");
 do_kex("diffie-hellman-group14-sha1");
 do_kex("diffie-hellman-group1-sha1");
}
