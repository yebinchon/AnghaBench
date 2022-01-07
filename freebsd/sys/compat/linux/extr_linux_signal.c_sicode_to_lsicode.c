
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LINUX_SI_ASYNCIO ;
 int LINUX_SI_KERNEL ;
 int LINUX_SI_MESGQ ;
 int LINUX_SI_QUEUE ;
 int LINUX_SI_TIMER ;
 int LINUX_SI_TKILL ;
 int LINUX_SI_USER ;
__attribute__((used)) static void
sicode_to_lsicode(int si_code, int *lsi_code)
{

 switch (si_code) {
 case 128:
  *lsi_code = LINUX_SI_USER;
  break;
 case 133:
  *lsi_code = LINUX_SI_KERNEL;
  break;
 case 130:
  *lsi_code = LINUX_SI_QUEUE;
  break;
 case 129:
  *lsi_code = LINUX_SI_TIMER;
  break;
 case 131:
  *lsi_code = LINUX_SI_MESGQ;
  break;
 case 134:
  *lsi_code = LINUX_SI_ASYNCIO;
  break;
 case 132:
  *lsi_code = LINUX_SI_TKILL;
  break;
 default:
  *lsi_code = si_code;
  break;
 }
}
