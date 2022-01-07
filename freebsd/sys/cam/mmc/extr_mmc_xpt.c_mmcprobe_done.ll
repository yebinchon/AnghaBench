; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/mmc/extr_mmc_xpt.c_mmcprobe_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/mmc/extr_mmc_xpt.c_mmcprobe_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_periph = type { %struct.TYPE_12__*, i64 }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%union.ccb = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, %struct.cam_path*, %struct.TYPE_9__ }
%struct.cam_path = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, %struct.mmc_params, i32 }
%struct.mmc_params = type { i32, i32, i32, i32, i32*, i32*, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.ccb_mmcio = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32*, i32 }

@CAM_DEBUG_PROBE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"mmcprobe_done\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Starting completion of PROBE_RESET\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"done with PROBE_RESET\0A\00", align 1
@MMC_ERR_NONE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"GO_IDLE_STATE failed with error %d\0A\00", align 1
@CAM_DEV_UNCONFIGURED = common dso_local global i32 0, align 4
@AC_LOST_DEVICE = common dso_local global i32 0, align 4
@PROBE_INVALID = common dso_local global i32 0, align 4
@PROTO_MMCSD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"IF_COND: error %d, pattern %08x\0A\00", align 1
@CARD_FEATURE_SD20 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"SD 2.0 interface conditions: OK\0A\00", align 1
@.str.6 = private unnamed_addr constant [47 x i8] c"SDIO_RESET: error %d, CCCR CTL register: %08x\0A\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"SDIO_INIT: error %d, %08x %08x %08x %08x\0A\00", align 1
@CARD_FEATURE_SDIO = common dso_local global i32 0, align 4
@R4_IO_OCR_MASK = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [25 x i8] c"SDIO card: %d functions\0A\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"SDIO OCR invalid?!\0A\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"SDIO OCR: %08x\0A\00", align 1
@R4_IO_MEM_PRESENT = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [31 x i8] c"MMC_INIT: error %d, resp %08x\0A\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"MMC card, OCR %08x\0A\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"-> sending OCR to card\0A\00", align 1
@MMC_OCR_CARD_BUSY = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [27 x i8] c"Card is still powering up\0A\00", align 1
@CARD_FEATURE_MMC = common dso_local global i32 0, align 4
@CARD_FEATURE_MEMORY = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [34 x i8] c"APP_OP_COND: error %d, resp %08x\0A\00", align 1
@PROBE_FLAG_ACMD_SENT = common dso_local global i32 0, align 4
@MMC_OCR_VOLTAGE = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [16 x i8] c"Card OCR: %08x\0A\00", align 1
@MMC_OCR_CCS = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [14 x i8] c"Card is SDHC\0A\00", align 1
@CARD_FEATURE_SDHC = common dso_local global i32 0, align 4
@MMC_OCR_S18A = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [30 x i8] c"Card supports 1.8V signaling\0A\00", align 1
@CARD_FEATURE_18V = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [22 x i8] c"Card not ready: %08x\0A\00", align 1
@.str.20 = private unnamed_addr constant [25 x i8] c"PROBE_GET_CID: error %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [22 x i8] c"CID %08x%08x%08x%08x\0A\00", align 1
@.str.22 = private unnamed_addr constant [24 x i8] c"Card published RCA: %u\0A\00", align 1
@.str.23 = private unnamed_addr constant [36 x i8] c"PROBE_SEND_RELATIVE_ADDR: error %d\0A\00", align 1
@.str.24 = private unnamed_addr constant [39 x i8] c"PROBE_MMC_SET_RELATIVE_ADDR: error %d\0A\00", align 1
@MMC_PROPOSED_RCA = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [25 x i8] c"PROBE_GET_CSD: error %d\0A\00", align 1
@.str.26 = private unnamed_addr constant [22 x i8] c"CSD %08x%08x%08x%08x\0A\00", align 1
@PROBE_DONE = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [42 x i8] c"mmc_probedone: invalid action state 0x%x\0A\00", align 1
@.str.28 = private unnamed_addr constant [34 x i8] c"default: case in mmc_probe_done()\00", align 1
@.str.29 = private unnamed_addr constant [61 x i8] c"mmc_probedone: Should send AC_LOST_DEVICE but won't for now\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.30 = private unnamed_addr constant [39 x i8] c"mmc_probedone: remaining freezecnt %d\0A\00", align 1
@XPT_GDEV_TYPE = common dso_local global i32 0, align 4
@AC_FOUND_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cam_periph*, %union.ccb*)* @mmcprobe_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmcprobe_done(%struct.cam_periph* %0, %union.ccb* %1) #0 {
  %3 = alloca %struct.cam_periph*, align 8
  %4 = alloca %union.ccb*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.cam_path*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ccb_mmcio*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mmc_params*, align 8
  %11 = alloca %struct.mmc_params*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.mmc_params*, align 8
  %15 = alloca %struct.mmc_params*, align 8
  %16 = alloca %struct.mmc_params*, align 8
  %17 = alloca %struct.mmc_params*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.mmc_params*, align 8
  %20 = alloca i32, align 4
  store %struct.cam_periph* %0, %struct.cam_periph** %3, align 8
  store %union.ccb* %1, %union.ccb** %4, align 8
  %21 = load %union.ccb*, %union.ccb** %4, align 8
  %22 = bitcast %union.ccb* %21 to %struct.TYPE_13__*
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 1
  %24 = load %struct.cam_path*, %struct.cam_path** %23, align 8
  %25 = load i32, i32* @CAM_DEBUG_PROBE, align 4
  %26 = call i32 @CAM_DEBUG(%struct.cam_path* %24, i32 %25, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %28 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %30, %struct.TYPE_14__** %5, align 8
  %31 = load %union.ccb*, %union.ccb** %4, align 8
  %32 = bitcast %union.ccb* %31 to %struct.TYPE_13__*
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 1
  %34 = load %struct.cam_path*, %struct.cam_path** %33, align 8
  store %struct.cam_path* %34, %struct.cam_path** %6, align 8
  %35 = load %union.ccb*, %union.ccb** %4, align 8
  %36 = bitcast %union.ccb* %35 to %struct.TYPE_13__*
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %9, align 4
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  switch i32 %42, label %828 [
    i32 134, label %43
    i32 137, label %43
    i32 129, label %94
    i32 132, label %147
    i32 133, label %171
    i32 136, label %295
    i32 130, label %389
    i32 139, label %563
    i32 128, label %640
    i32 135, label %703
    i32 138, label %735
    i32 131, label %801
  ]

43:                                               ; preds = %2, %2
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %45 = load %union.ccb*, %union.ccb** %4, align 8
  %46 = bitcast %union.ccb* %45 to %struct.TYPE_13__*
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 1
  %48 = load %struct.cam_path*, %struct.cam_path** %47, align 8
  %49 = load i32, i32* @CAM_DEBUG_PROBE, align 4
  %50 = call i32 @CAM_DEBUG(%struct.cam_path* %48, i32 %49, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %51 = load %union.ccb*, %union.ccb** %4, align 8
  %52 = bitcast %union.ccb* %51 to %struct.ccb_mmcio*
  store %struct.ccb_mmcio* %52, %struct.ccb_mmcio** %8, align 8
  %53 = load %struct.ccb_mmcio*, %struct.ccb_mmcio** %8, align 8
  %54 = getelementptr inbounds %struct.ccb_mmcio, %struct.ccb_mmcio* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @MMC_ERR_NONE, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %86

60:                                               ; preds = %43
  %61 = load %union.ccb*, %union.ccb** %4, align 8
  %62 = bitcast %union.ccb* %61 to %struct.TYPE_13__*
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 1
  %64 = load %struct.cam_path*, %struct.cam_path** %63, align 8
  %65 = load i32, i32* @CAM_DEBUG_PROBE, align 4
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = inttoptr i64 %67 to i8*
  %69 = call i32 @CAM_DEBUG(%struct.cam_path* %64, i32 %65, i8* %68)
  %70 = load %struct.cam_path*, %struct.cam_path** %6, align 8
  %71 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %70, i32 0, i32 0
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @CAM_DEV_UNCONFIGURED, align 4
  %76 = and i32 %74, %75
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %60
  %79 = load i32, i32* @AC_LOST_DEVICE, align 4
  %80 = load %struct.cam_path*, %struct.cam_path** %6, align 8
  %81 = call i32 @xpt_async(i32 %79, %struct.cam_path* %80, %union.ccb* null)
  br label %82

82:                                               ; preds = %78, %60
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %84 = load i32, i32* @PROBE_INVALID, align 4
  %85 = call i32 @PROBE_SET_ACTION(%struct.TYPE_14__* %83, i32 %84)
  br label %841

86:                                               ; preds = %43
  %87 = load i32, i32* @PROTO_MMCSD, align 4
  %88 = load %struct.cam_path*, %struct.cam_path** %6, align 8
  %89 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %88, i32 0, i32 0
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 2
  store i32 %87, i32* %91, align 8
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %93 = call i32 @PROBE_SET_ACTION(%struct.TYPE_14__* %92, i32 129)
  br label %841

94:                                               ; preds = %2
  %95 = load %union.ccb*, %union.ccb** %4, align 8
  %96 = bitcast %union.ccb* %95 to %struct.ccb_mmcio*
  store %struct.ccb_mmcio* %96, %struct.ccb_mmcio** %8, align 8
  %97 = load %struct.ccb_mmcio*, %struct.ccb_mmcio** %8, align 8
  %98 = getelementptr inbounds %struct.ccb_mmcio, %struct.ccb_mmcio* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  store i32 %100, i32* %7, align 4
  %101 = load %struct.cam_path*, %struct.cam_path** %6, align 8
  %102 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %101, i32 0, i32 0
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 1
  store %struct.mmc_params* %104, %struct.mmc_params** %10, align 8
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* @MMC_ERR_NONE, align 4
  %107 = icmp ne i32 %105, %106
  br i1 %107, label %116, label %108

108:                                              ; preds = %94
  %109 = load %struct.ccb_mmcio*, %struct.ccb_mmcio** %8, align 8
  %110 = getelementptr inbounds %struct.ccb_mmcio, %struct.ccb_mmcio* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 0
  %114 = load i32, i32* %113, align 4
  %115 = icmp ne i32 %114, 426
  br i1 %115, label %116, label %132

116:                                              ; preds = %108, %94
  %117 = load %union.ccb*, %union.ccb** %4, align 8
  %118 = bitcast %union.ccb* %117 to %struct.TYPE_13__*
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 1
  %120 = load %struct.cam_path*, %struct.cam_path** %119, align 8
  %121 = load i32, i32* @CAM_DEBUG_PROBE, align 4
  %122 = load i32, i32* %7, align 4
  %123 = load %struct.ccb_mmcio*, %struct.ccb_mmcio** %8, align 8
  %124 = getelementptr inbounds %struct.ccb_mmcio, %struct.ccb_mmcio* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 1
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 0
  %128 = load i32, i32* %127, align 4
  %129 = sext i32 %128 to i64
  %130 = inttoptr i64 %129 to i8*
  %131 = call i32 @CAM_DEBUG(%struct.cam_path* %120, i32 %121, i8* %130)
  br label %144

132:                                              ; preds = %108
  %133 = load i32, i32* @CARD_FEATURE_SD20, align 4
  %134 = load %struct.mmc_params*, %struct.mmc_params** %10, align 8
  %135 = getelementptr inbounds %struct.mmc_params, %struct.mmc_params* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = or i32 %136, %133
  store i32 %137, i32* %135, align 8
  %138 = load %union.ccb*, %union.ccb** %4, align 8
  %139 = bitcast %union.ccb* %138 to %struct.TYPE_13__*
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i32 0, i32 1
  %141 = load %struct.cam_path*, %struct.cam_path** %140, align 8
  %142 = load i32, i32* @CAM_DEBUG_PROBE, align 4
  %143 = call i32 @CAM_DEBUG(%struct.cam_path* %141, i32 %142, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  br label %144

144:                                              ; preds = %132, %116
  %145 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %146 = call i32 @PROBE_SET_ACTION(%struct.TYPE_14__* %145, i32 132)
  br label %841

147:                                              ; preds = %2
  %148 = load %union.ccb*, %union.ccb** %4, align 8
  %149 = bitcast %union.ccb* %148 to %struct.ccb_mmcio*
  store %struct.ccb_mmcio* %149, %struct.ccb_mmcio** %8, align 8
  %150 = load %struct.ccb_mmcio*, %struct.ccb_mmcio** %8, align 8
  %151 = getelementptr inbounds %struct.ccb_mmcio, %struct.ccb_mmcio* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  store i32 %153, i32* %7, align 4
  %154 = load %union.ccb*, %union.ccb** %4, align 8
  %155 = bitcast %union.ccb* %154 to %struct.TYPE_13__*
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 1
  %157 = load %struct.cam_path*, %struct.cam_path** %156, align 8
  %158 = load i32, i32* @CAM_DEBUG_PROBE, align 4
  %159 = load i32, i32* %7, align 4
  %160 = load %struct.ccb_mmcio*, %struct.ccb_mmcio** %8, align 8
  %161 = getelementptr inbounds %struct.ccb_mmcio, %struct.ccb_mmcio* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 1
  %163 = load i32*, i32** %162, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 0
  %165 = load i32, i32* %164, align 4
  %166 = sext i32 %165 to i64
  %167 = inttoptr i64 %166 to i8*
  %168 = call i32 @CAM_DEBUG(%struct.cam_path* %157, i32 %158, i8* %167)
  %169 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %170 = call i32 @PROBE_SET_ACTION(%struct.TYPE_14__* %169, i32 133)
  br label %841

171:                                              ; preds = %2
  %172 = load %union.ccb*, %union.ccb** %4, align 8
  %173 = bitcast %union.ccb* %172 to %struct.ccb_mmcio*
  store %struct.ccb_mmcio* %173, %struct.ccb_mmcio** %8, align 8
  %174 = load %struct.ccb_mmcio*, %struct.ccb_mmcio** %8, align 8
  %175 = getelementptr inbounds %struct.ccb_mmcio, %struct.ccb_mmcio* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  store i32 %177, i32* %7, align 4
  %178 = load %struct.cam_path*, %struct.cam_path** %6, align 8
  %179 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %178, i32 0, i32 0
  %180 = load %struct.TYPE_15__*, %struct.TYPE_15__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %180, i32 0, i32 1
  store %struct.mmc_params* %181, %struct.mmc_params** %11, align 8
  %182 = load %union.ccb*, %union.ccb** %4, align 8
  %183 = bitcast %union.ccb* %182 to %struct.TYPE_13__*
  %184 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %183, i32 0, i32 1
  %185 = load %struct.cam_path*, %struct.cam_path** %184, align 8
  %186 = load i32, i32* @CAM_DEBUG_PROBE, align 4
  %187 = load i32, i32* %7, align 4
  %188 = load %struct.ccb_mmcio*, %struct.ccb_mmcio** %8, align 8
  %189 = getelementptr inbounds %struct.ccb_mmcio, %struct.ccb_mmcio* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %189, i32 0, i32 1
  %191 = load i32*, i32** %190, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 0
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.ccb_mmcio*, %struct.ccb_mmcio** %8, align 8
  %195 = getelementptr inbounds %struct.ccb_mmcio, %struct.ccb_mmcio* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %195, i32 0, i32 1
  %197 = load i32*, i32** %196, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 1
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.ccb_mmcio*, %struct.ccb_mmcio** %8, align 8
  %201 = getelementptr inbounds %struct.ccb_mmcio, %struct.ccb_mmcio* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i32 0, i32 1
  %203 = load i32*, i32** %202, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 2
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.ccb_mmcio*, %struct.ccb_mmcio** %8, align 8
  %207 = getelementptr inbounds %struct.ccb_mmcio, %struct.ccb_mmcio* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %207, i32 0, i32 1
  %209 = load i32*, i32** %208, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 3
  %211 = load i32, i32* %210, align 4
  %212 = sext i32 %211 to i64
  %213 = inttoptr i64 %212 to i8*
  %214 = call i32 @CAM_DEBUG(%struct.cam_path* %185, i32 %186, i8* %213)
  %215 = load i32, i32* %7, align 4
  %216 = load i32, i32* @MMC_ERR_NONE, align 4
  %217 = icmp ne i32 %215, %216
  br i1 %217, label %218, label %221

218:                                              ; preds = %171
  %219 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %220 = call i32 @PROBE_SET_ACTION(%struct.TYPE_14__* %219, i32 130)
  br label %841

221:                                              ; preds = %171
  %222 = load i32, i32* @CARD_FEATURE_SDIO, align 4
  %223 = load %struct.mmc_params*, %struct.mmc_params** %11, align 8
  %224 = getelementptr inbounds %struct.mmc_params, %struct.mmc_params* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = or i32 %225, %222
  store i32 %226, i32* %224, align 8
  %227 = load %struct.ccb_mmcio*, %struct.ccb_mmcio** %8, align 8
  %228 = getelementptr inbounds %struct.ccb_mmcio, %struct.ccb_mmcio* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %228, i32 0, i32 1
  %230 = load i32*, i32** %229, align 8
  %231 = getelementptr inbounds i32, i32* %230, i64 0
  %232 = load i32, i32* %231, align 4
  store i32 %232, i32* %12, align 4
  %233 = load i32, i32* %12, align 4
  %234 = load i32, i32* @R4_IO_OCR_MASK, align 4
  %235 = and i32 %233, %234
  store i32 %235, i32* %13, align 4
  %236 = load i32, i32* %12, align 4
  %237 = call i32 @R4_IO_NUM_FUNCTIONS(i32 %236)
  %238 = load %struct.mmc_params*, %struct.mmc_params** %11, align 8
  %239 = getelementptr inbounds %struct.mmc_params, %struct.mmc_params* %238, i32 0, i32 6
  store i32 %237, i32* %239, align 8
  %240 = load %union.ccb*, %union.ccb** %4, align 8
  %241 = bitcast %union.ccb* %240 to %struct.TYPE_13__*
  %242 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %241, i32 0, i32 1
  %243 = load %struct.cam_path*, %struct.cam_path** %242, align 8
  %244 = load i32, i32* @CAM_DEBUG_PROBE, align 4
  %245 = load %struct.mmc_params*, %struct.mmc_params** %11, align 8
  %246 = getelementptr inbounds %struct.mmc_params, %struct.mmc_params* %245, i32 0, i32 6
  %247 = load i32, i32* %246, align 8
  %248 = sext i32 %247 to i64
  %249 = inttoptr i64 %248 to i8*
  %250 = call i32 @CAM_DEBUG(%struct.cam_path* %243, i32 %244, i8* %249)
  %251 = load i32, i32* %13, align 4
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %253, label %260

253:                                              ; preds = %221
  %254 = load %union.ccb*, %union.ccb** %4, align 8
  %255 = bitcast %union.ccb* %254 to %struct.TYPE_13__*
  %256 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %255, i32 0, i32 1
  %257 = load %struct.cam_path*, %struct.cam_path** %256, align 8
  %258 = load i32, i32* @CAM_DEBUG_PROBE, align 4
  %259 = call i32 @CAM_DEBUG(%struct.cam_path* %257, i32 %258, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0))
  br label %841

260:                                              ; preds = %221
  %261 = load i32, i32* %13, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %272

263:                                              ; preds = %260
  %264 = load %struct.mmc_params*, %struct.mmc_params** %11, align 8
  %265 = getelementptr inbounds %struct.mmc_params, %struct.mmc_params* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 4
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %268, label %272

268:                                              ; preds = %263
  %269 = load i32, i32* %13, align 4
  %270 = load %struct.mmc_params*, %struct.mmc_params** %11, align 8
  %271 = getelementptr inbounds %struct.mmc_params, %struct.mmc_params* %270, i32 0, i32 1
  store i32 %269, i32* %271, align 4
  br label %841

272:                                              ; preds = %263, %260
  %273 = load %union.ccb*, %union.ccb** %4, align 8
  %274 = bitcast %union.ccb* %273 to %struct.TYPE_13__*
  %275 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %274, i32 0, i32 1
  %276 = load %struct.cam_path*, %struct.cam_path** %275, align 8
  %277 = load i32, i32* @CAM_DEBUG_PROBE, align 4
  %278 = load %struct.mmc_params*, %struct.mmc_params** %11, align 8
  %279 = getelementptr inbounds %struct.mmc_params, %struct.mmc_params* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 4
  %281 = sext i32 %280 to i64
  %282 = inttoptr i64 %281 to i8*
  %283 = call i32 @CAM_DEBUG(%struct.cam_path* %276, i32 %277, i8* %282)
  %284 = load i32, i32* %12, align 4
  %285 = load i32, i32* @R4_IO_MEM_PRESENT, align 4
  %286 = and i32 %284, %285
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %291

288:                                              ; preds = %272
  %289 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %290 = call i32 @PROBE_SET_ACTION(%struct.TYPE_14__* %289, i32 130)
  br label %294

291:                                              ; preds = %272
  %292 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %293 = call i32 @PROBE_SET_ACTION(%struct.TYPE_14__* %292, i32 128)
  br label %294

294:                                              ; preds = %291, %288
  br label %841

295:                                              ; preds = %2
  %296 = load %union.ccb*, %union.ccb** %4, align 8
  %297 = bitcast %union.ccb* %296 to %struct.ccb_mmcio*
  store %struct.ccb_mmcio* %297, %struct.ccb_mmcio** %8, align 8
  %298 = load %struct.ccb_mmcio*, %struct.ccb_mmcio** %8, align 8
  %299 = getelementptr inbounds %struct.ccb_mmcio, %struct.ccb_mmcio* %298, i32 0, i32 0
  %300 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 8
  store i32 %301, i32* %7, align 4
  %302 = load %struct.cam_path*, %struct.cam_path** %6, align 8
  %303 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %302, i32 0, i32 0
  %304 = load %struct.TYPE_15__*, %struct.TYPE_15__** %303, align 8
  %305 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %304, i32 0, i32 1
  store %struct.mmc_params* %305, %struct.mmc_params** %14, align 8
  %306 = load i32, i32* %7, align 4
  %307 = load i32, i32* @MMC_ERR_NONE, align 4
  %308 = icmp ne i32 %306, %307
  br i1 %308, label %309, label %328

309:                                              ; preds = %295
  %310 = load %union.ccb*, %union.ccb** %4, align 8
  %311 = bitcast %union.ccb* %310 to %struct.TYPE_13__*
  %312 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %311, i32 0, i32 1
  %313 = load %struct.cam_path*, %struct.cam_path** %312, align 8
  %314 = load i32, i32* @CAM_DEBUG_PROBE, align 4
  %315 = load i32, i32* %7, align 4
  %316 = load %struct.ccb_mmcio*, %struct.ccb_mmcio** %8, align 8
  %317 = getelementptr inbounds %struct.ccb_mmcio, %struct.ccb_mmcio* %316, i32 0, i32 0
  %318 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %317, i32 0, i32 1
  %319 = load i32*, i32** %318, align 8
  %320 = getelementptr inbounds i32, i32* %319, i64 0
  %321 = load i32, i32* %320, align 4
  %322 = sext i32 %321 to i64
  %323 = inttoptr i64 %322 to i8*
  %324 = call i32 @CAM_DEBUG(%struct.cam_path* %313, i32 %314, i8* %323)
  %325 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %326 = load i32, i32* @PROBE_INVALID, align 4
  %327 = call i32 @PROBE_SET_ACTION(%struct.TYPE_14__* %325, i32 %326)
  br label %841

328:                                              ; preds = %295
  %329 = load %union.ccb*, %union.ccb** %4, align 8
  %330 = bitcast %union.ccb* %329 to %struct.TYPE_13__*
  %331 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %330, i32 0, i32 1
  %332 = load %struct.cam_path*, %struct.cam_path** %331, align 8
  %333 = load i32, i32* @CAM_DEBUG_PROBE, align 4
  %334 = load %struct.ccb_mmcio*, %struct.ccb_mmcio** %8, align 8
  %335 = getelementptr inbounds %struct.ccb_mmcio, %struct.ccb_mmcio* %334, i32 0, i32 0
  %336 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %335, i32 0, i32 1
  %337 = load i32*, i32** %336, align 8
  %338 = getelementptr inbounds i32, i32* %337, i64 0
  %339 = load i32, i32* %338, align 4
  %340 = sext i32 %339 to i64
  %341 = inttoptr i64 %340 to i8*
  %342 = call i32 @CAM_DEBUG(%struct.cam_path* %332, i32 %333, i8* %341)
  %343 = load %struct.mmc_params*, %struct.mmc_params** %14, align 8
  %344 = getelementptr inbounds %struct.mmc_params, %struct.mmc_params* %343, i32 0, i32 2
  %345 = load i32, i32* %344, align 8
  %346 = icmp eq i32 %345, 0
  br i1 %346, label %347, label %362

347:                                              ; preds = %328
  %348 = load %struct.ccb_mmcio*, %struct.ccb_mmcio** %8, align 8
  %349 = getelementptr inbounds %struct.ccb_mmcio, %struct.ccb_mmcio* %348, i32 0, i32 0
  %350 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %349, i32 0, i32 1
  %351 = load i32*, i32** %350, align 8
  %352 = getelementptr inbounds i32, i32* %351, i64 0
  %353 = load i32, i32* %352, align 4
  %354 = load %struct.mmc_params*, %struct.mmc_params** %14, align 8
  %355 = getelementptr inbounds %struct.mmc_params, %struct.mmc_params* %354, i32 0, i32 2
  store i32 %353, i32* %355, align 8
  %356 = load %union.ccb*, %union.ccb** %4, align 8
  %357 = bitcast %union.ccb* %356 to %struct.TYPE_13__*
  %358 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %357, i32 0, i32 1
  %359 = load %struct.cam_path*, %struct.cam_path** %358, align 8
  %360 = load i32, i32* @CAM_DEBUG_PROBE, align 4
  %361 = call i32 @CAM_DEBUG(%struct.cam_path* %359, i32 %360, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0))
  br label %841

362:                                              ; preds = %328
  %363 = load %struct.ccb_mmcio*, %struct.ccb_mmcio** %8, align 8
  %364 = getelementptr inbounds %struct.ccb_mmcio, %struct.ccb_mmcio* %363, i32 0, i32 0
  %365 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %364, i32 0, i32 1
  %366 = load i32*, i32** %365, align 8
  %367 = getelementptr inbounds i32, i32* %366, i64 0
  %368 = load i32, i32* %367, align 4
  %369 = load i32, i32* @MMC_OCR_CARD_BUSY, align 4
  %370 = and i32 %368, %369
  %371 = icmp ne i32 %370, 0
  br i1 %371, label %379, label %372

372:                                              ; preds = %362
  %373 = load %union.ccb*, %union.ccb** %4, align 8
  %374 = bitcast %union.ccb* %373 to %struct.TYPE_13__*
  %375 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %374, i32 0, i32 1
  %376 = load %struct.cam_path*, %struct.cam_path** %375, align 8
  %377 = load i32, i32* @CAM_DEBUG_PROBE, align 4
  %378 = call i32 @CAM_DEBUG(%struct.cam_path* %376, i32 %377, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i64 0, i64 0))
  br label %841

