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
typedef  int /*<<< orphan*/  bpf_u_int32 ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int IN_CLASSA_NET ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int IN_CLASSB_NET ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int IN_CLASSC_NET ; 
 int /*<<< orphan*/  PCAP_ERRBUF_SIZE ; 
 int _w32_sin_mask ; 
 int /*<<< orphan*/  _watt_is_init ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int my_ip_addr ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 

int FUNC7 (const char *device, bpf_u_int32 *localnet,
                    bpf_u_int32 *netmask, char *errbuf)
{
  DWORD mask, net;

  if (!_watt_is_init)
  {
    FUNC6 (errbuf, "pcap_open_offline() or pcap_activate() must be "
                    "called first");
    return (-1);
  }

  mask  = _w32_sin_mask;
  net = my_ip_addr & mask;
  if (net == 0)
  {
    if (FUNC1(*netmask))
       net = IN_CLASSA_NET;
    else if (FUNC2(*netmask))
       net = IN_CLASSB_NET;
    else if (FUNC3(*netmask))
       net = IN_CLASSC_NET;
    else
    {
      FUNC5 (errbuf, PCAP_ERRBUF_SIZE, "inet class for 0x%lx unknown", mask);
      return (-1);
    }
  }
  *localnet = FUNC4 (net);
  *netmask = FUNC4 (mask);

  FUNC0 (device);
  return (0);
}