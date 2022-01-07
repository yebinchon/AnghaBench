
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sshkey {int dummy; } ;
struct TYPE_2__ {int fingerprint_hash; } ;


 int SSH_FP_DEFAULT ;
 int free (char*) ;
 TYPE_1__ options ;
 char* sshkey_fingerprint (struct sshkey const*,int ,int ) ;
 int sshkey_type (struct sshkey const*) ;
 int xasprintf (char**,char*,int ,char*) ;

__attribute__((used)) static char *
format_key(const struct sshkey *key)
{
 char *ret, *fp = sshkey_fingerprint(key,
     options.fingerprint_hash, SSH_FP_DEFAULT);

 xasprintf(&ret, "%s %s", sshkey_type(key), fp);
 free(fp);
 return ret;
}
