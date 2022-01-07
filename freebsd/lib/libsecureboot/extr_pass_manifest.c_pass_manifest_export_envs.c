
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* manifest_hash ;
 char* manifest_path ;
 char* manifest_prefix ;
 int manifest_present ;
 int setenv (char*,char*,int) ;
 int unsetenv (char*) ;

int
pass_manifest_export_envs()
{
 int rc;


 if (!manifest_present) {
  unsetenv("veriexec.manifest_path");
  unsetenv("veriexec.manifest_hash");
  unsetenv("veriexec.manifest_prefix");
  return (0);
 }

 rc = setenv("veriexec.manifest_path", manifest_path, 1);
 if (rc != 0)
  return (rc);

 rc = setenv("veriexec.manifest_hash", manifest_hash, 1);
 if (rc != 0) {
  unsetenv("veriexec.manifest_path");
  return (rc);
 }

 if (manifest_prefix[0] != '\0')
  rc = setenv("veriexec.manifest_prefix", manifest_prefix, 1);

 return (rc);
}
