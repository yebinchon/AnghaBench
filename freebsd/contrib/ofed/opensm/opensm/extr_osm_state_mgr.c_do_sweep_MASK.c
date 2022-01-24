#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_48__   TYPE_4__ ;
typedef  struct TYPE_47__   TYPE_3__ ;
typedef  struct TYPE_46__   TYPE_2__ ;
typedef  struct TYPE_45__   TYPE_28__ ;
typedef  struct TYPE_44__   TYPE_24__ ;
typedef  struct TYPE_43__   TYPE_21__ ;
typedef  struct TYPE_42__   TYPE_1__ ;

/* Type definitions */
struct TYPE_43__ {int /*<<< orphan*/  cache_valid; } ;
struct TYPE_47__ {TYPE_24__* p_subn; int /*<<< orphan*/  subnet_up_event; int /*<<< orphan*/  p_log; TYPE_21__ ucast_mgr; int /*<<< orphan*/  lid_mgr; scalar_t__ polling_sm_guid; int /*<<< orphan*/  p_lock; scalar_t__ master_sm_found; } ;
typedef  TYPE_3__ osm_sm_t ;
struct TYPE_42__ {scalar_t__ guid; } ;
struct TYPE_48__ {TYPE_1__ smi; } ;
typedef  TYPE_4__ osm_remote_sm_t ;
typedef  scalar_t__ ib_api_status_t ;
struct TYPE_46__ {scalar_t__ force_heavy_sweep; int /*<<< orphan*/  fsync_high_avail_files; scalar_t__ sa_db_dump; int /*<<< orphan*/  disable_multicast; scalar_t__ use_ucast_cache; } ;
struct TYPE_45__ {int /*<<< orphan*/  stats; } ;
struct TYPE_44__ {scalar_t__ force_heavy_sweep; scalar_t__ subnet_initialization_error; scalar_t__ sm_state; int need_update; scalar_t__ force_reroute; int last_sm_port_state; TYPE_28__* p_osm; TYPE_2__ opt; int /*<<< orphan*/  p_neighbor; int /*<<< orphan*/  p_g2m; scalar_t__ first_time_master_sweep; scalar_t__ coming_out_of_standby; int /*<<< orphan*/  sw_guid_tbl; scalar_t__ ignore_existing_lfts; void* min_sw_data_vls; void* min_data_vls; int /*<<< orphan*/  min_ca_rate; int /*<<< orphan*/  min_ca_mtu; scalar_t__ force_first_time_master_sweep; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FILE_ID ; 
 int /*<<< orphan*/  IB_LINK_ACTIVE ; 
 int /*<<< orphan*/  IB_LINK_ARMED ; 
 int /*<<< orphan*/  IB_LINK_NO_CHANGE ; 
 int /*<<< orphan*/  IB_MAX_MTU ; 
 void* IB_MAX_NUM_VLS ; 
 int /*<<< orphan*/  IB_PATH_RECORD_RATE_300_GBS ; 
 scalar_t__ IB_SMINFO_STATE_DISCOVERING ; 
 scalar_t__ IB_SMINFO_STATE_MASTER ; 
 scalar_t__ IB_SUCCESS ; 
 int /*<<< orphan*/  OSM_EVENT_ID_HEAVY_SWEEP_DONE ; 
 int /*<<< orphan*/  OSM_EVENT_ID_HEAVY_SWEEP_START ; 
 int /*<<< orphan*/  OSM_EVENT_ID_SA_DB_DUMPED ; 
 int /*<<< orphan*/  OSM_EVENT_ID_STATE_CHANGE ; 
 int /*<<< orphan*/  OSM_EVENT_ID_SUBNET_UP ; 
 int /*<<< orphan*/  OSM_EVENT_ID_UCAST_ROUTING_DONE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  OSM_LOG_ERROR ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  OSM_LOG_SYS ; 
 int /*<<< orphan*/  OSM_LOG_VERBOSE ; 
 int /*<<< orphan*/  OSM_SIGNAL_SWEEP ; 
 int /*<<< orphan*/  OSM_SM_SIGNAL_DISCOVER ; 
 int /*<<< orphan*/  OSM_SM_SIGNAL_DISCOVERY_COMPLETED ; 
 int /*<<< orphan*/  OSM_SM_SIGNAL_HANDOVER_SENT ; 
 int /*<<< orphan*/  OSM_SM_SIGNAL_MASTER_OR_HIGHER_SM_DETECTED ; 
 int /*<<< orphan*/  OSM_SM_SIGNAL_POLLING_TIMEOUT ; 
 int /*<<< orphan*/  OSM_SM_SIGNAL_WAIT_FOR_HANDOVER ; 
 scalar_t__ TRUE ; 
 scalar_t__ UCAST_ROUTING_HEAVY_SWEEP ; 
 scalar_t__ UCAST_ROUTING_REROUTE ; 
 int /*<<< orphan*/  check_switch_lft ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_28__*) ; 
 scalar_t__ FUNC9 (TYPE_28__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_28__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_28__*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_28__*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_28__*) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_28__*) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_28__*) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_28__*) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC28 (TYPE_24__*) ; 
 int /*<<< orphan*/  FUNC29 (TYPE_21__*) ; 
 scalar_t__ FUNC30 (TYPE_21__*) ; 
 scalar_t__ FUNC31 (TYPE_21__*) ; 
 int /*<<< orphan*/  FUNC32 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC33 (TYPE_3__*) ; 
 TYPE_4__* FUNC34 (TYPE_3__*) ; 
 TYPE_4__* FUNC35 (TYPE_3__*) ; 
 scalar_t__ FUNC36 (TYPE_3__*) ; 
 scalar_t__ FUNC37 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC38 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC39 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC40 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC41 (TYPE_3__*,TYPE_4__*) ; 
 scalar_t__ FUNC42 (TYPE_3__*) ; 
 scalar_t__ FUNC43 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC44 (TYPE_3__*) ; 
 scalar_t__ FUNC45 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC46(osm_sm_t * sm)
{
	ib_api_status_t status;
	osm_remote_sm_t *p_remote_sm;
	unsigned config_parsed = 0;

	if (sm->p_subn->force_first_time_master_sweep) {
		sm->p_subn->force_heavy_sweep = TRUE;
		sm->p_subn->coming_out_of_standby = TRUE;
		sm->p_subn->first_time_master_sweep = TRUE;
		sm->p_subn->force_first_time_master_sweep = FALSE;
	}

	/* after subnet initialization error, run heavy sweep */
	if (sm->p_subn->subnet_initialization_error)
		sm->p_subn->force_heavy_sweep = TRUE;

	if (sm->p_subn->force_heavy_sweep) {
		if (FUNC28(sm->p_subn) < 0)
			FUNC2(sm->p_log, OSM_LOG_ERROR, "ERR 331A: "
				"osm_subn_rescan_conf_file failed\n");
		else
			config_parsed = 1;
	}

	if (sm->p_subn->sm_state != IB_SMINFO_STATE_MASTER &&
	    sm->p_subn->sm_state != IB_SMINFO_STATE_DISCOVERING)
		return;

	if (sm->p_subn->coming_out_of_standby) {
		/*
		 * Need to force re-write of sm_base_lid to all ports
		 * to do that we want all the ports to be considered
		 * foreign
		 */
		FUNC33(sm);

		/*
		 * Need to clean SA cache when state changes to STANDBY
		 * after handover.
		 */
		FUNC40(sm);

		/*
		 * Need to reconfigure LFTs, PKEYs, and QoS on all switches
		 * when coming out of STANDBY
		 */
		sm->p_subn->need_update = 1;
	}

	sm->master_sm_found = 0;

	/*
	 * If we already have switches, then try a light sweep.
	 * Otherwise, this is probably our first discovery pass
	 * or we are connected in loopback. In both cases do a
	 * heavy sweep.
	 * Note: If we are connected in loopback we want a heavy
	 * sweep, since we will not be getting any traps if there is
	 * a lost connection.
	 */
	/*  if we are in DISCOVERING state - this means it is either in
	 *  initializing or wake up from STANDBY - run the heavy sweep */
	if (FUNC7(&sm->p_subn->sw_guid_tbl)
	    && sm->p_subn->sm_state != IB_SMINFO_STATE_DISCOVERING
	    && sm->p_subn->opt.force_heavy_sweep == FALSE
	    && sm->p_subn->force_heavy_sweep == FALSE
	    && sm->p_subn->force_reroute == FALSE
	    && sm->p_subn->subnet_initialization_error == FALSE
	    && (FUNC37(sm) == IB_SUCCESS)) {
		if (FUNC45(&sm->p_subn->p_osm->stats))
			return;
		if (!sm->p_subn->force_heavy_sweep) {
			if (sm->p_subn->opt.sa_db_dump &&
			    !FUNC23(sm->p_subn->p_osm))
				FUNC19(sm->p_subn->p_osm,
							OSM_EVENT_ID_SA_DB_DUMPED,
							NULL);
			FUNC4(sm->p_log, OSM_LOG_VERBOSE,
					"LIGHT SWEEP COMPLETE");
			return;
		}
	}

	/*
	 * Unicast cache should be invalidated when subnet re-route is
	 * requested, and when OpenSM comes out of standby state.
	 */
	if (sm->p_subn->opt.use_ucast_cache &&
	    (sm->p_subn->force_reroute || sm->p_subn->coming_out_of_standby))
		FUNC29(&sm->ucast_mgr);

	/*
	 * If we don't need to do a heavy sweep and we want to do a reroute,
	 * just reroute only.
	 */
	if (FUNC7(&sm->p_subn->sw_guid_tbl)
	    && sm->p_subn->sm_state != IB_SMINFO_STATE_DISCOVERING
	    && sm->p_subn->opt.force_heavy_sweep == FALSE
	    && sm->p_subn->force_heavy_sweep == FALSE
	    && sm->p_subn->force_reroute == TRUE
	    && sm->p_subn->subnet_initialization_error == FALSE) {
		/* Reset flag */
		sm->p_subn->force_reroute = FALSE;

		/* Re-program the switches fully */
		sm->p_subn->ignore_existing_lfts = TRUE;

		if (FUNC31(&sm->ucast_mgr)) {
			FUNC4(sm->p_log, OSM_LOG_VERBOSE,
					"REROUTE FAILED");
			return;
		}
		FUNC21(sm->p_subn->p_osm);

		/* Reset flag */
		sm->p_subn->ignore_existing_lfts = FALSE;

		if (FUNC45(&sm->p_subn->p_osm->stats))
			return;

		FUNC8(sm->p_subn->p_osm);

		if (FUNC9(sm->p_subn->p_osm))
			return;

		if (!sm->p_subn->subnet_initialization_error) {
			FUNC4(sm->p_log, OSM_LOG_VERBOSE,
					"REROUTE COMPLETE");
			FUNC19(sm->p_subn->p_osm,
						OSM_EVENT_ID_UCAST_ROUTING_DONE,
						(void *) UCAST_ROUTING_REROUTE);
			return;
		}
	}

	FUNC19(sm->p_subn->p_osm,
				OSM_EVENT_ID_HEAVY_SWEEP_START, NULL);

	/* go to heavy sweep */
repeat_discovery:

	/* First of all - unset all flags */
	sm->p_subn->force_heavy_sweep = FALSE;
	sm->p_subn->force_reroute = FALSE;
	sm->p_subn->subnet_initialization_error = FALSE;

	/* Reset tracking values in case limiting component got removed
	 * from fabric. */
	sm->p_subn->min_ca_mtu = IB_MAX_MTU;
	sm->p_subn->min_ca_rate = IB_PATH_RECORD_RATE_300_GBS;
	sm->p_subn->min_data_vls = IB_MAX_NUM_VLS - 1;
	sm->p_subn->min_sw_data_vls = IB_MAX_NUM_VLS - 1;

	/* rescan configuration updates */
	if (!config_parsed && FUNC28(sm->p_subn) < 0)
		FUNC2(sm->p_log, OSM_LOG_ERROR, "ERR 331A: "
			"osm_subn_rescan_conf_file failed\n");

	if (sm->p_subn->sm_state != IB_SMINFO_STATE_MASTER)
		sm->p_subn->need_update = 1;

	status = FUNC42(sm);
	if (status != IB_SUCCESS ||
	    FUNC45(&sm->p_subn->p_osm->stats))
		return;

	if (FUNC36(sm) == TRUE) {
		if (sm->p_subn->last_sm_port_state) {
			sm->p_subn->last_sm_port_state = 0;
			FUNC40(sm);
			FUNC17(sm->p_log, OSM_LOG_SYS, FILE_ID,
				   "SM port is down\n");
			FUNC4(sm->p_log, OSM_LOG_VERBOSE,
					"SM PORT DOWN");
		}

		/* Run the drop manager - we want to clear all records */
		FUNC11(sm);

		/* Move to DISCOVERING state */
		if (sm->p_subn->sm_state != IB_SMINFO_STATE_DISCOVERING)
			FUNC27(sm, OSM_SM_SIGNAL_DISCOVER);
		FUNC19(sm->p_subn->p_osm,
					OSM_EVENT_ID_STATE_CHANGE, NULL);
		return;
	} else {
		if (!sm->p_subn->last_sm_port_state) {
			sm->p_subn->last_sm_port_state = 1;
			FUNC17(sm->p_log, OSM_LOG_SYS, FILE_ID,
				   "SM port is up\n");
			FUNC4(sm->p_log, OSM_LOG_VERBOSE,
					"SM PORT UP");
		}
	}

	status = FUNC43(sm);
	if (status != IB_SUCCESS ||
	    FUNC45(&sm->p_subn->p_osm->stats))
		return;

	/* discovery completed - check other sm presence */
	if (sm->master_sm_found) {
		/*
		 * Call the sm_state_mgr with signal
		 * MASTER_OR_HIGHER_SM_DETECTED_DONE
		 */
		FUNC27(sm,
					 OSM_SM_SIGNAL_MASTER_OR_HIGHER_SM_DETECTED);
		FUNC4(sm->p_log, OSM_LOG_VERBOSE,
				"ENTERING STANDBY STATE");
		/* notify master SM about us */
		FUNC25(sm, 0);
		FUNC19(sm->p_subn->p_osm,
					OSM_EVENT_ID_STATE_CHANGE, NULL);
		return;
	}

	/* if new sweep requested - don't bother with the rest */
	if (sm->p_subn->force_heavy_sweep) {
		config_parsed = 0;
		goto repeat_discovery;
	}

	FUNC19(sm->p_subn->p_osm,
				OSM_EVENT_ID_HEAVY_SWEEP_DONE, NULL);

	FUNC4(sm->p_log, OSM_LOG_VERBOSE, "HEAVY SWEEP COMPLETE");

	FUNC11(sm);

	/* If we are MASTER - get the highest remote_sm, and
	 * see if it is higher than our local sm.
	 */
	if (sm->p_subn->sm_state == IB_SMINFO_STATE_MASTER) {
		p_remote_sm = FUNC35(sm);
		if (p_remote_sm != NULL) {
			/* report new ports (trap 64) before leaving MASTER */
			FUNC39(sm);

			/* need to handover the mastership
			 * to the remote sm, and move to standby */
			FUNC41(sm, p_remote_sm);
			FUNC27(sm,
						 OSM_SM_SIGNAL_HANDOVER_SENT);
			return;
		} else {
			/* We are the highest sm - check to see if there is
			 * a remote SM that is in master state. */
			p_remote_sm = FUNC34(sm);
			if (p_remote_sm != NULL) {
				/* There is a remote SM that is master.
				 * need to wait for that SM to relinquish control
				 * of its portion of the subnet. C14-60.2.1.
				 * Also - need to start polling on that SM. */
				FUNC0(sm->p_lock);
				sm->polling_sm_guid = p_remote_sm->smi.guid;
				FUNC1(sm->p_lock);
				FUNC27(sm,
							 OSM_SM_SIGNAL_WAIT_FOR_HANDOVER);
				return;
			} else if (sm->polling_sm_guid) {
				/* Stop polling SM if it's not found */
				FUNC27(sm,
							 OSM_SM_SIGNAL_POLLING_TIMEOUT);
				return;
			}
		}
	}

	/*
	 * If we are not MASTER already - this means that we are
	 * in discovery state. call osm_sm_state_mgr with signal
	 * DISCOVERY_COMPLETED
	 */
	if (sm->p_subn->sm_state == IB_SMINFO_STATE_DISCOVERING)
		FUNC27(sm, OSM_SM_SIGNAL_DISCOVERY_COMPLETED);

	FUNC22(sm->p_subn->p_osm);
	if (FUNC45(&sm->p_subn->p_osm->stats))
		return;

	FUNC20(sm->p_subn->p_osm);

	/* try to restore SA DB (this should be before lid_mgr
	   because we may want to disable clients reregistration
	   when SA DB is restored) */
	FUNC24(sm->p_subn->p_osm);

	if (FUNC45(&sm->p_subn->p_osm->stats))
		return;

	FUNC4(sm->p_log, OSM_LOG_VERBOSE,
			"PKEY setup completed - STARTING SM LID CONFIG");

	FUNC14(&sm->lid_mgr);
	if (FUNC45(&sm->p_subn->p_osm->stats))
		return;

	FUNC4(sm->p_log, OSM_LOG_VERBOSE,
			"SM LID ASSIGNMENT COMPLETE - STARTING SUBNET LID CONFIG");
	FUNC38(sm);

	FUNC15(&sm->lid_mgr);
	if (FUNC45(&sm->p_subn->p_osm->stats))
		return;

	/* At this point we need to check the consistency of
	 * the port_lid_tbl under the subnet. There might be
	 * errors in it if PortInfo Set requests didn't reach
	 * their destination. */
	FUNC32(sm);

	FUNC4(sm->p_log, OSM_LOG_VERBOSE,
			"LID ASSIGNMENT COMPLETE - STARTING SWITCH TABLE CONFIG");

	/*
	 * Proceed with unicast forwarding table configuration; if it fails
	 * return early to wait for a trap or the next sweep interval.
	 */

	if (!sm->ucast_mgr.cache_valid ||
	    FUNC30(&sm->ucast_mgr)) {
		if (FUNC31(&sm->ucast_mgr)) {
			FUNC29(&sm->ucast_mgr);
			return;
		}
	}

	FUNC21(sm->p_subn->p_osm);

	if (FUNC45(&sm->p_subn->p_osm->stats))
		return;

	/* We are done setting all LFTs so clear the ignore existing.
	 * From now on, as long as we are still master, we want to
	 * take into account these lfts. */
	sm->p_subn->ignore_existing_lfts = FALSE;

	FUNC4(sm->p_log, OSM_LOG_VERBOSE,
			"SWITCHES CONFIGURED FOR UNICAST");
	FUNC19(sm->p_subn->p_osm,
				OSM_EVENT_ID_UCAST_ROUTING_DONE,
				(void *) UCAST_ROUTING_HEAVY_SWEEP);

	if (!sm->p_subn->opt.disable_multicast) {
		FUNC18(sm, TRUE);
		if (FUNC45(&sm->p_subn->p_osm->stats))
			return;
		FUNC4(sm->p_log, OSM_LOG_VERBOSE,
				"SWITCHES CONFIGURED FOR MULTICAST");
	}

	FUNC13(sm);
	if (FUNC45(&sm->p_subn->p_osm->stats))
		return;
	FUNC4(sm->p_log, OSM_LOG_VERBOSE, "ALIAS GUIDS CONFIGURED");

	/*
	 * The LINK_PORTS state is required since we cannot count on
	 * the port state change MADs to succeed. This is an artifact
	 * of the spec defining state change from state X to state X
	 * as an error. The hardware then is not required to process
	 * other parameters provided by the Set(PortInfo) Packet.
	 */

	FUNC16(sm, IB_LINK_NO_CHANGE);
	if (FUNC45(&sm->p_subn->p_osm->stats))
		return;

	FUNC4(sm->p_log, OSM_LOG_VERBOSE,
			"LINKS PORTS CONFIGURED - SET LINKS TO ARMED STATE");

	FUNC16(sm, IB_LINK_ARMED);
	if (FUNC45(&sm->p_subn->p_osm->stats))
		return;

	FUNC4(sm->p_log, OSM_LOG_VERBOSE,
			"LINKS ARMED - SET LINKS TO ACTIVE STATE");

	FUNC16(sm, IB_LINK_ACTIVE);
	if (FUNC45(&sm->p_subn->p_osm->stats))
		return;

	/*
	 * The sweep completed!
	 */

	/* Now do GSI configuration */

	FUNC8(sm->p_subn->p_osm);

	if (FUNC9(sm->p_subn->p_osm))
		return;

	/*
	 * Send trap 64 on newly discovered endports
	 */
	FUNC39(sm);

	/* check switch lft buffers assignments */
	FUNC6(&sm->p_subn->sw_guid_tbl, check_switch_lft,
			   sm->p_log);

	/* in any case we zero this flag */
	sm->p_subn->coming_out_of_standby = FALSE;
	sm->p_subn->first_time_master_sweep = FALSE;

	/* If there were errors - then the subnet is not really up */
	if (sm->p_subn->subnet_initialization_error == TRUE) {
		FUNC17(sm->p_log, OSM_LOG_SYS, FILE_ID,
			   "Errors during initialization\n");
		FUNC4(sm->p_log, OSM_LOG_ERROR,
				"ERRORS DURING INITIALIZATION");
	} else {
		sm->p_subn->need_update = 0;
		FUNC12(sm->p_subn->p_osm);
		FUNC44(sm);

		if ((FUNC3(sm->p_log, OSM_LOG_VERBOSE) ||
		    sm->p_subn->opt.sa_db_dump) &&
		    !FUNC23(sm->p_subn->p_osm))
			FUNC19(sm->p_subn->p_osm,
						OSM_EVENT_ID_SA_DB_DUMPED,
						NULL);
	}

	/*
	 * Finally signal the subnet up event
	 */
	FUNC5(&sm->subnet_up_event);

	/* if we got a signal to force heavy sweep or errors
	 * in the middle of the sweep - try another sweep. */
	if (sm->p_subn->force_heavy_sweep)
		FUNC26(sm, OSM_SIGNAL_SWEEP);

	/* Write a new copy of our persistent guid2mkey database */
	FUNC10(sm->p_subn->p_g2m, sm->p_subn->opt.fsync_high_avail_files);
	FUNC10(sm->p_subn->p_neighbor,
		     sm->p_subn->opt.fsync_high_avail_files);

	FUNC19(sm->p_subn->p_osm, OSM_EVENT_ID_SUBNET_UP,
				NULL);
}