379:                                              ; preds = %362
  %380 = load i32, i32* @CARD_FEATURE_MMC, align 4
  %381 = load i32, i32* @CARD_FEATURE_MEMORY, align 4
  %382 = or i32 %380, %381
  %383 = load %struct.mmc_params*, %struct.mmc_params** %14, align 8
  %384 = getelementptr inbounds %struct.mmc_params, %struct.mmc_params* %383, i32 0, i32 0
  %385 = load i32, i32* %384, align 8
  %386 = or i32 %385, %382
  store i32 %386, i32* %384, align 8
  %387 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %388 = call i32 @PROBE_SET_ACTION(%struct.TYPE_14__* %387, i32 139)
  br label %841

389:                                              ; preds = %2
  %390 = load %union.ccb*, %union.ccb** %4, align 8
  %391 = bitcast %union.ccb* %390 to %struct.ccb_mmcio*
  store %struct.ccb_mmcio* %391, %struct.ccb_mmcio** %8, align 8
  %392 = load %struct.ccb_mmcio*, %struct.ccb_mmcio** %8, align 8
  %393 = getelementptr inbounds %struct.ccb_mmcio, %struct.ccb_mmcio* %392, i32 0, i32 0
  %394 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %393, i32 0, i32 0
  %395 = load i32, i32* %394, align 8
  store i32 %395, i32* %7, align 4
  %396 = load i32, i32* %7, align 4
  %397 = load i32, i32* @MMC_ERR_NONE, align 4
  %398 = icmp ne i32 %396, %397
  br i1 %398, label %399, label %417

