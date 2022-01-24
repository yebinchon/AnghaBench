#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct scsi_transportid_spi {int format_protocol; int /*<<< orphan*/  rel_trgt_port_id; int /*<<< orphan*/  scsi_addr; int /*<<< orphan*/  sas_address; int /*<<< orphan*/  additional_length; int /*<<< orphan*/  iscsi_name; int /*<<< orphan*/  n_port_name; } ;
struct scsi_transportid_sas {int format_protocol; int /*<<< orphan*/  rel_trgt_port_id; int /*<<< orphan*/  scsi_addr; int /*<<< orphan*/  sas_address; int /*<<< orphan*/  additional_length; int /*<<< orphan*/  iscsi_name; int /*<<< orphan*/  n_port_name; } ;
struct scsi_transportid_iscsi_port {int format_protocol; int /*<<< orphan*/  rel_trgt_port_id; int /*<<< orphan*/  scsi_addr; int /*<<< orphan*/  sas_address; int /*<<< orphan*/  additional_length; int /*<<< orphan*/  iscsi_name; int /*<<< orphan*/  n_port_name; } ;
struct scsi_transportid_fcp {int format_protocol; int /*<<< orphan*/  rel_trgt_port_id; int /*<<< orphan*/  scsi_addr; int /*<<< orphan*/  sas_address; int /*<<< orphan*/  additional_length; int /*<<< orphan*/  iscsi_name; int /*<<< orphan*/  n_port_name; } ;
struct ctl_port {int port_type; int targ_port; TYPE_1__* wwpn_iid; } ;
struct TYPE_2__ {int /*<<< orphan*/  wwpn; int /*<<< orphan*/ * name; } ;

/* Variables and functions */
#define  CTL_PORT_FC 130 
#define  CTL_PORT_ISCSI 129 
#define  CTL_PORT_SAS 128 
 int SCSI_PROTO_FC ; 
 int SCSI_PROTO_ISCSI ; 
 int SCSI_PROTO_SAS ; 
 int SCSI_PROTO_SPI ; 
 int SCSI_TRN_ISCSI_FORMAT_PORT ; 
 int /*<<< orphan*/  FUNC0 (struct scsi_transportid_spi*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC6(struct ctl_port *port, int iid, uint8_t *buf)
{
	int len;

	switch (port->port_type) {
	case CTL_PORT_FC:
	{
		struct scsi_transportid_fcp *id =
		    (struct scsi_transportid_fcp *)buf;
		if (port->wwpn_iid[iid].wwpn == 0)
			return (0);
		FUNC0(id, 0, sizeof(*id));
		id->format_protocol = SCSI_PROTO_FC;
		FUNC3(port->wwpn_iid[iid].wwpn, id->n_port_name);
		return (sizeof(*id));
	}
	case CTL_PORT_ISCSI:
	{
		struct scsi_transportid_iscsi_port *id =
		    (struct scsi_transportid_iscsi_port *)buf;
		if (port->wwpn_iid[iid].name == NULL)
			return (0);
		FUNC0(id, 0, 256);
		id->format_protocol = SCSI_TRN_ISCSI_FORMAT_PORT |
		    SCSI_PROTO_ISCSI;
		len = FUNC5(id->iscsi_name, port->wwpn_iid[iid].name, 252) + 1;
		len = FUNC2(FUNC1(len, 252), 4);
		FUNC4(len, id->additional_length);
		return (sizeof(*id) + len);
	}
	case CTL_PORT_SAS:
	{
		struct scsi_transportid_sas *id =
		    (struct scsi_transportid_sas *)buf;
		if (port->wwpn_iid[iid].wwpn == 0)
			return (0);
		FUNC0(id, 0, sizeof(*id));
		id->format_protocol = SCSI_PROTO_SAS;
		FUNC3(port->wwpn_iid[iid].wwpn, id->sas_address);
		return (sizeof(*id));
	}
	default:
	{
		struct scsi_transportid_spi *id =
		    (struct scsi_transportid_spi *)buf;
		FUNC0(id, 0, sizeof(*id));
		id->format_protocol = SCSI_PROTO_SPI;
		FUNC4(iid, id->scsi_addr);
		FUNC4(port->targ_port, id->rel_trgt_port_id);
		return (sizeof(*id));
	}
	}
}