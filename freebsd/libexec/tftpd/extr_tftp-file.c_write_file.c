
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ convert ;
 size_t convert_from_net (char*,int) ;
 int file ;
 size_t fwrite (char*,int,int,int ) ;

size_t
write_file(char *buffer, int count)
{

 if (convert == 0)
  return fwrite(buffer, 1, count, file);

 return convert_from_net(buffer, count);
}
