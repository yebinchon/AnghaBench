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
struct host1x_softc {int /*<<< orphan*/  clients; } ;
struct client_info {scalar_t__ activated; int /*<<< orphan*/  client; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct host1x_softc*) ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct client_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct host1x_softc*) ; 
 struct host1x_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  list_e ; 
 struct client_info* FUNC4 (int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC5(device_t dev, device_t client)
{
	struct host1x_softc *sc;
	struct client_info *entry;

	sc = FUNC3(dev);

	entry = FUNC4(sizeof(struct client_info), M_DEVBUF, M_WAITOK | M_ZERO);
	entry->client = client;
	entry->activated = 0;

	FUNC0(sc);
	FUNC1(&sc->clients, entry, list_e);
	FUNC2(sc);

	return (0);
}