
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;


 int * getenv (char*) ;

uid_t
geteuid(void)
{
 if (getenv("LIBFAKE_EUID_ROOT") != ((void*)0))
  return 0;
 else
  return 100;
}
