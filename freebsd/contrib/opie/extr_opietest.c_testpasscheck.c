
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ opiepasscheck (char*) ;

int testpasscheck()
{
  static char testin1[] = "abadone";
  static char testin2[] = "A more reasonable choice.";

  if (!opiepasscheck(testin1))
    return -1;

  if (opiepasscheck(testin2))
    return -1;

  return 0;
}
