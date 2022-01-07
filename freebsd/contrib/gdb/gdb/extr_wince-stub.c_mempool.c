
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int outs ;
typedef int * LPWSTR ;
typedef int * LPVOID ;


 int FREE (int *) ;
 scalar_t__ MALLOC (unsigned int) ;

__attribute__((used)) static LPVOID
mempool (unsigned int len)
{
  static int outn = -1;
  static LPWSTR outs[4] = {((void*)0), ((void*)0), ((void*)0), ((void*)0)};

  if (++outn >= (sizeof (outs) / sizeof (outs[0])))
    outn = 0;



  if (outs[outn])
    FREE (outs[outn]);
  outs[outn] = (LPWSTR) MALLOC (len);

  return outs[outn];
}
