
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OpenPGP_key ;


 int * load_key_buf (unsigned char*,size_t) ;
 int openpgp_trust_add (int *) ;

int
openpgp_trust_add_buf(unsigned char *buf, size_t nbytes)
{
 OpenPGP_key *key;

 if ((key = load_key_buf(buf, nbytes))) {
  openpgp_trust_add(key);
 }
 return (key != ((void*)0));
}
