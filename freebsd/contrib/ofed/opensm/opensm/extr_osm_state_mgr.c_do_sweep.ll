; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_state_mgr.c_do_sweep.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_state_mgr.c_do_sweep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_47__ = type { %struct.TYPE_44__*, i32, i32, %struct.TYPE_43__, i32, i64, i32, i64 }
%struct.TYPE_44__ = type { i64, i64, i64, i32, i64, i32, %struct.TYPE_45__*, %struct.TYPE_46__, i32, i32, i64, i64, i32, i64, i8*, i8*, i32, i32, i64 }
%struct.TYPE_45__ = type { i32 }
%struct.TYPE_46__ = type { i64, i32, i64, i32, i64 }
%struct.TYPE_43__ = type { i32 }
%struct.TYPE_48__ = type { %struct.TYPE_42__ }
%struct.TYPE_42__ = type { i64 }

@TRUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@OSM_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"ERR 331A: osm_subn_rescan_conf_file failed\0A\00", align 1
@IB_SMINFO_STATE_MASTER = common dso_local global i64 0, align 8
@IB_SMINFO_STATE_DISCOVERING = common dso_local global i64 0, align 8
@IB_SUCCESS = common dso_local global i64 0, align 8
@OSM_EVENT_ID_SA_DB_DUMPED = common dso_local global i32 0, align 4
@OSM_LOG_VERBOSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"LIGHT SWEEP COMPLETE\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"REROUTE FAILED\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"REROUTE COMPLETE\00", align 1
@OSM_EVENT_ID_UCAST_ROUTING_DONE = common dso_local global i32 0, align 4
@UCAST_ROUTING_REROUTE = common dso_local global i64 0, align 8
@OSM_EVENT_ID_HEAVY_SWEEP_START = common dso_local global i32 0, align 4
@IB_MAX_MTU = common dso_local global i32 0, align 4
@IB_PATH_RECORD_RATE_300_GBS = common dso_local global i32 0, align 4
@IB_MAX_NUM_VLS = common dso_local global i8* null, align 8
@OSM_LOG_SYS = common dso_local global i32 0, align 4
@FILE_ID = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"SM port is down\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"SM PORT DOWN\00", align 1
@OSM_SM_SIGNAL_DISCOVER = common dso_local global i32 0, align 4
@OSM_EVENT_ID_STATE_CHANGE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [15 x i8] c"SM port is up\0A\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"SM PORT UP\00", align 1
@OSM_SM_SIGNAL_MASTER_OR_HIGHER_SM_DETECTED = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [23 x i8] c"ENTERING STANDBY STATE\00", align 1
@OSM_EVENT_ID_HEAVY_SWEEP_DONE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [21 x i8] c"HEAVY SWEEP COMPLETE\00", align 1
@OSM_SM_SIGNAL_HANDOVER_SENT = common dso_local global i32 0, align 4
@OSM_SM_SIGNAL_WAIT_FOR_HANDOVER = common dso_local global i32 0, align 4
@OSM_SM_SIGNAL_POLLING_TIMEOUT = common dso_local global i32 0, align 4
@OSM_SM_SIGNAL_DISCOVERY_COMPLETED = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [46 x i8] c"PKEY setup completed - STARTING SM LID CONFIG\00", align 1
@.str.11 = private unnamed_addr constant [56 x i8] c"SM LID ASSIGNMENT COMPLETE - STARTING SUBNET LID CONFIG\00", align 1
@.str.12 = private unnamed_addr constant [55 x i8] c"LID ASSIGNMENT COMPLETE - STARTING SWITCH TABLE CONFIG\00", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c"SWITCHES CONFIGURED FOR UNICAST\00", align 1
@UCAST_ROUTING_HEAVY_SWEEP = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [34 x i8] c"SWITCHES CONFIGURED FOR MULTICAST\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"ALIAS GUIDS CONFIGURED\00", align 1
@IB_LINK_NO_CHANGE = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [50 x i8] c"LINKS PORTS CONFIGURED - SET LINKS TO ARMED STATE\00", align 1
@IB_LINK_ARMED = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [40 x i8] c"LINKS ARMED - SET LINKS TO ACTIVE STATE\00", align 1
@IB_LINK_ACTIVE = common dso_local global i32 0, align 4
@check_switch_lft = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [30 x i8] c"Errors during initialization\0A\00", align 1
@.str.19 = private unnamed_addr constant [29 x i8] c"ERRORS DURING INITIALIZATION\00", align 1
@OSM_SIGNAL_SWEEP = common dso_local global i32 0, align 4
@OSM_EVENT_ID_SUBNET_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_47__*)* @do_sweep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_sweep(%struct.TYPE_47__* %0) #0 {
  %2 = alloca %struct.TYPE_47__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_48__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_47__* %0, %struct.TYPE_47__** %2, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_44__*, %struct.TYPE_44__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %8, i32 0, i32 18
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %33

12:                                               ; preds = %1
  %13 = load i64, i64* @TRUE, align 8
  %14 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_44__*, %struct.TYPE_44__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %16, i32 0, i32 0
  store i64 %13, i64* %17, align 8
  %18 = load i64, i64* @TRUE, align 8
  %19 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_44__*, %struct.TYPE_44__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %21, i32 0, i32 11
  store i64 %18, i64* %22, align 8
  %23 = load i64, i64* @TRUE, align 8
  %24 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_44__*, %struct.TYPE_44__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %26, i32 0, i32 10
  store i64 %23, i64* %27, align 8
  %28 = load i64, i64* @FALSE, align 8
  %29 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_44__*, %struct.TYPE_44__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %31, i32 0, i32 18
  store i64 %28, i64* %32, align 8
  br label %33

33:                                               ; preds = %12, %1
  %34 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_44__*, %struct.TYPE_44__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %33
  %41 = load i64, i64* @TRUE, align 8
  %42 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_44__*, %struct.TYPE_44__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %44, i32 0, i32 0
  store i64 %41, i64* %45, align 8
  br label %46

46:                                               ; preds = %40, %33
  %47 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_44__*, %struct.TYPE_44__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %67

