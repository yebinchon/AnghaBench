#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct pcap_rdmasniff {unsigned int port_num; struct ibv_device* rdma_device; } ;
struct ibv_device {char const* name; } ;
struct TYPE_4__ {struct pcap_rdmasniff* priv; int /*<<< orphan*/  activate_op; } ;
typedef  TYPE_1__ pcap_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ibv_device**) ; 
 struct ibv_device** FUNC1 (int*) ; 
 TYPE_1__* FUNC2 (char*,int) ; 
 int /*<<< orphan*/  rdmasniff_activate ; 
 char* FUNC3 (char const*,char) ; 
 size_t FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char const*,size_t) ; 
 unsigned int FUNC6 (char const*,int /*<<< orphan*/ *,int) ; 

pcap_t *
FUNC7(const char *device, char *ebuf, int *is_ours)
{
	struct pcap_rdmasniff *priv;
	struct ibv_device **dev_list;
	int numdev;
	size_t namelen;
	const char *port;
	unsigned port_num;
	int i;
	pcap_t *p = NULL;

	*is_ours = 0;

	dev_list = FUNC1(&numdev);
	if (!dev_list || !numdev) {
		return NULL;
	}

	namelen = FUNC4(device);

	port = FUNC3(device, ':');
	if (port) {
		port_num = FUNC6(port + 1, NULL, 10);
		if (port_num > 0) {
			namelen = port - device;
		} else {
			port_num = 1;
		}
	} else {
		port_num = 1;
	}

	for (i = 0; i < numdev; ++i) {
		if (FUNC4(dev_list[i]->name) == namelen &&
		    !FUNC5(device, dev_list[i]->name, namelen)) {
			*is_ours = 1;

			p = FUNC2(ebuf, sizeof (struct pcap_rdmasniff));
			if (p) {
				p->activate_op = rdmasniff_activate;
				priv = p->priv;
				priv->rdma_device = dev_list[i];
				priv->port_num = port_num;
			}
			break;
		}
	}

	FUNC0(dev_list);
	return p;
}