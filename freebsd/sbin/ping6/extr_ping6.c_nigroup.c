
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char u_int8_t ;
struct in6_addr {int * s6_addr; } ;
typedef int hbuf ;
typedef int ctxt ;
typedef int c ;
typedef int MD5_CTX ;


 int AF_INET6 ;
 int MD5Final (unsigned char*,int *) ;
 int MD5Init (int *) ;
 int MD5Update (int *,unsigned char*,size_t) ;
 int NI_MAXHOST ;
 int bcopy (unsigned char*,int *,int) ;
 int * inet_ntop (int ,struct in6_addr*,char*,int) ;
 int inet_pton (int ,char*,struct in6_addr*) ;
 scalar_t__ isupper (unsigned char) ;
 int memset (int *,int ,int) ;
 char* strchr (char*,char) ;
 char* strdup (char*) ;
 int strlen (char*) ;
 int strncpy (char*,char*,size_t) ;
 char tolower (unsigned char) ;

__attribute__((used)) static char *
nigroup(char *name, int nig_oldmcprefix)
{
 char *p;
 char *q;
 MD5_CTX ctxt;
 u_int8_t digest[16];
 u_int8_t c;
 size_t l;
 char hbuf[NI_MAXHOST];
 struct in6_addr in6;
 int valid;

 p = strchr(name, '.');
 if (!p)
  p = name + strlen(name);
 l = p - name;
 if (l > 63 || l > sizeof(hbuf) - 1)
  return ((void*)0);
 strncpy(hbuf, name, l);
 hbuf[(int)l] = '\0';

 for (q = name; *q; q++) {
  if (isupper(*(unsigned char *)q))
   *q = tolower(*(unsigned char *)q);
 }


 memset(&ctxt, 0, sizeof(ctxt));
 MD5Init(&ctxt);
 c = l & 0xff;
 MD5Update(&ctxt, &c, sizeof(c));
 MD5Update(&ctxt, (unsigned char *)name, l);
 MD5Final(digest, &ctxt);

 if (nig_oldmcprefix) {

  valid = inet_pton(AF_INET6, "ff02::2:0000:0000", &in6);
 } else {

  valid = inet_pton(AF_INET6, "ff02::2:ff00:0000", &in6);
 }
 if (valid != 1)
  return ((void*)0);

 if (nig_oldmcprefix) {

  bcopy(digest, &in6.s6_addr[12], 4);
 } else {

  bcopy(digest, &in6.s6_addr[13], 3);
 }

 if (inet_ntop(AF_INET6, &in6, hbuf, sizeof(hbuf)) == ((void*)0))
  return ((void*)0);

 return strdup(hbuf);
}
