#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int (* equal_fn ) (unsigned char*,int,unsigned char*,size_t,unsigned int) ;
struct TYPE_4__ {unsigned char* data; int length; int type; } ;
typedef  TYPE_1__ ASN1_STRING ;

/* Variables and functions */
 int FUNC0 (unsigned char**,TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*) ; 
 char* FUNC2 (char*,int) ; 
 int V_ASN1_IA5STRING ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,char const*,size_t) ; 

__attribute__((used)) static int FUNC4(const ASN1_STRING *a, int cmp_type, equal_fn equal,
                           unsigned int flags, const char *b, size_t blen,
                           char **peername)
{
    int rv = 0;

    if (!a->data || !a->length)
        return 0;
    if (cmp_type > 0) {
        if (cmp_type != a->type)
            return 0;
        if (cmp_type == V_ASN1_IA5STRING)
            rv = equal(a->data, a->length, (unsigned char *)b, blen, flags);
        else if (a->length == (int)blen && !FUNC3(a->data, b, blen))
            rv = 1;
        if (rv > 0 && peername)
            *peername = FUNC2((char *)a->data, a->length);
    } else {
        int astrlen;
        unsigned char *astr;
        astrlen = FUNC0(&astr, a);
        if (astrlen < 0) {
            /*
             * -1 could be an internal malloc failure or a decoding error from
             * malformed input; we can't distinguish.
             */
            return -1;
        }
        rv = equal(astr, astrlen, (unsigned char *)b, blen, flags);
        if (rv > 0 && peername)
            *peername = FUNC2((char *)astr, astrlen);
        FUNC1(astr);
    }
    return rv;
}