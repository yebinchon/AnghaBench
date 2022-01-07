
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 int assert (int) ;
 int strlcat (char*,char*,size_t) ;
 int strlcpy (char*,char const*,int) ;
 char* strrchr (char const*,char) ;

__attribute__((used)) static void
inject_dist(const char *fromname, char *toname, size_t tonamesize)
{
 char *ptr;

 ptr = strrchr(fromname, '/');
 assert(ptr != ((void*)0));
 assert(ptr - fromname < (ssize_t)tonamesize);
 strlcpy(toname, fromname, ptr - fromname + 1);
 strlcat(toname, "/dist/", tonamesize);
 strlcat(toname, ptr + 1, tonamesize);
}
