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
typedef  scalar_t__ u_int ;
typedef  int u_char ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 int FUNC0 (int const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int const,int) ; 
 int const* FUNC3 (int const*,int const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int const*,int,int const*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int const*,int,int const*,int) ; 
 scalar_t__ request ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int const*,char const*,int const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (char const*,char*) ; 
 int /*<<< orphan*/  tstr ; 
 int /*<<< orphan*/  unicodestr ; 

__attribute__((used)) static void
FUNC8(netdissect_options *ndo,
            const u_char *words, const u_char *data1, const u_char *buf, const u_char *maxbuf)
{
    u_int bcc;
    const char *f1, *f2, *f3, *f4;
    const u_char *data, *param;
    const u_char *w = words + 1;
    int datalen, paramlen;

    if (request) {
	FUNC2(w[12 * 2], 2);
	paramlen = FUNC0(w + 9 * 2);
	param = buf + FUNC0(w + 10 * 2);
	datalen = FUNC0(w + 11 * 2);
	data = buf + FUNC0(w + 12 * 2);
	f1 = "TotParamCnt=[d] \nTotDataCnt=[d] \nMaxParmCnt=[d] \nMaxDataCnt=[d]\nMaxSCnt=[d] \nTransFlags=[w] \nRes1=[w] \nRes2=[w] \nRes3=[w]\nParamCnt=[d] \nParamOff=[d] \nDataCnt=[d] \nDataOff=[d] \nSUCnt=[d]\n";
	f2 = "|Name=[S]\n";
	f3 = "|Param ";
	f4 = "|Data ";
    } else {
	FUNC2(w[7 * 2], 2);
	paramlen = FUNC0(w + 3 * 2);
	param = buf + FUNC0(w + 4 * 2);
	datalen = FUNC0(w + 6 * 2);
	data = buf + FUNC0(w + 7 * 2);
	f1 = "TotParamCnt=[d] \nTotDataCnt=[d] \nRes1=[d]\nParamCnt=[d] \nParamOff=[d] \nRes2=[d] \nDataCnt=[d] \nDataOff=[d] \nRes3=[d]\nLsetup=[d]\n";
	f2 = "|Unknown ";
	f3 = "|Param ";
	f4 = "|Data ";
    }

    FUNC6(ndo, words + 1, f1, FUNC3(words + 1 + 2 * words[0], maxbuf),
        unicodestr);

    FUNC2(*data1, 2);
    bcc = FUNC0(data1);
    FUNC1((ndo, "smb_bcc=%u\n", bcc));
    if (bcc > 0) {
	FUNC6(ndo, data1 + 2, f2, maxbuf - (paramlen + datalen), unicodestr);

	if (FUNC7((const char *)(data1 + 2), "\\MAILSLOT\\BROWSE") == 0) {
	    FUNC4(ndo, param, paramlen, data, datalen);
	    return;
	}

	if (FUNC7((const char *)(data1 + 2), "\\PIPE\\LANMAN") == 0) {
	    FUNC5(ndo, param, paramlen, data, datalen);
	    return;
	}

	if (paramlen)
	    FUNC6(ndo, param, f3, FUNC3(param + paramlen, maxbuf), unicodestr);
	if (datalen)
	    FUNC6(ndo, data, f4, FUNC3(data + datalen, maxbuf), unicodestr);
    }
    return;
trunc:
    FUNC1((ndo, "%s", tstr));
}