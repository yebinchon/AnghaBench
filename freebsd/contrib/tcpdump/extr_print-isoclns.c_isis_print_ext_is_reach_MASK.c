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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  netdissect_options ;
typedef  int /*<<< orphan*/  ident_buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int ISIS_TLV_IS_ALIAS_ID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const,int) ; 
 int NODE_ID_LEN ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int,int,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,char const*) ; 

__attribute__((used)) static int
FUNC6(netdissect_options *ndo,
                        const uint8_t *tptr, const char *ident, int tlv_type)
{
    char ident_buffer[20];
    int subtlv_type,subtlv_len,subtlv_sum_len;
    int proc_bytes = 0; /* how many bytes did we process ? */

    if (!FUNC2(*tptr, NODE_ID_LEN))
        return(0);

    FUNC1((ndo, "%sIS Neighbor: %s", ident, FUNC3(tptr, NODE_ID_LEN)));
    tptr+=(NODE_ID_LEN);

    if (tlv_type != ISIS_TLV_IS_ALIAS_ID) { /* the Alias TLV Metric field is implicit 0 */
        if (!FUNC2(*tptr, 3))    /* and is therefore skipped */
	    return(0);
	FUNC1((ndo, ", Metric: %d", FUNC0(tptr)));
	tptr+=3;
    }

    if (!FUNC2(*tptr, 1))
        return(0);
    subtlv_sum_len=*(tptr++); /* read out subTLV length */
    proc_bytes=NODE_ID_LEN+3+1;
    FUNC1((ndo, ", %ssub-TLVs present",subtlv_sum_len ? "" : "no "));
    if (subtlv_sum_len) {
        FUNC1((ndo, " (%u)", subtlv_sum_len));
        while (subtlv_sum_len>0) {
            if (!FUNC2(*tptr,2))
                return(0);
            subtlv_type=*(tptr++);
            subtlv_len=*(tptr++);
            /* prepend the indent string */
            FUNC5(ident_buffer, sizeof(ident_buffer), "%s  ",ident);
            if (!FUNC4(ndo, tptr, subtlv_type, subtlv_len, ident_buffer))
                return(0);
            tptr+=subtlv_len;
            subtlv_sum_len-=(subtlv_len+2);
            proc_bytes+=(subtlv_len+2);
        }
    }
    return(proc_bytes);
}