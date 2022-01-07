
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EAI_MAX ;
 char** ai_errlist ;

char *
gai_strerror(int ecode)
{
 if (ecode < 0 || ecode > EAI_MAX)
  ecode = EAI_MAX;
 return ai_errlist[ecode];
}
