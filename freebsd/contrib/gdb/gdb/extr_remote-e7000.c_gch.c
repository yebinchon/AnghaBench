
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int readchar (int ) ;
 int timeout ;

__attribute__((used)) static int
gch (void)
{
  return readchar (timeout);
}
