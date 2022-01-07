
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OpenPGP_key ;


 int free (unsigned char*) ;
 int * load_key_buf (unsigned char*,size_t) ;
 int openpgp_trust_add (int *) ;
 unsigned char* read_file (char const*,size_t*) ;

OpenPGP_key *
load_key_file(const char *kfile)
{
 unsigned char *data = ((void*)0);
 size_t n;
 OpenPGP_key *key;

 data = read_file(kfile, &n);
 key = load_key_buf(data, n);
 free(data);
 openpgp_trust_add(key);
 return (key);
}
