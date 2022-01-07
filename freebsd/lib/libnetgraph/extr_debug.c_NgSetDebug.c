
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _gNgDebugLevel ;

int
NgSetDebug(int level)
{
 int old = _gNgDebugLevel;

 if (level >= 0)
  _gNgDebugLevel = level;
 return (old);
}
