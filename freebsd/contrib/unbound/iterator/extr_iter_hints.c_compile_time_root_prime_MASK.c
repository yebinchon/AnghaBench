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
struct delegpt {int has_parent_side_NS; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct delegpt*,char*,char*) ; 
 struct delegpt* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct delegpt*) ; 

__attribute__((used)) static struct delegpt* 
FUNC3(int do_ip4, int do_ip6)
{
	/* from:
	 ;       This file is made available by InterNIC
	 ;       under anonymous FTP as
	 ;           file                /domain/named.cache
	 ;           on server           FTP.INTERNIC.NET
	 ;       -OR-                    RS.INTERNIC.NET
	 ;
	 ;       related version of root zone:   changes-on-20120103
	 */
	struct delegpt* dp = FUNC1((uint8_t*)"\000");
	if(!dp)
		return NULL;
	dp->has_parent_side_NS = 1;
      if(do_ip4) {
	if(!FUNC0(dp, "A.ROOT-SERVERS.NET.", "198.41.0.4"))	goto failed;
	if(!FUNC0(dp, "B.ROOT-SERVERS.NET.", "199.9.14.201")) goto failed;
	if(!FUNC0(dp, "C.ROOT-SERVERS.NET.", "192.33.4.12"))	goto failed;
	if(!FUNC0(dp, "D.ROOT-SERVERS.NET.", "199.7.91.13"))	goto failed;
	if(!FUNC0(dp, "E.ROOT-SERVERS.NET.", "192.203.230.10")) goto failed;
	if(!FUNC0(dp, "F.ROOT-SERVERS.NET.", "192.5.5.241"))	goto failed;
	if(!FUNC0(dp, "G.ROOT-SERVERS.NET.", "192.112.36.4"))	goto failed;
	if(!FUNC0(dp, "H.ROOT-SERVERS.NET.", "198.97.190.53"))	goto failed;
	if(!FUNC0(dp, "I.ROOT-SERVERS.NET.", "192.36.148.17"))	goto failed;
	if(!FUNC0(dp, "J.ROOT-SERVERS.NET.", "192.58.128.30"))	goto failed;
	if(!FUNC0(dp, "K.ROOT-SERVERS.NET.", "193.0.14.129"))	goto failed;
	if(!FUNC0(dp, "L.ROOT-SERVERS.NET.", "199.7.83.42"))	goto failed;
	if(!FUNC0(dp, "M.ROOT-SERVERS.NET.", "202.12.27.33"))	goto failed;
      }
      if(do_ip6) {
	if(!FUNC0(dp, "A.ROOT-SERVERS.NET.", "2001:503:ba3e::2:30")) goto failed;
	if(!FUNC0(dp, "B.ROOT-SERVERS.NET.", "2001:500:200::b")) goto failed;
	if(!FUNC0(dp, "C.ROOT-SERVERS.NET.", "2001:500:2::c")) goto failed;
	if(!FUNC0(dp, "D.ROOT-SERVERS.NET.", "2001:500:2d::d")) goto failed;
	if(!FUNC0(dp, "E.ROOT-SERVERS.NET.", "2001:500:a8::e")) goto failed;
	if(!FUNC0(dp, "F.ROOT-SERVERS.NET.", "2001:500:2f::f")) goto failed;
	if(!FUNC0(dp, "G.ROOT-SERVERS.NET.", "2001:500:12::d0d")) goto failed;
	if(!FUNC0(dp, "H.ROOT-SERVERS.NET.", "2001:500:1::53")) goto failed;
	if(!FUNC0(dp, "I.ROOT-SERVERS.NET.", "2001:7fe::53")) goto failed;
	if(!FUNC0(dp, "J.ROOT-SERVERS.NET.", "2001:503:c27::2:30")) goto failed;
	if(!FUNC0(dp, "K.ROOT-SERVERS.NET.", "2001:7fd::1")) goto failed;
	if(!FUNC0(dp, "L.ROOT-SERVERS.NET.", "2001:500:9f::42")) goto failed;
	if(!FUNC0(dp, "M.ROOT-SERVERS.NET.", "2001:dc3::35")) goto failed;
      }
	return dp;
failed:
	FUNC2(dp);
	return 0;
}