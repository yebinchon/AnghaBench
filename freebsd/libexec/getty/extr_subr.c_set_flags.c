
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* tcflag_t ;
struct TYPE_4__ {void* c_lflag; void* c_cflag; void* c_oflag; void* c_iflag; } ;
struct TYPE_3__ {void* c_lflag; void* c_cflag; void* c_oflag; void* c_iflag; } ;


 scalar_t__ AP ;
 void* C0 ;
 int C0set ;
 void* C1 ;
 int C1set ;
 void* C2 ;
 int C2set ;
 scalar_t__ CB ;
 scalar_t__ CE ;
 scalar_t__ CK ;
 int CLR (void*,int) ;
 int CRTBS ;
 int CRTSCTS ;
 int CS7 ;
 int CS8 ;
 int CSIZE ;
 scalar_t__ DX ;
 scalar_t__ EC ;
 int ECHO ;
 int ECHOCTL ;
 int ECHOE ;
 int ECHOKE ;
 int ECHOPRT ;
 scalar_t__ EP ;
 scalar_t__ HC ;
 int HT ;
 int HUPCL ;
 scalar_t__ HW ;
 void* I0 ;
 int I0set ;
 void* I1 ;
 int I1set ;
 void* I2 ;
 int I2set ;
 int ICANON ;
 int ICRNL ;
 int IGNPAR ;
 int INPCK ;
 int ISTRIP ;
 int IXANY ;
 void* L0 ;
 int L0set ;
 void* L1 ;
 int L1set ;
 void* L2 ;
 int L2set ;
 void* LCASE ;
 scalar_t__ MB ;
 int MDMBUF ;
 scalar_t__ NL ;
 scalar_t__ NP ;
 void* O0 ;
 int O0set ;
 void* O1 ;
 int O1set ;
 void* O2 ;
 int O2set ;
 int ONLCR ;
 scalar_t__ OP ;
 int OPOST ;
 int OXTABS ;
 int PARENB ;
 int PARODD ;
 scalar_t__ PE ;
 scalar_t__ RW ;
 int SET (void*,int) ;
 scalar_t__ UC ;
 scalar_t__ XC ;
 int delaybits () ;
 void* f ;
 TYPE_2__ omode ;
 TYPE_1__ tmode ;

void
set_flags(int n)
{
 tcflag_t iflag, oflag, cflag, lflag;


 switch (n) {
 case 0:
  if (C0set && I0set && L0set && O0set) {
   tmode.c_cflag = C0;
   tmode.c_iflag = I0;
   tmode.c_lflag = L0;
   tmode.c_oflag = O0;
   return;
  }
  break;
 case 1:
  if (C1set && I1set && L1set && O1set) {
   tmode.c_cflag = C1;
   tmode.c_iflag = I1;
   tmode.c_lflag = L1;
   tmode.c_oflag = O1;
   return;
  }
  break;
 default:
  if (C2set && I2set && L2set && O2set) {
   tmode.c_cflag = C2;
   tmode.c_iflag = I2;
   tmode.c_lflag = L2;
   tmode.c_oflag = O2;
   return;
  }
  break;
 }

 iflag = omode.c_iflag;
 oflag = omode.c_oflag;
 cflag = omode.c_cflag;
 lflag = omode.c_lflag;

 if (NP) {
  CLR(cflag, CSIZE|PARENB);
  SET(cflag, CS8);
  CLR(iflag, ISTRIP|INPCK|IGNPAR);
 } else if (AP || EP || OP) {
  CLR(cflag, CSIZE);
  SET(cflag, CS7|PARENB);
  SET(iflag, ISTRIP);
  if (OP && !EP) {
   SET(iflag, INPCK|IGNPAR);
   SET(cflag, PARODD);
   if (AP)
    CLR(iflag, INPCK);
  } else if (EP && !OP) {
   SET(iflag, INPCK|IGNPAR);
   CLR(cflag, PARODD);
   if (AP)
    CLR(iflag, INPCK);
  } else if (AP || (EP && OP)) {
   CLR(iflag, INPCK|IGNPAR);
   CLR(cflag, PARODD);
  }
 }






 if (HC)
  SET(cflag, HUPCL);
 else
  CLR(cflag, HUPCL);

 if (MB)
  SET(cflag, MDMBUF);
 else
  CLR(cflag, MDMBUF);

 if (HW)
  SET(cflag, CRTSCTS);
 else
  CLR(cflag, CRTSCTS);

 if (NL) {
  SET(iflag, ICRNL);
  SET(oflag, ONLCR|OPOST);
 } else {
  CLR(iflag, ICRNL);
  CLR(oflag, ONLCR);
 }

 if (!HT)
  SET(oflag, OXTABS|OPOST);
 else
  CLR(oflag, OXTABS);





 if (n == 1) {
  if (RW) {
   iflag = 0;
   CLR(oflag, OPOST);
   CLR(cflag, CSIZE|PARENB);
   SET(cflag, CS8);
   lflag = 0;
  } else {
   CLR(lflag, ICANON);
  }
  goto out;
 }

 if (n == 0)
  goto out;






 if (CE)
  SET(lflag, ECHOE);
 else
  CLR(lflag, ECHOE);

 if (CK)
  SET(lflag, ECHOKE);
 else
  CLR(lflag, ECHOKE);

 if (PE)
  SET(lflag, ECHOPRT);
 else
  CLR(lflag, ECHOPRT);

 if (EC)
  SET(lflag, ECHO);
 else
  CLR(lflag, ECHO);

 if (XC)
  SET(lflag, ECHOCTL);
 else
  CLR(lflag, ECHOCTL);

 if (DX)
  SET(lflag, IXANY);
 else
  CLR(lflag, IXANY);

out:
 tmode.c_iflag = iflag;
 tmode.c_oflag = oflag;
 tmode.c_cflag = cflag;
 tmode.c_lflag = lflag;
}
