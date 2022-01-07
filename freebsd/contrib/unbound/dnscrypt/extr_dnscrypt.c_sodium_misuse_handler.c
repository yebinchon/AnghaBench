
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fatal_exit (char*) ;

__attribute__((used)) static void
sodium_misuse_handler(void)
{
 fatal_exit(
  "dnscrypt: libsodium could not be initialized, this typically"
  " happens when no good source of entropy is found. If you run"
  " unbound in a chroot, make sure /dev/random is available. See"
  " https://www.unbound.net/documentation/unbound.conf.html");
}
