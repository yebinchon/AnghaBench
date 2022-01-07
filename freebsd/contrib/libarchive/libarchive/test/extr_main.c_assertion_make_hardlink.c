
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assertion_count (char const*,int) ;
 int failure_finish (int *) ;
 int failure_start (char const*,int,char*) ;
 int link (char const*,char const*) ;
 int logprintf (char*,char const*) ;
 int my_CreateHardLinkA (char const*,char const*) ;

int
assertion_make_hardlink(const char *file, int line,
    const char *newpath, const char *linkto)
{
 int succeeded;

 assertion_count(file, line);





 succeeded = 0;

 if (succeeded)
  return (1);
 failure_start(file, line, "Could not create hardlink");
 logprintf("   New link: %s\n", newpath);
 logprintf("   Old name: %s\n", linkto);
 failure_finish(((void*)0));
 return(0);
}
