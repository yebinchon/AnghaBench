
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGEMT ;
 int SIGTRAP ;


int
gdb_cpu_signal(int type, int code)
{

 switch (type) {
 case 128: return (SIGTRAP);
 }
 return (SIGEMT);
}
