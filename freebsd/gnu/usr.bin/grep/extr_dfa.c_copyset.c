
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int charclass ;


 int memcpy (int ,int ,int) ;

__attribute__((used)) static void
copyset (charclass src, charclass dst)
{
  memcpy (dst, src, sizeof (charclass));
}
