; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aac/extr_aac_cam.c_aac_cam_action.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aac/extr_aac_cam.c_aac_cam_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_sim = type { i32 }
%union.ccb = type { %struct.ccb_pathinq }
%struct.ccb_pathinq = type { i32, i32, i32, i32, i32, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.aac_cam = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32, i32, i32, %struct.aac_softc* }
%struct.aac_softc = type { i32, i32 }
%struct.aac_srb = type { i64, i32, i32, i32, i32, i32, i64, %struct.TYPE_21__, i32, i32*, i32 }
%struct.TYPE_21__ = type { i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i64, i32 }
%struct.aac_fib = type { %struct.TYPE_13__, i32* }
%struct.TYPE_13__ = type { i32, i32, i8* }
%struct.aac_command = type { i32, i32, i32, %union.ccb*, i32, %struct.TYPE_21__*, i64, i8*, %struct.aac_fib* }
%struct.ccb_calc_geometry = type { i64, i64, i32, i32, i32 }
%struct.ccb_trans_settings_scsi = type { i32 }
%struct.ccb_trans_settings_spi = type { i32 }
%struct.aac_event = type { i32, %union.ccb*, i32 }
%struct.ccb_scsiio = type { i64, i64, %struct.TYPE_19__, i32 }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i8*, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.aac_cam* }
%struct.TYPE_16__ = type { i32, i8*, i8*, i8*, %struct.TYPE_15__, %struct.TYPE_14__ }
%struct.TYPE_15__ = type { %struct.ccb_trans_settings_spi }
%struct.TYPE_14__ = type { %struct.ccb_trans_settings_scsi }

