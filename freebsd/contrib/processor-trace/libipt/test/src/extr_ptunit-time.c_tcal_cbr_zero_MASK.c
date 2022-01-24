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
struct pt_config {int nom_freq; } ;
struct time_fixture {int /*<<< orphan*/  tcal; struct pt_config config; } ;
struct ptunit_result {int dummy; } ;
struct pt_packet_cbr {scalar_t__ ratio; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,struct pt_packet_cbr*,struct pt_config*) ; 
 int /*<<< orphan*/  pte_bad_packet ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 struct ptunit_result FUNC2 () ; 

__attribute__((used)) static struct ptunit_result FUNC3(struct time_fixture *tfix)
{
	struct pt_packet_cbr packet;
	struct pt_config config;
	int errcode;

	config = tfix->config;
	config.nom_freq = 1;
	packet.ratio = 0;

	errcode = FUNC0(&tfix->tcal, &packet, &config);
	FUNC1(errcode, -pte_bad_packet);

	return FUNC2();
}