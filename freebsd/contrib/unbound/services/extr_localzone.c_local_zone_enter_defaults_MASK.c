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
struct local_zones {int dummy; } ;
struct local_zone {int /*<<< orphan*/  lock; } ;
struct config_file {int /*<<< orphan*/  unblock_lan_zones; scalar_t__ local_zones_disable_default; } ;

/* Variables and functions */
 int /*<<< orphan*/  LDNS_RR_CLASS_IN ; 
 int /*<<< orphan*/  FUNC0 (struct local_zones*,struct config_file*,char const*) ; 
 char** as112_zones ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct local_zone*,char*) ; 
 struct local_zone* FUNC4 (struct local_zones*,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct local_zones*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct config_file*,char*) ; 

int FUNC7(struct local_zones* zones, struct config_file* cfg)
{
	struct local_zone* z;
	const char** zstr;

	/* Do not add any default */
	if(cfg->local_zones_disable_default)
		return 1;

	/* this list of zones is from RFC 6303 and RFC 7686 */

	/* block localhost level zones first, then onion and later the LAN zones */

	/* localhost. zone */
	if(!FUNC5(zones, "localhost.") &&
		!FUNC6(cfg, "localhost.")) {
		if(!(z=FUNC4(zones, "localhost.", "redirect", 
			LDNS_RR_CLASS_IN)) ||
		   !FUNC3(z,
			"localhost. 10800 IN NS localhost.") ||
		   !FUNC3(z,
			"localhost. 10800 IN SOA localhost. nobody.invalid. "
			"1 3600 1200 604800 10800") ||
		   !FUNC3(z,
			"localhost. 10800 IN A 127.0.0.1") ||
		   !FUNC3(z,
			"localhost. 10800 IN AAAA ::1")) {
			FUNC2("out of memory adding default zone");
			if(z) { FUNC1(&z->lock); }
			return 0;
		}
		FUNC1(&z->lock);
	}
	/* reverse ip4 zone */
	if(!FUNC5(zones, "127.in-addr.arpa.") &&
		!FUNC6(cfg, "127.in-addr.arpa.")) {
		if(!(z=FUNC4(zones, "127.in-addr.arpa.", "static", 
			LDNS_RR_CLASS_IN)) ||
		   !FUNC3(z,
			"127.in-addr.arpa. 10800 IN NS localhost.") ||
		   !FUNC3(z,
			"127.in-addr.arpa. 10800 IN SOA localhost. "
			"nobody.invalid. 1 3600 1200 604800 10800") ||
		   !FUNC3(z,
			"1.0.0.127.in-addr.arpa. 10800 IN PTR localhost.")) {
			FUNC2("out of memory adding default zone");
			if(z) { FUNC1(&z->lock); }
			return 0;
		}
		FUNC1(&z->lock);
	}
	/* reverse ip6 zone */
	if(!FUNC5(zones, "1.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.ip6.arpa.") &&
		!FUNC6(cfg, "1.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.ip6.arpa.")) {
		if(!(z=FUNC4(zones, "1.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.ip6.arpa.", "static", 
			LDNS_RR_CLASS_IN)) ||
		   !FUNC3(z,
			"1.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.ip6.arpa. 10800 IN NS localhost.") ||
		   !FUNC3(z,
			"1.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.ip6.arpa. 10800 IN SOA localhost. "
			"nobody.invalid. 1 3600 1200 604800 10800") ||
		   !FUNC3(z,
			"1.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.ip6.arpa. 10800 IN PTR localhost.")) {
			FUNC2("out of memory adding default zone");
			if(z) { FUNC1(&z->lock); }
			return 0;
		}
		FUNC1(&z->lock);
	}
	/* onion. zone (RFC 7686) */
	if(!FUNC0(zones, cfg, "onion.")) {
		FUNC2("out of memory adding default zone");
		return 0;
	}
	/* test. zone (RFC 7686) */
	if(!FUNC0(zones, cfg, "test.")) {
		FUNC2("out of memory adding default zone");
		return 0;
	}
	/* invalid. zone (RFC 7686) */
	if(!FUNC0(zones, cfg, "invalid.")) {
		FUNC2("out of memory adding default zone");
		return 0;
	}
	/* block AS112 zones, unless asked not to */
	if(!cfg->unblock_lan_zones) {
		for(zstr = as112_zones; *zstr; zstr++) {
			if(!FUNC0(zones, cfg, *zstr)) {
				FUNC2("out of memory adding default zone");
				return 0;
			}
		}
	}
	return 1;
}