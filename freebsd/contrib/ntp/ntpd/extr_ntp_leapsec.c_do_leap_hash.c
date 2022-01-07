
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned char* hv; } ;
typedef TYPE_1__ sha1_digest ;


 int FALSE ;
 int TRUE ;
 int memset (TYPE_1__*,int ,int) ;
 int sscanf (char const*,char*,unsigned long*,unsigned long*,unsigned long*,unsigned long*,unsigned long*,int*) ;

__attribute__((used)) static int
do_leap_hash(
 sha1_digest * mac,
 char const * cp )
{
 int wi, di, num, len;
 unsigned long tmp[5];

 memset(mac, 0, sizeof(*mac));
 num = sscanf(cp, " %lx %lx %lx %lx %lx%n",
       &tmp[0], &tmp[1], &tmp[2], &tmp[3], &tmp[4],
       &len);
 if (num != 5 || cp[len] > ' ')
  return FALSE;


 for (wi=0; wi < 5; ++wi)
  for (di=3; di >= 0; --di) {
   mac->hv[wi*4 + di] =
    (unsigned char)(tmp[wi] & 0x0FF);
   tmp[wi] >>= 8;
  }
 return TRUE;
}
