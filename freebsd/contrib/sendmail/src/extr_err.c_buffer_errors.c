
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* HeldMessageBuf ;
 int HoldErrs ;

void
buffer_errors()
{
 HeldMessageBuf[0] = '\0';
 HoldErrs = 1;
}
