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

/* Variables and functions */
 int MNT_ACLS ; 
 int MNT_ASYNC ; 
 int MNT_EMPTYDIR ; 
 int MNT_MULTILABEL ; 
 int MNT_NFS4ACLS ; 
 int MNT_NOATIME ; 
 int MNT_NOCLUSTERR ; 
 int MNT_NOCLUSTERW ; 
 int MNT_NOCOVER ; 
 int MNT_NOEXEC ; 
 int MNT_NOSUID ; 
 int MNT_NOSYMFOLLOW ; 
 int MNT_RDONLY ; 
 int MNT_SUIDDIR ; 
 int MNT_SYNCHRONOUS ; 
 int MNT_UNION ; 
 int MNT_UNTRUSTED ; 
 char* FUNC0 (char*,char*) ; 

char *
FUNC1(int flags)
{
	char *res;

	res = NULL;

	if (flags & MNT_RDONLY)		res = FUNC0(res, "ro");
	if (flags & MNT_SYNCHRONOUS)	res = FUNC0(res, "sync");
	if (flags & MNT_NOEXEC)		res = FUNC0(res, "noexec");
	if (flags & MNT_NOSUID)		res = FUNC0(res, "nosuid");
	if (flags & MNT_UNION)		res = FUNC0(res, "union");
	if (flags & MNT_ASYNC)		res = FUNC0(res, "async");
	if (flags & MNT_NOATIME)	res = FUNC0(res, "noatime");
	if (flags & MNT_NOCLUSTERR)	res = FUNC0(res, "noclusterr");
	if (flags & MNT_NOCLUSTERW)	res = FUNC0(res, "noclusterw");
	if (flags & MNT_NOSYMFOLLOW)	res = FUNC0(res, "nosymfollow");
	if (flags & MNT_SUIDDIR)	res = FUNC0(res, "suiddir");
	if (flags & MNT_MULTILABEL)	res = FUNC0(res, "multilabel");
	if (flags & MNT_ACLS)		res = FUNC0(res, "acls");
	if (flags & MNT_NFS4ACLS)	res = FUNC0(res, "nfsv4acls");
	if (flags & MNT_UNTRUSTED)	res = FUNC0(res, "untrusted");
	if (flags & MNT_NOCOVER)	res = FUNC0(res, "nocover");
	if (flags & MNT_EMPTYDIR)	res = FUNC0(res, "emptydir");

	return (res);
}