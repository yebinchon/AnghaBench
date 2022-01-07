
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sshkey {int dummy; } ;


 int export_dns_rr (char const*,struct sshkey*,int ,int ) ;
 int fatal (char*) ;
 int fprintf (int ,char*,char const*) ;
 int fputs (char*,int ) ;
 int free (char*) ;
 int get_cert ;
 scalar_t__ hash_hosts ;
 char* host_hash (char const*,int *,int ) ;
 int lowercase (char*) ;
 scalar_t__ print_sshfp ;
 char* put_host_port (char const*,int ) ;
 int ssh_port ;
 int sshkey_write (struct sshkey*,int ) ;
 int stdout ;

__attribute__((used)) static void
keyprint_one(const char *host, struct sshkey *key)
{
 char *hostport;
 const char *known_host, *hashed;

 if (print_sshfp) {
  export_dns_rr(host, key, stdout, 0);
  return;
 }

 hostport = put_host_port(host, ssh_port);
 lowercase(hostport);
 if (hash_hosts && (hashed = host_hash(host, ((void*)0), 0)) == ((void*)0))
  fatal("host_hash failed");
 known_host = hash_hosts ? hashed : hostport;
 if (!get_cert)
  fprintf(stdout, "%s ", known_host);
 sshkey_write(key, stdout);
 fputs("\n", stdout);
 free(hostport);
}
