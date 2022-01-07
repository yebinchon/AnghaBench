
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sshkey {int dummy; } ;
struct ssh {int dummy; } ;


 int fatal (char*) ;
 int verify_host_key (int ,int ,struct sshkey*) ;
 int xxx_host ;
 int xxx_hostaddr ;

__attribute__((used)) static int
verify_host_key_callback(struct sshkey *hostkey, struct ssh *ssh)
{
 if (verify_host_key(xxx_host, xxx_hostaddr, hostkey) == -1)
  fatal("Host key verification failed.");
 return 0;
}
