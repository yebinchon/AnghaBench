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
typedef  enum mb_band_id { ____Placeholder_mb_band_id } mb_band_id ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const**) ; 
#define  MB_BAND_ID_WIFI_2_4GHZ 130 
#define  MB_BAND_ID_WIFI_5GHZ 129 
#define  MB_BAND_ID_WIFI_60GHZ 128 
 char const* FUNC1 (int,char const**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static const char * FUNC2(enum mb_band_id band)
{
	static const char *band_names[] = {
		[MB_BAND_ID_WIFI_2_4GHZ] = "2.4GHZ",
		[MB_BAND_ID_WIFI_5GHZ] = "5GHZ",
		[MB_BAND_ID_WIFI_60GHZ] = "60GHZ",
	};

	return FUNC1(band, band_names, FUNC0(band_names));
}