399:                                              ; preds = %389
  %400 = load %union.ccb*, %union.ccb** %4, align 8
  %401 = bitcast %union.ccb* %400 to %struct.TYPE_13__*
  %402 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %401, i32 0, i32 1
  %403 = load %struct.cam_path*, %struct.cam_path** %402, align 8
  %404 = load i32, i32* @CAM_DEBUG_PROBE, align 4
  %405 = load i32, i32* %7, align 4
  %406 = load %struct.ccb_mmcio*, %struct.ccb_mmcio** %8, align 8
  %407 = getelementptr inbounds %struct.ccb_mmcio, %struct.ccb_mmcio* %406, i32 0, i32 0
  %408 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %407, i32 0, i32 1
  %409 = load i32*, i32** %408, align 8
  %410 = getelementptr inbounds i32, i32* %409, i64 0
  %411 = load i32, i32* %410, align 4
  %412 = sext i32 %411 to i64
  %413 = inttoptr i64 %412 to i8*
  %414 = call i32 @CAM_DEBUG(%struct.cam_path* %403, i32 %404, i8* %413)
  %415 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %416 = call i32 @PROBE_SET_ACTION(%struct.TYPE_14__* %415, i32 136)
  br label %841

417:                                              ; preds = %389
  %418 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %419 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %418, i32 0, i32 1
  %420 = load i32, i32* %419, align 4
  %421 = load i32, i32* @PROBE_FLAG_ACMD_SENT, align 4
  %422 = and i32 %420, %421
  %423 = icmp ne i32 %422, 0
  br i1 %423, label %430, label %424

