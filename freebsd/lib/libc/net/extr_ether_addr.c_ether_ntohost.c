
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ether_addr {int * octet; } ;
typedef int FILE ;


 int BUFSIZ ;
 int MAXHOSTNAMELEN ;
 int _PATH_ETHERS ;
 int bcmp (char*,char*,int) ;
 int ether_line (char*,struct ether_addr*,char*) ;
 char* ether_ntoa (struct ether_addr const*) ;
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
ether_ntohost(char *hostname, const struct ether_addr *e)
{
 FILE *fp;
 char buf[BUFSIZ + 2];
 struct ether_addr local_ether;
 char local_host[MAXHOSTNAMELEN];







 if ((fp = fopen(_PATH_ETHERS, "re")) == ((void*)0))
  return (1);
 while (fgets(buf,BUFSIZ,fp)) {
  if (buf[0] == '#')
   continue;
  if (!ether_line(buf, &local_ether, local_host)) {
   if (!bcmp((char *)&local_ether.octet[0],
       (char *)&e->octet[0], 6)) {

    strcpy(hostname, local_host);
    fclose(fp);
    return(0);
   }
  }
 }
 fclose(fp);
 return (1);
}
