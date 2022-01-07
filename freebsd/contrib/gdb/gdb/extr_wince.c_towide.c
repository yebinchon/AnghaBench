
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int outs ;
typedef int gdb_wince_len ;
typedef int WCHAR ;
typedef int * LPWSTR ;


 int CP_ACP ;
 int MultiByteToWideChar (int ,int ,char const*,int,int *,int) ;
 int memset (int *,int ,int) ;
 scalar_t__ xrealloc (int *,int) ;

LPWSTR
towide (const char *s, gdb_wince_len * out_len)
{
  static int n = -1;
  static LPWSTR outs[8] =
  {((void*)0) };
  gdb_wince_len dummy;

  if (!out_len)
    out_len = &dummy;


  *out_len = sizeof (WCHAR) * MultiByteToWideChar (CP_ACP, 0, s, -1, ((void*)0), 0);
  if (!*out_len)
    return ((void*)0);

  if (++n >= (sizeof (outs) / sizeof (outs[0])))
    n = 0;





  outs[n] = (LPWSTR) xrealloc (outs[n], *out_len);
  memset (outs[n], 0, *out_len);
  (void) MultiByteToWideChar (CP_ACP, 0, s, -1, outs[n], *out_len);
  return outs[n];
}
