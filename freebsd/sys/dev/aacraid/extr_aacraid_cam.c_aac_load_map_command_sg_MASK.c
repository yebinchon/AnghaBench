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
struct aac_softc {int /*<<< orphan*/  flags; int /*<<< orphan*/  aac_buffer_dmat; } ;
struct aac_command {int /*<<< orphan*/  cm_datalen; int /*<<< orphan*/  cm_data; int /*<<< orphan*/  cm_datamap; } ;

/* Variables and functions */
 int /*<<< orphan*/  AAC_QUEUE_FRZN ; 
 int EINPROGRESS ; 
 char* HBA_FLAGS_DBG_FUNCTION_ENTRY_B ; 
 char* HBA_FLAGS_DBG_INIT_B ; 
 int /*<<< orphan*/  aacraid_map_command_sg ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct aac_command*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct aac_softc*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 

__attribute__((used)) static int
FUNC3(struct aac_softc *sc, struct aac_command *cm)
{
	int error;

	FUNC1(sc, HBA_FLAGS_DBG_FUNCTION_ENTRY_B, "");
	error = FUNC0(sc->aac_buffer_dmat,
				cm->cm_datamap, cm->cm_data, cm->cm_datalen,
				aacraid_map_command_sg, cm, 0);
	if (error == EINPROGRESS) {
		FUNC1(sc, HBA_FLAGS_DBG_INIT_B, "freezing queue\n");
		sc->flags |= AAC_QUEUE_FRZN;
		error = 0;
	} else if (error != 0) {
		FUNC2("aac_load_map_command_sg: unexpected error %d from "
	     		"busdma", error);
	}
	return(error);
}