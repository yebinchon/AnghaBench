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
 unsigned long E1_AIS ; 
 unsigned long E1_AIS16 ; 
 unsigned long E1_CRC4E ; 
 unsigned long E1_FARLOF ; 
 unsigned long E1_FARLOMF ; 
 unsigned long E1_LOF ; 
 unsigned long E1_LOMF ; 
 unsigned long E1_LOS ; 
 unsigned long E1_NOALARM ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 

__attribute__((used)) static char *
FUNC1 (unsigned long status)
{
	static char buf [80];

	if (status == 0)
		return "n/a";
	if (status & E1_NOALARM)
		return "Ok";
	buf[0] = 0;
	if (status & E1_LOS)     FUNC0 (buf, ",LOS");
	if (status & E1_AIS)     FUNC0 (buf, ",AIS");
	if (status & E1_LOF)     FUNC0 (buf, ",LOF");
	if (status & E1_LOMF)    FUNC0 (buf, ",LOMF");
	if (status & E1_CRC4E)   FUNC0 (buf, ",CRC4E");
	if (status & E1_FARLOF)  FUNC0 (buf, ",FARLOF");
	if (status & E1_AIS16)   FUNC0 (buf, ",AIS16");
	if (status & E1_FARLOMF) FUNC0 (buf, ",FARLOMF");
/*	if (status & E1_TSTREQ)  strcat (buf, ",TSTREQ");*/
/*	if (status & E1_TSTERR)  strcat (buf, ",TSTERR");*/
	if (buf[0] == ',')
		return buf+1;
	return "Unknown";
}