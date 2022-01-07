
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sshkey {int dummy; } ;
struct TYPE_3__ {char* c_output_name; char* c_name; } ;
typedef TYPE_1__ con ;


 scalar_t__ SSH_DEFAULT_PORT ;
 int free (char*) ;
 scalar_t__ get_cert ;
 int hash_hosts ;
 int keyprint_one (char*,struct sshkey*) ;
 scalar_t__ ssh_port ;
 char* strsep (char**,char*) ;
 char* xstrdup (char*) ;

__attribute__((used)) static void
keyprint(con *c, struct sshkey *key)
{
 char *hosts = c->c_output_name ? c->c_output_name : c->c_name;
 char *host, *ohosts;

 if (key == ((void*)0))
  return;
 if (get_cert || (!hash_hosts && ssh_port == SSH_DEFAULT_PORT)) {
  keyprint_one(hosts, key);
  return;
 }
 ohosts = hosts = xstrdup(hosts);
 while ((host = strsep(&hosts, ",")) != ((void*)0))
  keyprint_one(host, key);
 free(ohosts);
}
