
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _7zip {size_t bcj_prevPosT; int bcj_ip; scalar_t__ bcj_prevMask; scalar_t__ bcj_state; } ;



__attribute__((used)) static void
x86_Init(struct _7zip *zip)
{
 zip->bcj_state = 0;
 zip->bcj_prevPosT = (size_t)0 - 1;
 zip->bcj_prevMask = 0;
 zip->bcj_ip = 5;
}
