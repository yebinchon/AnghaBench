
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static void
usage(void)
{
 fprintf(stderr,
"usage: ssh [-46AaCfGgKkMNnqsTtVvXxYy] [-B bind_interface]\n"
"           [-b bind_address] [-c cipher_spec] [-D [bind_address:]port]\n"
"           [-E log_file] [-e escape_char] [-F configfile] [-I pkcs11]\n"
"           [-i identity_file] [-J [user@]host[:port]] [-L address]\n"
"           [-l login_name] [-m mac_spec] [-O ctl_cmd] [-o option] [-p port]\n"
"           [-Q query_option] [-R address] [-S ctl_path] [-W host:port]\n"
"           [-w local_tun[:remote_tun]] destination [command]\n"
 );
 exit(255);
}
