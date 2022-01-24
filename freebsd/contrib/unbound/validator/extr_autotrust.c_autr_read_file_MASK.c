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
struct val_anchors {int dummy; } ;
struct trust_anchor {int /*<<< orphan*/  lock; } ;
typedef  int /*<<< orphan*/  line ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  VERB_ALGO ; 
 int /*<<< orphan*/  FUNC0 (struct trust_anchor*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (char*,int /*<<< orphan*/ **,size_t*) ; 
 struct trust_anchor* FUNC5 (struct val_anchors*,char*,char const*,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ **,size_t*,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*) ; 
 int FUNC10 (char*,struct val_anchors*,struct trust_anchor**) ; 
 int FUNC11 (char*,int,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC12 (char*,char) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,char const*) ; 

int FUNC15(struct val_anchors* anchors, const char* nm)
{
        /* the file descriptor */
        FILE* fd;
        /* keep track of line numbers */
        int line_nr = 0;
        /* single line */
        char line[10240];
	/* trust point being read */
	struct trust_anchor *tp = NULL, *tp2;
	int r;
	/* for $ORIGIN parsing */
	uint8_t *origin=NULL, *prev=NULL;
	size_t origin_len=0, prev_len=0;

        if (!(fd = FUNC2(nm, "r"))) {
                FUNC8("unable to open %s for reading: %s", 
			nm, FUNC13(errno));
                return 0;
        }
        FUNC14(VERB_ALGO, "reading autotrust anchor file %s", nm);
        while ( (r=FUNC11(line, sizeof(line), fd, &line_nr)) != 0) {
		if(r == -1 || (r = FUNC10(line, anchors, &tp)) == -1) {
			FUNC8("could not parse auto-trust-anchor-file "
				"%s line %d", nm, line_nr);
			FUNC1(fd);
			FUNC3(origin);
			FUNC3(prev);
			return 0;
		} else if(r == 1) {
			continue;
		} else if(r == 2) {
			FUNC9("trust anchor %s has been revoked", nm);
			FUNC1(fd);
			FUNC3(origin);
			FUNC3(prev);
			return 1;
		}
        	if (!FUNC12(line, ';'))
                	continue; /* empty lines allowed */
 		if(FUNC4(line, &origin, &origin_len))
			continue;
		r = 0;
                if(!(tp2=FUNC5(anchors, line, nm, origin,
			origin_len, &prev, &prev_len, &r))) {
			if(!r) FUNC8("failed to load trust anchor from %s "
				"at line %i, skipping", nm, line_nr);
                        /* try to do the rest */
			continue;
                }
		if(tp && tp != tp2) {
			FUNC8("file %s has mismatching data inside: "
				"the file may only contain keys for one name, "
				"remove keys for other domain names", nm);
        		FUNC1(fd);
			FUNC3(origin);
			FUNC3(prev);
			return 0;
		}
		tp = tp2;
        }
        FUNC1(fd);
	FUNC3(origin);
	FUNC3(prev);
	if(!tp) {
		FUNC8("failed to read %s", nm);
		return 0;
	}

	/* now assemble the data into DNSKEY and DS packed rrsets */
	FUNC6(&tp->lock);
	if(!FUNC0(tp)) {
		FUNC7(&tp->lock);
		FUNC8("malloc failure assembling %s", nm);
		return 0;
	}
	FUNC7(&tp->lock);
	return 1;
}