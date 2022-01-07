
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ getegid () ;
 scalar_t__ geteuid () ;
 scalar_t__ getgid () ;
 scalar_t__ getuid () ;
 int issetugid () ;

__attribute__((used)) static int
evutil_issetugid(void)
{
 return 0;

}
