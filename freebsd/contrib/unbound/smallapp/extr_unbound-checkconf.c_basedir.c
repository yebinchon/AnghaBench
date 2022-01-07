
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fatal_exit (char*) ;
 char* strrchr (char*,char) ;

__attribute__((used)) static char*
basedir(char* fname)
{
 char* rev;
 if(!fname) fatal_exit("out of memory");
 rev = strrchr(fname, '/');
 if(!rev) return ((void*)0);
 if(fname == rev) return ((void*)0);
 rev[0] = 0;
 return fname;
}