424:                                              ; preds = %417
  %425 = load i32, i32* @PROBE_FLAG_ACMD_SENT, align 4
  %426 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %427 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %426, i32 0, i32 1
  %428 = load i32, i32* %427, align 4
  %429 = or i32 %428, %425
  store i32 %429, i32* %427, align 4
  br label %841

430:                                              ; preds = %417
  %431 = load i32, i32* @PROBE_FLAG_ACMD_SENT, align 4
  %432 = xor i32 %431, -1
  %433 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %434 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %433, i32 0, i32 1
  %435 = load i32, i32* %434, align 4
  %436 = and i32 %435, %432
  store i32 %436, i32* %434, align 4
  %437 = load %struct.ccb_mmcio*, %struct.ccb_mmcio** %8, align 8
  %438 = getelementptr inbounds %struct.ccb_mmcio, %struct.ccb_mmcio* %437, i32 0, i32 0
  %439 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %438, i32 0, i32 1
  %440 = load i32*, i32** %439, align 8
  %441 = getelementptr inbounds i32, i32* %440, i64 0
  %442 = load i32, i32* %441, align 4
  %443 = load i32, i32* @MMC_OCR_CARD_BUSY, align 4
  %444 = and i32 %442, %443
  %445 = icmp ne i32 %444, 0
  br i1 %445, label %454, label %446

446:                                              ; preds = %430
  %447 = load %struct.ccb_mmcio*, %struct.ccb_mmcio** %8, align 8
  %448 = getelementptr inbounds %struct.ccb_mmcio, %struct.ccb_mmcio* %447, i32 0, i32 0
  %449 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %448, i32 0, i32 2
  %450 = load i32, i32* %449, align 8
  %451 = load i32, i32* @MMC_OCR_VOLTAGE, align 4
  %452 = and i32 %450, %451
  %453 = icmp eq i32 %452, 0
  br i1 %453, label %454, label %545

454:                                              ; preds = %446, %430
  %455 = load %struct.cam_path*, %struct.cam_path** %6, align 8
  %456 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %455, i32 0, i32 0
  %457 = load %struct.TYPE_15__*, %struct.TYPE_15__** %456, align 8
  %458 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %457, i32 0, i32 1
  store %struct.mmc_params* %458, %struct.mmc_params** %15, align 8
  %459 = load %union.ccb*, %union.ccb** %4, align 8
  %460 = bitcast %union.ccb* %459 to %struct.TYPE_13__*
  %461 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %460, i32 0, i32 1
  %462 = load %struct.cam_path*, %struct.cam_path** %461, align 8
  %463 = load i32, i32* @CAM_DEBUG_PROBE, align 4
  %464 = load %struct.ccb_mmcio*, %struct.ccb_mmcio** %8, align 8
  %465 = getelementptr inbounds %struct.ccb_mmcio, %struct.ccb_mmcio* %464, i32 0, i32 0
  %466 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %465, i32 0, i32 1
  %467 = load i32*, i32** %466, align 8
  %468 = getelementptr inbounds i32, i32* %467, i64 0
  %469 = load i32, i32* %468, align 4
  %470 = sext i32 %469 to i64
  %471 = inttoptr i64 %470 to i8*
  %472 = call i32 @CAM_DEBUG(%struct.cam_path* %462, i32 %463, i8* %471)
  %473 = load %struct.mmc_params*, %struct.mmc_params** %15, align 8
  %474 = getelementptr inbounds %struct.mmc_params, %struct.mmc_params* %473, i32 0, i32 2
  %475 = load i32, i32* %474, align 8
  %476 = icmp eq i32 %475, 0
  br i1 %476, label %477, label %492

