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
typedef  int /*<<< orphan*/  lbuf ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char*) ; 
 scalar_t__ FUNC4 (char) ; 
 int FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,char*,...) ; 
 char* FUNC8 (char const*) ; 
 int FUNC9 (char*) ; 
 scalar_t__ FUNC10 (char*,char const*,int) ; 

int
FUNC11(char *rootdev)
{
	char	lbuf[128], *cp, *ep, *dev, *fstyp, *options;
	int		fd, error;

	if (FUNC3("vfs.root.mountfrom") != NULL)
		return(0);

	error = 1;
	FUNC7(lbuf, "%s/etc/fstab", rootdev);
	if ((fd = FUNC5(lbuf, O_RDONLY)) < 0)
		goto notfound;

	/* loop reading lines from /etc/fstab    What was that about sscanf again? */
	fstyp = NULL;
	dev = NULL;
	while (FUNC1(lbuf, sizeof(lbuf), fd) >= 0) {
		if ((lbuf[0] == 0) || (lbuf[0] == '#'))
			continue;

		/* skip device name */
		for (cp = lbuf; (*cp != 0) && !FUNC4(*cp); cp++)
			;
		if (*cp == 0)		/* misformatted */
			continue;
		/* delimit and save */
		*cp++ = 0;
		FUNC2(dev);
		dev = FUNC8(lbuf);

		/* skip whitespace up to mountpoint */
		while ((*cp != 0) && FUNC4(*cp))
			cp++;
		/* must have /<space> to be root */
		if ((*cp == 0) || (*cp != '/') || !FUNC4(*(cp + 1)))
			continue;
		/* skip whitespace up to fstype */
		cp += 2;
		while ((*cp != 0) && FUNC4(*cp))
			cp++;
		if (*cp == 0)		/* misformatted */
			continue;
		/* skip text to end of fstype and delimit */
		ep = cp;
		while ((*cp != 0) && !FUNC4(*cp))
			cp++;
		*cp = 0;
		FUNC2(fstyp);
		fstyp = FUNC8(ep);

		/* skip whitespace up to mount options */
		cp += 1;
		while ((*cp != 0) && FUNC4(*cp))
			cp++;
		if (*cp == 0)           /* misformatted */
			continue;
		/* skip text to end of mount options and delimit */
		ep = cp;
		while ((*cp != 0) && !FUNC4(*cp))
			cp++;
		*cp = 0;
		options = FUNC8(ep);
		/* Build the <fstype>:<device> and save it in vfs.root.mountfrom */
		FUNC7(lbuf, "%s:%s", fstyp, dev);
		FUNC6("vfs.root.mountfrom", lbuf, 0);

		/* Don't override vfs.root.mountfrom.options if it is already set */
		if (FUNC3("vfs.root.mountfrom.options") == NULL) {
			/* save mount options */
			FUNC6("vfs.root.mountfrom.options", options, 0);
		}
		FUNC2(options);
		error = 0;
		break;
	}
	FUNC0(fd);
	FUNC2(dev);
	FUNC2(fstyp);

notfound:
	if (error) {
		const char *currdev;

		currdev = FUNC3("currdev");
		if (currdev != NULL && FUNC10("zfs:", currdev, 4) == 0) {
			cp = FUNC8(currdev);
			cp[FUNC9(cp) - 1] = '\0';
			FUNC6("vfs.root.mountfrom", cp, 0);
			error = 0;
			FUNC2(cp);
		}
	}

	return(error);
}