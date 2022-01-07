
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sshkey {int ecdsa_nid; int type; } ;


 char const* sshkey_ssh_name_from_type_nid (int ,int ) ;
 int sshkey_type_plain (int ) ;

const char *
sshkey_ssh_name_plain(const struct sshkey *k)
{
 return sshkey_ssh_name_from_type_nid(sshkey_type_plain(k->type),
     k->ecdsa_nid);
}