@HBA_FLAGS_DBG_FUNCTION_ENTRY_B = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@CAM_REQ_CMP = common dso_local global i8* null, align 8
@PI_WIDE_16 = common dso_local global i32 0, align 4
@PIM_NOBUSRESET = common dso_local global i32 0, align 4
@PIM_SEQSCAN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"FreeBSD\00", align 1
@SIM_IDLEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"Adaptec\00", align 1
@HBA_IDLEN = common dso_local global i32 0, align 4
@DEV_IDLEN = common dso_local global i32 0, align 4
@XPORT_SPI = common dso_local global i8* null, align 8
@PROTO_SCSI = common dso_local global i8* null, align 8
@SCSI_REV_2 = common dso_local global i8* null, align 8
@CAM_LUN_WILDCARD = common dso_local global i32 0, align 4
@CTS_SCSI_VALID_TQ = common dso_local global i32 0, align 4
@CTS_SPI_VALID_DISC = common dso_local global i32 0, align 4
@CAM_FUNC_NOTAVAIL = common dso_local global i8* null, align 8
@AAC_FLAGS_CAM_NORESET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"Unsupported command 0x%x\0A\00", align 1
@CAM_PROVIDE_FAIL = common dso_local global i8* null, align 8
@CAM_RESRC_UNAVAIL = common dso_local global i8* null, align 8
@M_AACCAM = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"Warning, out of memory for event\0A\00", align 1
@aac_cam_event = common dso_local global i32 0, align 4
@AAC_EVENT_CMFREE = common dso_local global i32 0, align 4
@CAM_DIR_MASK = common dso_local global i32 0, align 4
@AAC_SRB_FLAGS_DATA_IN = common dso_local global i32 0, align 4
@AAC_CMD_DATAIN = common dso_local global i32 0, align 4
@AAC_SRB_FLAGS_DATA_OUT = common dso_local global i32 0, align 4
@AAC_CMD_DATAOUT = common dso_local global i32 0, align 4
@AAC_SRB_FLAGS_NO_DATA_XFER = common dso_local global i32 0, align 4
@AAC_SRB_FLAGS_UNSPECIFIED_DIRECTION = common dso_local global i32 0, align 4
@AAC_SRB_FUNC_EXECUTE_SCSI = common dso_local global i32 0, align 4
@CAM_CDB_POINTER = common dso_local global i32 0, align 4
@AAC_FLAGS_SG_64BIT = common dso_local global i32 0, align 4
@ScsiPortCommandU64 = common dso_local global i8* null, align 8
@ScsiPortCommand = common dso_local global i8* null, align 8
@CAM_DATA_MASK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"aac_cam: multiple s/g elements\00", align 1
@AAC_SRB_FUNC_RESET_DEVICE = common dso_local global i32 0, align 4
@aac_cam_complete = common dso_local global i32 0, align 4
@time_uptime = common dso_local global i32 0, align 4
@AAC_FIBSTATE_HOSTOWNED = common dso_local global i32 0, align 4
@AAC_FIBSTATE_INITIALISED = common dso_local global i32 0, align 4
@AAC_FIBSTATE_FROMHOST = common dso_local global i32 0, align 4
@AAC_FIBSTATE_REXPECTED = common dso_local global i32 0, align 4
@AAC_FIBSTATE_NORM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cam_sim*, %union.ccb*)* @aac_cam_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aac_cam_action(%struct.cam_sim* %0, %union.ccb* %1) #0 {
  %3 = alloca %struct.cam_sim*, align 8
  %4 = alloca %union.ccb*, align 8
  %5 = alloca %struct.aac_cam*, align 8
  %6 = alloca %struct.aac_softc*, align 8
  %7 = alloca %struct.aac_srb*, align 8
  %8 = alloca %struct.aac_fib*, align 8
  %9 = alloca %struct.aac_command*, align 8
  %10 = alloca %struct.ccb_calc_geometry*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ccb_pathinq*, align 8
  %14 = alloca %struct.ccb_trans_settings_scsi*, align 8
  %15 = alloca %struct.ccb_trans_settings_spi*, align 8
  %16 = alloca %struct.aac_event*, align 8
  %17 = alloca %struct.ccb_scsiio*, align 8
  store %struct.cam_sim* %0, %struct.cam_sim** %3, align 8
  store %union.ccb* %1, %union.ccb** %4, align 8
  %18 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %19 = call i64 @cam_sim_softc(%struct.cam_sim* %18)
  %20 = inttoptr i64 %19 to %struct.aac_cam*
  store %struct.aac_cam* %20, %struct.aac_cam** %5, align 8
  %21 = load %struct.aac_cam*, %struct.aac_cam** %5, align 8
  %22 = getelementptr inbounds %struct.aac_cam, %struct.aac_cam* %21, i32 0, i32 0
  %23 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %23, i32 0, i32 3
  %25 = load %struct.aac_softc*, %struct.aac_softc** %24, align 8
  store %struct.aac_softc* %25, %struct.aac_softc** %6, align 8
  %26 = load %struct.aac_softc*, %struct.aac_softc** %6, align 8
  %27 = load i8*, i8** @HBA_FLAGS_DBG_FUNCTION_ENTRY_B, align 8
  %28 = call i32 @fwprintf(%struct.aac_softc* %26, i8* %27, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %29 = load %union.ccb*, %union.ccb** %4, align 8
  %30 = bitcast %union.ccb* %29 to %struct.TYPE_12__*
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  switch i32 %32, label %266 [
    i32 130, label %33
    i32 131, label %33
    i32 135, label %34
    i32 133, label %90
    i32 134, label %170
    i32 129, label %219
    i32 132, label %226
    i32 136, label %248
    i32 128, label %257
  ]

33:                                               ; preds = %2, %2
  br label %281

34:                                               ; preds = %2
  %35 = load %union.ccb*, %union.ccb** %4, align 8
  %36 = bitcast %union.ccb* %35 to %struct.ccb_calc_geometry*
  store %struct.ccb_calc_geometry* %36, %struct.ccb_calc_geometry** %10, align 8
  %37 = load %struct.ccb_calc_geometry*, %struct.ccb_calc_geometry** %10, align 8
  %38 = getelementptr inbounds %struct.ccb_calc_geometry, %struct.ccb_calc_geometry* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.ccb_calc_geometry*, %struct.ccb_calc_geometry** %10, align 8
  %41 = getelementptr inbounds %struct.ccb_calc_geometry, %struct.ccb_calc_geometry* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = sdiv i64 1048576, %42
  %44 = sdiv i64 %39, %43
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = icmp sge i32 %46, 2048
  br i1 %47, label %48, label %53

48:                                               ; preds = %34
  %49 = load %struct.ccb_calc_geometry*, %struct.ccb_calc_geometry** %10, align 8
  %50 = getelementptr inbounds %struct.ccb_calc_geometry, %struct.ccb_calc_geometry* %49, i32 0, i32 2
  store i32 255, i32* %50, align 8
  %51 = load %struct.ccb_calc_geometry*, %struct.ccb_calc_geometry** %10, align 8
  %52 = getelementptr inbounds %struct.ccb_calc_geometry, %struct.ccb_calc_geometry* %51, i32 0, i32 3
  store i32 63, i32* %52, align 4
  br label %67

53:                                               ; preds = %34
  %54 = load i32, i32* %11, align 4
  %55 = icmp sge i32 %54, 1024
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = load %struct.ccb_calc_geometry*, %struct.ccb_calc_geometry** %10, align 8
  %58 = getelementptr inbounds %struct.ccb_calc_geometry, %struct.ccb_calc_geometry* %57, i32 0, i32 2
  store i32 128, i32* %58, align 8
  %59 = load %struct.ccb_calc_geometry*, %struct.ccb_calc_geometry** %10, align 8
  %60 = getelementptr inbounds %struct.ccb_calc_geometry, %struct.ccb_calc_geometry* %59, i32 0, i32 3
  store i32 32, i32* %60, align 4
  br label %66

61:                                               ; preds = %53
  %62 = load %struct.ccb_calc_geometry*, %struct.ccb_calc_geometry** %10, align 8
  %63 = getelementptr inbounds %struct.ccb_calc_geometry, %struct.ccb_calc_geometry* %62, i32 0, i32 2
  store i32 64, i32* %63, align 8
  %64 = load %struct.ccb_calc_geometry*, %struct.ccb_calc_geometry** %10, align 8
  %65 = getelementptr inbounds %struct.ccb_calc_geometry, %struct.ccb_calc_geometry* %64, i32 0, i32 3
  store i32 32, i32* %65, align 4
  br label %66

66:                                               ; preds = %61, %56
  br label %67

67:                                               ; preds = %66, %48
  %68 = load %struct.ccb_calc_geometry*, %struct.ccb_calc_geometry** %10, align 8
  %69 = getelementptr inbounds %struct.ccb_calc_geometry, %struct.ccb_calc_geometry* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.ccb_calc_geometry*, %struct.ccb_calc_geometry** %10, align 8
  %72 = getelementptr inbounds %struct.ccb_calc_geometry, %struct.ccb_calc_geometry* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = mul nsw i32 %70, %73
  store i32 %74, i32* %12, align 4
  %75 = load %struct.ccb_calc_geometry*, %struct.ccb_calc_geometry** %10, align 8
  %76 = getelementptr inbounds %struct.ccb_calc_geometry, %struct.ccb_calc_geometry* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i32, i32* %12, align 4
  %79 = sext i32 %78 to i64
  %80 = sdiv i64 %77, %79
  %81 = trunc i64 %80 to i32
  %82 = load %struct.ccb_calc_geometry*, %struct.ccb_calc_geometry** %10, align 8
  %83 = getelementptr inbounds %struct.ccb_calc_geometry, %struct.ccb_calc_geometry* %82, i32 0, i32 4
  store i32 %81, i32* %83, align 8
  %84 = load i8*, i8** @CAM_REQ_CMP, align 8
  %85 = load %union.ccb*, %union.ccb** %4, align 8
  %86 = bitcast %union.ccb* %85 to %struct.TYPE_12__*
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 5
  store i8* %84, i8** %87, align 8
  %88 = load %union.ccb*, %union.ccb** %4, align 8
  %89 = call i32 @xpt_done(%union.ccb* %88)
  br label %600

90:                                               ; preds = %2
  %91 = load %union.ccb*, %union.ccb** %4, align 8
  %92 = bitcast %union.ccb* %91 to %struct.ccb_pathinq*
  store %struct.ccb_pathinq* %92, %struct.ccb_pathinq** %13, align 8
  %93 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %13, align 8
  %94 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %93, i32 0, i32 0
  store i32 1, i32* %94, align 8
  %95 = load i32, i32* @PI_WIDE_16, align 4
  %96 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %13, align 8
  %97 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %96, i32 0, i32 17
  store i32 %95, i32* %97, align 4
  %98 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %13, align 8
  %99 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %98, i32 0, i32 16
  store i32 0, i32* %99, align 8
  %100 = load i32, i32* @PIM_NOBUSRESET, align 4
  %101 = load i32, i32* @PIM_SEQSCAN, align 4
  %102 = or i32 %100, %101
  %103 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %13, align 8
  %104 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 4
  %105 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %13, align 8
  %106 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %105, i32 0, i32 15
  store i32 0, i32* %106, align 4
  %107 = load %struct.aac_cam*, %struct.aac_cam** %5, align 8
  %108 = getelementptr inbounds %struct.aac_cam, %struct.aac_cam* %107, i32 0, i32 0
  %109 = load %struct.TYPE_22__*, %struct.TYPE_22__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %13, align 8
  %113 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %112, i32 0, i32 14
  store i32 %111, i32* %113, align 8
  %114 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %13, align 8
  %115 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %114, i32 0, i32 2
  store i32 8, i32* %115, align 8
  %116 = load %struct.aac_cam*, %struct.aac_cam** %5, align 8
  %117 = getelementptr inbounds %struct.aac_cam, %struct.aac_cam* %116, i32 0, i32 0
  %118 = load %struct.TYPE_22__*, %struct.TYPE_22__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %13, align 8
  %122 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %121, i32 0, i32 13
  store i32 %120, i32* %122, align 4
  %123 = load %struct.aac_cam*, %struct.aac_cam** %5, align 8
  %124 = getelementptr inbounds %struct.aac_cam, %struct.aac_cam* %123, i32 0, i32 0
  %125 = load %struct.TYPE_22__*, %struct.TYPE_22__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %13, align 8
  %129 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %128, i32 0, i32 12
  store i32 %127, i32* %129, align 8
  %130 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %13, align 8
  %131 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %130, i32 0, i32 3
  store i32 3300, i32* %131, align 4
  %132 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %13, align 8
  %133 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %132, i32 0, i32 11
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @SIM_IDLEN, align 4
  %136 = call i32 @strlcpy(i32 %134, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %135)
  %137 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %13, align 8
  %138 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %137, i32 0, i32 10
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @HBA_IDLEN, align 4
  %141 = call i32 @strlcpy(i32 %139, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %140)
  %142 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %13, align 8
  %143 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %142, i32 0, i32 9
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %146 = call i8* @cam_sim_name(%struct.cam_sim* %145)
  %147 = load i32, i32* @DEV_IDLEN, align 4
  %148 = call i32 @strlcpy(i32 %144, i8* %146, i32 %147)
  %149 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %150 = call i32 @cam_sim_unit(%struct.cam_sim* %149)
  %151 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %13, align 8
  %152 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %151, i32 0, i32 8
  store i32 %150, i32* %152, align 8
  %153 = load i8*, i8** @XPORT_SPI, align 8
  %154 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %13, align 8
  %155 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %154, i32 0, i32 7
  store i8* %153, i8** %155, align 8
  %156 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %13, align 8
  %157 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %156, i32 0, i32 4
  store i32 2, i32* %157, align 8
  %158 = load i8*, i8** @PROTO_SCSI, align 8
  %159 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %13, align 8
  %160 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %159, i32 0, i32 6
  store i8* %158, i8** %160, align 8
  %161 = load i8*, i8** @SCSI_REV_2, align 8
  %162 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %13, align 8
  %163 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %162, i32 0, i32 5
  store i8* %161, i8** %163, align 8
  %164 = load i8*, i8** @CAM_REQ_CMP, align 8
  %165 = load %union.ccb*, %union.ccb** %4, align 8
  %166 = bitcast %union.ccb* %165 to %struct.TYPE_12__*
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i32 0, i32 5
  store i8* %164, i8** %167, align 8
  %168 = load %union.ccb*, %union.ccb** %4, align 8
  %169 = call i32 @xpt_done(%union.ccb* %168)
  br label %600

170:                                              ; preds = %2
  %171 = load %union.ccb*, %union.ccb** %4, align 8
  %172 = bitcast %union.ccb* %171 to %struct.TYPE_16__*
  %173 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %172, i32 0, i32 5
  %174 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %173, i32 0, i32 0
  store %struct.ccb_trans_settings_scsi* %174, %struct.ccb_trans_settings_scsi** %14, align 8
  %175 = load %union.ccb*, %union.ccb** %4, align 8
  %176 = bitcast %union.ccb* %175 to %struct.TYPE_16__*
  %177 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %176, i32 0, i32 4
  %178 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %177, i32 0, i32 0
  store %struct.ccb_trans_settings_spi* %178, %struct.ccb_trans_settings_spi** %15, align 8
  %179 = load i8*, i8** @PROTO_SCSI, align 8
  %180 = load %union.ccb*, %union.ccb** %4, align 8
  %181 = bitcast %union.ccb* %180 to %struct.TYPE_16__*
  %182 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %181, i32 0, i32 3
  store i8* %179, i8** %182, align 8
  %183 = load i8*, i8** @SCSI_REV_2, align 8
  %184 = load %union.ccb*, %union.ccb** %4, align 8
  %185 = bitcast %union.ccb* %184 to %struct.TYPE_16__*
  %186 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %185, i32 0, i32 2
  store i8* %183, i8** %186, align 8
  %187 = load i8*, i8** @XPORT_SPI, align 8
  %188 = load %union.ccb*, %union.ccb** %4, align 8
  %189 = bitcast %union.ccb* %188 to %struct.TYPE_16__*
  %190 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %189, i32 0, i32 1
  store i8* %187, i8** %190, align 8
  %191 = load %union.ccb*, %union.ccb** %4, align 8
  %192 = bitcast %union.ccb* %191 to %struct.TYPE_16__*
  %193 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %192, i32 0, i32 0
  store i32 2, i32* %193, align 8
  %194 = load %union.ccb*, %union.ccb** %4, align 8
  %195 = bitcast %union.ccb* %194 to %struct.TYPE_12__*
  %196 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %195, i32 0, i32 3
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* @CAM_LUN_WILDCARD, align 4
  %199 = icmp ne i32 %197, %198
  br i1 %199, label %200, label %209

200:                                              ; preds = %170
  %201 = load i32, i32* @CTS_SCSI_VALID_TQ, align 4
  %202 = load %struct.ccb_trans_settings_scsi*, %struct.ccb_trans_settings_scsi** %14, align 8
  %203 = getelementptr inbounds %struct.ccb_trans_settings_scsi, %struct.ccb_trans_settings_scsi* %202, i32 0, i32 0
  store i32 %201, i32* %203, align 4
  %204 = load i32, i32* @CTS_SPI_VALID_DISC, align 4
  %205 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %15, align 8
  %206 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = or i32 %207, %204
  store i32 %208, i32* %206, align 4
  br label %212

209:                                              ; preds = %170
  %210 = load %struct.ccb_trans_settings_scsi*, %struct.ccb_trans_settings_scsi** %14, align 8
  %211 = getelementptr inbounds %struct.ccb_trans_settings_scsi, %struct.ccb_trans_settings_scsi* %210, i32 0, i32 0
  store i32 0, i32* %211, align 4
  br label %212

212:                                              ; preds = %209, %200
  %213 = load i8*, i8** @CAM_REQ_CMP, align 8
  %214 = load %union.ccb*, %union.ccb** %4, align 8
  %215 = bitcast %union.ccb* %214 to %struct.TYPE_12__*
  %216 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %215, i32 0, i32 5
  store i8* %213, i8** %216, align 8
  %217 = load %union.ccb*, %union.ccb** %4, align 8
  %218 = call i32 @xpt_done(%union.ccb* %217)
  br label %600

219:                                              ; preds = %2
  %220 = load i8*, i8** @CAM_FUNC_NOTAVAIL, align 8
  %221 = load %union.ccb*, %union.ccb** %4, align 8
  %222 = bitcast %union.ccb* %221 to %struct.TYPE_12__*
  %223 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %222, i32 0, i32 5
  store i8* %220, i8** %223, align 8
  %224 = load %union.ccb*, %union.ccb** %4, align 8
  %225 = call i32 @xpt_done(%union.ccb* %224)
  br label %600

226:                                              ; preds = %2
  %227 = load %struct.aac_softc*, %struct.aac_softc** %6, align 8
  %228 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = load i32, i32* @AAC_FLAGS_CAM_NORESET, align 4
  %231 = and i32 %229, %230
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %240, label %233

233:                                              ; preds = %226
  %234 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %235 = load %union.ccb*, %union.ccb** %4, align 8
  %236 = call i8* @aac_cam_reset_bus(%struct.cam_sim* %234, %union.ccb* %235)
  %237 = load %union.ccb*, %union.ccb** %4, align 8
  %238 = bitcast %union.ccb* %237 to %struct.TYPE_12__*
  %239 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %238, i32 0, i32 5
  store i8* %236, i8** %239, align 8
  br label %245

240:                                              ; preds = %226
  %241 = load i8*, i8** @CAM_REQ_CMP, align 8
  %242 = load %union.ccb*, %union.ccb** %4, align 8
  %243 = bitcast %union.ccb* %242 to %struct.TYPE_12__*
  %244 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %243, i32 0, i32 5
  store i8* %241, i8** %244, align 8
  br label %245

245:                                              ; preds = %240, %233
  %246 = load %union.ccb*, %union.ccb** %4, align 8
  %247 = call i32 @xpt_done(%union.ccb* %246)
  br label %600

248:                                              ; preds = %2
  %249 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %250 = load %union.ccb*, %union.ccb** %4, align 8
  %251 = call i8* @aac_cam_abort_ccb(%struct.cam_sim* %249, %union.ccb* %250)
  %252 = load %union.ccb*, %union.ccb** %4, align 8
  %253 = bitcast %union.ccb* %252 to %struct.TYPE_12__*
  %254 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %253, i32 0, i32 5
  store i8* %251, i8** %254, align 8
  %255 = load %union.ccb*, %union.ccb** %4, align 8
  %256 = call i32 @xpt_done(%union.ccb* %255)
  br label %600

257:                                              ; preds = %2
  %258 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %259 = load %union.ccb*, %union.ccb** %4, align 8
  %260 = call i8* @aac_cam_term_io(%struct.cam_sim* %258, %union.ccb* %259)
  %261 = load %union.ccb*, %union.ccb** %4, align 8
  %262 = bitcast %union.ccb* %261 to %struct.TYPE_12__*
  %263 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %262, i32 0, i32 5
  store i8* %260, i8** %263, align 8
  %264 = load %union.ccb*, %union.ccb** %4, align 8
  %265 = call i32 @xpt_done(%union.ccb* %264)
  br label %600

266:                                              ; preds = %2
  %267 = load %struct.aac_softc*, %struct.aac_softc** %6, align 8
  %268 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 4
  %270 = load %union.ccb*, %union.ccb** %4, align 8
  %271 = bitcast %union.ccb* %270 to %struct.TYPE_12__*
  %272 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  %274 = call i32 (i32, i8*, ...) @device_printf(i32 %269, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %273)
  %275 = load i8*, i8** @CAM_PROVIDE_FAIL, align 8
  %276 = load %union.ccb*, %union.ccb** %4, align 8
  %277 = bitcast %union.ccb* %276 to %struct.TYPE_12__*
  %278 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %277, i32 0, i32 5
  store i8* %275, i8** %278, align 8
  %279 = load %union.ccb*, %union.ccb** %4, align 8
  %280 = call i32 @xpt_done(%union.ccb* %279)
  br label %600

281:                                              ; preds = %33
  %282 = load %struct.aac_softc*, %struct.aac_softc** %6, align 8
  %283 = call i64 @aac_alloc_command(%struct.aac_softc* %282, %struct.aac_command** %9)
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %285, label %325

285:                                              ; preds = %281
  %286 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %287 = call i32 @xpt_freeze_simq(%struct.cam_sim* %286, i32 1)
  %288 = load i8*, i8** @CAM_RESRC_UNAVAIL, align 8
  %289 = load %union.ccb*, %union.ccb** %4, align 8
  %290 = bitcast %union.ccb* %289 to %struct.TYPE_12__*
  %291 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %290, i32 0, i32 5
  store i8* %288, i8** %291, align 8
  %292 = load %struct.aac_cam*, %struct.aac_cam** %5, align 8
  %293 = load %union.ccb*, %union.ccb** %4, align 8
  %294 = bitcast %union.ccb* %293 to %struct.TYPE_12__*
  %295 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %294, i32 0, i32 6
  %296 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %295, i32 0, i32 0
  %297 = load %struct.TYPE_17__*, %struct.TYPE_17__** %296, align 8
  %298 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %297, i64 0
  %299 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %298, i32 0, i32 0
  store %struct.aac_cam* %292, %struct.aac_cam** %299, align 8
  %300 = load i32, i32* @M_AACCAM, align 4
  %301 = load i32, i32* @M_NOWAIT, align 4
  %302 = load i32, i32* @M_ZERO, align 4
  %303 = or i32 %301, %302
  %304 = call %struct.aac_event* @malloc(i32 24, i32 %300, i32 %303)
  store %struct.aac_event* %304, %struct.aac_event** %16, align 8
  %305 = load %struct.aac_event*, %struct.aac_event** %16, align 8
  %306 = icmp eq %struct.aac_event* %305, null
  br i1 %306, label %307, label %312

307:                                              ; preds = %285
  %308 = load %struct.aac_softc*, %struct.aac_softc** %6, align 8
  %309 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %308, i32 0, i32 1
  %310 = load i32, i32* %309, align 4
  %311 = call i32 (i32, i8*, ...) @device_printf(i32 %310, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  br label %600

312:                                              ; preds = %285
  %313 = load i32, i32* @aac_cam_event, align 4
  %314 = load %struct.aac_event*, %struct.aac_event** %16, align 8
  %315 = getelementptr inbounds %struct.aac_event, %struct.aac_event* %314, i32 0, i32 2
  store i32 %313, i32* %315, align 8
  %316 = load %union.ccb*, %union.ccb** %4, align 8
  %317 = load %struct.aac_event*, %struct.aac_event** %16, align 8
  %318 = getelementptr inbounds %struct.aac_event, %struct.aac_event* %317, i32 0, i32 1
  store %union.ccb* %316, %union.ccb** %318, align 8
  %319 = load i32, i32* @AAC_EVENT_CMFREE, align 4
  %320 = load %struct.aac_event*, %struct.aac_event** %16, align 8
  %321 = getelementptr inbounds %struct.aac_event, %struct.aac_event* %320, i32 0, i32 0
  store i32 %319, i32* %321, align 8
  %322 = load %struct.aac_softc*, %struct.aac_softc** %6, align 8
  %323 = load %struct.aac_event*, %struct.aac_event** %16, align 8
  %324 = call i32 @aac_add_event(%struct.aac_softc* %322, %struct.aac_event* %323)
  br label %600

325:                                              ; preds = %281
  %326 = load %struct.aac_command*, %struct.aac_command** %9, align 8
  %327 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %326, i32 0, i32 8
  %328 = load %struct.aac_fib*, %struct.aac_fib** %327, align 8
  store %struct.aac_fib* %328, %struct.aac_fib** %8, align 8
  %329 = load %struct.aac_fib*, %struct.aac_fib** %8, align 8
  %330 = getelementptr inbounds %struct.aac_fib, %struct.aac_fib* %329, i32 0, i32 1
  %331 = load i32*, i32** %330, align 8
  %332 = getelementptr inbounds i32, i32* %331, i64 0
  %333 = bitcast i32* %332 to %struct.aac_srb*
  store %struct.aac_srb* %333, %struct.aac_srb** %7, align 8
  %334 = load %struct.aac_command*, %struct.aac_command** %9, align 8
  %335 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %334, i32 0, i32 6
  store i64 0, i64* %335, align 8
  %336 = load %union.ccb*, %union.ccb** %4, align 8
  %337 = bitcast %union.ccb* %336 to %struct.TYPE_12__*
  %338 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %337, i32 0, i32 1
  %339 = load i32, i32* %338, align 4
  %340 = load i32, i32* @CAM_DIR_MASK, align 4
  %341 = and i32 %339, %340
  switch i32 %341, label %364 [
    i32 139, label %342
    i32 137, label %351
    i32 138, label %360
  ]

342:                                              ; preds = %325
  %343 = load i32, i32* @AAC_SRB_FLAGS_DATA_IN, align 4
  %344 = load %struct.aac_srb*, %struct.aac_srb** %7, align 8
  %345 = getelementptr inbounds %struct.aac_srb, %struct.aac_srb* %344, i32 0, i32 10
  store i32 %343, i32* %345, align 8
  %346 = load i32, i32* @AAC_CMD_DATAIN, align 4
  %347 = load %struct.aac_command*, %struct.aac_command** %9, align 8
  %348 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %347, i32 0, i32 0
  %349 = load i32, i32* %348, align 8
  %350 = or i32 %349, %346
  store i32 %350, i32* %348, align 8
  br label %375

351:                                              ; preds = %325
  %352 = load i32, i32* @AAC_SRB_FLAGS_DATA_OUT, align 4
  %353 = load %struct.aac_srb*, %struct.aac_srb** %7, align 8
  %354 = getelementptr inbounds %struct.aac_srb, %struct.aac_srb* %353, i32 0, i32 10
  store i32 %352, i32* %354, align 8
  %355 = load i32, i32* @AAC_CMD_DATAOUT, align 4
  %356 = load %struct.aac_command*, %struct.aac_command** %9, align 8
  %357 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %356, i32 0, i32 0
  %358 = load i32, i32* %357, align 8
  %359 = or i32 %358, %355
  store i32 %359, i32* %357, align 8
  br label %375

360:                                              ; preds = %325
  %361 = load i32, i32* @AAC_SRB_FLAGS_NO_DATA_XFER, align 4
  %362 = load %struct.aac_srb*, %struct.aac_srb** %7, align 8
  %363 = getelementptr inbounds %struct.aac_srb, %struct.aac_srb* %362, i32 0, i32 10
  store i32 %361, i32* %363, align 8
  br label %375

364:                                              ; preds = %325
  %365 = load i32, i32* @AAC_SRB_FLAGS_UNSPECIFIED_DIRECTION, align 4
  %366 = load %struct.aac_srb*, %struct.aac_srb** %7, align 8
  %367 = getelementptr inbounds %struct.aac_srb, %struct.aac_srb* %366, i32 0, i32 10
  store i32 %365, i32* %367, align 8
  %368 = load i32, i32* @AAC_CMD_DATAIN, align 4
  %369 = load i32, i32* @AAC_CMD_DATAOUT, align 4
  %370 = or i32 %368, %369
  %371 = load %struct.aac_command*, %struct.aac_command** %9, align 8
  %372 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %371, i32 0, i32 0
  %373 = load i32, i32* %372, align 8
  %374 = or i32 %373, %370
  store i32 %374, i32* %372, align 8
  br label %375

375:                                              ; preds = %364, %360, %351, %342
  %376 = load %union.ccb*, %union.ccb** %4, align 8
  %377 = bitcast %union.ccb* %376 to %struct.TYPE_12__*
  %378 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %377, i32 0, i32 0
  %379 = load i32, i32* %378, align 8
  switch i32 %379, label %541 [
    i32 130, label %380
    i32 131, label %523
  ]

380:                                              ; preds = %375
  %381 = load %union.ccb*, %union.ccb** %4, align 8
  %382 = bitcast %union.ccb* %381 to %struct.ccb_scsiio*
  store %struct.ccb_scsiio* %382, %struct.ccb_scsiio** %17, align 8
  %383 = load i32, i32* @AAC_SRB_FUNC_EXECUTE_SCSI, align 4
  %384 = load %struct.aac_srb*, %struct.aac_srb** %7, align 8
  %385 = getelementptr inbounds %struct.aac_srb, %struct.aac_srb* %384, i32 0, i32 5
  store i32 %383, i32* %385, align 8
  %386 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %17, align 8
  %387 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %386, i32 0, i32 3
  %388 = load i32, i32* %387, align 8
  %389 = load %struct.aac_srb*, %struct.aac_srb** %7, align 8
  %390 = getelementptr inbounds %struct.aac_srb, %struct.aac_srb* %389, i32 0, i32 8
  store i32 %388, i32* %390, align 8
  %391 = load %union.ccb*, %union.ccb** %4, align 8
  %392 = bitcast %union.ccb* %391 to %struct.TYPE_12__*
  %393 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %392, i32 0, i32 1
  %394 = load i32, i32* %393, align 4
  %395 = load i32, i32* @CAM_CDB_POINTER, align 4
  %396 = and i32 %394, %395
  %397 = icmp ne i32 %396, 0
  br i1 %397, label %398, label %411

398:                                              ; preds = %380
  %399 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %17, align 8
  %400 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %399, i32 0, i32 2
  %401 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %400, i32 0, i32 1
  %402 = load i32, i32* %401, align 4
  %403 = load %struct.aac_srb*, %struct.aac_srb** %7, align 8
  %404 = getelementptr inbounds %struct.aac_srb, %struct.aac_srb* %403, i32 0, i32 9
  %405 = load i32*, i32** %404, align 8
  %406 = getelementptr inbounds i32, i32* %405, i64 0
  %407 = load %struct.aac_srb*, %struct.aac_srb** %7, align 8
  %408 = getelementptr inbounds %struct.aac_srb, %struct.aac_srb* %407, i32 0, i32 8
  %409 = load i32, i32* %408, align 8
  %410 = call i32 @bcopy(i32 %402, i32* %406, i32 %409)
  br label %424

411:                                              ; preds = %380
  %412 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %17, align 8
  %413 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %412, i32 0, i32 2
  %414 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %413, i32 0, i32 0
  %415 = load i32, i32* %414, align 8
  %416 = load %struct.aac_srb*, %struct.aac_srb** %7, align 8
  %417 = getelementptr inbounds %struct.aac_srb, %struct.aac_srb* %416, i32 0, i32 9
  %418 = load i32*, i32** %417, align 8
  %419 = getelementptr inbounds i32, i32* %418, i64 0
  %420 = load %struct.aac_srb*, %struct.aac_srb** %7, align 8
  %421 = getelementptr inbounds %struct.aac_srb, %struct.aac_srb* %420, i32 0, i32 8
  %422 = load i32, i32* %421, align 8
  %423 = call i32 @bcopy(i32 %415, i32* %419, i32 %422)
  br label %424

424:                                              ; preds = %411, %398
  %425 = load %struct.aac_softc*, %struct.aac_softc** %6, align 8
  %426 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %425, i32 0, i32 0
  %427 = load i32, i32* %426, align 4
  %428 = load i32, i32* @AAC_FLAGS_SG_64BIT, align 4
  %429 = and i32 %427, %428
  %430 = icmp ne i32 %429, 0
  br i1 %430, label %431, label %433

431:                                              ; preds = %424
  %432 = load i8*, i8** @ScsiPortCommandU64, align 8
  br label %435

433:                                              ; preds = %424
  %434 = load i8*, i8** @ScsiPortCommand, align 8
  br label %435

435:                                              ; preds = %433, %431
  %436 = phi i8* [ %432, %431 ], [ %434, %433 ]
  %437 = load %struct.aac_fib*, %struct.aac_fib** %8, align 8
  %438 = getelementptr inbounds %struct.aac_fib, %struct.aac_fib* %437, i32 0, i32 0
  %439 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %438, i32 0, i32 2
  store i8* %436, i8** %439, align 8
  %440 = load %union.ccb*, %union.ccb** %4, align 8
  %441 = bitcast %union.ccb* %440 to %struct.TYPE_12__*
  %442 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %441, i32 0, i32 1
  %443 = load i32, i32* %442, align 4
  %444 = load i32, i32* @CAM_DIR_MASK, align 4
  %445 = and i32 %443, %444
  %446 = icmp ne i32 %445, 138
  br i1 %446, label %447, label %510

447:                                              ; preds = %435
  %448 = load %union.ccb*, %union.ccb** %4, align 8
  %449 = bitcast %union.ccb* %448 to %struct.TYPE_12__*
  %450 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %449, i32 0, i32 1
  %451 = load i32, i32* %450, align 4
  %452 = load i32, i32* @CAM_DATA_MASK, align 4
  %453 = and i32 %451, %452
  switch i32 %453, label %507 [
    i32 140, label %454
    i32 141, label %475
  ]

454:                                              ; preds = %447
  %455 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %17, align 8
  %456 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %455, i32 0, i32 0
  %457 = load i64, i64* %456, align 8
  %458 = load %struct.aac_srb*, %struct.aac_srb** %7, align 8
  %459 = getelementptr inbounds %struct.aac_srb, %struct.aac_srb* %458, i32 0, i32 6
  store i64 %457, i64* %459, align 8
  %460 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %17, align 8
  %461 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %460, i32 0, i32 1
  %462 = load i64, i64* %461, align 8
  %463 = inttoptr i64 %462 to i8*
  %464 = load %struct.aac_command*, %struct.aac_command** %9, align 8
  %465 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %464, i32 0, i32 7
  store i8* %463, i8** %465, align 8
  %466 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %17, align 8
  %467 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %466, i32 0, i32 0
  %468 = load i64, i64* %467, align 8
  %469 = load %struct.aac_command*, %struct.aac_command** %9, align 8
  %470 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %469, i32 0, i32 6
  store i64 %468, i64* %470, align 8
  %471 = load %struct.aac_srb*, %struct.aac_srb** %7, align 8
  %472 = getelementptr inbounds %struct.aac_srb, %struct.aac_srb* %471, i32 0, i32 7
  %473 = load %struct.aac_command*, %struct.aac_command** %9, align 8
  %474 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %473, i32 0, i32 5
  store %struct.TYPE_21__* %472, %struct.TYPE_21__** %474, align 8
  br label %509

475:                                              ; preds = %447
  %476 = load i8*, i8** @ScsiPortCommand, align 8
  %477 = load %struct.aac_fib*, %struct.aac_fib** %8, align 8
  %478 = getelementptr inbounds %struct.aac_fib, %struct.aac_fib* %477, i32 0, i32 0
  %479 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %478, i32 0, i32 2
  store i8* %476, i8** %479, align 8
  %480 = load %struct.aac_srb*, %struct.aac_srb** %7, align 8
  %481 = getelementptr inbounds %struct.aac_srb, %struct.aac_srb* %480, i32 0, i32 7
  %482 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %481, i32 0, i32 0
  store i32 1, i32* %482, align 8
  %483 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %17, align 8
  %484 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %483, i32 0, i32 1
  %485 = load i64, i64* %484, align 8
  %486 = trunc i64 %485 to i32
  %487 = load %struct.aac_srb*, %struct.aac_srb** %7, align 8
  %488 = getelementptr inbounds %struct.aac_srb, %struct.aac_srb* %487, i32 0, i32 7
  %489 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %488, i32 0, i32 1
  %490 = load %struct.TYPE_20__*, %struct.TYPE_20__** %489, align 8
  %491 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %490, i64 0
  %492 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %491, i32 0, i32 1
  store i32 %486, i32* %492, align 8
  %493 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %17, align 8
  %494 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %493, i32 0, i32 0
  %495 = load i64, i64* %494, align 8
  %496 = load %struct.aac_srb*, %struct.aac_srb** %7, align 8
  %497 = getelementptr inbounds %struct.aac_srb, %struct.aac_srb* %496, i32 0, i32 7
  %498 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %497, i32 0, i32 1
  %499 = load %struct.TYPE_20__*, %struct.TYPE_20__** %498, align 8
  %500 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %499, i64 0
  %501 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %500, i32 0, i32 0
  store i64 %495, i64* %501, align 8
  %502 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %17, align 8
  %503 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %502, i32 0, i32 0
  %504 = load i64, i64* %503, align 8
  %505 = load %struct.aac_srb*, %struct.aac_srb** %7, align 8
  %506 = getelementptr inbounds %struct.aac_srb, %struct.aac_srb* %505, i32 0, i32 6
  store i64 %504, i64* %506, align 8
  br label %509

507:                                              ; preds = %447
  %508 = call i32 @panic(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  br label %509

509:                                              ; preds = %507, %475, %454
  br label %522

510:                                              ; preds = %435
  %511 = load %struct.aac_srb*, %struct.aac_srb** %7, align 8
  %512 = getelementptr inbounds %struct.aac_srb, %struct.aac_srb* %511, i32 0, i32 7
  %513 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %512, i32 0, i32 0
  store i32 0, i32* %513, align 8
  %514 = load %struct.aac_srb*, %struct.aac_srb** %7, align 8
  %515 = getelementptr inbounds %struct.aac_srb, %struct.aac_srb* %514, i32 0, i32 7
  %516 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %515, i32 0, i32 1
  %517 = load %struct.TYPE_20__*, %struct.TYPE_20__** %516, align 8
  %518 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %517, i64 0
  %519 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %518, i32 0, i32 0
  store i64 0, i64* %519, align 8
  %520 = load %struct.aac_srb*, %struct.aac_srb** %7, align 8
  %521 = getelementptr inbounds %struct.aac_srb, %struct.aac_srb* %520, i32 0, i32 6
  store i64 0, i64* %521, align 8
  br label %522

522:                                              ; preds = %510, %509
  br label %542

523:                                              ; preds = %375
  %524 = load %struct.aac_softc*, %struct.aac_softc** %6, align 8
  %525 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %524, i32 0, i32 0
  %526 = load i32, i32* %525, align 4
  %527 = load i32, i32* @AAC_FLAGS_CAM_NORESET, align 4
  %528 = and i32 %526, %527
  %529 = icmp ne i32 %528, 0
  br i1 %529, label %534, label %530

530:                                              ; preds = %523
  %531 = load i32, i32* @AAC_SRB_FUNC_RESET_DEVICE, align 4
  %532 = load %struct.aac_srb*, %struct.aac_srb** %7, align 8
  %533 = getelementptr inbounds %struct.aac_srb, %struct.aac_srb* %532, i32 0, i32 5
  store i32 %531, i32* %533, align 8
  br label %542

534:                                              ; preds = %523
  %535 = load i8*, i8** @CAM_REQ_CMP, align 8
  %536 = load %union.ccb*, %union.ccb** %4, align 8
  %537 = bitcast %union.ccb* %536 to %struct.TYPE_12__*
  %538 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %537, i32 0, i32 5
  store i8* %535, i8** %538, align 8
  %539 = load %union.ccb*, %union.ccb** %4, align 8
  %540 = call i32 @xpt_done(%union.ccb* %539)
  br label %600

541:                                              ; preds = %375
  br label %542

542:                                              ; preds = %541, %530, %522
  %543 = load %struct.aac_cam*, %struct.aac_cam** %5, align 8
  %544 = getelementptr inbounds %struct.aac_cam, %struct.aac_cam* %543, i32 0, i32 0
  %545 = load %struct.TYPE_22__*, %struct.TYPE_22__** %544, align 8
  %546 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %545, i32 0, i32 0
  %547 = load i32, i32* %546, align 8
  %548 = load %struct.aac_srb*, %struct.aac_srb** %7, align 8
  %549 = getelementptr inbounds %struct.aac_srb, %struct.aac_srb* %548, i32 0, i32 4
  store i32 %547, i32* %549, align 4
  %550 = load %union.ccb*, %union.ccb** %4, align 8
  %551 = bitcast %union.ccb* %550 to %struct.TYPE_12__*
  %552 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %551, i32 0, i32 4
  %553 = load i32, i32* %552, align 8
  %554 = load %struct.aac_srb*, %struct.aac_srb** %7, align 8
  %555 = getelementptr inbounds %struct.aac_srb, %struct.aac_srb* %554, i32 0, i32 3
  store i32 %553, i32* %555, align 8
  %556 = load %union.ccb*, %union.ccb** %4, align 8
  %557 = bitcast %union.ccb* %556 to %struct.TYPE_12__*
  %558 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %557, i32 0, i32 3
  %559 = load i32, i32* %558, align 4
  %560 = load %struct.aac_srb*, %struct.aac_srb** %7, align 8
  %561 = getelementptr inbounds %struct.aac_srb, %struct.aac_srb* %560, i32 0, i32 2
  store i32 %559, i32* %561, align 4
  %562 = load %union.ccb*, %union.ccb** %4, align 8
  %563 = bitcast %union.ccb* %562 to %struct.TYPE_12__*
  %564 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %563, i32 0, i32 2
  %565 = load i32, i32* %564, align 8
  %566 = load %struct.aac_srb*, %struct.aac_srb** %7, align 8
  %567 = getelementptr inbounds %struct.aac_srb, %struct.aac_srb* %566, i32 0, i32 1
  store i32 %565, i32* %567, align 8
  %568 = load %struct.aac_srb*, %struct.aac_srb** %7, align 8
  %569 = getelementptr inbounds %struct.aac_srb, %struct.aac_srb* %568, i32 0, i32 0
  store i64 0, i64* %569, align 8
  %570 = load i32, i32* @aac_cam_complete, align 4
  %571 = load %struct.aac_command*, %struct.aac_command** %9, align 8
  %572 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %571, i32 0, i32 4
  store i32 %570, i32* %572, align 8
  %573 = load %union.ccb*, %union.ccb** %4, align 8
  %574 = load %struct.aac_command*, %struct.aac_command** %9, align 8
  %575 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %574, i32 0, i32 3
  store %union.ccb* %573, %union.ccb** %575, align 8
  %576 = load i32, i32* @time_uptime, align 4
  %577 = load %struct.aac_command*, %struct.aac_command** %9, align 8
  %578 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %577, i32 0, i32 2
  store i32 %576, i32* %578, align 8
  %579 = load i32, i32* @AAC_FIBSTATE_HOSTOWNED, align 4
  %580 = load i32, i32* @AAC_FIBSTATE_INITIALISED, align 4
  %581 = or i32 %579, %580
  %582 = load i32, i32* @AAC_FIBSTATE_FROMHOST, align 4
  %583 = or i32 %581, %582
  %584 = load i32, i32* @AAC_FIBSTATE_REXPECTED, align 4
  %585 = or i32 %583, %584
  %586 = load i32, i32* @AAC_FIBSTATE_NORM, align 4
  %587 = or i32 %585, %586
  %588 = load %struct.aac_fib*, %struct.aac_fib** %8, align 8
  %589 = getelementptr inbounds %struct.aac_fib, %struct.aac_fib* %588, i32 0, i32 0
  %590 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %589, i32 0, i32 0
  store i32 %587, i32* %590, align 8
  %591 = load %struct.aac_fib*, %struct.aac_fib** %8, align 8
  %592 = getelementptr inbounds %struct.aac_fib, %struct.aac_fib* %591, i32 0, i32 0
  %593 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %592, i32 0, i32 1
  store i32 84, i32* %593, align 4
  %594 = load %struct.aac_command*, %struct.aac_command** %9, align 8
  %595 = call i32 @aac_enqueue_ready(%struct.aac_command* %594)
  %596 = load %struct.aac_command*, %struct.aac_command** %9, align 8
  %597 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %596, i32 0, i32 1
  %598 = load i32, i32* %597, align 4
  %599 = call i32 @aac_startio(i32 %598)
  br label %600

600:                                              ; preds = %542, %534, %312, %307, %266, %257, %248, %245, %219, %212, %90, %67
  ret void
}

declare dso_local i64 @cam_sim_softc(%struct.cam_sim*) #1

declare dso_local i32 @fwprintf(%struct.aac_softc*, i8*, i8*) #1

declare dso_local i32 @xpt_done(%union.ccb*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i8* @cam_sim_name(%struct.cam_sim*) #1

declare dso_local i32 @cam_sim_unit(%struct.cam_sim*) #1

declare dso_local i8* @aac_cam_reset_bus(%struct.cam_sim*, %union.ccb*) #1

declare dso_local i8* @aac_cam_abort_ccb(%struct.cam_sim*, %union.ccb*) #1

declare dso_local i8* @aac_cam_term_io(%struct.cam_sim*, %union.ccb*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i64 @aac_alloc_command(%struct.aac_softc*, %struct.aac_command**) #1

declare dso_local i32 @xpt_freeze_simq(%struct.cam_sim*, i32) #1

declare dso_local %struct.aac_event* @malloc(i32, i32, i32) #1

declare dso_local i32 @aac_add_event(%struct.aac_softc*, %struct.aac_event*) #1

declare dso_local i32 @bcopy(i32, i32*, i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @aac_enqueue_ready(%struct.aac_command*) #1

declare dso_local i32 @aac_startio(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
