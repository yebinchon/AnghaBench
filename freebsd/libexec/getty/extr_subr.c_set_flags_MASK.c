#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  void* tcflag_t ;
struct TYPE_4__ {void* c_lflag; void* c_cflag; void* c_oflag; void* c_iflag; } ;
struct TYPE_3__ {void* c_lflag; void* c_cflag; void* c_oflag; void* c_iflag; } ;

/* Variables and functions */
 scalar_t__ AP ; 
 void* C0 ; 
 int /*<<< orphan*/  C0set ; 
 void* C1 ; 
 int /*<<< orphan*/  C1set ; 
 void* C2 ; 
 int /*<<< orphan*/  C2set ; 
 scalar_t__ CB ; 
 scalar_t__ CE ; 
 scalar_t__ CK ; 
 int /*<<< orphan*/  FUNC0 (void*,int) ; 
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
 int /*<<< orphan*/  HT ; 
 int HUPCL ; 
 scalar_t__ HW ; 
 void* I0 ; 
 int /*<<< orphan*/  I0set ; 
 void* I1 ; 
 int /*<<< orphan*/  I1set ; 
 void* I2 ; 
 int /*<<< orphan*/  I2set ; 
 int ICANON ; 
 int ICRNL ; 
 int IGNPAR ; 
 int INPCK ; 
 int ISTRIP ; 
 int IXANY ; 
 void* L0 ; 
 int /*<<< orphan*/  L0set ; 
 void* L1 ; 
 int /*<<< orphan*/  L1set ; 
 void* L2 ; 
 int /*<<< orphan*/  L2set ; 
 void* LCASE ; 
 scalar_t__ MB ; 
 int MDMBUF ; 
 scalar_t__ NL ; 
 scalar_t__ NP ; 
 void* O0 ; 
 int /*<<< orphan*/  O0set ; 
 void* O1 ; 
 int /*<<< orphan*/  O1set ; 
 void* O2 ; 
 int /*<<< orphan*/  O2set ; 
 int ONLCR ; 
 scalar_t__ OP ; 
 int OPOST ; 
 int OXTABS ; 
 int PARENB ; 
 int PARODD ; 
 scalar_t__ PE ; 
 scalar_t__ RW ; 
 int /*<<< orphan*/  FUNC1 (void*,int) ; 
 scalar_t__ UC ; 
 scalar_t__ XC ; 
 int FUNC2 () ; 
 void* f ; 
 TYPE_2__ omode ; 
 TYPE_1__ tmode ; 

void
FUNC3(int n)
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
		FUNC0(cflag, CSIZE|PARENB);
		FUNC1(cflag, CS8);
		FUNC0(iflag, ISTRIP|INPCK|IGNPAR);
	} else if (AP || EP || OP) {
		FUNC0(cflag, CSIZE);
		FUNC1(cflag, CS7|PARENB);
		FUNC1(iflag, ISTRIP);
		if (OP && !EP) {
			FUNC1(iflag, INPCK|IGNPAR);
			FUNC1(cflag, PARODD);
			if (AP)
				FUNC0(iflag, INPCK);
		} else if (EP && !OP) {
			FUNC1(iflag, INPCK|IGNPAR);
			FUNC0(cflag, PARODD);
			if (AP)
				FUNC0(iflag, INPCK);
		} else if (AP || (EP && OP)) {
			FUNC0(iflag, INPCK|IGNPAR);
			FUNC0(cflag, PARODD);
		}
	} /* else, leave as is */

#if 0
	if (UC)
		f |= LCASE;
#endif

	if (HC)
		FUNC1(cflag, HUPCL);
	else
		FUNC0(cflag, HUPCL);

	if (MB)
		FUNC1(cflag, MDMBUF);
	else
		FUNC0(cflag, MDMBUF);

	if (HW)
		FUNC1(cflag, CRTSCTS);
	else
		FUNC0(cflag, CRTSCTS);

	if (NL) {
		FUNC1(iflag, ICRNL);
		FUNC1(oflag, ONLCR|OPOST);
	} else {
		FUNC0(iflag, ICRNL);
		FUNC0(oflag, ONLCR);
	}

	if (!HT)
		FUNC1(oflag, OXTABS|OPOST);
	else
		FUNC0(oflag, OXTABS);

#ifdef XXX_DELAY
	SET(f, delaybits());
#endif

	if (n == 1) {		/* read mode flags */
		if (RW) {
			iflag = 0;
			FUNC0(oflag, OPOST);
			FUNC0(cflag, CSIZE|PARENB);
			FUNC1(cflag, CS8);
			lflag = 0;
		} else {
			FUNC0(lflag, ICANON);
		}
		goto out;
	}

	if (n == 0)
		goto out;

#if 0
	if (CB)
		SET(f, CRTBS);
#endif

	if (CE)
		FUNC1(lflag, ECHOE);
	else
		FUNC0(lflag, ECHOE);

	if (CK)
		FUNC1(lflag, ECHOKE);
	else
		FUNC0(lflag, ECHOKE);

	if (PE)
		FUNC1(lflag, ECHOPRT);
	else
		FUNC0(lflag, ECHOPRT);

	if (EC)
		FUNC1(lflag, ECHO);
	else
		FUNC0(lflag, ECHO);

	if (XC)
		FUNC1(lflag, ECHOCTL);
	else
		FUNC0(lflag, ECHOCTL);

	if (DX)
		FUNC1(lflag, IXANY);
	else
		FUNC0(lflag, IXANY);

out:
	tmode.c_iflag = iflag;
	tmode.c_oflag = oflag;
	tmode.c_cflag = cflag;
	tmode.c_lflag = lflag;
}