53:                                               ; preds = %46
  %54 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_44__*, %struct.TYPE_44__** %55, align 8
  %57 = call i64 @osm_subn_rescan_conf_files(%struct.TYPE_44__* %56)
  %58 = icmp slt i64 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %53
  %60 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @OSM_LOG_ERROR, align 4
  %64 = call i32 @OSM_LOG(i32 %62, i32 %63, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %66

65:                                               ; preds = %53
  store i32 1, i32* %5, align 4
  br label %66

66:                                               ; preds = %65, %59
  br label %67

67:                                               ; preds = %66, %46
  %68 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_44__*, %struct.TYPE_44__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @IB_SMINFO_STATE_MASTER, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %84

75:                                               ; preds = %67
  %76 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_44__*, %struct.TYPE_44__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @IB_SMINFO_STATE_DISCOVERING, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %75
  br label %1030

84:                                               ; preds = %75, %67
  %85 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_44__*, %struct.TYPE_44__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %87, i32 0, i32 11
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %100

91:                                               ; preds = %84
  %92 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %93 = call i32 @state_mgr_clean_known_lids(%struct.TYPE_47__* %92)
  %94 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %95 = call i32 @state_mgr_sa_clean(%struct.TYPE_47__* %94)
  %96 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_44__*, %struct.TYPE_44__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %98, i32 0, i32 3
  store i32 1, i32* %99, align 8
  br label %100

100:                                              ; preds = %91, %84
  %101 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %101, i32 0, i32 7
  store i64 0, i64* %102, align 8
  %103 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_44__*, %struct.TYPE_44__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %105, i32 0, i32 12
  %107 = call i64 @cl_qmap_count(i32* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %203

109:                                              ; preds = %100
  %110 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %111 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_44__*, %struct.TYPE_44__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @IB_SMINFO_STATE_DISCOVERING, align 8
  %116 = icmp ne i64 %114, %115
  br i1 %116, label %117, label %203

117:                                              ; preds = %109
  %118 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %119 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_44__*, %struct.TYPE_44__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %120, i32 0, i32 7
  %122 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @FALSE, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %203

126:                                              ; preds = %117
  %127 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %128 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_44__*, %struct.TYPE_44__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @FALSE, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %203

134:                                              ; preds = %126
  %135 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %136 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_44__*, %struct.TYPE_44__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %137, i32 0, i32 4
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @FALSE, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %203

142:                                              ; preds = %134
  %143 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %144 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %143, i32 0, i32 0
  %145 = load %struct.TYPE_44__*, %struct.TYPE_44__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @FALSE, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %150, label %203

150:                                              ; preds = %142
  %151 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %152 = call i64 @state_mgr_light_sweep_start(%struct.TYPE_47__* %151)
  %153 = load i64, i64* @IB_SUCCESS, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %155, label %203

155:                                              ; preds = %150
  %156 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %157 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %156, i32 0, i32 0
  %158 = load %struct.TYPE_44__*, %struct.TYPE_44__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %158, i32 0, i32 6
  %160 = load %struct.TYPE_45__*, %struct.TYPE_45__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %160, i32 0, i32 0
  %162 = call i64 @wait_for_pending_transactions(i32* %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %155
  br label %1030

165:                                              ; preds = %155
  %166 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %167 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %166, i32 0, i32 0
  %168 = load %struct.TYPE_44__*, %struct.TYPE_44__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %202, label %172

172:                                              ; preds = %165
  %173 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %174 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %173, i32 0, i32 0
  %175 = load %struct.TYPE_44__*, %struct.TYPE_44__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %175, i32 0, i32 7
  %177 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %176, i32 0, i32 2
  %178 = load i64, i64* %177, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %196

180:                                              ; preds = %172
  %181 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %182 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %181, i32 0, i32 0
  %183 = load %struct.TYPE_44__*, %struct.TYPE_44__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %183, i32 0, i32 6
  %185 = load %struct.TYPE_45__*, %struct.TYPE_45__** %184, align 8
  %186 = call i32 @osm_sa_db_file_dump(%struct.TYPE_45__* %185)
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %196, label %188

188:                                              ; preds = %180
  %189 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %190 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %189, i32 0, i32 0
  %191 = load %struct.TYPE_44__*, %struct.TYPE_44__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %191, i32 0, i32 6
  %193 = load %struct.TYPE_45__*, %struct.TYPE_45__** %192, align 8
  %194 = load i32, i32* @OSM_EVENT_ID_SA_DB_DUMPED, align 4
  %195 = call i32 @osm_opensm_report_event(%struct.TYPE_45__* %193, i32 %194, i8* null)
  br label %196

196:                                              ; preds = %188, %180, %172
  %197 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %198 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* @OSM_LOG_VERBOSE, align 4
  %201 = call i32 @OSM_LOG_MSG_BOX(i32 %199, i32 %200, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %1030

202:                                              ; preds = %165
  br label %203

203:                                              ; preds = %202, %150, %142, %134, %126, %117, %109, %100
  %204 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %205 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %204, i32 0, i32 0
  %206 = load %struct.TYPE_44__*, %struct.TYPE_44__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %206, i32 0, i32 7
  %208 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %207, i32 0, i32 4
  %209 = load i64, i64* %208, align 8
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %229

211:                                              ; preds = %203
  %212 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %213 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %212, i32 0, i32 0
  %214 = load %struct.TYPE_44__*, %struct.TYPE_44__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %214, i32 0, i32 4
  %216 = load i64, i64* %215, align 8
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %225, label %218

218:                                              ; preds = %211
  %219 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %220 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %219, i32 0, i32 0
  %221 = load %struct.TYPE_44__*, %struct.TYPE_44__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %221, i32 0, i32 11
  %223 = load i64, i64* %222, align 8
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %229

225:                                              ; preds = %218, %211
  %226 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %227 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %226, i32 0, i32 3
  %228 = call i32 @osm_ucast_cache_invalidate(%struct.TYPE_43__* %227)
  br label %229

229:                                              ; preds = %225, %218, %203
  %230 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %231 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %230, i32 0, i32 0
  %232 = load %struct.TYPE_44__*, %struct.TYPE_44__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %232, i32 0, i32 12
  %234 = call i64 @cl_qmap_count(i32* %233)
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %357

236:                                              ; preds = %229
  %237 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %238 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %237, i32 0, i32 0
  %239 = load %struct.TYPE_44__*, %struct.TYPE_44__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %239, i32 0, i32 2
  %241 = load i64, i64* %240, align 8
  %242 = load i64, i64* @IB_SMINFO_STATE_DISCOVERING, align 8
  %243 = icmp ne i64 %241, %242
  br i1 %243, label %244, label %357

244:                                              ; preds = %236
  %245 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %246 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %245, i32 0, i32 0
  %247 = load %struct.TYPE_44__*, %struct.TYPE_44__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %247, i32 0, i32 7
  %249 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %248, i32 0, i32 0
  %250 = load i64, i64* %249, align 8
  %251 = load i64, i64* @FALSE, align 8
  %252 = icmp eq i64 %250, %251
  br i1 %252, label %253, label %357

253:                                              ; preds = %244
  %254 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %255 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %254, i32 0, i32 0
  %256 = load %struct.TYPE_44__*, %struct.TYPE_44__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %256, i32 0, i32 0
  %258 = load i64, i64* %257, align 8
  %259 = load i64, i64* @FALSE, align 8
  %260 = icmp eq i64 %258, %259
  br i1 %260, label %261, label %357

261:                                              ; preds = %253
  %262 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %263 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %262, i32 0, i32 0
  %264 = load %struct.TYPE_44__*, %struct.TYPE_44__** %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %264, i32 0, i32 4
  %266 = load i64, i64* %265, align 8
  %267 = load i64, i64* @TRUE, align 8
  %268 = icmp eq i64 %266, %267
  br i1 %268, label %269, label %357

269:                                              ; preds = %261
  %270 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %271 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %270, i32 0, i32 0
  %272 = load %struct.TYPE_44__*, %struct.TYPE_44__** %271, align 8
  %273 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %272, i32 0, i32 1
  %274 = load i64, i64* %273, align 8
  %275 = load i64, i64* @FALSE, align 8
  %276 = icmp eq i64 %274, %275
  br i1 %276, label %277, label %357

277:                                              ; preds = %269
  %278 = load i64, i64* @FALSE, align 8
  %279 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %280 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %279, i32 0, i32 0
  %281 = load %struct.TYPE_44__*, %struct.TYPE_44__** %280, align 8
  %282 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %281, i32 0, i32 4
  store i64 %278, i64* %282, align 8
  %283 = load i64, i64* @TRUE, align 8
  %284 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %285 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %284, i32 0, i32 0
  %286 = load %struct.TYPE_44__*, %struct.TYPE_44__** %285, align 8
  %287 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %286, i32 0, i32 13
  store i64 %283, i64* %287, align 8
  %288 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %289 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %288, i32 0, i32 3
  %290 = call i64 @osm_ucast_mgr_process(%struct.TYPE_43__* %289)
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %292, label %298

292:                                              ; preds = %277
  %293 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %294 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %293, i32 0, i32 2
  %295 = load i32, i32* %294, align 4
  %296 = load i32, i32* @OSM_LOG_VERBOSE, align 4
  %297 = call i32 @OSM_LOG_MSG_BOX(i32 %295, i32 %296, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %1030

298:                                              ; preds = %277
  %299 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %300 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %299, i32 0, i32 0
  %301 = load %struct.TYPE_44__*, %struct.TYPE_44__** %300, align 8
  %302 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %301, i32 0, i32 6
  %303 = load %struct.TYPE_45__*, %struct.TYPE_45__** %302, align 8
  %304 = call i32 @osm_qos_setup(%struct.TYPE_45__* %303)
  %305 = load i64, i64* @FALSE, align 8
  %306 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %307 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %306, i32 0, i32 0
  %308 = load %struct.TYPE_44__*, %struct.TYPE_44__** %307, align 8
  %309 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %308, i32 0, i32 13
  store i64 %305, i64* %309, align 8
  %310 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %311 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %310, i32 0, i32 0
  %312 = load %struct.TYPE_44__*, %struct.TYPE_44__** %311, align 8
  %313 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %312, i32 0, i32 6
  %314 = load %struct.TYPE_45__*, %struct.TYPE_45__** %313, align 8
  %315 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %314, i32 0, i32 0
  %316 = call i64 @wait_for_pending_transactions(i32* %315)
  %317 = icmp ne i64 %316, 0
  br i1 %317, label %318, label %319

318:                                              ; preds = %298
  br label %1030

319:                                              ; preds = %298
  %320 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %321 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %320, i32 0, i32 0
  %322 = load %struct.TYPE_44__*, %struct.TYPE_44__** %321, align 8
  %323 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %322, i32 0, i32 6
  %324 = load %struct.TYPE_45__*, %struct.TYPE_45__** %323, align 8
  %325 = call i32 @osm_congestion_control_setup(%struct.TYPE_45__* %324)
  %326 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %327 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %326, i32 0, i32 0
  %328 = load %struct.TYPE_44__*, %struct.TYPE_44__** %327, align 8
  %329 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %328, i32 0, i32 6
  %330 = load %struct.TYPE_45__*, %struct.TYPE_45__** %329, align 8
  %331 = call i64 @osm_congestion_control_wait_pending_transactions(%struct.TYPE_45__* %330)
  %332 = icmp ne i64 %331, 0
  br i1 %332, label %333, label %334

333:                                              ; preds = %319
  br label %1030

334:                                              ; preds = %319
  %335 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %336 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %335, i32 0, i32 0
  %337 = load %struct.TYPE_44__*, %struct.TYPE_44__** %336, align 8
  %338 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %337, i32 0, i32 1
  %339 = load i64, i64* %338, align 8
  %340 = icmp ne i64 %339, 0
  br i1 %340, label %356, label %341

341:                                              ; preds = %334
  %342 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %343 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %342, i32 0, i32 2
  %344 = load i32, i32* %343, align 4
  %345 = load i32, i32* @OSM_LOG_VERBOSE, align 4
  %346 = call i32 @OSM_LOG_MSG_BOX(i32 %344, i32 %345, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %347 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %348 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %347, i32 0, i32 0
  %349 = load %struct.TYPE_44__*, %struct.TYPE_44__** %348, align 8
  %350 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %349, i32 0, i32 6
  %351 = load %struct.TYPE_45__*, %struct.TYPE_45__** %350, align 8
  %352 = load i32, i32* @OSM_EVENT_ID_UCAST_ROUTING_DONE, align 4
  %353 = load i64, i64* @UCAST_ROUTING_REROUTE, align 8
  %354 = inttoptr i64 %353 to i8*
  %355 = call i32 @osm_opensm_report_event(%struct.TYPE_45__* %351, i32 %352, i8* %354)
  br label %1030

356:                                              ; preds = %334
  br label %357

357:                                              ; preds = %356, %269, %261, %253, %244, %236, %229
  %358 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %359 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %358, i32 0, i32 0
  %360 = load %struct.TYPE_44__*, %struct.TYPE_44__** %359, align 8
  %361 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %360, i32 0, i32 6
  %362 = load %struct.TYPE_45__*, %struct.TYPE_45__** %361, align 8
  %363 = load i32, i32* @OSM_EVENT_ID_HEAVY_SWEEP_START, align 4
  %364 = call i32 @osm_opensm_report_event(%struct.TYPE_45__* %362, i32 %363, i8* null)
  br label %365

365:                                              ; preds = %568, %357
  %366 = load i64, i64* @FALSE, align 8
  %367 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %368 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %367, i32 0, i32 0
  %369 = load %struct.TYPE_44__*, %struct.TYPE_44__** %368, align 8
  %370 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %369, i32 0, i32 0
  store i64 %366, i64* %370, align 8
  %371 = load i64, i64* @FALSE, align 8
  %372 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %373 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %372, i32 0, i32 0
  %374 = load %struct.TYPE_44__*, %struct.TYPE_44__** %373, align 8
  %375 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %374, i32 0, i32 4
  store i64 %371, i64* %375, align 8
  %376 = load i64, i64* @FALSE, align 8
  %377 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %378 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %377, i32 0, i32 0
  %379 = load %struct.TYPE_44__*, %struct.TYPE_44__** %378, align 8
  %380 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %379, i32 0, i32 1
  store i64 %376, i64* %380, align 8
  %381 = load i32, i32* @IB_MAX_MTU, align 4
  %382 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %383 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %382, i32 0, i32 0
  %384 = load %struct.TYPE_44__*, %struct.TYPE_44__** %383, align 8
  %385 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %384, i32 0, i32 17
  store i32 %381, i32* %385, align 4
  %386 = load i32, i32* @IB_PATH_RECORD_RATE_300_GBS, align 4
  %387 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %388 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %387, i32 0, i32 0
  %389 = load %struct.TYPE_44__*, %struct.TYPE_44__** %388, align 8
  %390 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %389, i32 0, i32 16
  store i32 %386, i32* %390, align 8
  %391 = load i8*, i8** @IB_MAX_NUM_VLS, align 8
  %392 = getelementptr i8, i8* %391, i64 -1
  %393 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %394 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %393, i32 0, i32 0
  %395 = load %struct.TYPE_44__*, %struct.TYPE_44__** %394, align 8
  %396 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %395, i32 0, i32 15
  store i8* %392, i8** %396, align 8
  %397 = load i8*, i8** @IB_MAX_NUM_VLS, align 8
  %398 = getelementptr i8, i8* %397, i64 -1
  %399 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %400 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %399, i32 0, i32 0
  %401 = load %struct.TYPE_44__*, %struct.TYPE_44__** %400, align 8
  %402 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %401, i32 0, i32 14
  store i8* %398, i8** %402, align 8
  %403 = load i32, i32* %5, align 4
  %404 = icmp ne i32 %403, 0
  br i1 %404, label %417, label %405

405:                                              ; preds = %365
  %406 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %407 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %406, i32 0, i32 0
  %408 = load %struct.TYPE_44__*, %struct.TYPE_44__** %407, align 8
  %409 = call i64 @osm_subn_rescan_conf_files(%struct.TYPE_44__* %408)
  %410 = icmp slt i64 %409, 0
  br i1 %410, label %411, label %417

411:                                              ; preds = %405
  %412 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %413 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %412, i32 0, i32 2
  %414 = load i32, i32* %413, align 4
  %415 = load i32, i32* @OSM_LOG_ERROR, align 4
  %416 = call i32 @OSM_LOG(i32 %414, i32 %415, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %417

417:                                              ; preds = %411, %405, %365
  %418 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %419 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %418, i32 0, i32 0
  %420 = load %struct.TYPE_44__*, %struct.TYPE_44__** %419, align 8
  %421 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %420, i32 0, i32 2
  %422 = load i64, i64* %421, align 8
  %423 = load i64, i64* @IB_SMINFO_STATE_MASTER, align 8
  %424 = icmp ne i64 %422, %423
  br i1 %424, label %425, label %430

425:                                              ; preds = %417
  %426 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %427 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %426, i32 0, i32 0
  %428 = load %struct.TYPE_44__*, %struct.TYPE_44__** %427, align 8
  %429 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %428, i32 0, i32 3
  store i32 1, i32* %429, align 8
  br label %430

430:                                              ; preds = %425, %417
  %431 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %432 = call i64 @state_mgr_sweep_hop_0(%struct.TYPE_47__* %431)
  store i64 %432, i64* %3, align 8
  %433 = load i64, i64* %3, align 8
  %434 = load i64, i64* @IB_SUCCESS, align 8
  %435 = icmp ne i64 %433, %434
  br i1 %435, label %445, label %436

436:                                              ; preds = %430
  %437 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %438 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %437, i32 0, i32 0
  %439 = load %struct.TYPE_44__*, %struct.TYPE_44__** %438, align 8
  %440 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %439, i32 0, i32 6
  %441 = load %struct.TYPE_45__*, %struct.TYPE_45__** %440, align 8
  %442 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %441, i32 0, i32 0
  %443 = call i64 @wait_for_pending_transactions(i32* %442)
  %444 = icmp ne i64 %443, 0
  br i1 %444, label %445, label %446

445:                                              ; preds = %436, %430
  br label %1030

446:                                              ; preds = %436
  %447 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %448 = call i64 @state_mgr_is_sm_port_down(%struct.TYPE_47__* %447)
  %449 = load i64, i64* @TRUE, align 8
  %450 = icmp eq i64 %448, %449
  br i1 %450, label %451, label %498

451:                                              ; preds = %446
  %452 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %453 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %452, i32 0, i32 0
  %454 = load %struct.TYPE_44__*, %struct.TYPE_44__** %453, align 8
  %455 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %454, i32 0, i32 5
  %456 = load i32, i32* %455, align 8
  %457 = icmp ne i32 %456, 0
  br i1 %457, label %458, label %476

458:                                              ; preds = %451
  %459 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %460 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %459, i32 0, i32 0
  %461 = load %struct.TYPE_44__*, %struct.TYPE_44__** %460, align 8
  %462 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %461, i32 0, i32 5
  store i32 0, i32* %462, align 8
  %463 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %464 = call i32 @state_mgr_sa_clean(%struct.TYPE_47__* %463)
  %465 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %466 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %465, i32 0, i32 2
  %467 = load i32, i32* %466, align 4
  %468 = load i32, i32* @OSM_LOG_SYS, align 4
  %469 = load i32, i32* @FILE_ID, align 4
  %470 = call i32 @osm_log_v2(i32 %467, i32 %468, i32 %469, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %471 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %472 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %471, i32 0, i32 2
  %473 = load i32, i32* %472, align 4
  %474 = load i32, i32* @OSM_LOG_VERBOSE, align 4
  %475 = call i32 @OSM_LOG_MSG_BOX(i32 %473, i32 %474, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  br label %476

476:                                              ; preds = %458, %451
  %477 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %478 = call i32 @osm_drop_mgr_process(%struct.TYPE_47__* %477)
  %479 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %480 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %479, i32 0, i32 0
  %481 = load %struct.TYPE_44__*, %struct.TYPE_44__** %480, align 8
  %482 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %481, i32 0, i32 2
  %483 = load i64, i64* %482, align 8
  %484 = load i64, i64* @IB_SMINFO_STATE_DISCOVERING, align 8
  %485 = icmp ne i64 %483, %484
  br i1 %485, label %486, label %490

486:                                              ; preds = %476
  %487 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %488 = load i32, i32* @OSM_SM_SIGNAL_DISCOVER, align 4
  %489 = call i32 @osm_sm_state_mgr_process(%struct.TYPE_47__* %487, i32 %488)
  br label %490

490:                                              ; preds = %486, %476
  %491 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %492 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %491, i32 0, i32 0
  %493 = load %struct.TYPE_44__*, %struct.TYPE_44__** %492, align 8
  %494 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %493, i32 0, i32 6
  %495 = load %struct.TYPE_45__*, %struct.TYPE_45__** %494, align 8
  %496 = load i32, i32* @OSM_EVENT_ID_STATE_CHANGE, align 4
  %497 = call i32 @osm_opensm_report_event(%struct.TYPE_45__* %495, i32 %496, i8* null)
  br label %1030

498:                                              ; preds = %446
  %499 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %500 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %499, i32 0, i32 0
  %501 = load %struct.TYPE_44__*, %struct.TYPE_44__** %500, align 8
  %502 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %501, i32 0, i32 5
  %503 = load i32, i32* %502, align 8
  %504 = icmp ne i32 %503, 0
  br i1 %504, label %521, label %505

505:                                              ; preds = %498
  %506 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %507 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %506, i32 0, i32 0
  %508 = load %struct.TYPE_44__*, %struct.TYPE_44__** %507, align 8
  %509 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %508, i32 0, i32 5
  store i32 1, i32* %509, align 8
  %510 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %511 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %510, i32 0, i32 2
  %512 = load i32, i32* %511, align 4
  %513 = load i32, i32* @OSM_LOG_SYS, align 4
  %514 = load i32, i32* @FILE_ID, align 4
  %515 = call i32 @osm_log_v2(i32 %512, i32 %513, i32 %514, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %516 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %517 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %516, i32 0, i32 2
  %518 = load i32, i32* %517, align 4
  %519 = load i32, i32* @OSM_LOG_VERBOSE, align 4
  %520 = call i32 @OSM_LOG_MSG_BOX(i32 %518, i32 %519, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  br label %521

521:                                              ; preds = %505, %498
  br label %522

522:                                              ; preds = %521
  %523 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %524 = call i64 @state_mgr_sweep_hop_1(%struct.TYPE_47__* %523)
  store i64 %524, i64* %3, align 8
  %525 = load i64, i64* %3, align 8
  %526 = load i64, i64* @IB_SUCCESS, align 8
  %527 = icmp ne i64 %525, %526
  br i1 %527, label %537, label %528

528:                                              ; preds = %522
  %529 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %530 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %529, i32 0, i32 0
  %531 = load %struct.TYPE_44__*, %struct.TYPE_44__** %530, align 8
  %532 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %531, i32 0, i32 6
  %533 = load %struct.TYPE_45__*, %struct.TYPE_45__** %532, align 8
  %534 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %533, i32 0, i32 0
  %535 = call i64 @wait_for_pending_transactions(i32* %534)
  %536 = icmp ne i64 %535, 0
  br i1 %536, label %537, label %538

537:                                              ; preds = %528, %522
  br label %1030

538:                                              ; preds = %528
  %539 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %540 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %539, i32 0, i32 7
  %541 = load i64, i64* %540, align 8
  %542 = icmp ne i64 %541, 0
  br i1 %542, label %543, label %561

543:                                              ; preds = %538
  %544 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %545 = load i32, i32* @OSM_SM_SIGNAL_MASTER_OR_HIGHER_SM_DETECTED, align 4
  %546 = call i32 @osm_sm_state_mgr_process(%struct.TYPE_47__* %544, i32 %545)
  %547 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %548 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %547, i32 0, i32 2
  %549 = load i32, i32* %548, align 4
  %550 = load i32, i32* @OSM_LOG_VERBOSE, align 4
  %551 = call i32 @OSM_LOG_MSG_BOX(i32 %549, i32 %550, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0))
  %552 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %553 = call i32 @osm_send_trap144(%struct.TYPE_47__* %552, i32 0)
  %554 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %555 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %554, i32 0, i32 0
  %556 = load %struct.TYPE_44__*, %struct.TYPE_44__** %555, align 8
  %557 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %556, i32 0, i32 6
  %558 = load %struct.TYPE_45__*, %struct.TYPE_45__** %557, align 8
  %559 = load i32, i32* @OSM_EVENT_ID_STATE_CHANGE, align 4
  %560 = call i32 @osm_opensm_report_event(%struct.TYPE_45__* %558, i32 %559, i8* null)
  br label %1030

561:                                              ; preds = %538
  %562 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %563 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %562, i32 0, i32 0
  %564 = load %struct.TYPE_44__*, %struct.TYPE_44__** %563, align 8
  %565 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %564, i32 0, i32 0
  %566 = load i64, i64* %565, align 8
  %567 = icmp ne i64 %566, 0
  br i1 %567, label %568, label %569

568:                                              ; preds = %561
  store i32 0, i32* %5, align 4
  br label %365

569:                                              ; preds = %561
  %570 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %571 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %570, i32 0, i32 0
  %572 = load %struct.TYPE_44__*, %struct.TYPE_44__** %571, align 8
  %573 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %572, i32 0, i32 6
  %574 = load %struct.TYPE_45__*, %struct.TYPE_45__** %573, align 8
  %575 = load i32, i32* @OSM_EVENT_ID_HEAVY_SWEEP_DONE, align 4
  %576 = call i32 @osm_opensm_report_event(%struct.TYPE_45__* %574, i32 %575, i8* null)
  %577 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %578 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %577, i32 0, i32 2
  %579 = load i32, i32* %578, align 4
  %580 = load i32, i32* @OSM_LOG_VERBOSE, align 4
  %581 = call i32 @OSM_LOG_MSG_BOX(i32 %579, i32 %580, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0))
  %582 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %583 = call i32 @osm_drop_mgr_process(%struct.TYPE_47__* %582)
  %584 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %585 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %584, i32 0, i32 0
  %586 = load %struct.TYPE_44__*, %struct.TYPE_44__** %585, align 8
  %587 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %586, i32 0, i32 2
  %588 = load i64, i64* %587, align 8
  %589 = load i64, i64* @IB_SMINFO_STATE_MASTER, align 8
  %590 = icmp eq i64 %588, %589
  br i1 %590, label %591, label %640

591:                                              ; preds = %569
  %592 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %593 = call %struct.TYPE_48__* @state_mgr_get_highest_sm(%struct.TYPE_47__* %592)
  store %struct.TYPE_48__* %593, %struct.TYPE_48__** %4, align 8
  %594 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %595 = icmp ne %struct.TYPE_48__* %594, null
  br i1 %595, label %596, label %605

596:                                              ; preds = %591
  %597 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %598 = call i32 @state_mgr_report_new_ports(%struct.TYPE_47__* %597)
  %599 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %600 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %601 = call i32 @state_mgr_send_handover(%struct.TYPE_47__* %599, %struct.TYPE_48__* %600)
  %602 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %603 = load i32, i32* @OSM_SM_SIGNAL_HANDOVER_SENT, align 4
  %604 = call i32 @osm_sm_state_mgr_process(%struct.TYPE_47__* %602, i32 %603)
  br label %1030

605:                                              ; preds = %591
  %606 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %607 = call %struct.TYPE_48__* @state_mgr_exists_other_master_sm(%struct.TYPE_47__* %606)
  store %struct.TYPE_48__* %607, %struct.TYPE_48__** %4, align 8
  %608 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %609 = icmp ne %struct.TYPE_48__* %608, null
  br i1 %609, label %610, label %628

610:                                              ; preds = %605
  %611 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %612 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %611, i32 0, i32 6
  %613 = load i32, i32* %612, align 8
  %614 = call i32 @CL_PLOCK_EXCL_ACQUIRE(i32 %613)
  %615 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %616 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %615, i32 0, i32 0
  %617 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %616, i32 0, i32 0
  %618 = load i64, i64* %617, align 8
  %619 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %620 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %619, i32 0, i32 5
  store i64 %618, i64* %620, align 8
  %621 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %622 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %621, i32 0, i32 6
  %623 = load i32, i32* %622, align 8
  %624 = call i32 @CL_PLOCK_RELEASE(i32 %623)
  %625 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %626 = load i32, i32* @OSM_SM_SIGNAL_WAIT_FOR_HANDOVER, align 4
  %627 = call i32 @osm_sm_state_mgr_process(%struct.TYPE_47__* %625, i32 %626)
  br label %1030

628:                                              ; preds = %605
  %629 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %630 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %629, i32 0, i32 5
  %631 = load i64, i64* %630, align 8
  %632 = icmp ne i64 %631, 0
  br i1 %632, label %633, label %637

633:                                              ; preds = %628
  %634 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %635 = load i32, i32* @OSM_SM_SIGNAL_POLLING_TIMEOUT, align 4
  %636 = call i32 @osm_sm_state_mgr_process(%struct.TYPE_47__* %634, i32 %635)
  br label %1030

637:                                              ; preds = %628
  br label %638

638:                                              ; preds = %637
  br label %639

639:                                              ; preds = %638
  br label %640

640:                                              ; preds = %639, %569
  %641 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %642 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %641, i32 0, i32 0
  %643 = load %struct.TYPE_44__*, %struct.TYPE_44__** %642, align 8
  %644 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %643, i32 0, i32 2
  %645 = load i64, i64* %644, align 8
  %646 = load i64, i64* @IB_SMINFO_STATE_DISCOVERING, align 8
  %647 = icmp eq i64 %645, %646
  br i1 %647, label %648, label %652

648:                                              ; preds = %640
  %649 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %650 = load i32, i32* @OSM_SM_SIGNAL_DISCOVERY_COMPLETED, align 4
  %651 = call i32 @osm_sm_state_mgr_process(%struct.TYPE_47__* %649, i32 %650)
  br label %652

652:                                              ; preds = %648, %640
  %653 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %654 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %653, i32 0, i32 0
  %655 = load %struct.TYPE_44__*, %struct.TYPE_44__** %654, align 8
  %656 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %655, i32 0, i32 6
  %657 = load %struct.TYPE_45__*, %struct.TYPE_45__** %656, align 8
  %658 = call i32 @osm_reset_switch_state_change_bit(%struct.TYPE_45__* %657)
  %659 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %660 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %659, i32 0, i32 0
  %661 = load %struct.TYPE_44__*, %struct.TYPE_44__** %660, align 8
  %662 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %661, i32 0, i32 6
  %663 = load %struct.TYPE_45__*, %struct.TYPE_45__** %662, align 8
  %664 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %663, i32 0, i32 0
  %665 = call i64 @wait_for_pending_transactions(i32* %664)
  %666 = icmp ne i64 %665, 0
  br i1 %666, label %667, label %668

667:                                              ; preds = %652
  br label %1030

668:                                              ; preds = %652
  %669 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %670 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %669, i32 0, i32 0
  %671 = load %struct.TYPE_44__*, %struct.TYPE_44__** %670, align 8
  %672 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %671, i32 0, i32 6
  %673 = load %struct.TYPE_45__*, %struct.TYPE_45__** %672, align 8
  %674 = call i32 @osm_pkey_mgr_process(%struct.TYPE_45__* %673)
  %675 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %676 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %675, i32 0, i32 0
  %677 = load %struct.TYPE_44__*, %struct.TYPE_44__** %676, align 8
  %678 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %677, i32 0, i32 6
  %679 = load %struct.TYPE_45__*, %struct.TYPE_45__** %678, align 8
  %680 = call i32 @osm_sa_db_file_load(%struct.TYPE_45__* %679)
  %681 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %682 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %681, i32 0, i32 0
  %683 = load %struct.TYPE_44__*, %struct.TYPE_44__** %682, align 8
  %684 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %683, i32 0, i32 6
  %685 = load %struct.TYPE_45__*, %struct.TYPE_45__** %684, align 8
  %686 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %685, i32 0, i32 0
  %687 = call i64 @wait_for_pending_transactions(i32* %686)
  %688 = icmp ne i64 %687, 0
  br i1 %688, label %689, label %690

689:                                              ; preds = %668
  br label %1030

690:                                              ; preds = %668
  %691 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %692 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %691, i32 0, i32 2
  %693 = load i32, i32* %692, align 4
  %694 = load i32, i32* @OSM_LOG_VERBOSE, align 4
  %695 = call i32 @OSM_LOG_MSG_BOX(i32 %693, i32 %694, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.10, i64 0, i64 0))
  %696 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %697 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %696, i32 0, i32 4
  %698 = call i32 @osm_lid_mgr_process_sm(i32* %697)
  %699 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %700 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %699, i32 0, i32 0
  %701 = load %struct.TYPE_44__*, %struct.TYPE_44__** %700, align 8
  %702 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %701, i32 0, i32 6
  %703 = load %struct.TYPE_45__*, %struct.TYPE_45__** %702, align 8
  %704 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %703, i32 0, i32 0
  %705 = call i64 @wait_for_pending_transactions(i32* %704)
  %706 = icmp ne i64 %705, 0
  br i1 %706, label %707, label %708

707:                                              ; preds = %690
  br label %1030

708:                                              ; preds = %690
  %709 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %710 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %709, i32 0, i32 2
  %711 = load i32, i32* %710, align 4
  %712 = load i32, i32* @OSM_LOG_VERBOSE, align 4
  %713 = call i32 @OSM_LOG_MSG_BOX(i32 %711, i32 %712, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.11, i64 0, i64 0))
  %714 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %715 = call i32 @state_mgr_notify_lid_change(%struct.TYPE_47__* %714)
  %716 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %717 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %716, i32 0, i32 4
  %718 = call i32 @osm_lid_mgr_process_subnet(i32* %717)
  %719 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %720 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %719, i32 0, i32 0
  %721 = load %struct.TYPE_44__*, %struct.TYPE_44__** %720, align 8
  %722 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %721, i32 0, i32 6
  %723 = load %struct.TYPE_45__*, %struct.TYPE_45__** %722, align 8
  %724 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %723, i32 0, i32 0
  %725 = call i64 @wait_for_pending_transactions(i32* %724)
  %726 = icmp ne i64 %725, 0
  br i1 %726, label %727, label %728

727:                                              ; preds = %708
  br label %1030

728:                                              ; preds = %708
  %729 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %730 = call i32 @state_mgr_check_tbl_consistency(%struct.TYPE_47__* %729)
  %731 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %732 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %731, i32 0, i32 2
  %733 = load i32, i32* %732, align 4
  %734 = load i32, i32* @OSM_LOG_VERBOSE, align 4
  %735 = call i32 @OSM_LOG_MSG_BOX(i32 %733, i32 %734, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.12, i64 0, i64 0))
  %736 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %737 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %736, i32 0, i32 3
  %738 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %737, i32 0, i32 0
  %739 = load i32, i32* %738, align 8
  %740 = icmp ne i32 %739, 0
  br i1 %740, label %741, label %746

741:                                              ; preds = %728
  %742 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %743 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %742, i32 0, i32 3
  %744 = call i64 @osm_ucast_cache_process(%struct.TYPE_43__* %743)
  %745 = icmp ne i64 %744, 0
  br i1 %745, label %746, label %756

746:                                              ; preds = %741, %728
  %747 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %748 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %747, i32 0, i32 3
  %749 = call i64 @osm_ucast_mgr_process(%struct.TYPE_43__* %748)
  %750 = icmp ne i64 %749, 0
  br i1 %750, label %751, label %755

751:                                              ; preds = %746
  %752 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %753 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %752, i32 0, i32 3
  %754 = call i32 @osm_ucast_cache_invalidate(%struct.TYPE_43__* %753)
  br label %1030

755:                                              ; preds = %746
  br label %756

756:                                              ; preds = %755, %741
  %757 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %758 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %757, i32 0, i32 0
  %759 = load %struct.TYPE_44__*, %struct.TYPE_44__** %758, align 8
  %760 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %759, i32 0, i32 6
  %761 = load %struct.TYPE_45__*, %struct.TYPE_45__** %760, align 8
  %762 = call i32 @osm_qos_setup(%struct.TYPE_45__* %761)
  %763 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %764 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %763, i32 0, i32 0
  %765 = load %struct.TYPE_44__*, %struct.TYPE_44__** %764, align 8
  %766 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %765, i32 0, i32 6
  %767 = load %struct.TYPE_45__*, %struct.TYPE_45__** %766, align 8
  %768 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %767, i32 0, i32 0
  %769 = call i64 @wait_for_pending_transactions(i32* %768)
  %770 = icmp ne i64 %769, 0
  br i1 %770, label %771, label %772

771:                                              ; preds = %756
  br label %1030

772:                                              ; preds = %756
  %773 = load i64, i64* @FALSE, align 8
  %774 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %775 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %774, i32 0, i32 0
  %776 = load %struct.TYPE_44__*, %struct.TYPE_44__** %775, align 8
  %777 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %776, i32 0, i32 13
  store i64 %773, i64* %777, align 8
  %778 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %779 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %778, i32 0, i32 2
  %780 = load i32, i32* %779, align 4
  %781 = load i32, i32* @OSM_LOG_VERBOSE, align 4
  %782 = call i32 @OSM_LOG_MSG_BOX(i32 %780, i32 %781, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.13, i64 0, i64 0))
  %783 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %784 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %783, i32 0, i32 0
  %785 = load %struct.TYPE_44__*, %struct.TYPE_44__** %784, align 8
  %786 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %785, i32 0, i32 6
  %787 = load %struct.TYPE_45__*, %struct.TYPE_45__** %786, align 8
  %788 = load i32, i32* @OSM_EVENT_ID_UCAST_ROUTING_DONE, align 4
  %789 = load i64, i64* @UCAST_ROUTING_HEAVY_SWEEP, align 8
  %790 = inttoptr i64 %789 to i8*
  %791 = call i32 @osm_opensm_report_event(%struct.TYPE_45__* %787, i32 %788, i8* %790)
  %792 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %793 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %792, i32 0, i32 0
  %794 = load %struct.TYPE_44__*, %struct.TYPE_44__** %793, align 8
  %795 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %794, i32 0, i32 7
  %796 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %795, i32 0, i32 3
  %797 = load i32, i32* %796, align 8
  %798 = icmp ne i32 %797, 0
  br i1 %798, label %818, label %799

799:                                              ; preds = %772
  %800 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %801 = load i64, i64* @TRUE, align 8
  %802 = call i32 @osm_mcast_mgr_process(%struct.TYPE_47__* %800, i64 %801)
  %803 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %804 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %803, i32 0, i32 0
  %805 = load %struct.TYPE_44__*, %struct.TYPE_44__** %804, align 8
  %806 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %805, i32 0, i32 6
  %807 = load %struct.TYPE_45__*, %struct.TYPE_45__** %806, align 8
  %808 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %807, i32 0, i32 0
  %809 = call i64 @wait_for_pending_transactions(i32* %808)
  %810 = icmp ne i64 %809, 0
  br i1 %810, label %811, label %812

811:                                              ; preds = %799
  br label %1030

812:                                              ; preds = %799
  %813 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %814 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %813, i32 0, i32 2
  %815 = load i32, i32* %814, align 4
  %816 = load i32, i32* @OSM_LOG_VERBOSE, align 4
  %817 = call i32 @OSM_LOG_MSG_BOX(i32 %815, i32 %816, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.14, i64 0, i64 0))
  br label %818

818:                                              ; preds = %812, %772
  %819 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %820 = call i32 @osm_guid_mgr_process(%struct.TYPE_47__* %819)
  %821 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %822 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %821, i32 0, i32 0
  %823 = load %struct.TYPE_44__*, %struct.TYPE_44__** %822, align 8
  %824 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %823, i32 0, i32 6
  %825 = load %struct.TYPE_45__*, %struct.TYPE_45__** %824, align 8
  %826 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %825, i32 0, i32 0
  %827 = call i64 @wait_for_pending_transactions(i32* %826)
  %828 = icmp ne i64 %827, 0
  br i1 %828, label %829, label %830

829:                                              ; preds = %818
  br label %1030

830:                                              ; preds = %818
  %831 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %832 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %831, i32 0, i32 2
  %833 = load i32, i32* %832, align 4
  %834 = load i32, i32* @OSM_LOG_VERBOSE, align 4
  %835 = call i32 @OSM_LOG_MSG_BOX(i32 %833, i32 %834, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i64 0, i64 0))
  %836 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %837 = load i32, i32* @IB_LINK_NO_CHANGE, align 4
  %838 = call i32 @osm_link_mgr_process(%struct.TYPE_47__* %836, i32 %837)
  %839 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %840 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %839, i32 0, i32 0
  %841 = load %struct.TYPE_44__*, %struct.TYPE_44__** %840, align 8
  %842 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %841, i32 0, i32 6
  %843 = load %struct.TYPE_45__*, %struct.TYPE_45__** %842, align 8
  %844 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %843, i32 0, i32 0
  %845 = call i64 @wait_for_pending_transactions(i32* %844)
  %846 = icmp ne i64 %845, 0
  br i1 %846, label %847, label %848

847:                                              ; preds = %830
  br label %1030

848:                                              ; preds = %830
  %849 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %850 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %849, i32 0, i32 2
  %851 = load i32, i32* %850, align 4
  %852 = load i32, i32* @OSM_LOG_VERBOSE, align 4
  %853 = call i32 @OSM_LOG_MSG_BOX(i32 %851, i32 %852, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.16, i64 0, i64 0))
  %854 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %855 = load i32, i32* @IB_LINK_ARMED, align 4
  %856 = call i32 @osm_link_mgr_process(%struct.TYPE_47__* %854, i32 %855)
  %857 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %858 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %857, i32 0, i32 0
  %859 = load %struct.TYPE_44__*, %struct.TYPE_44__** %858, align 8
  %860 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %859, i32 0, i32 6
  %861 = load %struct.TYPE_45__*, %struct.TYPE_45__** %860, align 8
  %862 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %861, i32 0, i32 0
  %863 = call i64 @wait_for_pending_transactions(i32* %862)
  %864 = icmp ne i64 %863, 0
  br i1 %864, label %865, label %866

865:                                              ; preds = %848
  br label %1030

866:                                              ; preds = %848
  %867 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %868 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %867, i32 0, i32 2
  %869 = load i32, i32* %868, align 4
  %870 = load i32, i32* @OSM_LOG_VERBOSE, align 4
  %871 = call i32 @OSM_LOG_MSG_BOX(i32 %869, i32 %870, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.17, i64 0, i64 0))
  %872 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %873 = load i32, i32* @IB_LINK_ACTIVE, align 4
  %874 = call i32 @osm_link_mgr_process(%struct.TYPE_47__* %872, i32 %873)
  %875 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %876 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %875, i32 0, i32 0
  %877 = load %struct.TYPE_44__*, %struct.TYPE_44__** %876, align 8
  %878 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %877, i32 0, i32 6
  %879 = load %struct.TYPE_45__*, %struct.TYPE_45__** %878, align 8
  %880 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %879, i32 0, i32 0
  %881 = call i64 @wait_for_pending_transactions(i32* %880)
  %882 = icmp ne i64 %881, 0
  br i1 %882, label %883, label %884

883:                                              ; preds = %866
  br label %1030

884:                                              ; preds = %866
  %885 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %886 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %885, i32 0, i32 0
  %887 = load %struct.TYPE_44__*, %struct.TYPE_44__** %886, align 8
  %888 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %887, i32 0, i32 6
  %889 = load %struct.TYPE_45__*, %struct.TYPE_45__** %888, align 8
  %890 = call i32 @osm_congestion_control_setup(%struct.TYPE_45__* %889)
  %891 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %892 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %891, i32 0, i32 0
  %893 = load %struct.TYPE_44__*, %struct.TYPE_44__** %892, align 8
  %894 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %893, i32 0, i32 6
  %895 = load %struct.TYPE_45__*, %struct.TYPE_45__** %894, align 8
  %896 = call i64 @osm_congestion_control_wait_pending_transactions(%struct.TYPE_45__* %895)
  %897 = icmp ne i64 %896, 0
  br i1 %897, label %898, label %899

898:                                              ; preds = %884
  br label %1030

899:                                              ; preds = %884
  %900 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %901 = call i32 @state_mgr_report_new_ports(%struct.TYPE_47__* %900)
  %902 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %903 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %902, i32 0, i32 0
  %904 = load %struct.TYPE_44__*, %struct.TYPE_44__** %903, align 8
  %905 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %904, i32 0, i32 12
  %906 = load i32, i32* @check_switch_lft, align 4
  %907 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %908 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %907, i32 0, i32 2
  %909 = load i32, i32* %908, align 4
  %910 = call i32 @cl_qmap_apply_func(i32* %905, i32 %906, i32 %909)
  %911 = load i64, i64* @FALSE, align 8
  %912 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %913 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %912, i32 0, i32 0
  %914 = load %struct.TYPE_44__*, %struct.TYPE_44__** %913, align 8
  %915 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %914, i32 0, i32 11
  store i64 %911, i64* %915, align 8
  %916 = load i64, i64* @FALSE, align 8
  %917 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %918 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %917, i32 0, i32 0
  %919 = load %struct.TYPE_44__*, %struct.TYPE_44__** %918, align 8
  %920 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %919, i32 0, i32 10
  store i64 %916, i64* %920, align 8
  %921 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %922 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %921, i32 0, i32 0
  %923 = load %struct.TYPE_44__*, %struct.TYPE_44__** %922, align 8
  %924 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %923, i32 0, i32 1
  %925 = load i64, i64* %924, align 8
  %926 = load i64, i64* @TRUE, align 8
  %927 = icmp eq i64 %925, %926
  br i1 %927, label %928, label %940

928:                                              ; preds = %899
  %929 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %930 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %929, i32 0, i32 2
  %931 = load i32, i32* %930, align 4
  %932 = load i32, i32* @OSM_LOG_SYS, align 4
  %933 = load i32, i32* @FILE_ID, align 4
  %934 = call i32 @osm_log_v2(i32 %931, i32 %932, i32 %933, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.18, i64 0, i64 0))
  %935 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %936 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %935, i32 0, i32 2
  %937 = load i32, i32* %936, align 4
  %938 = load i32, i32* @OSM_LOG_ERROR, align 4
  %939 = call i32 @OSM_LOG_MSG_BOX(i32 %937, i32 %938, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.19, i64 0, i64 0))
  br label %984

