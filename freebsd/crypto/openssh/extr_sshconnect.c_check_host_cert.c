
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sshkey {TYPE_1__* cert; } ;
struct TYPE_2__ {int critical; } ;


 int error (char*,char const*) ;
 scalar_t__ sshbuf_len (int ) ;
 scalar_t__ sshkey_cert_check_authority (struct sshkey const*,int,int ,char const*,char const**) ;

__attribute__((used)) static int
check_host_cert(const char *host, const struct sshkey *host_key)
{
 const char *reason;

 if (sshkey_cert_check_authority(host_key, 1, 0, host, &reason) != 0) {
  error("%s", reason);
  return 0;
 }
 if (sshbuf_len(host_key->cert->critical) != 0) {
  error("Certificate for %s contains unsupported "
      "critical options(s)", host);
  return 0;
 }
 return 1;
}
