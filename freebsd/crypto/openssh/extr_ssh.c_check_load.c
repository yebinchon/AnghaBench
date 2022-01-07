
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOENT ;



 int errno ;
 int error (char*,char const*,char const*,int ) ;
 int fatal (char*,char const*,char const*,int ) ;
 int ssh_err (int) ;

__attribute__((used)) static void
check_load(int r, const char *path, const char *message)
{
 switch (r) {
 case 0:
  break;
 case 129:
 case 130:
  fatal("load %s \"%s\": %s", message, path, ssh_err(r));
 case 128:

  if (errno == ENOENT)
   break;

 default:
  error("load %s \"%s\": %s", message, path, ssh_err(r));
  break;
 }
}
