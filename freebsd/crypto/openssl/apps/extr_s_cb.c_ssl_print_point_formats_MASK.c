#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  SSL ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,char const**) ; 
#define  TLSEXT_ECPOINTFORMAT_ansiX962_compressed_char2 130 
#define  TLSEXT_ECPOINTFORMAT_ansiX962_compressed_prime 129 
#define  TLSEXT_ECPOINTFORMAT_uncompressed 128 

int FUNC3(BIO *out, SSL *s)
{
    int i, nformats;
    const char *pformats;
    nformats = FUNC2(s, &pformats);
    if (nformats <= 0)
        return 1;
    FUNC1(out, "Supported Elliptic Curve Point Formats: ");
    for (i = 0; i < nformats; i++, pformats++) {
        if (i)
            FUNC1(out, ":");
        switch (*pformats) {
        case TLSEXT_ECPOINTFORMAT_uncompressed:
            FUNC1(out, "uncompressed");
            break;

        case TLSEXT_ECPOINTFORMAT_ansiX962_compressed_prime:
            FUNC1(out, "ansiX962_compressed_prime");
            break;

        case TLSEXT_ECPOINTFORMAT_ansiX962_compressed_char2:
            FUNC1(out, "ansiX962_compressed_char2");
            break;

        default:
            FUNC0(out, "unknown(%d)", (int)*pformats);
            break;

        }
    }
    FUNC1(out, "\n");
    return 1;
}