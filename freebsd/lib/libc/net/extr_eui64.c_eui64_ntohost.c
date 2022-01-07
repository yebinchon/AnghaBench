
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eui64 {int * octet; } ;
typedef int local_host ;
typedef int eui64_a ;
typedef int FILE ;


 int BUFSIZ ;
 int EUI64_LEN ;
 int MAXHOSTNAMELEN ;
 int _PATH_EUI64 ;
 scalar_t__ bcmp (int *,int *,int ) ;
 scalar_t__ eui64_line (char*,struct eui64*,char*,int) ;
 int eui64_ntoa (struct eui64 const*,char*,int) ;
 int fclose (int *) ;
 scalar_t__ fgets (char*,int ,int *) ;
 int * fopen (int ,char*) ;
 int free (char*) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;
 int strncpy (char*,char*,int) ;
 scalar_t__ yp_get_default_domain (char**) ;
 scalar_t__ yp_match (char*,char*,char*,int ,char**,int*) ;

int
eui64_ntohost(char *hostname, size_t len, const struct eui64 *id)
{
 FILE *fp;
 char buf[BUFSIZ + 2];
 struct eui64 local_eui64;
 char local_host[MAXHOSTNAMELEN];






 if ((fp = fopen(_PATH_EUI64, "re")) == ((void*)0))
  return (1);

 while (fgets(buf,BUFSIZ,fp)) {
  if (buf[0] == '#')
   continue;
  if (eui64_line(buf, &local_eui64, local_host,
      sizeof(local_host)) == 0) {
   if (bcmp(&local_eui64.octet[0],
    &id->octet[0], EUI64_LEN) == 0) {

    strcpy(hostname, local_host);
    fclose(fp);
    return(0);
   }
  }
 }
 fclose(fp);
 return (1);
}
