
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int path ;


 int MAXPATHLEN ;
 int snprintf (char*,int,char*,char const*) ;
 int unlink (char*) ;

void
dot_unlock(const char *fname)
{
 char path[MAXPATHLEN];

 (void)snprintf(path, sizeof(path), "%s.lock", fname);
 (void)unlink(path);
}
