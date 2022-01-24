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
typedef  scalar_t__ uid_t ;
typedef  int /*<<< orphan*/  uid2 ;
typedef  int /*<<< orphan*/  uid ;
typedef  enum nss_lookup_type { ____Placeholder_nss_lookup_type } nss_lookup_type ;

/* Variables and functions */
 int NS_NOTFOUND ; 
 int NS_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*,char const*,int) ; 
 int nss_lt_all ; 
 int nss_lt_name ; 
 scalar_t__ FUNC1 (char const*,char*) ; 

__attribute__((used)) static int
FUNC2(char *entry, size_t entrysize, enum nss_lookup_type how,
    const char *name, uid_t uid)
{
	const char	*p, *eom;
	uid_t		 uid2;

	eom = &entry[entrysize];
	for (p = entry; p < eom; p++)
		if (*p == '\0')
			break;
	if (*p != '\0')
		return (NS_NOTFOUND);
	if (how == nss_lt_all)
		return (NS_SUCCESS);
	if (how == nss_lt_name)
		return (FUNC1(name, entry) == 0 ? NS_SUCCESS : NS_NOTFOUND);
	for (p++; p < eom; p++)
		if (*p == '\0')
			break;
	if (*p != '\0' || (++p) + sizeof(uid) >= eom)
		return (NS_NOTFOUND);
	FUNC0(&uid2, p, sizeof(uid2));
	return (uid == uid2 ? NS_SUCCESS : NS_NOTFOUND);
}