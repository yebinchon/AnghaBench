
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Warn (char const*) ;
 int exit (int) ;

void Quit (const char* msg)
{
 Warn (msg);
 exit (1);
}