477:                                              ; preds = %454
  %478 = load %struct.ccb_mmcio*, %struct.ccb_mmcio** %8, align 8
  %479 = getelementptr inbounds %struct.ccb_mmcio, %struct.ccb_mmcio* %478, i32 0, i32 0
  %480 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %479, i32 0, i32 1
  %481 = load i32*, i32** %480, align 8
  %482 = getelementptr inbounds i32, i32* %481, i64 0
  %483 = load i32, i32* %482, align 4
  %484 = load %struct.mmc_params*, %struct.mmc_params** %15, align 8
  %485 = getelementptr inbounds %struct.mmc_params, %struct.mmc_params* %484, i32 0, i32 2
  store i32 %483, i32* %485, align 8
  %486 = load %union.ccb*, %union.ccb** %4, align 8
  %487 = bitcast %union.ccb* %486 to %struct.TYPE_13__*
  %488 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %487, i32 0, i32 1
  %489 = load %struct.cam_path*, %struct.cam_path** %488, align 8
  %490 = load i32, i32* @CAM_DEBUG_PROBE, align 4
  %491 = call i32 @CAM_DEBUG(%struct.cam_path* %489, i32 %490, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0))
  br label %495

492:                                              ; preds = %454
  %493 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %494 = call i32 @PROBE_SET_ACTION(%struct.TYPE_14__* %493, i32 139)
  br label %495

495:                                              ; preds = %492, %477
  %496 = load i32, i32* @CARD_FEATURE_MEMORY, align 4
  %497 = load %struct.mmc_params*, %struct.mmc_params** %15, align 8
  %498 = getelementptr inbounds %struct.mmc_params, %struct.mmc_params* %497, i32 0, i32 0
  %499 = load i32, i32* %498, align 8
  %500 = or i32 %499, %496
  store i32 %500, i32* %498, align 8
  %501 = load %struct.ccb_mmcio*, %struct.ccb_mmcio** %8, align 8
  %502 = getelementptr inbounds %struct.ccb_mmcio, %struct.ccb_mmcio* %501, i32 0, i32 0
  %503 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %502, i32 0, i32 1
  %504 = load i32*, i32** %503, align 8
  %505 = getelementptr inbounds i32, i32* %504, i64 0
  %506 = load i32, i32* %505, align 4
  %507 = load i32, i32* @MMC_OCR_CCS, align 4
  %508 = and i32 %506, %507
  %509 = icmp ne i32 %508, 0
  br i1 %509, label %510, label %522

510:                                              ; preds = %495
  %511 = load %union.ccb*, %union.ccb** %4, align 8
  %512 = bitcast %union.ccb* %511 to %struct.TYPE_13__*
  %513 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %512, i32 0, i32 1
  %514 = load %struct.cam_path*, %struct.cam_path** %513, align 8
  %515 = load i32, i32* @CAM_DEBUG_PROBE, align 4
  %516 = call i32 @CAM_DEBUG(%struct.cam_path* %514, i32 %515, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0))
  %517 = load i32, i32* @CARD_FEATURE_SDHC, align 4
  %518 = load %struct.mmc_params*, %struct.mmc_params** %15, align 8
  %519 = getelementptr inbounds %struct.mmc_params, %struct.mmc_params* %518, i32 0, i32 0
  %520 = load i32, i32* %519, align 8
  %521 = or i32 %520, %517
  store i32 %521, i32* %519, align 8
  br label %522

522:                                              ; preds = %510, %495
  %523 = load %struct.ccb_mmcio*, %struct.ccb_mmcio** %8, align 8
  %524 = getelementptr inbounds %struct.ccb_mmcio, %struct.ccb_mmcio* %523, i32 0, i32 0
  %525 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %524, i32 0, i32 1
  %526 = load i32*, i32** %525, align 8
  %527 = getelementptr inbounds i32, i32* %526, i64 0
  %528 = load i32, i32* %527, align 4
  %529 = load i32, i32* @MMC_OCR_S18A, align 4
  %530 = and i32 %528, %529
  %531 = icmp ne i32 %530, 0
  br i1 %531, label %532, label %544

532:                                              ; preds = %522
  %533 = load %union.ccb*, %union.ccb** %4, align 8
  %534 = bitcast %union.ccb* %533 to %struct.TYPE_13__*
  %535 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %534, i32 0, i32 1
  %536 = load %struct.cam_path*, %struct.cam_path** %535, align 8
  %537 = load i32, i32* @CAM_DEBUG_PROBE, align 4
  %538 = call i32 @CAM_DEBUG(%struct.cam_path* %536, i32 %537, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.18, i64 0, i64 0))
  %539 = load i32, i32* @CARD_FEATURE_18V, align 4
  %540 = load %struct.mmc_params*, %struct.mmc_params** %15, align 8
  %541 = getelementptr inbounds %struct.mmc_params, %struct.mmc_params* %540, i32 0, i32 0
  %542 = load i32, i32* %541, align 8
  %543 = or i32 %542, %539
  store i32 %543, i32* %541, align 8
  br label %544

544:                                              ; preds = %532, %522
  br label %562

545:                                              ; preds = %446
  %546 = load %union.ccb*, %union.ccb** %4, align 8
  %547 = bitcast %union.ccb* %546 to %struct.TYPE_13__*
  %548 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %547, i32 0, i32 1
  %549 = load %struct.cam_path*, %struct.cam_path** %548, align 8
  %550 = load i32, i32* @CAM_DEBUG_PROBE, align 4
  %551 = load %struct.ccb_mmcio*, %struct.ccb_mmcio** %8, align 8
  %552 = getelementptr inbounds %struct.ccb_mmcio, %struct.ccb_mmcio* %551, i32 0, i32 0
  %553 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %552, i32 0, i32 1
  %554 = load i32*, i32** %553, align 8
  %555 = getelementptr inbounds i32, i32* %554, i64 0
  %556 = load i32, i32* %555, align 4
  %557 = sext i32 %556 to i64
  %558 = inttoptr i64 %557 to i8*
  %559 = call i32 @CAM_DEBUG(%struct.cam_path* %549, i32 %550, i8* %558)
  %560 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %561 = call i32 @PROBE_SET_ACTION(%struct.TYPE_14__* %560, i32 130)
  br label %562

562:                                              ; preds = %545, %544
  br label %841

563:                                              ; preds = %2
  %564 = load %union.ccb*, %union.ccb** %4, align 8
  %565 = bitcast %union.ccb* %564 to %struct.ccb_mmcio*
  store %struct.ccb_mmcio* %565, %struct.ccb_mmcio** %8, align 8
  %566 = load %struct.ccb_mmcio*, %struct.ccb_mmcio** %8, align 8
  %567 = getelementptr inbounds %struct.ccb_mmcio, %struct.ccb_mmcio* %566, i32 0, i32 0
  %568 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %567, i32 0, i32 0
  %569 = load i32, i32* %568, align 8
  store i32 %569, i32* %7, align 4
  %570 = load i32, i32* %7, align 4
  %571 = load i32, i32* @MMC_ERR_NONE, align 4
  %572 = icmp ne i32 %570, %571
  br i1 %572, label %573, label %586

573:                                              ; preds = %563
  %574 = load %union.ccb*, %union.ccb** %4, align 8
  %575 = bitcast %union.ccb* %574 to %struct.TYPE_13__*
  %576 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %575, i32 0, i32 1
  %577 = load %struct.cam_path*, %struct.cam_path** %576, align 8
  %578 = load i32, i32* @CAM_DEBUG_PROBE, align 4
  %579 = load i32, i32* %7, align 4
  %580 = sext i32 %579 to i64
  %581 = inttoptr i64 %580 to i8*
  %582 = call i32 @CAM_DEBUG(%struct.cam_path* %577, i32 %578, i8* %581)
  %583 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %584 = load i32, i32* @PROBE_INVALID, align 4
  %585 = call i32 @PROBE_SET_ACTION(%struct.TYPE_14__* %583, i32 %584)
  br label %841