940:                                              ; preds = %899
  %941 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %942 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %941, i32 0, i32 0
  %943 = load %struct.TYPE_44__*, %struct.TYPE_44__** %942, align 8
  %944 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %943, i32 0, i32 3
  store i32 0, i32* %944, align 8
  %945 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %946 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %945, i32 0, i32 0
  %947 = load %struct.TYPE_44__*, %struct.TYPE_44__** %946, align 8
  %948 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %947, i32 0, i32 6
  %949 = load %struct.TYPE_45__*, %struct.TYPE_45__** %948, align 8
  %950 = call i32 @osm_dump_all(%struct.TYPE_45__* %949)
  %951 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %952 = call i32 @state_mgr_up_msg(%struct.TYPE_47__* %951)
  %953 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %954 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %953, i32 0, i32 2
  %955 = load i32, i32* %954, align 4
  %956 = load i32, i32* @OSM_LOG_VERBOSE, align 4
  %957 = call i64 @OSM_LOG_IS_ACTIVE_V2(i32 %955, i32 %956)
  %958 = icmp ne i64 %957, 0
  br i1 %958, label %967, label %959

959:                                              ; preds = %940
  %960 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %961 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %960, i32 0, i32 0
  %962 = load %struct.TYPE_44__*, %struct.TYPE_44__** %961, align 8
  %963 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %962, i32 0, i32 7
  %964 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %963, i32 0, i32 2
  %965 = load i64, i64* %964, align 8
  %966 = icmp ne i64 %965, 0
  br i1 %966, label %967, label %983

