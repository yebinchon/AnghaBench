
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gid_t ;


 int * getenv (char*) ;

gid_t
getegid(void)
{
 if (getenv("LIBFAKE_EGID_ROOT") != ((void*)0))
  return 0;
 else
  return 100;
}
