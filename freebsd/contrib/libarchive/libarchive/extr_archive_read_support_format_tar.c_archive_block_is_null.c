
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
archive_block_is_null(const char *p)
{
 unsigned i;

 for (i = 0; i < 512; i++)
  if (*p++)
   return (0);
 return (1);
}