967:                                              ; preds = %959, %940
  %968 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %969 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %968, i32 0, i32 0
  %970 = load %struct.TYPE_44__*, %struct.TYPE_44__** %969, align 8
  %971 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %970, i32 0, i32 6
  %972 = load %struct.TYPE_45__*, %struct.TYPE_45__** %971, align 8
  %973 = call i32 @osm_sa_db_file_dump(%struct.TYPE_45__* %972)
  %974 = icmp ne i32 %973, 0
  br i1 %974, label %983, label %975

975:                                              ; preds = %967
  %976 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %977 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %976, i32 0, i32 0
  %978 = load %struct.TYPE_44__*, %struct.TYPE_44__** %977, align 8
  %979 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %978, i32 0, i32 6
  %980 = load %struct.TYPE_45__*, %struct.TYPE_45__** %979, align 8
  %981 = load i32, i32* @OSM_EVENT_ID_SA_DB_DUMPED, align 4
  %982 = call i32 @osm_opensm_report_event(%struct.TYPE_45__* %980, i32 %981, i8* null)
  br label %983

983:                                              ; preds = %975, %967, %959
  br label %984

984:                                              ; preds = %983, %928
  %985 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %986 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %985, i32 0, i32 1
  %987 = call i32 @cl_event_signal(i32* %986)
  %988 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %989 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %988, i32 0, i32 0
  %990 = load %struct.TYPE_44__*, %struct.TYPE_44__** %989, align 8
  %991 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %990, i32 0, i32 0
  %992 = load i64, i64* %991, align 8
  %993 = icmp ne i64 %992, 0
  br i1 %993, label %994, label %998

