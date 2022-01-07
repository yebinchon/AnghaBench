
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sys_hufflen ;
 int sys_huffptr ;
 int* sys_huffpuff ;
 int sys_mindly ;

void
huffpuff(void)
{
 int i;

 if (sys_huffpuff == ((void*)0))
  return;

 sys_huffptr = (sys_huffptr + 1) % sys_hufflen;
 sys_huffpuff[sys_huffptr] = 1e9;
 sys_mindly = 1e9;
 for (i = 0; i < sys_hufflen; i++) {
  if (sys_huffpuff[i] < sys_mindly)
   sys_mindly = sys_huffpuff[i];
 }
}