586:                                              ; preds = %563
  %587 = load %struct.cam_path*, %struct.cam_path** %6, align 8
  %588 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %587, i32 0, i32 0
  %589 = load %struct.TYPE_15__*, %struct.TYPE_15__** %588, align 8
  %590 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %589, i32 0, i32 1
  store %struct.mmc_params* %590, %struct.mmc_params** %16, align 8
  %591 = load %struct.mmc_params*, %struct.mmc_params** %16, align 8
  %592 = getelementptr inbounds %struct.mmc_params, %struct.mmc_params* %591, i32 0, i32 5
  %593 = load i32*, i32** %592, align 8
  %594 = load %struct.ccb_mmcio*, %struct.ccb_mmcio** %8, align 8
  %595 = getelementptr inbounds %struct.ccb_mmcio, %struct.ccb_mmcio* %594, i32 0, i32 0
  %596 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %595, i32 0, i32 1
  %597 = load i32*, i32** %596, align 8
  %598 = call i32 @memcpy(i32* %593, i32* %597, i32 16)
  %599 = load %union.ccb*, %union.ccb** %4, align 8
  %600 = bitcast %union.ccb* %599 to %struct.TYPE_13__*
  %601 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %600, i32 0, i32 1
  %602 = load %struct.cam_path*, %struct.cam_path** %601, align 8
  %603 = load i32, i32* @CAM_DEBUG_PROBE, align 4
  %604 = load %struct.mmc_params*, %struct.mmc_params** %16, align 8
  %605 = getelementptr inbounds %struct.mmc_params, %struct.mmc_params* %604, i32 0, i32 5
  %606 = load i32*, i32** %605, align 8
  %607 = getelementptr inbounds i32, i32* %606, i64 0
  %608 = load i32, i32* %607, align 4
  %609 = load %struct.mmc_params*, %struct.mmc_params** %16, align 8
  %610 = getelementptr inbounds %struct.mmc_params, %struct.mmc_params* %609, i32 0, i32 5
  %611 = load i32*, i32** %610, align 8
  %612 = getelementptr inbounds i32, i32* %611, i64 1
  %613 = load i32, i32* %612, align 4
  %614 = load %struct.mmc_params*, %struct.mmc_params** %16, align 8
  %615 = getelementptr inbounds %struct.mmc_params, %struct.mmc_params* %614, i32 0, i32 5
  %616 = load i32*, i32** %615, align 8
  %617 = getelementptr inbounds i32, i32* %616, i64 2
  %618 = load i32, i32* %617, align 4
  %619 = load %struct.mmc_params*, %struct.mmc_params** %16, align 8
  %620 = getelementptr inbounds %struct.mmc_params, %struct.mmc_params* %619, i32 0, i32 5
  %621 = load i32*, i32** %620, align 8
  %622 = getelementptr inbounds i32, i32* %621, i64 3
  %623 = load i32, i32* %622, align 4
  %624 = sext i32 %623 to i64
  %625 = inttoptr i64 %624 to i8*
  %626 = call i32 @CAM_DEBUG(%struct.cam_path* %602, i32 %603, i8* %625)
  %627 = load %struct.mmc_params*, %struct.mmc_params** %16, align 8
  %628 = getelementptr inbounds %struct.mmc_params, %struct.mmc_params* %627, i32 0, i32 0
  %629 = load i32, i32* %628, align 8
  %630 = load i32, i32* @CARD_FEATURE_MMC, align 4
  %631 = and i32 %629, %630
  %632 = icmp ne i32 %631, 0
  br i1 %632, label %633, label %636

633:                                              ; preds = %586
  %634 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %635 = call i32 @PROBE_SET_ACTION(%struct.TYPE_14__* %634, i32 135)
  br label %639

636:                                              ; preds = %586
  %637 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %638 = call i32 @PROBE_SET_ACTION(%struct.TYPE_14__* %637, i32 128)
  br label %639

639:                                              ; preds = %636, %633
  br label %841

640:                                              ; preds = %2
  %641 = load %union.ccb*, %union.ccb** %4, align 8
  %642 = bitcast %union.ccb* %641 to %struct.ccb_mmcio*
  store %struct.ccb_mmcio* %642, %struct.ccb_mmcio** %8, align 8
  %643 = load %struct.ccb_mmcio*, %struct.ccb_mmcio** %8, align 8
  %644 = getelementptr inbounds %struct.ccb_mmcio, %struct.ccb_mmcio* %643, i32 0, i32 0
  %645 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %644, i32 0, i32 0
  %646 = load i32, i32* %645, align 8
  store i32 %646, i32* %7, align 4
  %647 = load %struct.cam_path*, %struct.cam_path** %6, align 8
  %648 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %647, i32 0, i32 0
  %649 = load %struct.TYPE_15__*, %struct.TYPE_15__** %648, align 8
  %650 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %649, i32 0, i32 1
  store %struct.mmc_params* %650, %struct.mmc_params** %17, align 8
  %651 = load %struct.ccb_mmcio*, %struct.ccb_mmcio** %8, align 8
  %652 = getelementptr inbounds %struct.ccb_mmcio, %struct.ccb_mmcio* %651, i32 0, i32 0
  %653 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %652, i32 0, i32 1
  %654 = load i32*, i32** %653, align 8
  %655 = getelementptr inbounds i32, i32* %654, i64 0
  %656 = load i32, i32* %655, align 4
  %657 = ashr i32 %656, 16
  store i32 %657, i32* %18, align 4
  %658 = load %union.ccb*, %union.ccb** %4, align 8
  %659 = bitcast %union.ccb* %658 to %struct.TYPE_13__*
  %660 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %659, i32 0, i32 1
  %661 = load %struct.cam_path*, %struct.cam_path** %660, align 8
  %662 = load i32, i32* @CAM_DEBUG_PROBE, align 4
  %663 = load i32, i32* %18, align 4
  %664 = sext i32 %663 to i64
  %665 = inttoptr i64 %664 to i8*
  %666 = call i32 @CAM_DEBUG(%struct.cam_path* %661, i32 %662, i8* %665)
  %667 = load i32, i32* %18, align 4
  %668 = load %struct.cam_path*, %struct.cam_path** %6, align 8
  %669 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %668, i32 0, i32 0
  %670 = load %struct.TYPE_15__*, %struct.TYPE_15__** %669, align 8
  %671 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %670, i32 0, i32 1
  %672 = getelementptr inbounds %struct.mmc_params, %struct.mmc_params* %671, i32 0, i32 3
  store i32 %667, i32* %672, align 4
  %673 = load i32, i32* %7, align 4
  %674 = load i32, i32* @MMC_ERR_NONE, align 4
  %675 = icmp ne i32 %673, %674
  br i1 %675, label %676, label %689

676:                                              ; preds = %640
  %677 = load %union.ccb*, %union.ccb** %4, align 8
  %678 = bitcast %union.ccb* %677 to %struct.TYPE_13__*
  %679 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %678, i32 0, i32 1
  %680 = load %struct.cam_path*, %struct.cam_path** %679, align 8
  %681 = load i32, i32* @CAM_DEBUG_PROBE, align 4
  %682 = load i32, i32* %7, align 4
  %683 = sext i32 %682 to i64
  %684 = inttoptr i64 %683 to i8*
  %685 = call i32 @CAM_DEBUG(%struct.cam_path* %680, i32 %681, i8* %684)
  %686 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %687 = load i32, i32* @PROBE_INVALID, align 4
  %688 = call i32 @PROBE_SET_ACTION(%struct.TYPE_14__* %686, i32 %687)
  br label %841

689:                                              ; preds = %640
  %690 = load %struct.mmc_params*, %struct.mmc_params** %17, align 8
  %691 = getelementptr inbounds %struct.mmc_params, %struct.mmc_params* %690, i32 0, i32 0
  %692 = load i32, i32* %691, align 8
  %693 = load i32, i32* @CARD_FEATURE_MEMORY, align 4
  %694 = and i32 %692, %693
  %695 = icmp ne i32 %694, 0
  br i1 %695, label %696, label %699

696:                                              ; preds = %689
  %697 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %698 = call i32 @PROBE_SET_ACTION(%struct.TYPE_14__* %697, i32 138)
  br label %702

699:                                              ; preds = %689
  %700 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %701 = call i32 @PROBE_SET_ACTION(%struct.TYPE_14__* %700, i32 131)
  br label %702

702:                                              ; preds = %699, %696
  br label %841