994:                                              ; preds = %984
  %995 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %996 = load i32, i32* @OSM_SIGNAL_SWEEP, align 4
  %997 = call i32 @osm_sm_signal(%struct.TYPE_47__* %995, i32 %996)
  br label %998

998:                                              ; preds = %994, %984
  %999 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %1000 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %999, i32 0, i32 0
  %1001 = load %struct.TYPE_44__*, %struct.TYPE_44__** %1000, align 8
  %1002 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %1001, i32 0, i32 9
  %1003 = load i32, i32* %1002, align 4
  %1004 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %1005 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %1004, i32 0, i32 0
  %1006 = load %struct.TYPE_44__*, %struct.TYPE_44__** %1005, align 8
  %1007 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %1006, i32 0, i32 7
  %1008 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %1007, i32 0, i32 1
  %1009 = load i32, i32* %1008, align 8
  %1010 = call i32 @osm_db_store(i32 %1003, i32 %1009)
  %1011 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %1012 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %1011, i32 0, i32 0
  %1013 = load %struct.TYPE_44__*, %struct.TYPE_44__** %1012, align 8
  %1014 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %1013, i32 0, i32 8
  %1015 = load i32, i32* %1014, align 8
  %1016 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %1017 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %1016, i32 0, i32 0
  %1018 = load %struct.TYPE_44__*, %struct.TYPE_44__** %1017, align 8
  %1019 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %1018, i32 0, i32 7
  %1020 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %1019, i32 0, i32 1
  %1021 = load i32, i32* %1020, align 8
  %1022 = call i32 @osm_db_store(i32 %1015, i32 %1021)
  %1023 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %1024 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %1023, i32 0, i32 0
  %1025 = load %struct.TYPE_44__*, %struct.TYPE_44__** %1024, align 8
  %1026 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %1025, i32 0, i32 6
  %1027 = load %struct.TYPE_45__*, %struct.TYPE_45__** %1026, align 8
  %1028 = load i32, i32* @OSM_EVENT_ID_SUBNET_UP, align 4
  %1029 = call i32 @osm_opensm_report_event(%struct.TYPE_45__* %1027, i32 %1028, i8* null)
  br label %1030

