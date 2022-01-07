
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ExpandEnvironmentStrings (char const*,char const*,size_t) ;
 int LOG_ERR ;
 size_t _MAX_PATH ;
 int authreadkeys (char const*) ;
 char* erealloc (char const*,int) ;
 char const* key_file_name ;
 int memcpy (char const*,char const*,size_t) ;
 int msyslog (int ,char*) ;
 int strlcpy (char const*,char const*,size_t) ;
 int strlen (char const*) ;

void
getauthkeys(
 const char *keyfile
 )
{
 size_t len;

 len = strlen(keyfile);
 if (!len)
  return;


 key_file_name = erealloc(key_file_name, len + 1);
 memcpy(key_file_name, keyfile, len + 1);
 authreadkeys(key_file_name);
}
