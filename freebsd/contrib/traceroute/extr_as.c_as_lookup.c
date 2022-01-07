
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aslookup {scalar_t__ as_debug; scalar_t__ as_f; } ;
typedef scalar_t__ sa_family_t ;
typedef int buf ;


 scalar_t__ AF_INET6 ;
 int fflush (scalar_t__) ;
 int * fgets (char*,int,scalar_t__) ;
 int fprintf (scalar_t__,char*,...) ;
 int sscanf (char*,char*,...) ;
 scalar_t__ strlen (char*) ;
 scalar_t__ strncasecmp (char*,char*,int) ;

unsigned int
as_lookup(void *_asn, char *addr, sa_family_t family)
{
 struct aslookup *asn = _asn;
 char buf[1024];
 unsigned int as;
 int rc, dlen, plen;

 as = 0;
 rc = dlen = 0;
 plen = (family == AF_INET6) ? 128 : 32;
 (void)fprintf(asn->as_f, "!r%s/%d,l\n", addr, plen);
 (void)fflush(asn->as_f);
 while (fgets(buf, sizeof(buf), asn->as_f) != ((void*)0)) {
  buf[sizeof(buf) - 1] = '\0';
  if (rc == 0) {
   rc = buf[0];
   switch (rc) {
       case 'A':

    sscanf(buf, "A%d\n", &dlen);







    break;
       case 'C':
       case 'D':
       case 'E':
       case 'F':




    break;
   }
   if (rc == 'A')

    continue;
  }

  if (dlen == 0)

   rc = buf[0];
  if (rc != 'A')

   break;


  dlen -= strlen(buf);


  if (as == 0 && strncasecmp(buf, "origin:", 7) == 0) {
   sscanf(buf + 7, " AS%u", &as);






  }
 }

 return (as);
}
