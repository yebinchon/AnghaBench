
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ENOMEM ;
 int EX_OSERR ;
 int SYSCTL_DDB_CAPTURE_DATA ;
 int bzero (char*,size_t) ;
 int err (int ,char*,...) ;
 scalar_t__ errno ;
 int free (char*) ;
 char* malloc (size_t) ;
 int printf (char*,char*) ;
 int sysctlbyname (int ,char*,size_t*,int *,int ) ;

__attribute__((used)) static void
ddb_capture_print_sysctl(void)
{
 size_t buflen, len;
 char *buffer;
 int ret;

repeat:
 if (sysctlbyname(SYSCTL_DDB_CAPTURE_DATA, ((void*)0), &buflen, ((void*)0), 0) < 0)
  err(EX_OSERR, "sysctl: %s", SYSCTL_DDB_CAPTURE_DATA);
 if (buflen == 0)
  return;
 buffer = malloc(buflen);
 if (buffer == ((void*)0))
  err(EX_OSERR, "malloc");
 bzero(buffer, buflen);
 len = buflen;
 ret = sysctlbyname(SYSCTL_DDB_CAPTURE_DATA, buffer, &len, ((void*)0), 0);
 if (ret < 0 && errno != ENOMEM)
  err(EX_OSERR, "sysctl: %s", SYSCTL_DDB_CAPTURE_DATA);
 if (ret < 0) {
  free(buffer);
  goto repeat;
 }

 printf("%s\n", buffer);
 free(buffer);
}
