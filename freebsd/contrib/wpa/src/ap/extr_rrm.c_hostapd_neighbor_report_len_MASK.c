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
struct wpabuf {int dummy; } ;
struct hostapd_neighbor_entry {scalar_t__ civic; scalar_t__ lci; scalar_t__ nr; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 

__attribute__((used)) static size_t FUNC1(struct wpabuf *buf,
					  struct hostapd_neighbor_entry *nr,
					  int send_lci, int send_civic)
{
	size_t len = 2 + FUNC0(nr->nr);

	if (send_lci && nr->lci)
		len += 2 + FUNC0(nr->lci);

	if (send_civic && nr->civic)
		len += 2 + FUNC0(nr->civic);

	return len;
}