
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HEXKEYBYTES ;
 int KEYCHECKSUMSIZE ;
 int getpublicandprivatekey (char*,char*) ;
 scalar_t__ memcmp (char*,char*,int ) ;
 char* strchr (char*,char) ;
 int strncpy (char*,char*,int) ;
 int xdecrypt (char*,char*) ;

int
getsecretkey(char *netname, char *secretkey, char *passwd)
{
 char lookup[3 * HEXKEYBYTES];
 char *p;

 if (secretkey == ((void*)0))
  return (0);
 if (!getpublicandprivatekey(netname, lookup))
  return (0);
 p = strchr(lookup, ':');
 if (p == ((void*)0)) {
  return (0);
 }
 p++;
 if (!xdecrypt(p, passwd)) {
  return (0);
 }
 if (memcmp(p, p + HEXKEYBYTES, KEYCHECKSUMSIZE) != 0) {
  secretkey[0] = '\0';
  return (1);
 }
 p[HEXKEYBYTES] = '\0';
 (void) strncpy(secretkey, p, HEXKEYBYTES);
 secretkey[HEXKEYBYTES] = '\0';
 return (1);
}
