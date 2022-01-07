
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AT_SECURE ;
 scalar_t__ getauxval (int ) ;
 scalar_t__ getegid () ;
 scalar_t__ geteuid () ;
 scalar_t__ getgid () ;
 scalar_t__ getuid () ;

int OPENSSL_issetugid(void)
{



    return getuid() != geteuid() || getgid() != getegid();

}
