
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef scalar_t__ uid_t ;
typedef int uid2 ;
typedef int uid ;
typedef enum nss_lookup_type { ____Placeholder_nss_lookup_type } nss_lookup_type ;


 int NS_NOTFOUND ;
 int NS_SUCCESS ;
 int memcpy (scalar_t__*,char const*,int) ;
 int nss_lt_all ;
 int nss_lt_name ;
 scalar_t__ ntohl (scalar_t__) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int
pwdb_match_entry_v4(char *entry, size_t entrysize, enum nss_lookup_type how,
    const char *name, uid_t uid)
{
 const char *p, *eom;
 uint32_t uid2;

 eom = &entry[entrysize];
 for (p = entry; p < eom; p++)
  if (*p == '\0')
   break;
 if (*p != '\0')
  return (NS_NOTFOUND);
 if (how == nss_lt_all)
  return (NS_SUCCESS);
 if (how == nss_lt_name)
  return (strcmp(name, entry) == 0 ? NS_SUCCESS : NS_NOTFOUND);
 for (p++; p < eom; p++)
  if (*p == '\0')
   break;
 if (*p != '\0' || (++p) + sizeof(uid) >= eom)
  return (NS_NOTFOUND);
 memcpy(&uid2, p, sizeof(uid2));
 uid2 = ntohl(uid2);
 return (uid == (uid_t)uid2 ? NS_SUCCESS : NS_NOTFOUND);
}
