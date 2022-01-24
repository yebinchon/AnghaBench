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
typedef  int /*<<< orphan*/  uint16_t ;
struct local_zones {int dummy; } ;
struct local_zone {int dummy; } ;
typedef  enum localzone_type { ____Placeholder_localzone_type } localzone_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,char const*) ; 
 struct local_zone* FUNC3 (struct local_zones*,int /*<<< orphan*/ *,size_t,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int /*<<< orphan*/ **,size_t*,int*) ; 

__attribute__((used)) static struct local_zone*
FUNC5(struct local_zones* zones, const char* name, const char* type,
	uint16_t dclass)
{
	struct local_zone* z;
	enum localzone_type t;
	uint8_t* nm;
	size_t len;
	int labs;
	if(!FUNC4(name, &nm, &len, &labs)) {
		FUNC2("bad zone name %s %s", name, type);
		return NULL;
	}
	if(!FUNC1(type, &t)) {
		FUNC2("bad lz_enter_zone type %s %s", name, type);
		FUNC0(nm);
		return NULL;
	}
	if(!(z=FUNC3(zones, nm, len, labs, t, dclass))) {
		FUNC2("could not enter zone %s %s", name, type);
		return NULL;
	}
	return z;
}