703:                                              ; preds = %2
  %704 = load %union.ccb*, %union.ccb** %4, align 8
  %705 = bitcast %union.ccb* %704 to %struct.ccb_mmcio*
  store %struct.ccb_mmcio* %705, %struct.ccb_mmcio** %8, align 8
  %706 = load %struct.ccb_mmcio*, %struct.ccb_mmcio** %8, align 8
  %707 = getelementptr inbounds %struct.ccb_mmcio, %struct.ccb_mmcio* %706, i32 0, i32 0
  %708 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %707, i32 0, i32 0
  %709 = load i32, i32* %708, align 8
  store i32 %709, i32* %7, align 4
  %710 = load i32, i32* %7, align 4
  %711 = load i32, i32* @MMC_ERR_NONE, align 4
  %712 = icmp ne i32 %710, %711
  br i1 %712, label %713, label %726

713:                                              ; preds = %703
  %714 = load %union.ccb*, %union.ccb** %4, align 8
  %715 = bitcast %union.ccb* %714 to %struct.TYPE_13__*
  %716 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %715, i32 0, i32 1
  %717 = load %struct.cam_path*, %struct.cam_path** %716, align 8
  %718 = load i32, i32* @CAM_DEBUG_PROBE, align 4
  %719 = load i32, i32* %7, align 4
  %720 = sext i32 %719 to i64
  %721 = inttoptr i64 %720 to i8*
  %722 = call i32 @CAM_DEBUG(%struct.cam_path* %717, i32 %718, i8* %721)
  %723 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %724 = load i32, i32* @PROBE_INVALID, align 4
  %725 = call i32 @PROBE_SET_ACTION(%struct.TYPE_14__* %723, i32 %724)
  br label %841

726:                                              ; preds = %703
  %727 = load i32, i32* @MMC_PROPOSED_RCA, align 4
  %728 = load %struct.cam_path*, %struct.cam_path** %6, align 8
  %729 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %728, i32 0, i32 0
  %730 = load %struct.TYPE_15__*, %struct.TYPE_15__** %729, align 8
  %731 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %730, i32 0, i32 1
  %732 = getelementptr inbounds %struct.mmc_params, %struct.mmc_params* %731, i32 0, i32 3
  store i32 %727, i32* %732, align 4
  %733 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %734 = call i32 @PROBE_SET_ACTION(%struct.TYPE_14__* %733, i32 138)
  br label %841

735:                                              ; preds = %2
  %736 = load %union.ccb*, %union.ccb** %4, align 8
  %737 = bitcast %union.ccb* %736 to %struct.ccb_mmcio*
  store %struct.ccb_mmcio* %737, %struct.ccb_mmcio** %8, align 8
  %738 = load %struct.ccb_mmcio*, %struct.ccb_mmcio** %8, align 8
  %739 = getelementptr inbounds %struct.ccb_mmcio, %struct.ccb_mmcio* %738, i32 0, i32 0
  %740 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %739, i32 0, i32 0
  %741 = load i32, i32* %740, align 8
  store i32 %741, i32* %7, align 4
  %742 = load i32, i32* %7, align 4
  %743 = load i32, i32* @MMC_ERR_NONE, align 4
  %744 = icmp ne i32 %742, %743
  br i1 %744, label %745, label %758

745:                                              ; preds = %735
  %746 = load %union.ccb*, %union.ccb** %4, align 8
  %747 = bitcast %union.ccb* %746 to %struct.TYPE_13__*
  %748 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %747, i32 0, i32 1
  %749 = load %struct.cam_path*, %struct.cam_path** %748, align 8
  %750 = load i32, i32* @CAM_DEBUG_PROBE, align 4
  %751 = load i32, i32* %7, align 4
  %752 = sext i32 %751 to i64
  %753 = inttoptr i64 %752 to i8*
  %754 = call i32 @CAM_DEBUG(%struct.cam_path* %749, i32 %750, i8* %753)
  %755 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %756 = load i32, i32* @PROBE_INVALID, align 4
  %757 = call i32 @PROBE_SET_ACTION(%struct.TYPE_14__* %755, i32 %756)
  br label %841

758:                                              ; preds = %735
  %759 = load %struct.cam_path*, %struct.cam_path** %6, align 8
  %760 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %759, i32 0, i32 0
  %761 = load %struct.TYPE_15__*, %struct.TYPE_15__** %760, align 8
  %762 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %761, i32 0, i32 1
  store %struct.mmc_params* %762, %struct.mmc_params** %19, align 8
  %763 = load %struct.mmc_params*, %struct.mmc_params** %19, align 8
  %764 = getelementptr inbounds %struct.mmc_params, %struct.mmc_params* %763, i32 0, i32 4
  %765 = load i32*, i32** %764, align 8
  %766 = load %struct.ccb_mmcio*, %struct.ccb_mmcio** %8, align 8
  %767 = getelementptr inbounds %struct.ccb_mmcio, %struct.ccb_mmcio* %766, i32 0, i32 0
  %768 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %767, i32 0, i32 1
  %769 = load i32*, i32** %768, align 8
  %770 = call i32 @memcpy(i32* %765, i32* %769, i32 16)
  %771 = load %union.ccb*, %union.ccb** %4, align 8
  %772 = bitcast %union.ccb* %771 to %struct.TYPE_13__*
  %773 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %772, i32 0, i32 1
  %774 = load %struct.cam_path*, %struct.cam_path** %773, align 8
  %775 = load i32, i32* @CAM_DEBUG_PROBE, align 4
  %776 = load %struct.mmc_params*, %struct.mmc_params** %19, align 8
  %777 = getelementptr inbounds %struct.mmc_params, %struct.mmc_params* %776, i32 0, i32 4
  %778 = load i32*, i32** %777, align 8
  %779 = getelementptr inbounds i32, i32* %778, i64 0
  %780 = load i32, i32* %779, align 4
  %781 = load %struct.mmc_params*, %struct.mmc_params** %19, align 8
  %782 = getelementptr inbounds %struct.mmc_params, %struct.mmc_params* %781, i32 0, i32 4
  %783 = load i32*, i32** %782, align 8
  %784 = getelementptr inbounds i32, i32* %783, i64 1
  %785 = load i32, i32* %784, align 4
  %786 = load %struct.mmc_params*, %struct.mmc_params** %19, align 8
  %787 = getelementptr inbounds %struct.mmc_params, %struct.mmc_params* %786, i32 0, i32 4
  %788 = load i32*, i32** %787, align 8
  %789 = getelementptr inbounds i32, i32* %788, i64 2
  %790 = load i32, i32* %789, align 4
  %791 = load %struct.mmc_params*, %struct.mmc_params** %19, align 8
  %792 = getelementptr inbounds %struct.mmc_params, %struct.mmc_params* %791, i32 0, i32 4
  %793 = load i32*, i32** %792, align 8
  %794 = getelementptr inbounds i32, i32* %793, i64 3
  %795 = load i32, i32* %794, align 4
  %796 = sext i32 %795 to i64
  %797 = inttoptr i64 %796 to i8*
  %798 = call i32 @CAM_DEBUG(%struct.cam_path* %774, i32 %775, i8* %797)
  %799 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %800 = call i32 @PROBE_SET_ACTION(%struct.TYPE_14__* %799, i32 131)
  br label %841

801:                                              ; preds = %2
  %802 = load %union.ccb*, %union.ccb** %4, align 8
  %803 = bitcast %union.ccb* %802 to %struct.ccb_mmcio*
  store %struct.ccb_mmcio* %803, %struct.ccb_mmcio** %8, align 8
  %804 = load %struct.ccb_mmcio*, %struct.ccb_mmcio** %8, align 8
  %805 = getelementptr inbounds %struct.ccb_mmcio, %struct.ccb_mmcio* %804, i32 0, i32 0
  %806 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %805, i32 0, i32 0
  %807 = load i32, i32* %806, align 8
  store i32 %807, i32* %7, align 4
  %808 = load i32, i32* %7, align 4
  %809 = load i32, i32* @MMC_ERR_NONE, align 4
  %810 = icmp ne i32 %808, %809
  br i1 %810, label %811, label %824

