
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kfile ;
typedef int OpenPGP_key ;


 int MAXPATHLEN ;
 int R_OK ;
 scalar_t__ access (char*,int ) ;
 int * load_key_file (char*) ;
 scalar_t__ snprintf (char*,int,char*,char const*,char const*) ;
 char** trust_store ;

__attribute__((used)) static OpenPGP_key *
load_trusted_key_id(const char *keyID)
{
 char kfile[MAXPATHLEN];
 const char **tp;
 size_t n;

 for (tp = trust_store; *tp; tp++) {
  n = (size_t)snprintf(kfile, sizeof(kfile), "%s/%s", *tp, keyID);
  if (n >= sizeof(kfile))
   return (((void*)0));
  if (access(kfile, R_OK) == 0) {
   return (load_key_file(kfile));
  }
 }
 return (((void*)0));
}
