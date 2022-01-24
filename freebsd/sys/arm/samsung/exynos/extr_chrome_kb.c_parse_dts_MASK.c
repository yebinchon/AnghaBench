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
struct ckb_softc {void* gpio; void* cols; void* rows; int /*<<< orphan*/  dev; } ;
typedef  int phandle_t ;
typedef  void* pcell_t ;

/* Variables and functions */
 int ENXIO ; 
 int KEYMAP_LEN ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  FUNC0 (int,char*,void**,int) ; 
 int FUNC1 (int,char*) ; 
 scalar_t__ FUNC2 (int,char*) ; 
 void** default_keymap ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (void**,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct ckb_softc*,void**,int) ; 
 int FUNC7 (int,char const*,void***,int*) ; 

__attribute__((used)) static int
FUNC8(struct ckb_softc *sc)
{
	phandle_t node;
	pcell_t dts_value;
	pcell_t *keymap;
	int len, ret;
	const char *keymap_prop = NULL;

	if ((node = FUNC5(sc->dev)) == -1)
		return (ENXIO);

	if ((len = FUNC1(node, "google,key-rows")) <= 0)
		return (ENXIO);
	FUNC0(node, "google,key-rows", &dts_value, len);
	sc->rows = dts_value;

	if ((len = FUNC1(node, "google,key-columns")) <= 0)
		return (ENXIO);
	FUNC0(node, "google,key-columns", &dts_value, len);
	sc->cols = dts_value;

	if ((len = FUNC1(node, "freebsd,intr-gpio")) <= 0)
		return (ENXIO);
	FUNC0(node, "freebsd,intr-gpio", &dts_value, len);
	sc->gpio = dts_value;

	if (FUNC2(node, "freebsd,keymap")) {
		keymap_prop = "freebsd,keymap";
		FUNC3(sc->dev, "using FreeBSD-specific keymap from FDT\n");
	} else if (FUNC2(node, "linux,keymap")) {
		keymap_prop = "linux,keymap";
		FUNC3(sc->dev, "using Linux keymap from FDT\n");
	} else {
		FUNC3(sc->dev, "using built-in keymap\n");
	}

	if (keymap_prop != NULL) {
		if ((ret = FUNC7(node, keymap_prop, &keymap, &len))) {
			FUNC3(sc->dev,
			     "failed to read keymap from FDT: %d\n", ret);
			return (ret);
		}
		ret = FUNC6(sc, keymap, len);
		FUNC4(keymap, M_DEVBUF);
		if (ret) {
			return (ret);
		}
	} else {
		if ((ret = FUNC6(sc, default_keymap, KEYMAP_LEN))) {
			return (ret);
		}
	}

	if ((sc->rows == 0) || (sc->cols == 0) || (sc->gpio == 0))
		return (ENXIO);

	return (0);
}