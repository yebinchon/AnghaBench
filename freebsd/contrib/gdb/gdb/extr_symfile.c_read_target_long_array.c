
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CORE_ADDR ;


 int TARGET_LONG_BYTES ;
 char* alloca (int) ;
 unsigned int extract_unsigned_integer (char*,int) ;
 int read_memory (int ,char*,int) ;

__attribute__((used)) static void
read_target_long_array (CORE_ADDR memaddr, unsigned int *myaddr, int len)
{

  char *buf = alloca (len * TARGET_LONG_BYTES);
  int i;

  read_memory (memaddr, buf, len * TARGET_LONG_BYTES);
  for (i = 0; i < len; i++)
    myaddr[i] = extract_unsigned_integer (TARGET_LONG_BYTES * i + buf,
       TARGET_LONG_BYTES);
}
