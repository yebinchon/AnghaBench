#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ isc_uint32_t ;
struct TYPE_3__ {scalar_t__* state; scalar_t__ buffer; } ;
typedef  TYPE_1__ isc_sha256_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__* K256 ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 

void
FUNC8(isc_sha256_t *context, const isc_uint32_t* data) {
	isc_uint32_t	a, b, c, d, e, f, g, h, s0, s1;
	isc_uint32_t	T1, T2, *W256;
	int		j;

	W256 = (isc_uint32_t*)context->buffer;

	/* Initialize registers with the prev. intermediate value */
	a = context->state[0];
	b = context->state[1];
	c = context->state[2];
	d = context->state[3];
	e = context->state[4];
	f = context->state[5];
	g = context->state[6];
	h = context->state[7];

	j = 0;
	do {
#if BYTE_ORDER == LITTLE_ENDIAN
		/* Copy data while converting to host byte order */
		FUNC3(*data++,W256[j]);
		/* Apply the SHA-256 compression function to update a..h */
		T1 = h + FUNC5(e) + FUNC0(e, f, g) + K256[j] + W256[j];
#else /* BYTE_ORDER == LITTLE_ENDIAN */
		/* Apply the SHA-256 compression function to update a..h with copy */
		T1 = h + Sigma1_256(e) + Ch(e, f, g) + K256[j] + (W256[j] = *data++);
#endif /* BYTE_ORDER == LITTLE_ENDIAN */
		T2 = FUNC4(a) + FUNC1(a, b, c);
		h = g;
		g = f;
		f = e;
		e = d + T1;
		d = c;
		c = b;
		b = a;
		a = T1 + T2;

		j++;
	} while (j < 16);

	do {
		/* Part of the message block expansion: */
		s0 = W256[(j+1)&0x0f];
		s0 = FUNC6(s0);
		s1 = W256[(j+14)&0x0f];
		s1 = FUNC7(s1);

		/* Apply the SHA-256 compression function to update a..h */
		T1 = h + FUNC5(e) + FUNC0(e, f, g) + K256[j] +
		     (W256[j&0x0f] += s1 + W256[(j+9)&0x0f] + s0);
		T2 = FUNC4(a) + FUNC1(a, b, c);
		h = g;
		g = f;
		f = e;
		e = d + T1;
		d = c;
		c = b;
		b = a;
		a = T1 + T2;

		j++;
	} while (j < 64);

	/* Compute the current intermediate hash value */
	context->state[0] += a;
	context->state[1] += b;
	context->state[2] += c;
	context->state[3] += d;
	context->state[4] += e;
	context->state[5] += f;
	context->state[6] += g;
	context->state[7] += h;

	/* Clean up */
	a = b = c = d = e = f = g = h = T1 = T2 = 0;
	/* Avoid compiler warnings */
	FUNC2(a); FUNC2(b); FUNC2(c); FUNC2(d); FUNC2(e); FUNC2(f);
	FUNC2(g); FUNC2(h); FUNC2(T1); FUNC2(T2);
}