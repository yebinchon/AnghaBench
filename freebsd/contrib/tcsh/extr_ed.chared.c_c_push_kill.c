
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* buf; int len; } ;
typedef char Char ;
typedef TYPE_1__ CStr ;


 int KillPos ;
 TYPE_1__* KillRing ;
 int KillRingLen ;
 int KillRingMax ;
 char* STRNULL ;
 int STRall ;
 int STRerase ;
 int STRkilldup ;
 int STRprev ;
 scalar_t__ Strncmp (char*,char*,size_t) ;
 int YankPos ;
 scalar_t__ eq (char*,int ) ;
 char* varval (int ) ;
 char* xrealloc (char*,int) ;

__attribute__((used)) static void
c_push_kill(Char *start, Char *end)
{
    CStr save, *pos;
    Char *dp, *cp, *kp;
    int len = end - start, i, j, k;


    if (KillRingLen > 0 && (dp = varval(STRkilldup)) != STRNULL) {
 YankPos = (KillPos - 1 + KillRingLen) % KillRingLen;
 if (eq(dp, STRerase)) {
     j = YankPos;
     for (i = 0; i < KillRingLen; i++) {
  if (Strncmp(KillRing[j].buf, start, (size_t) len) == 0 &&
      KillRing[j].buf[len] == '\0') {
      save = KillRing[j];
      for ( ; i > 0; i--) {
   k = j;
   j = (j + 1) % KillRingLen;
   KillRing[k] = KillRing[j];
      }
      KillRing[j] = save;
      return;
  }
  j = (j - 1 + KillRingLen) % KillRingLen;
     }
 } else if (eq(dp, STRall)) {
     for (i = 0; i < KillRingLen; i++)
  if (Strncmp(KillRing[i].buf, start, (size_t) len) == 0 &&
      KillRing[i].buf[len] == '\0')
      return;
 } else if (eq(dp, STRprev)) {
     j = YankPos;
     if (Strncmp(KillRing[j].buf, start, (size_t) len) == 0 &&
  KillRing[j].buf[len] == '\0')
  return;
 }
    }


    len++;
    YankPos = KillPos;
    if (KillRingLen < KillRingMax)
 KillRingLen++;
    pos = &KillRing[KillPos];
    KillPos = (KillPos + 1) % KillRingMax;
    if (pos->len < len) {
 pos->buf = xrealloc(pos->buf, len * sizeof(Char));
 pos->len = len;
    }
    cp = start;
    kp = pos->buf;
    while (cp < end)
 *kp++ = *cp++;
    *kp = '\0';
}
