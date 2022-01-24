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
struct asn1_hdr {scalar_t__ class; scalar_t__ tag; } ;

/* Variables and functions */
 scalar_t__ ASN1_CLASS_UNIVERSAL ; 
 scalar_t__ ASN1_TAG_BOOLEAN ; 
 int /*<<< orphan*/  FUNC0 (struct asn1_hdr*) ; 

__attribute__((used)) static int FUNC1(struct asn1_hdr *hdr)
{
	if (hdr->class != ASN1_CLASS_UNIVERSAL)
		return 1;
	if (hdr->tag == ASN1_TAG_BOOLEAN && !FUNC0(hdr))
		return 0;
	return 1;
}