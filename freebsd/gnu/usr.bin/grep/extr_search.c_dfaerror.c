
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int error (int,int ,char const*) ;

void
dfaerror (char const *mesg)
{
  error (2, 0, mesg);
}
