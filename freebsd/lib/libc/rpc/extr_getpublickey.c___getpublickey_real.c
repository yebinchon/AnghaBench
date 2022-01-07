
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HEXKEYBYTES ;
 int getpublicandprivatekey (char const*,char*) ;
 char* strchr (char*,char) ;
 int strncpy (char*,char*,int) ;

__attribute__((used)) static int
__getpublickey_real(const char *netname, char *publickey)
{
 char lookup[3 * HEXKEYBYTES];
 char *p;

 if (publickey == ((void*)0))
  return (0);
 if (!getpublicandprivatekey(netname, lookup))
  return (0);
 p = strchr(lookup, ':');
 if (p == ((void*)0)) {
  return (0);
 }
 *p = '\0';
 (void) strncpy(publickey, lookup, HEXKEYBYTES);
 publickey[HEXKEYBYTES] = '\0';
 return (1);
}
