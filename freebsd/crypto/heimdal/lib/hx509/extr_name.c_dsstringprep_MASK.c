#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wind_profile_flags ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  name ;
struct TYPE_7__ {int /*<<< orphan*/  utf8String; } ;
struct TYPE_8__ {int element; TYPE_1__ u; } ;
typedef  TYPE_2__ DirectoryString ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__ const*,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__ const*,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__ const*,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ *) ; 
 int ENOMEM ; 
 int WIND_ERR_OVERRUN ; 
 int /*<<< orphan*/  WIND_PROFILE_LDAP ; 
 int /*<<< orphan*/  WIND_PROFILE_LDAP_CASE ; 
 int /*<<< orphan*/  WIND_PROFILE_LDAP_CASE_EXACT_ATTRIBUTE ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  bmpString ; 
#define  choice_DirectoryString_bmpString 133 
#define  choice_DirectoryString_ia5String 132 
#define  choice_DirectoryString_printableString 131 
#define  choice_DirectoryString_teletexString 130 
#define  choice_DirectoryString_universalString 129 
#define  choice_DirectoryString_utf8String 128 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ia5String ; 
 int /*<<< orphan*/ * FUNC5 (size_t) ; 
 int /*<<< orphan*/  printableString ; 
 int /*<<< orphan*/  teletexString ; 
 int /*<<< orphan*/  universalString ; 
 int FUNC6 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *,size_t*,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t*) ; 
 int FUNC8 (int /*<<< orphan*/ ,size_t*) ; 

__attribute__((used)) static int
FUNC9(const DirectoryString *ds, uint32_t **rname, size_t *rlen)
{
    wind_profile_flags flags;
    size_t i, len;
    int ret;
    uint32_t *name;

    *rname = NULL;
    *rlen = 0;

    switch(ds->element) {
    case choice_DirectoryString_ia5String:
	flags = WIND_PROFILE_LDAP;
	FUNC2(ds, ia5String, len, name);
	break;
    case choice_DirectoryString_printableString:
	flags = WIND_PROFILE_LDAP;
	flags |= WIND_PROFILE_LDAP_CASE_EXACT_ATTRIBUTE;
	FUNC2(ds, printableString, len, name);
	break;
    case choice_DirectoryString_teletexString:
	flags = WIND_PROFILE_LDAP_CASE;
	FUNC0(ds, teletexString, len, name);
	break;
    case choice_DirectoryString_bmpString:
	flags = WIND_PROFILE_LDAP;
	FUNC1(ds, bmpString, len, name);
	break;
    case choice_DirectoryString_universalString:
	flags = WIND_PROFILE_LDAP;
	FUNC1(ds, universalString, len, name);
	break;
    case choice_DirectoryString_utf8String:
	flags = WIND_PROFILE_LDAP;
	ret = FUNC8(ds->u.utf8String, &len);
	if (ret)
	    return ret;
	name = FUNC5(len * sizeof(name[0]));
	if (name == NULL)
	    return ENOMEM;
	ret = FUNC7(ds->u.utf8String, name, &len);
	if (ret) {
	    FUNC4(name);
	    return ret;
	}
	break;
    default:
	FUNC3("unknown directory type: %d", ds->element);
    }

    *rlen = len;
    /* try a couple of times to get the length right, XXX gross */
    for (i = 0; i < 4; i++) {
	*rlen = *rlen * 2;
	*rname = FUNC5(*rlen * sizeof((*rname)[0]));

	ret = FUNC6(name, len, *rname, rlen, flags);
	if (ret == WIND_ERR_OVERRUN) {
	    FUNC4(*rname);
	    *rname = NULL;
	    continue;
	} else
	    break;
    }
    FUNC4(name);
    if (ret) {
	if (*rname)
	    FUNC4(*rname);
	*rname = NULL;
	*rlen = 0;
	return ret;
    }

    return 0;
}