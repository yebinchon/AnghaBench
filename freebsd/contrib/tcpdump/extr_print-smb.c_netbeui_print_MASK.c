#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_short ;
typedef  int u_char ;
struct TYPE_7__ {int const* ndo_snapend; int ndo_vflag; } ;
typedef  TYPE_1__ netdissect_options ;
struct TYPE_8__ {char* nonverbose; char* verbose; int /*<<< orphan*/ * name; } ;

/* Variables and functions */
 int FUNC0 (int const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int const) ; 
 scalar_t__ FUNC3 (int const*,char*,int) ; 
 TYPE_5__* nbf_strings ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int const*,int const*) ; 
 int* FUNC5 (TYPE_1__*,int const*,char*,int const*,int /*<<< orphan*/ ) ; 
 int const* startbuf ; 
 int /*<<< orphan*/  tstr ; 

void
FUNC6(netdissect_options *ndo,
              u_short control, const u_char *data, int length)
{
    const u_char *maxbuf = data + length;
    int len;
    int command;
    const u_char *data2;
    int is_truncated = 0;

    if (maxbuf > ndo->ndo_snapend)
	maxbuf = ndo->ndo_snapend;
    FUNC2(data[4]);
    len = FUNC0(data);
    command = data[4];
    data2 = data + len;
    if (data2 >= maxbuf) {
	data2 = maxbuf;
	is_truncated = 1;
    }

    startbuf = data;

    if (ndo->ndo_vflag < 2) {
	FUNC1((ndo, "NBF Packet: "));
	data = FUNC5(ndo, data, "[P5]#", maxbuf, 0);
    } else {
	FUNC1((ndo, "\n>>> NBF Packet\nType=0x%X ", control));
	data = FUNC5(ndo, data, "Length=[d] Signature=[w] Command=[B]\n#", maxbuf, 0);
    }
    if (data == NULL)
	goto out;

    if (command > 0x1f || nbf_strings[command].name == NULL) {
	if (ndo->ndo_vflag < 2)
	    data = FUNC5(ndo, data, "Unknown NBF Command#", data2, 0);
	else
	    data = FUNC5(ndo, data, "Unknown NBF Command\n", data2, 0);
    } else {
	if (ndo->ndo_vflag < 2) {
	    FUNC1((ndo, "%s", nbf_strings[command].name));
	    if (nbf_strings[command].nonverbose != NULL)
		data = FUNC5(ndo, data, nbf_strings[command].nonverbose, data2, 0);
	} else {
	    FUNC1((ndo, "%s:\n", nbf_strings[command].name));
	    if (nbf_strings[command].verbose != NULL)
		data = FUNC5(ndo, data, nbf_strings[command].verbose, data2, 0);
	    else
		FUNC1((ndo, "\n"));
	}
    }

    if (ndo->ndo_vflag < 2)
	return;

    if (data == NULL)
	goto out;

    if (is_truncated) {
	/* data2 was past the end of the buffer */
	goto out;
    }

    /* If this isn't a command that would contain an SMB message, quit. */
    if (command != 0x08 && command != 0x09 && command != 0x15 &&
        command != 0x16)
	goto out;

    /* If there isn't enough data for "\377SMB", don't look for it. */
    if (&data2[3] >= maxbuf)
	goto out;

    if (FUNC3(data2, "\377SMB",4) == 0)
	FUNC4(ndo, data2, maxbuf);
    else {
	int i;
	for (i = 0; i < 128; i++) {
	    if (&data2[i + 3] >= maxbuf)
		break;
	    if (FUNC3(&data2[i], "\377SMB", 4) == 0) {
		FUNC1((ndo, "found SMB packet at %d\n", i));
		FUNC4(ndo, &data2[i], maxbuf);
		break;
	    }
	}
    }

out:
    FUNC1((ndo, "\n"));
    return;
trunc:
    FUNC1((ndo, "%s", tstr));
}