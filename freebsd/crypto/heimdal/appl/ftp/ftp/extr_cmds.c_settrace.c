
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int code ;
 char* onoff (int) ;
 int printf (char*,char*) ;
 int trace ;

void
settrace(int argc, char **argv)
{

 trace = !trace;
 printf("Packet tracing %s.\n", onoff(trace));
 code = trace;
}
