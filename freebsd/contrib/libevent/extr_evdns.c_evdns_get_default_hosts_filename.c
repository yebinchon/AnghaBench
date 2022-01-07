
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CSIDL_SYSTEM ;
 int MAX_PATH ;
 int SHGetSpecialFolderPathA (int *,char*,int ,int ) ;
 int evutil_snprintf (char*,size_t,char*,char*,char const*) ;
 char* mm_malloc (size_t) ;
 char* mm_strdup (char*) ;
 int strlen (char const*) ;

__attribute__((used)) static char *
evdns_get_default_hosts_filename(void)
{
 return mm_strdup("/etc/hosts");

}
