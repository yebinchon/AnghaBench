
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EAI_SYSTEM ;
 scalar_t__ errno ;
 char const* gai_strerror (int) ;
 char const* strerror (scalar_t__) ;

const char *
ssh_gai_strerror(int gaierr)
{
 if (gaierr == EAI_SYSTEM && errno != 0)
  return strerror(errno);
 return gai_strerror(gaierr);
}
