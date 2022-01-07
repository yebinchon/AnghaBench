
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eui64 {int dummy; } ;
typedef int local_host ;
typedef int FILE ;


 int BUFSIZ ;
 int MAXHOSTNAMELEN ;
 int _PATH_EUI64 ;
 int bcopy (struct eui64*,struct eui64*,int) ;
 scalar_t__ eui64_line (char*,struct eui64*,char*,int) ;
 int fclose (int *) ;
 scalar_t__ fgets (char*,int ,int *) ;
 int * fopen (int ,char*) ;
 int free (char*) ;
 scalar_t__ strcmp (char const*,char*) ;
 int strlen (char const*) ;
 int strncpy (char*,char*,int) ;
 scalar_t__ yp_get_default_domain (char**) ;
 scalar_t__ yp_match (char*,char*,char const*,int ,char**,int*) ;

int
eui64_hostton(const char *hostname, struct eui64 *id)
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
   if (strcmp(hostname, local_host) == 0) {

    bcopy(&local_eui64, id, sizeof(struct eui64));
    fclose(fp);
    return(0);
   }
  }
 }
 fclose(fp);
 return (1);
}
