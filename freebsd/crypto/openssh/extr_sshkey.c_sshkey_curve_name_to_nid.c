
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NID_X9_62_prime256v1 ;
 int NID_secp384r1 ;
 int NID_secp521r1 ;
 scalar_t__ strcmp (char const*,char*) ;

int
sshkey_curve_name_to_nid(const char *name)
{
 if (strcmp(name, "nistp256") == 0)
  return NID_X9_62_prime256v1;
 else if (strcmp(name, "nistp384") == 0)
  return NID_secp384r1;




 else
  return -1;
}
