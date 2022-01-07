
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ convert ;
 size_t convert_to_net (char*,int,int ) ;
 int file ;
 size_t fread (char*,int,int,int ) ;

size_t
read_file(char *buffer, int count)
{

 if (convert == 0)
  return fread(buffer, 1, count, file);

 return convert_to_net(buffer, count, 0);
}
