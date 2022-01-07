
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usershell {char* path; } ;


 int snprintf (char*,size_t,char*,char*) ;

__attribute__((used)) static void
sdump_usershell(struct usershell *us, char *buffer, size_t buflen)
{
 snprintf(buffer, buflen, "%s", us->path);
}
