; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aacraid/extr_aacraid_cam.c_aac_cam_action.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aacraid/extr_aacraid_cam.c_aac_cam_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_sim = type { i32 }
%union.ccb = type { %struct.ccb_pathinq }
%struct.ccb_pathinq = type { i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32 }
%struct.aac_cam = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, i32, i32, i32, %struct.aac_softc* }
%struct.aac_softc = type { i32, i32, i32, i32 }
%struct.ccb_calc_geometry = type { i64, i64, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i8* }
%struct.TYPE_14__ = type { i32, i32, i32, i8*, i8*, i8*, %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_13__ = type { %struct.ccb_trans_settings_spi }
%struct.ccb_trans_settings_spi = type { i32, i32 }
%struct.TYPE_12__ = type { %struct.ccb_trans_settings_scsi }
%struct.ccb_trans_settings_scsi = type { i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64*, i64* }

@HBA_FLAGS_DBG_FUNCTION_ENTRY_B = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@MA_OWNED = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i8* null, align 8
@PIM_NOBUSRESET = common dso_local global i32 0, align 4
@PI_TAG_ABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"FreeBSD\00", align 1
@SIM_IDLEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"PMC-Sierra\00", align 1
@HBA_IDLEN = common dso_local global i32 0, align 4
@DEV_IDLEN = common dso_local global i32 0, align 4
@CCB_TRANS_DISC_ENB = common dso_local global i32 0, align 4
@CCB_TRANS_TAG_ENB = common dso_local global i32 0, align 4
@CCB_TRANS_DISC_VALID = common dso_local global i32 0, align 4
@CCB_TRANS_TQ_VALID = common dso_local global i32 0, align 4
@CAM_FUNC_NOTAVAIL = common dso_local global i8* null, align 8
@AAC_FLAGS_CAM_NORESET = common dso_local global i32 0, align 4
@CONTAINER_BUS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [26 x i8] c"Unsupported command 0x%x\0A\00", align 1
@CAM_PROVIDE_FAIL = common dso_local global i8* null, align 8
@CAM_CDB_POINTER = common dso_local global i32 0, align 4
@READ_6 = common dso_local global i64 0, align 8
@WRITE_6 = common dso_local global i64 0, align 8
@READ_10 = common dso_local global i64 0, align 8
@WRITE_10 = common dso_local global i64 0, align 8
@READ_12 = common dso_local global i64 0, align 8
@WRITE_12 = common dso_local global i64 0, align 8
@READ_16 = common dso_local global i64 0, align 8
@WRITE_16 = common dso_local global i64 0, align 8
@CTS_SCSI_FLAGS_TAG_ENB = common dso_local global i32 0, align 4
@CTS_SCSI_VALID_TQ = common dso_local global i32 0, align 4
@CTS_SPI_FLAGS_DISC_ENB = common dso_local global i32 0, align 4
@CTS_SPI_VALID_DISC = common dso_local global i32 0, align 4
@PIM_SEQSCAN = common dso_local global i32 0, align 4
@PROTO_SCSI = common dso_local global i8* null, align 8
@SCSI_REV_SPC2 = common dso_local global i8* null, align 8
@XPORT_SAS = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cam_sim*, %union.ccb*)* @aac_cam_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aac_cam_action(%struct.cam_sim* %0, %union.ccb* %1) #0 {
  %3 = alloca %struct.cam_sim*, align 8
  %4 = alloca %union.ccb*, align 8
  %5 = alloca %struct.aac_cam*, align 8
  %6 = alloca %struct.aac_softc*, align 8
  %7 = alloca %struct.ccb_calc_geometry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ccb_pathinq*, align 8
  %11 = alloca i64*, align 8
  store %struct.cam_sim* %0, %struct.cam_sim** %3, align 8
  store %union.ccb* %1, %union.ccb** %4, align 8
  %12 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %13 = call i64 @cam_sim_softc(%struct.cam_sim* %12)
  %14 = inttoptr i64 %13 to %struct.aac_cam*
  store %struct.aac_cam* %14, %struct.aac_cam** %5, align 8
  %15 = load %struct.aac_cam*, %struct.aac_cam** %5, align 8
  %16 = getelementptr inbounds %struct.aac_cam, %struct.aac_cam* %15, i32 0, i32 0
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 4
  %19 = load %struct.aac_softc*, %struct.aac_softc** %18, align 8
  store %struct.aac_softc* %19, %struct.aac_softc** %6, align 8
  %20 = load %struct.aac_softc*, %struct.aac_softc** %6, align 8
  %21 = load i8*, i8** @HBA_FLAGS_DBG_FUNCTION_ENTRY_B, align 8
  %22 = call i32 @fwprintf(%struct.aac_softc* %20, i8* %21, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.aac_softc*, %struct.aac_softc** %6, align 8
  %24 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %23, i32 0, i32 3
  %25 = load i32, i32* @MA_OWNED, align 4
  %26 = call i32 @mtx_assert(i32* %24, i32 %25)
  %27 = load %union.ccb*, %union.ccb** %4, align 8
  %28 = bitcast %union.ccb* %27 to %struct.TYPE_11__*
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  switch i32 %30, label %238 [
    i32 130, label %31
    i32 135, label %32
    i32 133, label %88
    i32 134, label %156
    i32 129, label %176
    i32 132, label %183
    i32 131, label %213
    i32 136, label %220
    i32 128, label %229
  ]

31:                                               ; preds = %2
  br label %253

32:                                               ; preds = %2
  %33 = load %union.ccb*, %union.ccb** %4, align 8
  %34 = bitcast %union.ccb* %33 to %struct.ccb_calc_geometry*
  store %struct.ccb_calc_geometry* %34, %struct.ccb_calc_geometry** %7, align 8
  %35 = load %struct.ccb_calc_geometry*, %struct.ccb_calc_geometry** %7, align 8
  %36 = getelementptr inbounds %struct.ccb_calc_geometry, %struct.ccb_calc_geometry* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.ccb_calc_geometry*, %struct.ccb_calc_geometry** %7, align 8
  %39 = getelementptr inbounds %struct.ccb_calc_geometry, %struct.ccb_calc_geometry* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = sdiv i64 1048576, %40
  %42 = sdiv i64 %37, %41
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp sge i32 %44, 2048
  br i1 %45, label %46, label %51

46:                                               ; preds = %32
  %47 = load %struct.ccb_calc_geometry*, %struct.ccb_calc_geometry** %7, align 8
  %48 = getelementptr inbounds %struct.ccb_calc_geometry, %struct.ccb_calc_geometry* %47, i32 0, i32 2
  store i32 255, i32* %48, align 8
  %49 = load %struct.ccb_calc_geometry*, %struct.ccb_calc_geometry** %7, align 8
  %50 = getelementptr inbounds %struct.ccb_calc_geometry, %struct.ccb_calc_geometry* %49, i32 0, i32 3
  store i32 63, i32* %50, align 4
  br label %65

51:                                               ; preds = %32
  %52 = load i32, i32* %8, align 4
  %53 = icmp sge i32 %52, 1024
  br i1 %53, label %54, label %59

54:                                               ; preds = %51
  %55 = load %struct.ccb_calc_geometry*, %struct.ccb_calc_geometry** %7, align 8
  %56 = getelementptr inbounds %struct.ccb_calc_geometry, %struct.ccb_calc_geometry* %55, i32 0, i32 2
  store i32 128, i32* %56, align 8
  %57 = load %struct.ccb_calc_geometry*, %struct.ccb_calc_geometry** %7, align 8
  %58 = getelementptr inbounds %struct.ccb_calc_geometry, %struct.ccb_calc_geometry* %57, i32 0, i32 3
  store i32 32, i32* %58, align 4
  br label %64

59:                                               ; preds = %51
  %60 = load %struct.ccb_calc_geometry*, %struct.ccb_calc_geometry** %7, align 8
  %61 = getelementptr inbounds %struct.ccb_calc_geometry, %struct.ccb_calc_geometry* %60, i32 0, i32 2
  store i32 64, i32* %61, align 8
  %62 = load %struct.ccb_calc_geometry*, %struct.ccb_calc_geometry** %7, align 8
  %63 = getelementptr inbounds %struct.ccb_calc_geometry, %struct.ccb_calc_geometry* %62, i32 0, i32 3
  store i32 32, i32* %63, align 4
  br label %64

64:                                               ; preds = %59, %54
  br label %65

65:                                               ; preds = %64, %46
  %66 = load %struct.ccb_calc_geometry*, %struct.ccb_calc_geometry** %7, align 8
  %67 = getelementptr inbounds %struct.ccb_calc_geometry, %struct.ccb_calc_geometry* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.ccb_calc_geometry*, %struct.ccb_calc_geometry** %7, align 8
  %70 = getelementptr inbounds %struct.ccb_calc_geometry, %struct.ccb_calc_geometry* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = mul nsw i32 %68, %71
  store i32 %72, i32* %9, align 4
  %73 = load %struct.ccb_calc_geometry*, %struct.ccb_calc_geometry** %7, align 8
  %74 = getelementptr inbounds %struct.ccb_calc_geometry, %struct.ccb_calc_geometry* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i32, i32* %9, align 4
  %77 = sext i32 %76 to i64
  %78 = sdiv i64 %75, %77
  %79 = trunc i64 %78 to i32
  %80 = load %struct.ccb_calc_geometry*, %struct.ccb_calc_geometry** %7, align 8
  %81 = getelementptr inbounds %struct.ccb_calc_geometry, %struct.ccb_calc_geometry* %80, i32 0, i32 4
  store i32 %79, i32* %81, align 8
  %82 = load i8*, i8** @CAM_REQ_CMP, align 8
  %83 = load %union.ccb*, %union.ccb** %4, align 8
  %84 = bitcast %union.ccb* %83 to %struct.TYPE_11__*
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 2
  store i8* %82, i8** %85, align 8
  %86 = load %union.ccb*, %union.ccb** %4, align 8
  %87 = call i32 @xpt_done(%union.ccb* %86)
  br label %337

88:                                               ; preds = %2
  %89 = load %union.ccb*, %union.ccb** %4, align 8
  %90 = bitcast %union.ccb* %89 to %struct.ccb_pathinq*
  store %struct.ccb_pathinq* %90, %struct.ccb_pathinq** %10, align 8
  %91 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %10, align 8
  %92 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %91, i32 0, i32 0
  store i32 1, i32* %92, align 8
  %93 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %10, align 8
  %94 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %93, i32 0, i32 18
  store i32 0, i32* %94, align 8
  %95 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %10, align 8
  %96 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %95, i32 0, i32 17
  store i32 0, i32* %96, align 4
  %97 = load %struct.aac_cam*, %struct.aac_cam** %5, align 8
  %98 = getelementptr inbounds %struct.aac_cam, %struct.aac_cam* %97, i32 0, i32 0
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  %102 = sub nsw i32 %101, 1
  %103 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %10, align 8
  %104 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %103, i32 0, i32 16
  store i32 %102, i32* %104, align 8
  %105 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %10, align 8
  %106 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %105, i32 0, i32 1
  store i32 7, i32* %106, align 4
  %107 = load %struct.aac_cam*, %struct.aac_cam** %5, align 8
  %108 = getelementptr inbounds %struct.aac_cam, %struct.aac_cam* %107, i32 0, i32 0
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %10, align 8
  %113 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %112, i32 0, i32 15
  store i32 %111, i32* %113, align 4
  %114 = load %struct.aac_cam*, %struct.aac_cam** %5, align 8
  %115 = getelementptr inbounds %struct.aac_cam, %struct.aac_cam* %114, i32 0, i32 0
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %10, align 8
  %120 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %119, i32 0, i32 14
  store i32 %118, i32* %120, align 8
  %121 = load i32, i32* @PIM_NOBUSRESET, align 4
  %122 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %10, align 8
  %123 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %122, i32 0, i32 12
  store i32 %121, i32* %123, align 8
  %124 = load i32, i32* @PI_TAG_ABLE, align 4
  %125 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %10, align 8
  %126 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %125, i32 0, i32 13
  store i32 %124, i32* %126, align 4
  %127 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %10, align 8
  %128 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %127, i32 0, i32 3
  store i32 300000, i32* %128, align 4
  %129 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %10, align 8
  %130 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %129, i32 0, i32 7
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @SIM_IDLEN, align 4
  %133 = call i32 @strlcpy(i32 %131, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %132)
  %134 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %10, align 8
  %135 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %134, i32 0, i32 6
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @HBA_IDLEN, align 4
  %138 = call i32 @strlcpy(i32 %136, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %137)
  %139 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %10, align 8
  %140 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %139, i32 0, i32 5
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %143 = call i8* @cam_sim_name(%struct.cam_sim* %142)
  %144 = load i32, i32* @DEV_IDLEN, align 4
  %145 = call i32 @strlcpy(i32 %141, i8* %143, i32 %144)
  %146 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %147 = call i32 @cam_sim_unit(%struct.cam_sim* %146)
  %148 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %10, align 8
  %149 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %148, i32 0, i32 4
  store i32 %147, i32* %149, align 8
  %150 = load i8*, i8** @CAM_REQ_CMP, align 8
  %151 = load %union.ccb*, %union.ccb** %4, align 8
  %152 = bitcast %union.ccb* %151 to %struct.TYPE_11__*
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 2
  store i8* %150, i8** %153, align 8
  %154 = load %union.ccb*, %union.ccb** %4, align 8
  %155 = call i32 @xpt_done(%union.ccb* %154)
  br label %337

156:                                              ; preds = %2
  %157 = load i32, i32* @CCB_TRANS_DISC_ENB, align 4
  %158 = load i32, i32* @CCB_TRANS_TAG_ENB, align 4
  %159 = or i32 %157, %158
  %160 = xor i32 %159, -1
  %161 = load %union.ccb*, %union.ccb** %4, align 8
  %162 = bitcast %union.ccb* %161 to %struct.TYPE_14__*
  %163 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %162, i32 0, i32 0
  store i32 %160, i32* %163, align 8
  %164 = load i32, i32* @CCB_TRANS_DISC_VALID, align 4
  %165 = load i32, i32* @CCB_TRANS_TQ_VALID, align 4
  %166 = or i32 %164, %165
  %167 = load %union.ccb*, %union.ccb** %4, align 8
  %168 = bitcast %union.ccb* %167 to %struct.TYPE_14__*
  %169 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %168, i32 0, i32 1
  store i32 %166, i32* %169, align 4
  %170 = load i8*, i8** @CAM_REQ_CMP, align 8
  %171 = load %union.ccb*, %union.ccb** %4, align 8
  %172 = bitcast %union.ccb* %171 to %struct.TYPE_11__*
  %173 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %172, i32 0, i32 2
  store i8* %170, i8** %173, align 8
  %174 = load %union.ccb*, %union.ccb** %4, align 8
  %175 = call i32 @xpt_done(%union.ccb* %174)
  br label %337

176:                                              ; preds = %2
  %177 = load i8*, i8** @CAM_FUNC_NOTAVAIL, align 8
  %178 = load %union.ccb*, %union.ccb** %4, align 8
  %179 = bitcast %union.ccb* %178 to %struct.TYPE_11__*
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %179, i32 0, i32 2
  store i8* %177, i8** %180, align 8
  %181 = load %union.ccb*, %union.ccb** %4, align 8
  %182 = call i32 @xpt_done(%union.ccb* %181)
  br label %337

183:                                              ; preds = %2
  %184 = load %struct.aac_softc*, %struct.aac_softc** %6, align 8
  %185 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* @AAC_FLAGS_CAM_NORESET, align 4
  %188 = and i32 %186, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %205, label %190

190:                                              ; preds = %183
  %191 = load %struct.aac_cam*, %struct.aac_cam** %5, align 8
  %192 = getelementptr inbounds %struct.aac_cam, %struct.aac_cam* %191, i32 0, i32 0
  %193 = load %struct.TYPE_10__*, %struct.TYPE_10__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = load i64, i64* @CONTAINER_BUS, align 8
  %197 = icmp ne i64 %195, %196
  br i1 %197, label %198, label %205

198:                                              ; preds = %190
  %199 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %200 = load %union.ccb*, %union.ccb** %4, align 8
  %201 = call i8* @aac_cam_reset_bus(%struct.cam_sim* %199, %union.ccb* %200)
  %202 = load %union.ccb*, %union.ccb** %4, align 8
  %203 = bitcast %union.ccb* %202 to %struct.TYPE_11__*
  %204 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %203, i32 0, i32 2
  store i8* %201, i8** %204, align 8
  br label %210

205:                                              ; preds = %190, %183
  %206 = load i8*, i8** @CAM_REQ_CMP, align 8
  %207 = load %union.ccb*, %union.ccb** %4, align 8
  %208 = bitcast %union.ccb* %207 to %struct.TYPE_11__*
  %209 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %208, i32 0, i32 2
  store i8* %206, i8** %209, align 8
  br label %210

210:                                              ; preds = %205, %198
  %211 = load %union.ccb*, %union.ccb** %4, align 8
  %212 = call i32 @xpt_done(%union.ccb* %211)
  br label %337

213:                                              ; preds = %2
  %214 = load i8*, i8** @CAM_REQ_CMP, align 8
  %215 = load %union.ccb*, %union.ccb** %4, align 8
  %216 = bitcast %union.ccb* %215 to %struct.TYPE_11__*
  %217 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %216, i32 0, i32 2
  store i8* %214, i8** %217, align 8
  %218 = load %union.ccb*, %union.ccb** %4, align 8
  %219 = call i32 @xpt_done(%union.ccb* %218)
  br label %337

220:                                              ; preds = %2
  %221 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %222 = load %union.ccb*, %union.ccb** %4, align 8
  %223 = call i8* @aac_cam_abort_ccb(%struct.cam_sim* %221, %union.ccb* %222)
  %224 = load %union.ccb*, %union.ccb** %4, align 8
  %225 = bitcast %union.ccb* %224 to %struct.TYPE_11__*
  %226 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %225, i32 0, i32 2
  store i8* %223, i8** %226, align 8
  %227 = load %union.ccb*, %union.ccb** %4, align 8
  %228 = call i32 @xpt_done(%union.ccb* %227)
  br label %337

229:                                              ; preds = %2
  %230 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %231 = load %union.ccb*, %union.ccb** %4, align 8
  %232 = call i8* @aac_cam_term_io(%struct.cam_sim* %230, %union.ccb* %231)
  %233 = load %union.ccb*, %union.ccb** %4, align 8
  %234 = bitcast %union.ccb* %233 to %struct.TYPE_11__*
  %235 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %234, i32 0, i32 2
  store i8* %232, i8** %235, align 8
  %236 = load %union.ccb*, %union.ccb** %4, align 8
  %237 = call i32 @xpt_done(%union.ccb* %236)
  br label %337

238:                                              ; preds = %2
  %239 = load %struct.aac_softc*, %struct.aac_softc** %6, align 8
  %240 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %239, i32 0, i32 2
  %241 = load i32, i32* %240, align 4
  %242 = load %union.ccb*, %union.ccb** %4, align 8
  %243 = bitcast %union.ccb* %242 to %struct.TYPE_11__*
  %244 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = call i32 @device_printf(i32 %241, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %245)
  %247 = load i8*, i8** @CAM_PROVIDE_FAIL, align 8
  %248 = load %union.ccb*, %union.ccb** %4, align 8
  %249 = bitcast %union.ccb* %248 to %struct.TYPE_11__*
  %250 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %249, i32 0, i32 2
  store i8* %247, i8** %250, align 8
  %251 = load %union.ccb*, %union.ccb** %4, align 8
  %252 = call i32 @xpt_done(%union.ccb* %251)
  br label %337

253:                                              ; preds = %31
  %254 = load %struct.aac_cam*, %struct.aac_cam** %5, align 8
  %255 = getelementptr inbounds %struct.aac_cam, %struct.aac_cam* %254, i32 0, i32 0
  %256 = load %struct.TYPE_10__*, %struct.TYPE_10__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %256, i32 0, i32 0
  %258 = load i64, i64* %257, align 8
  %259 = load i64, i64* @CONTAINER_BUS, align 8
  %260 = icmp eq i64 %258, %259
  br i1 %260, label %261, label %333

261:                                              ; preds = %253
  %262 = load %union.ccb*, %union.ccb** %4, align 8
  %263 = bitcast %union.ccb* %262 to %struct.TYPE_11__*
  %264 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 4
  %266 = load i32, i32* @CAM_CDB_POINTER, align 4
  %267 = and i32 %265, %266
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %275

269:                                              ; preds = %261
  %270 = load %union.ccb*, %union.ccb** %4, align 8
  %271 = bitcast %union.ccb* %270 to %struct.TYPE_9__*
  %272 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %271, i32 0, i32 0
  %273 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %272, i32 0, i32 1
  %274 = load i64*, i64** %273, align 8
  store i64* %274, i64** %11, align 8
  br label %282

275:                                              ; preds = %261
  %276 = load %union.ccb*, %union.ccb** %4, align 8
  %277 = bitcast %union.ccb* %276 to %struct.TYPE_9__*
  %278 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %277, i32 0, i32 0
  %279 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %278, i32 0, i32 0
  %280 = load i64*, i64** %279, align 8
  %281 = getelementptr inbounds i64, i64* %280, i64 0
  store i64* %281, i64** %11, align 8
  br label %282

282:                                              ; preds = %275, %269
  %283 = load i64*, i64** %11, align 8
  %284 = load i64, i64* %283, align 8
  %285 = load i64, i64* @READ_6, align 8
  %286 = icmp eq i64 %284, %285
  br i1 %286, label %322, label %287

287:                                              ; preds = %282
  %288 = load i64*, i64** %11, align 8
  %289 = load i64, i64* %288, align 8
  %290 = load i64, i64* @WRITE_6, align 8
  %291 = icmp eq i64 %289, %290
  br i1 %291, label %322, label %292

292:                                              ; preds = %287
  %293 = load i64*, i64** %11, align 8
  %294 = load i64, i64* %293, align 8
  %295 = load i64, i64* @READ_10, align 8
  %296 = icmp eq i64 %294, %295
  br i1 %296, label %322, label %297

297:                                              ; preds = %292
  %298 = load i64*, i64** %11, align 8
  %299 = load i64, i64* %298, align 8
  %300 = load i64, i64* @WRITE_10, align 8
  %301 = icmp eq i64 %299, %300
  br i1 %301, label %322, label %302

302:                                              ; preds = %297
  %303 = load i64*, i64** %11, align 8
  %304 = load i64, i64* %303, align 8
  %305 = load i64, i64* @READ_12, align 8
  %306 = icmp eq i64 %304, %305
  br i1 %306, label %322, label %307

307:                                              ; preds = %302
  %308 = load i64*, i64** %11, align 8
  %309 = load i64, i64* %308, align 8
  %310 = load i64, i64* @WRITE_12, align 8
  %311 = icmp eq i64 %309, %310
  br i1 %311, label %322, label %312

312:                                              ; preds = %307
  %313 = load i64*, i64** %11, align 8
  %314 = load i64, i64* %313, align 8
  %315 = load i64, i64* @READ_16, align 8
  %316 = icmp eq i64 %314, %315
  br i1 %316, label %322, label %317

317:                                              ; preds = %312
  %318 = load i64*, i64** %11, align 8
  %319 = load i64, i64* %318, align 8
  %320 = load i64, i64* @WRITE_16, align 8
  %321 = icmp eq i64 %319, %320
  br i1 %321, label %322, label %327

322:                                              ; preds = %317, %312, %307, %302, %297, %292, %287, %282
  %323 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %324 = load %union.ccb*, %union.ccb** %4, align 8
  %325 = load i64*, i64** %11, align 8
  %326 = call i32 @aac_container_rw_command(%struct.cam_sim* %323, %union.ccb* %324, i64* %325)
  br label %332

327:                                              ; preds = %317
  %328 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %329 = load %union.ccb*, %union.ccb** %4, align 8
  %330 = load i64*, i64** %11, align 8
  %331 = call i32 @aac_container_special_command(%struct.cam_sim* %328, %union.ccb* %329, i64* %330)
  br label %332

332:                                              ; preds = %327, %322
  br label %337

333:                                              ; preds = %253
  %334 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %335 = load %union.ccb*, %union.ccb** %4, align 8
  %336 = call i32 @aac_passthrough_command(%struct.cam_sim* %334, %union.ccb* %335)
  br label %337

337:                                              ; preds = %65, %88, %156, %176, %210, %213, %220, %229, %238, %333, %332
  ret void
}

declare dso_local i64 @cam_sim_softc(%struct.cam_sim*) #1

declare dso_local i32 @fwprintf(%struct.aac_softc*, i8*, i8*) #1

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @xpt_done(%union.ccb*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i8* @cam_sim_name(%struct.cam_sim*) #1

declare dso_local i32 @cam_sim_unit(%struct.cam_sim*) #1

declare dso_local i8* @aac_cam_reset_bus(%struct.cam_sim*, %union.ccb*) #1

declare dso_local i8* @aac_cam_abort_ccb(%struct.cam_sim*, %union.ccb*) #1

declare dso_local i8* @aac_cam_term_io(%struct.cam_sim*, %union.ccb*) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @aac_container_rw_command(%struct.cam_sim*, %union.ccb*, i64*) #1

declare dso_local i32 @aac_container_special_command(%struct.cam_sim*, %union.ccb*, i64*) #1

declare dso_local i32 @aac_passthrough_command(%struct.cam_sim*, %union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
