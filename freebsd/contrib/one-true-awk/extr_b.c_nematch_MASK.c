#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uschar ;
struct TYPE_5__ {int initstat; int** gototab; int curstat; int** posns; scalar_t__* out; scalar_t__ reset; } ;
typedef  TYPE_1__ fa ;

/* Variables and functions */
 int NCHARS ; 
 scalar_t__ FUNC0 (int,int) ; 
 int FUNC1 (TYPE_1__*,int,size_t) ; 
 int FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* patbeg ; 
 int patlen ; 
 int /*<<< orphan*/  FUNC4 (int*) ; 

int FUNC5(fa *f, const char *p0)	/* non-empty match, for sub */
{
	int s, ns;
	uschar *p = (uschar *) p0;
	uschar *q;
	int i, k;

	/* s = f->reset ? makeinit(f,1) : f->initstat; */
	if (f->reset) {
		f->initstat = s = FUNC2(f,1);
	} else {
		s = f->initstat;
	}
	patlen = -1;
	while (*p) {
		q = p;
		do {
			if (f->out[s])		/* final state */
				patlen = q-p;
			/* assert(*q < NCHARS); */
			if ((ns = f->gototab[s][*q]) != 0)
				s = ns;
			else
				s = FUNC1(f, s, *q);
			if (s == 1) {	/* no transition */
				if (patlen > 0) {
					patbeg = (char *) p;
					return(1);
				} else
					goto nnextin;	/* no nonempty match */
			}
		} while (*q++ != 0);
		if (f->out[s])
			patlen = q-p-1;	/* don't count $ */
		if (patlen > 0 ) {
			patbeg = (char *) p;
			return(1);
		}
	nnextin:
		s = 2;
		if (f->reset) {
			for (i = 2; i <= f->curstat; i++)
				FUNC4(f->posns[i]);
			k = *f->posns[0];			
			if ((f->posns[2] = (int *) FUNC0(k+1, sizeof(int))) == NULL)
				FUNC3("out of state space");
			for (i = 0; i <= k; i++)
				(f->posns[2])[i] = (f->posns[0])[i];
			f->initstat = f->curstat = 2;
			f->out[2] = f->out[0];
			for (i = 0; i < NCHARS; i++)
				f->gototab[2][i] = 0;
		}
		p++;
	}
	return (0);
}