1030:                                             ; preds = %998, %898, %883, %865, %847, %829, %811, %771, %751, %727, %707, %689, %667, %633, %610, %596, %543, %537, %490, %445, %341, %333, %318, %292, %196, %164, %83
  ret void
}

declare dso_local i64 @osm_subn_rescan_conf_files(%struct.TYPE_44__*) #1

declare dso_local i32 @OSM_LOG(i32, i32, i8*) #1

declare dso_local i32 @state_mgr_clean_known_lids(%struct.TYPE_47__*) #1

declare dso_local i32 @state_mgr_sa_clean(%struct.TYPE_47__*) #1

declare dso_local i64 @cl_qmap_count(i32*) #1

declare dso_local i64 @state_mgr_light_sweep_start(%struct.TYPE_47__*) #1

declare dso_local i64 @wait_for_pending_transactions(i32*) #1

declare dso_local i32 @osm_sa_db_file_dump(%struct.TYPE_45__*) #1

declare dso_local i32 @osm_opensm_report_event(%struct.TYPE_45__*, i32, i8*) #1

declare dso_local i32 @OSM_LOG_MSG_BOX(i32, i32, i8*) #1

declare dso_local i32 @osm_ucast_cache_invalidate(%struct.TYPE_43__*) #1

declare dso_local i64 @osm_ucast_mgr_process(%struct.TYPE_43__*) #1

