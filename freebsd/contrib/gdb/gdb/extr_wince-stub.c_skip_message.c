
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int wchar_t ;
struct skipper {int nskip; int * s; } ;
typedef int s ;
struct TYPE_5__ {int nDebugStringLength; int lpDebugStringData; } ;
struct TYPE_6__ {TYPE_1__ DebugString; } ;
struct TYPE_7__ {TYPE_2__ u; } ;
typedef int DWORD ;
typedef TYPE_3__ DEBUG_EVENT ;


 int ReadProcessMemory (int ,int ,char*,int,int *) ;
 int curproc ;
 int memset (char*,int ,int) ;
 struct skipper* skippy ;
 int wcslen (int *) ;
 scalar_t__ wcsncmp (int *,int *,int ) ;

__attribute__((used)) static int
skip_message (DEBUG_EVENT *ev)
{
  char s[80];
  DWORD nread;
  struct skipper *skp;
  int nbytes = ev->u.DebugString.nDebugStringLength;

  if (nbytes > sizeof(s))
    nbytes = sizeof(s);

  memset (s, 0, sizeof (s));
  if (!ReadProcessMemory (curproc, ev->u.DebugString.lpDebugStringData,
     s, nbytes, &nread))
    return 0;

  for (skp = skippy; skp->s != ((void*)0); skp++)
    if (wcsncmp ((wchar_t *) s, skp->s, wcslen (skp->s)) == 0)
      return skp->nskip;

  return 0;
}
