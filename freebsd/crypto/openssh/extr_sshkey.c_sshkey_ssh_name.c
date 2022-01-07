
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sshkey {int ecdsa_nid; int type; } ;


 char const* sshkey_ssh_name_from_type_nid (int ,int ) ;

const char *
sshkey_ssh_name(const struct sshkey *k)
{
 return sshkey_ssh_name_from_type_nid(k->type, k->ecdsa_nid);
}