declare dso_local i32 @osm_qos_setup(%struct.TYPE_45__*) #1

declare dso_local i32 @osm_congestion_control_setup(%struct.TYPE_45__*) #1

declare dso_local i64 @osm_congestion_control_wait_pending_transactions(%struct.TYPE_45__*) #1

declare dso_local i64 @state_mgr_sweep_hop_0(%struct.TYPE_47__*) #1

declare dso_local i64 @state_mgr_is_sm_port_down(%struct.TYPE_47__*) #1

declare dso_local i32 @osm_log_v2(i32, i32, i32, i8*) #1

declare dso_local i32 @osm_drop_mgr_process(%struct.TYPE_47__*) #1

declare dso_local i32 @osm_sm_state_mgr_process(%struct.TYPE_47__*, i32) #1

declare dso_local i64 @state_mgr_sweep_hop_1(%struct.TYPE_47__*) #1

declare dso_local i32 @osm_send_trap144(%struct.TYPE_47__*, i32) #1

declare dso_local %struct.TYPE_48__* @state_mgr_get_highest_sm(%struct.TYPE_47__*) #1

declare dso_local i32 @state_mgr_report_new_ports(%struct.TYPE_47__*) #1

declare dso_local i32 @state_mgr_send_handover(%struct.TYPE_47__*, %struct.TYPE_48__*) #1

