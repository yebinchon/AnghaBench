
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assertion_count (char const*,int) ;
 int failure_finish (int *) ;
 int failure_start (char const*,int,char*) ;
 int logprintf (char*,char const*) ;
 scalar_t__ my_CreateSymbolicLinkA (char const*,char const*,int) ;
 scalar_t__ symlink (char const*,char const*) ;

int
assertion_make_symlink(const char *file, int line,
    const char *newpath, const char *linkto, int targetIsDir)
{
 (void)targetIsDir;

 failure_start(file, line, "Could not create symlink");
 logprintf("   New link: %s\n", newpath);
 logprintf("   Old name: %s\n", linkto);
 failure_finish(((void*)0));
 return(0);
}
