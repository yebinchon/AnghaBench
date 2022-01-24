#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct uio {int /*<<< orphan*/  uio_resid; TYPE_2__* uio_td; } ;
struct cdev {struct acpi_hp_softc* si_drv1; } ;
struct acpi_hp_softc {scalar_t__ hpcmi_open_pid; int hpcmi_bufptr; int cmi_order_size; scalar_t__ has_cmi; int cmi_detail; int /*<<< orphan*/  hpcmi_sbuf; TYPE_3__* cmi_order; int /*<<< orphan*/  wmi_dev; } ;
typedef  scalar_t__ UINT8 ;
typedef  scalar_t__ UINT32 ;
struct TYPE_6__ {scalar_t__ sequence; scalar_t__ instance; } ;
struct TYPE_5__ {TYPE_1__* td_proc; } ;
struct TYPE_4__ {scalar_t__ p_pid; } ;

/* Variables and functions */
 int ACPI_HP_CMI_DETAIL_SHOW_MAX_INSTANCE ; 
 int /*<<< orphan*/  ACPI_HP_WMI_CMI_GUID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int EBADF ; 
 int ENOMEM ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,char*,int,scalar_t__*,int) ; 
 int /*<<< orphan*/  hp ; 
 int FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,char*) ; 
 int FUNC10 (scalar_t__,int,struct uio*) ; 

__attribute__((used)) static int
FUNC11(struct cdev *dev, struct uio *buf, int flag)
{
	struct acpi_hp_softc	*sc;
	int			pos, i, l, ret;
	UINT8			instance;
	UINT8			maxInstance;
	UINT32			sequence;
	int			linesize = 1025;
	char			line[linesize];

	if (dev == NULL || dev->si_drv1 == NULL)
		return (EBADF);
	sc = dev->si_drv1;
	
	FUNC0(hp);
	if (sc->hpcmi_open_pid != buf->uio_td->td_proc->p_pid
	    || sc->hpcmi_bufptr == -1) {
		ret = EBADF;
	}
	else {
		if (!FUNC6(&sc->hpcmi_sbuf)) {
			if (sc->cmi_order_size < 0) {
				maxInstance = sc->has_cmi;
				if (!(sc->cmi_detail & 
				    ACPI_HP_CMI_DETAIL_SHOW_MAX_INSTANCE) &&
				    maxInstance > 0) {
					maxInstance--;
				}
				sc->cmi_order_size = 0;
				for (instance = 0; instance < maxInstance;
				    ++instance) {
					if (FUNC2(sc->wmi_dev,
						ACPI_HP_WMI_CMI_GUID, instance,
						line, linesize, &sequence,
						sc->cmi_detail)) {
						instance = maxInstance;
					}
					else {
						pos = sc->cmi_order_size;
						for (i=0;
						  i<sc->cmi_order_size && i<127;
						     ++i) {
				if (sc->cmi_order[i].sequence > sequence) {
								pos = i;
								break; 							
							}
						}
						for (i=sc->cmi_order_size;
						    i>pos;
						    --i) {
						sc->cmi_order[i].sequence =
						    sc->cmi_order[i-1].sequence;
						sc->cmi_order[i].instance =
						    sc->cmi_order[i-1].instance;
						}
						sc->cmi_order[pos].sequence =
						    sequence;
						sc->cmi_order[pos].instance =
						    instance;
						sc->cmi_order_size++;
					}
				}
			}
			for (i=0; i<sc->cmi_order_size; ++i) {
				if (!FUNC2(sc->wmi_dev,
				    ACPI_HP_WMI_CMI_GUID,
				    sc->cmi_order[i].instance, line, linesize,
				    &sequence, sc->cmi_detail)) {
					FUNC9(&sc->hpcmi_sbuf, "%s\n", line);
				}
			}
			FUNC7(&sc->hpcmi_sbuf);
		}
		if (FUNC8(&sc->hpcmi_sbuf) <= 0) {
			FUNC5(&sc->hpcmi_sbuf);
			sc->hpcmi_bufptr = -1;
			sc->hpcmi_open_pid = 0;
			ret = ENOMEM;
		} else {
			l = FUNC3(buf->uio_resid, FUNC8(&sc->hpcmi_sbuf) -
			    sc->hpcmi_bufptr);
			ret = (l > 0)?FUNC10(FUNC4(&sc->hpcmi_sbuf) +
			    sc->hpcmi_bufptr, l, buf) : 0;
			sc->hpcmi_bufptr += l;
		}
	}
	FUNC1(hp);

	return (ret);
}