811:                                              ; preds = %801
  %812 = load %union.ccb*, %union.ccb** %4, align 8
  %813 = bitcast %union.ccb* %812 to %struct.TYPE_13__*
  %814 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %813, i32 0, i32 1
  %815 = load %struct.cam_path*, %struct.cam_path** %814, align 8
  %816 = load i32, i32* @CAM_DEBUG_PROBE, align 4
  %817 = load i32, i32* %7, align 4
  %818 = sext i32 %817 to i64
  %819 = inttoptr i64 %818 to i8*
  %820 = call i32 @CAM_DEBUG(%struct.cam_path* %815, i32 %816, i8* %819)
  %821 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %822 = load i32, i32* @PROBE_INVALID, align 4
  %823 = call i32 @PROBE_SET_ACTION(%struct.TYPE_14__* %821, i32 %822)
  br label %841

824:                                              ; preds = %801
  %825 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %826 = load i32, i32* @PROBE_DONE, align 4
  %827 = call i32 @PROBE_SET_ACTION(%struct.TYPE_14__* %825, i32 %826)
  br label %841

828:                                              ; preds = %2
  %829 = load %union.ccb*, %union.ccb** %4, align 8
  %830 = bitcast %union.ccb* %829 to %struct.TYPE_13__*
  %831 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %830, i32 0, i32 1
  %832 = load %struct.cam_path*, %struct.cam_path** %831, align 8
  %833 = load i32, i32* @CAM_DEBUG_PROBE, align 4
  %834 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %835 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %834, i32 0, i32 0
  %836 = load i32, i32* %835, align 4
  %837 = sext i32 %836 to i64
  %838 = inttoptr i64 %837 to i8*
  %839 = call i32 @CAM_DEBUG(%struct.cam_path* %832, i32 %833, i8* %838)
  %840 = call i32 @panic(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.28, i64 0, i64 0))
  br label %841

841:                                              ; preds = %828, %824, %811, %758, %745, %726, %713, %702, %676, %639, %573, %562, %424, %399, %379, %372, %347, %309, %294, %268, %253, %218, %147, %144, %86, %82
  %842 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %843 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %842, i32 0, i32 0
  %844 = load i32, i32* %843, align 4
  %845 = load i32, i32* @PROBE_INVALID, align 4
  %846 = icmp eq i32 %844, %845
  br i1 %846, label %847, label %863

847:                                              ; preds = %841
  %848 = load %struct.cam_path*, %struct.cam_path** %6, align 8
  %849 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %848, i32 0, i32 0
  %850 = load %struct.TYPE_15__*, %struct.TYPE_15__** %849, align 8
  %851 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %850, i32 0, i32 0
  %852 = load i32, i32* %851, align 8
  %853 = load i32, i32* @CAM_DEV_UNCONFIGURED, align 4
  %854 = and i32 %852, %853
  %855 = icmp eq i32 %854, 0
  br i1 %855, label %856, label %863

856:                                              ; preds = %847
  %857 = load %union.ccb*, %union.ccb** %4, align 8
  %858 = bitcast %union.ccb* %857 to %struct.TYPE_13__*
  %859 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %858, i32 0, i32 1
  %860 = load %struct.cam_path*, %struct.cam_path** %859, align 8
  %861 = load i32, i32* @CAM_DEBUG_PROBE, align 4
  %862 = call i32 @CAM_DEBUG(%struct.cam_path* %860, i32 %861, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.29, i64 0, i64 0))
  br label %863

863:                                              ; preds = %856, %847, %841
  %864 = load %union.ccb*, %union.ccb** %4, align 8
  %865 = call i32 @xpt_release_ccb(%union.ccb* %864)
  %866 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %867 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %866, i32 0, i32 0
  %868 = load i32, i32* %867, align 4
  %869 = load i32, i32* @PROBE_INVALID, align 4
  %870 = icmp ne i32 %868, %869
  br i1 %870, label %871, label %875

871:                                              ; preds = %863
  %872 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %873 = load i32, i32* %9, align 4
  %874 = call i32 @xpt_schedule(%struct.cam_periph* %872, i32 %873)
  br label %875

875:                                              ; preds = %871, %863
  %876 = load %struct.cam_path*, %struct.cam_path** %6, align 8
  %877 = load i32, i32* @FALSE, align 4
  %878 = call i32 @cam_release_devq(%struct.cam_path* %876, i32 0, i32 0, i32 0, i32 %877)
  store i32 %878, i32* %20, align 4
  %879 = load i32, i32* %20, align 4
  %880 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.30, i64 0, i64 0), i32 %879)
  %881 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %882 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %881, i32 0, i32 0
  %883 = load i32, i32* %882, align 4
  %884 = load i32, i32* @PROBE_DONE, align 4
  %885 = icmp eq i32 %883, %884
  br i1 %885, label %886, label %921

886:                                              ; preds = %875
  %887 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %888 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %887, i32 0, i32 0
  %889 = load %struct.TYPE_12__*, %struct.TYPE_12__** %888, align 8
  %890 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %889, i32 0, i32 0
  %891 = load %struct.TYPE_11__*, %struct.TYPE_11__** %890, align 8
  %892 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %891, i32 0, i32 0
  %893 = load i32, i32* %892, align 4
  %894 = load i32, i32* @CAM_DEV_UNCONFIGURED, align 4
  %895 = and i32 %893, %894
  %896 = icmp ne i32 %895, 0
  br i1 %896, label %897, label %920

897:                                              ; preds = %886
  %898 = load i32, i32* @CAM_DEV_UNCONFIGURED, align 4
  %899 = xor i32 %898, -1
  %900 = load %struct.cam_path*, %struct.cam_path** %6, align 8
  %901 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %900, i32 0, i32 0
  %902 = load %struct.TYPE_15__*, %struct.TYPE_15__** %901, align 8
  %903 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %902, i32 0, i32 0
  %904 = load i32, i32* %903, align 8
  %905 = and i32 %904, %899
  store i32 %905, i32* %903, align 8
  %906 = load %struct.cam_path*, %struct.cam_path** %6, align 8
  %907 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %906, i32 0, i32 0
  %908 = load %struct.TYPE_15__*, %struct.TYPE_15__** %907, align 8
  %909 = call i32 @xpt_acquire_device(%struct.TYPE_15__* %908)
  %910 = load i32, i32* @XPT_GDEV_TYPE, align 4
  %911 = load %union.ccb*, %union.ccb** %4, align 8
  %912 = bitcast %union.ccb* %911 to %struct.TYPE_13__*
  %913 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %912, i32 0, i32 0
  store i32 %910, i32* %913, align 8
  %914 = load %union.ccb*, %union.ccb** %4, align 8
  %915 = call i32 @xpt_action(%union.ccb* %914)
  %916 = load i32, i32* @AC_FOUND_DEVICE, align 4
  %917 = load %struct.cam_path*, %struct.cam_path** %6, align 8
  %918 = load %union.ccb*, %union.ccb** %4, align 8
  %919 = call i32 @xpt_async(i32 %916, %struct.cam_path* %917, %union.ccb* %918)
  br label %920

920:                                              ; preds = %897, %886
  br label %921

921:                                              ; preds = %920, %875
  %922 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %923 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %922, i32 0, i32 0
  %924 = load i32, i32* %923, align 4
  %925 = load i32, i32* @PROBE_DONE, align 4
  %926 = icmp eq i32 %924, %925
  br i1 %926, label %933, label %927

927:                                              ; preds = %921
  %928 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %929 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %928, i32 0, i32 0
  %930 = load i32, i32* %929, align 4
  %931 = load i32, i32* @PROBE_INVALID, align 4
  %932 = icmp eq i32 %930, %931
  br i1 %932, label %933, label %938

933:                                              ; preds = %927, %921
  %934 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %935 = call i32 @cam_periph_invalidate(%struct.cam_periph* %934)
  %936 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %937 = call i32 @cam_periph_release_locked(%struct.cam_periph* %936)
  br label %938

938:                                              ; preds = %933, %927
  ret void
}

declare dso_local i32 @CAM_DEBUG(%struct.cam_path*, i32, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @xpt_async(i32, %struct.cam_path*, %union.ccb*) #1

declare dso_local i32 @PROBE_SET_ACTION(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @R4_IO_NUM_FUNCTIONS(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @xpt_release_ccb(%union.ccb*) #1

declare dso_local i32 @xpt_schedule(%struct.cam_periph*, i32) #1

declare dso_local i32 @cam_release_devq(%struct.cam_path*, i32, i32, i32, i32) #1

declare dso_local i32 @xpt_acquire_device(%struct.TYPE_15__*) #1

declare dso_local i32 @xpt_action(%union.ccb*) #1

declare dso_local i32 @cam_periph_invalidate(%struct.cam_periph*) #1

declare dso_local i32 @cam_periph_release_locked(%struct.cam_periph*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
