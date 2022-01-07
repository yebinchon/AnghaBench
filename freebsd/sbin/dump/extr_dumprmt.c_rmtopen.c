
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int TS_OPEN ;
 int rmtcall (char const*,char*) ;
 int rmtstate ;
 int snprintf (char*,int,char*,char const*,int) ;

int
rmtopen(const char *tape, int mode)
{
 char buf[256];

 (void)snprintf(buf, sizeof (buf), "O%.226s\n%d\n", tape, mode);
 rmtstate = TS_OPEN;
 return (rmtcall(tape, buf));
}
