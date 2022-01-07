
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int truncate (char const*,int ) ;

void
ClearFile(
 const char * filename
 )
{
 if (!truncate(filename, 0))
  exit(1);
}
