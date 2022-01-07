
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OpenPGP_key ;


 int DEBUG_PRINTF (int,char*) ;
 int * load_trusted_key_id (char const*) ;
 int * openpgp_trust_get (char const*) ;

OpenPGP_key *
load_key_id(const char *keyID)
{
 OpenPGP_key *key;

 key = openpgp_trust_get(keyID);

 if (!key)
  key = load_trusted_key_id(keyID);

 DEBUG_PRINTF(2, ("load_key_id(%s): %s\n", keyID, key ? "found" : "nope"));
 return (key);
}
