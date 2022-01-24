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
struct ifmedia_type_to_subtype {int dummy; } ;
struct ifmedia_description {char const* ifmt_string; } ;

/* Variables and functions */
 struct ifmedia_description* FUNC0 (int,struct ifmedia_type_to_subtype*) ; 
 struct ifmedia_type_to_subtype* FUNC1 (int) ; 

const char *
FUNC2(int ifmw)
{
	struct ifmedia_description *desc;
	struct ifmedia_type_to_subtype *ttos;

	ttos = FUNC1(ifmw);
	desc = FUNC0(ifmw, ttos);
	return (desc->ifmt_string);
}