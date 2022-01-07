
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EEXIST ;
 scalar_t__ errno ;
 int kldload (char const*) ;

int
kld_load(const char *name)
{
 if (kldload(name) == -1 && errno != EEXIST)
  return (-1);
 return (0);
}
