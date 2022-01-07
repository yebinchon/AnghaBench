
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef int FILE ;


 scalar_t__ EINVAL ;
 scalar_t__ ERANGE ;
 int LOG_WARNING ;
 int O_RDONLY ;
 scalar_t__ checkfor ;
 scalar_t__ errno ;
 int fclose (int *) ;
 scalar_t__ feof (int *) ;
 int * fgets (char*,int,int *) ;
 int logmsg (int ,char*,...) ;
 int printf (char*) ;
 int strerror (scalar_t__) ;
 scalar_t__ strtol (char*,int *,int) ;
 scalar_t__ verbose ;
 int * xfopenat (int,char*,int ,char*) ;

__attribute__((used)) static int
getbounds(int savedirfd)
{
 FILE *fp;
 char buf[6];
 int ret;





 if (checkfor)
  return (0);

 ret = 0;

 if ((fp = xfopenat(savedirfd, "bounds", O_RDONLY, "r")) == ((void*)0)) {
  if (verbose)
   printf("unable to open bounds file, using 0\n");
  return (ret);
 }
 if (fgets(buf, sizeof(buf), fp) == ((void*)0)) {
  if (feof(fp))
   logmsg(LOG_WARNING, "bounds file is empty, using 0");
  else
   logmsg(LOG_WARNING, "bounds file: %s", strerror(errno));
  fclose(fp);
  return (ret);
 }

 errno = 0;
 ret = (int)strtol(buf, ((void*)0), 10);
 if (ret == 0 && (errno == EINVAL || errno == ERANGE))
  logmsg(LOG_WARNING, "invalid value found in bounds, using 0");
 fclose(fp);
 return (ret);
}
