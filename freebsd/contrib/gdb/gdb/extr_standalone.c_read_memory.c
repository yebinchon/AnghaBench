
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CORE_ADDR ;


 int memcpy (char*,int ,int) ;

read_memory (CORE_ADDR memaddr, char *myaddr, int len)
{
  memcpy (myaddr, memaddr, len);
}