declare dso_local %struct.TYPE_48__* @state_mgr_exists_other_master_sm(%struct.TYPE_47__*) #1

declare dso_local i32 @CL_PLOCK_EXCL_ACQUIRE(i32) #1

declare dso_local i32 @CL_PLOCK_RELEASE(i32) #1

declare dso_local i32 @osm_reset_switch_state_change_bit(%struct.TYPE_45__*) #1

declare dso_local i32 @osm_pkey_mgr_process(%struct.TYPE_45__*) #1

declare dso_local i32 @osm_sa_db_file_load(%struct.TYPE_45__*) #1

declare dso_local i32 @osm_lid_mgr_process_sm(i32*) #1

declare dso_local i32 @state_mgr_notify_lid_change(%struct.TYPE_47__*) #1

declare dso_local i32 @osm_lid_mgr_process_subnet(i32*) #1

declare dso_local i32 @state_mgr_check_tbl_consistency(%struct.TYPE_47__*) #1

declare dso_local i64 @osm_ucast_cache_process(%struct.TYPE_43__*) #1

declare dso_local i32 @osm_mcast_mgr_process(%struct.TYPE_47__*, i64) #1

declare dso_local i32 @osm_guid_mgr_process(%struct.TYPE_47__*) #1

declare dso_local i32 @osm_link_mgr_process(%struct.TYPE_47__*, i32) #1

declare dso_local i32 @cl_qmap_apply_func(i32*, i32, i32) #1

declare dso_local i32 @osm_dump_all(%struct.TYPE_45__*) #1

declare dso_local i32 @state_mgr_up_msg(%struct.TYPE_47__*) #1

declare dso_local i64 @OSM_LOG_IS_ACTIVE_V2(i32, i32) #1

declare dso_local i32 @cl_event_signal(i32*) #1

declare dso_local i32 @osm_sm_signal(%struct.TYPE_47__*, i32) #1

declare dso_local i32 @osm_db_store(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
