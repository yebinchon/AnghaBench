; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Port/extr_fm_port.c_CheckInitParameters.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Port/extr_fm_port.c_CheckInitParameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i64, %struct.TYPE_21__*, %struct.TYPE_20__, %struct.TYPE_19__, %struct.TYPE_18__, %struct.TYPE_17__, i64 }
%struct.TYPE_21__ = type { i32, i64, i32, i32, i32, i64, i64, i64, i64, i64, %struct.TYPE_23__, %struct.fman_port_cfg, %struct.TYPE_14__, %struct.TYPE_15__, %struct.TYPE_16__, i64, %struct.TYPE_24__ }
%struct.TYPE_23__ = type { i64, i64, i64 }
%struct.fman_port_cfg = type { i32, i32, i32, i64, i64, i32, i32, i64 }
%struct.TYPE_14__ = type { i32, i64 }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_18__ = type { i64, i64 }
%struct.TYPE_17__ = type { i64, i64 }

@E_OK = common dso_local global i64 0, align 8
@e_FM_PORT_TYPE_RX_10G = common dso_local global i64 0, align 8
@MAJOR = common dso_local global i32 0, align 4
@E_INVALID_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"fifoDeqPipelineDepth for IM 10G can't be larger than 2\00", align 1
@e_FM_PORT_TYPE_RX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [71 x i8] c"extBufPools.numOfPoolsUsed=0. At least one buffer pool must be defined\00", align 1
@NO_MSG = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [45 x i8] c"intContext.size is larger than start margins\00", align 1
@DPAA_LIODN_DONT_OVERRIDE = common dso_local global i64 0, align 8
@FM_LIODN_OFFSET_MASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"liodnOffset is larger than %d\00", align 1
@FM_MAX_NUM_OF_SUB_PORTALS = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [47 x i8] c" deqSubPortal has to be in the range of 0 - %d\00", align 1
@MIN_TX_INT_OFFSET = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [60 x i8] c"non-Rx intContext.intContextOffset can't be smaller than %d\00", align 1
@e_FM_PORT_TYPE_TX = common dso_local global i64 0, align 8
@e_FM_PORT_TYPE_TX_10G = common dso_local global i64 0, align 8
@DEFAULT_notSupported = common dso_local global i64 0, align 8
@MAX_FIFO_PIPELINE_DEPTH = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [45 x i8] c"fifoDeqPipelineDepth can't be larger than %d\00", align 1
@e_FM_PORT_TYPE_OH_OFFLINE_PARSING = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [38 x i8] c"dfltFqid must be between 1 and 2^24-1\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"errFqid must be between 1 and 2^24-1\00", align 1
@BMI_FIFO_UNITS = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [50 x i8] c"rxFifoPriElevationLevel has to be divisible by %d\00", align 1
@MAX_PORT_FIFO_SIZE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [59 x i8] c"rxFifoPriElevationLevel has to be in the range of 256 - %d\00", align 1
@.str.11 = private unnamed_addr constant [42 x i8] c"rxFifoThreshold has to be divisible by %d\00", align 1
@.str.12 = private unnamed_addr constant [51 x i8] c"rxFifoThreshold has to be in the range of 256 - %d\00", align 1
@FRAME_END_DATA_SIZE = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [40 x i8] c"cutBytesFromEnd can't be larger than %d\00", align 1
@.str.14 = private unnamed_addr constant [41 x i8] c"fifoBufs.extra has to be divisible by %d\00", align 1
@.str.15 = private unnamed_addr constant [70 x i8] c"bufPoolDepletion.numOfPools can not be 0 when poolsGrpModeEnable=TRUE\00", align 1
@.str.16 = private unnamed_addr constant [36 x i8] c" No fifoBufs.extra for non Rx ports\00", align 1
@.str.17 = private unnamed_addr constant [45 x i8] c"txFifoMinFillLevel has to be divisible by %d\00", align 1
@.str.18 = private unnamed_addr constant [52 x i8] c"txFifoMinFillLevel has to be in the range of 0 - %d\00", align 1
@.str.19 = private unnamed_addr constant [45 x i8] c"txFifoLowComfLevel has to be divisible by %d\00", align 1
@.str.20 = private unnamed_addr constant [54 x i8] c"txFifoLowComfLevel has to be in the range of 256 - %d\00", align 1
@.str.21 = private unnamed_addr constant [51 x i8] c"fifoDeqPipelineDepth for 1G can't be larger than 2\00", align 1
@E_CONFLICT = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [116 x i8] c"errorsToDiscard is not empty, but frmDiscardOverride selected (all discarded frames to be enqueued to error queue).\00", align 1
@BMI_STATUS_OP_MASK_UNUSED = common dso_local global i32 0, align 4
@BMI_STATUS_RX_MASK_UNUSED = common dso_local global i32 0, align 4
@E_INVALID_SELECTION = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [40 x i8] c"errorsToDiscard contains undefined bits\00", align 1
@e_FM_PORT_TYPE_OH_HOST_COMMAND = common dso_local global i64 0, align 8
@E_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [59 x i8] c"cheksumLastBytesIgnore is available for Rx & Tx ports only\00", align 1
@E_INVALID_OPERATION = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [52 x i8] c"fifoDeqPipelineDepth is available for Tx ports only\00", align 1
@.str.26 = private unnamed_addr constant [47 x i8] c"cheksumLastBytesIgnore can't be larger than %d\00", align 1
@MAX_NUM_OF_TASKS = common dso_local global i64 0, align 8
@.str.27 = private unnamed_addr constant [34 x i8] c"tasks.num can't be larger than %d\00", align 1
@MAX_NUM_OF_EXTRA_TASKS = common dso_local global i64 0, align 8
@.str.28 = private unnamed_addr constant [36 x i8] c"tasks.extra can't be larger than %d\00", align 1
@MAX_NUM_OF_DMAS = common dso_local global i64 0, align 8
@.str.29 = private unnamed_addr constant [37 x i8] c"openDmas.num can't be larger than %d\00", align 1
@MAX_NUM_OF_EXTRA_DMAS = common dso_local global i64 0, align 8
@.str.30 = private unnamed_addr constant [39 x i8] c"openDmas.extra can't be larger than %d\00", align 1
@.str.31 = private unnamed_addr constant [48 x i8] c"fifoBufs.num has to be in the range of 256 - %d\00", align 1
@.str.32 = private unnamed_addr constant [39 x i8] c"fifoBufs.num has to be divisible by %d\00", align 1
@MIN_NUM_OF_OP_DMAS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_22__*)* @CheckInitParameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @CheckInitParameters(%struct.TYPE_22__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_22__*, align 8
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.fman_port_cfg*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %3, align 8
  %8 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  store %struct.TYPE_21__* %10, %struct.TYPE_21__** %4, align 8
  %11 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 11
  store %struct.fman_port_cfg* %12, %struct.fman_port_cfg** %5, align 8
  %13 = load i64, i64* @E_OK, align 8
  store i64 %13, i64* %6, align 8
  %14 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %14, i32 0, i32 6
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %46

18:                                               ; preds = %1
  %19 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @e_FM_PORT_TYPE_RX_10G, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %37

24:                                               ; preds = %18
  %25 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %27, i32 0, i32 11
  %29 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp sgt i32 %30, 2
  br i1 %31, label %32, label %36

32:                                               ; preds = %24
  %33 = load i32, i32* @MAJOR, align 4
  %34 = load i32, i32* @E_INVALID_VALUE, align 4
  %35 = call i32 @RETURN_ERROR(i32 %33, i32 %34, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  br label %36

36:                                               ; preds = %32, %24
  br label %37

37:                                               ; preds = %36, %18
  %38 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %39 = call i64 @FmPortImCheckInitParameters(%struct.TYPE_22__* %38)
  store i64 %39, i64* %6, align 8
  %40 = load i64, i64* @E_OK, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i64, i64* %6, align 8
  %44 = call i64 @ERROR_CODE(i64 %43)
  store i64 %44, i64* %2, align 8
  br label %781

45:                                               ; preds = %37
  br label %266

46:                                               ; preds = %1
  %47 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @e_FM_PORT_TYPE_RX, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %58, label %52

52:                                               ; preds = %46
  %53 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @e_FM_PORT_TYPE_RX_10G, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %133

58:                                               ; preds = %52, %46
  %59 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %59, i32 0, i32 16
  %61 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %58
  %65 = load i32, i32* @MAJOR, align 4
  %66 = load i32, i32* @E_INVALID_VALUE, align 4
  %67 = call i32 @RETURN_ERROR(i32 %65, i32 %66, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0))
  br label %68

68:                                               ; preds = %64, %58
  %69 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %69, i32 0, i32 16
  %71 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %71, i32 0, i32 15
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %74, i32 0, i32 12
  %76 = call i64 @FmSpCheckBufPoolsParams(%struct.TYPE_24__* %70, i64 %73, %struct.TYPE_14__* %75)
  %77 = load i64, i64* @E_OK, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %68
  %80 = load i32, i32* @MAJOR, align 4
  %81 = load i32, i32* @E_INVALID_VALUE, align 4
  %82 = load i8*, i8** @NO_MSG, align 8
  %83 = call i32 @RETURN_ERROR(i32 %80, i32 %81, i8* %82)
  br label %84

84:                                               ; preds = %79, %68
  %85 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %85, i32 0, i32 10
  %87 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %109

90:                                               ; preds = %84
  %91 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %91, i32 0, i32 10
  %93 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %95, i32 0, i32 10
  %97 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = add nsw i64 %94, %98
  %100 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %100, i32 0, i32 13
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp sgt i64 %99, %103
  br i1 %104, label %105, label %109

105:                                              ; preds = %90
  %106 = load i32, i32* @MAJOR, align 4
  %107 = load i32, i32* @E_INVALID_VALUE, align 4
  %108 = call i32 @RETURN_ERROR(i32 %106, i32 %107, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  br label %109

109:                                              ; preds = %105, %90, %84
  %110 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i64, i64* @DPAA_LIODN_DONT_OVERRIDE, align 8
  %114 = trunc i64 %113 to i32
  %115 = icmp ne i32 %112, %114
  br i1 %115, label %116, label %132

116:                                              ; preds = %109
  %117 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @FM_LIODN_OFFSET_MASK, align 4
  %121 = xor i32 %120, -1
  %122 = and i32 %119, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %132

124:                                              ; preds = %116
  %125 = load i32, i32* @MAJOR, align 4
  %126 = load i32, i32* @E_INVALID_VALUE, align 4
  %127 = load i32, i32* @FM_LIODN_OFFSET_MASK, align 4
  %128 = add nsw i32 %127, 1
  %129 = sext i32 %128 to i64
  %130 = inttoptr i64 %129 to i8*
  %131 = call i32 @RETURN_ERROR(i32 %125, i32 %126, i8* %130)
  br label %132

132:                                              ; preds = %124, %116, %109
  br label %212

133:                                              ; preds = %52
  %134 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @FM_MAX_NUM_OF_SUB_PORTALS, align 8
  %138 = icmp sge i64 %136, %137
  br i1 %138, label %139, label %145

139:                                              ; preds = %133
  %140 = load i32, i32* @MAJOR, align 4
  %141 = load i32, i32* @E_INVALID_VALUE, align 4
  %142 = load i64, i64* @FM_MAX_NUM_OF_SUB_PORTALS, align 8
  %143 = inttoptr i64 %142 to i8*
  %144 = call i32 @RETURN_ERROR(i32 %140, i32 %141, i8* %143)
  br label %145

145:                                              ; preds = %139, %133
  %146 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %146, i32 0, i32 10
  %148 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %164

151:                                              ; preds = %145
  %152 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %152, i32 0, i32 10
  %154 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %153, i32 0, i32 2
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @MIN_TX_INT_OFFSET, align 8
  %157 = icmp slt i64 %155, %156
  br i1 %157, label %158, label %164

158:                                              ; preds = %151
  %159 = load i32, i32* @MAJOR, align 4
  %160 = load i32, i32* @E_INVALID_VALUE, align 4
  %161 = load i64, i64* @MIN_TX_INT_OFFSET, align 8
  %162 = inttoptr i64 %161 to i8*
  %163 = call i32 @RETURN_ERROR(i32 %159, i32 %160, i8* %162)
  br label %164

164:                                              ; preds = %158, %151, %145
  %165 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %166 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @e_FM_PORT_TYPE_TX, align 8
  %169 = icmp eq i64 %167, %168
  br i1 %169, label %186, label %170

170:                                              ; preds = %164
  %171 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %172 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* @e_FM_PORT_TYPE_TX_10G, align 8
  %175 = icmp eq i64 %173, %174
  br i1 %175, label %186, label %176

176:                                              ; preds = %170
  %177 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %178 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %177, i32 0, i32 1
  %179 = load %struct.TYPE_21__*, %struct.TYPE_21__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %179, i32 0, i32 11
  %181 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = sext i32 %182 to i64
  %184 = load i64, i64* @DEFAULT_notSupported, align 8
  %185 = icmp ne i64 %183, %184
  br i1 %185, label %186, label %211

186:                                              ; preds = %176, %170, %164
  %187 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %188 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %187, i32 0, i32 1
  %189 = load %struct.TYPE_21__*, %struct.TYPE_21__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %189, i32 0, i32 11
  %191 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %204

194:                                              ; preds = %186
  %195 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %195, i32 0, i32 1
  %197 = load %struct.TYPE_21__*, %struct.TYPE_21__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %197, i32 0, i32 11
  %199 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = sext i32 %200 to i64
  %202 = load i64, i64* @MAX_FIFO_PIPELINE_DEPTH, align 8
  %203 = icmp sgt i64 %201, %202
  br i1 %203, label %204, label %210

204:                                              ; preds = %194, %186
  %205 = load i32, i32* @MAJOR, align 4
  %206 = load i32, i32* @E_INVALID_VALUE, align 4
  %207 = load i64, i64* @MAX_FIFO_PIPELINE_DEPTH, align 8
  %208 = inttoptr i64 %207 to i8*
  %209 = call i32 @RETURN_ERROR(i32 %205, i32 %206, i8* %208)
  br label %210

210:                                              ; preds = %204, %194
  br label %211

211:                                              ; preds = %210, %176
  br label %212

212:                                              ; preds = %211, %132
  %213 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %214 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = load i64, i64* @e_FM_PORT_TYPE_RX, align 8
  %217 = icmp eq i64 %215, %216
  br i1 %217, label %230, label %218

218:                                              ; preds = %212
  %219 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %220 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %219, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = load i64, i64* @e_FM_PORT_TYPE_RX_10G, align 8
  %223 = icmp eq i64 %221, %222
  br i1 %223, label %230, label %224

224:                                              ; preds = %218
  %225 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %226 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %225, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = load i64, i64* @e_FM_PORT_TYPE_OH_OFFLINE_PARSING, align 8
  %229 = icmp eq i64 %227, %228
  br i1 %229, label %230, label %240

230:                                              ; preds = %224, %218, %212
  %231 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %232 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %231, i32 0, i32 2
  %233 = load i32, i32* %232, align 8
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %239, label %235

235:                                              ; preds = %230
  %236 = load i32, i32* @MAJOR, align 4
  %237 = load i32, i32* @E_INVALID_VALUE, align 4
  %238 = call i32 @RETURN_ERROR(i32 %236, i32 %237, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0))
  br label %239

239:                                              ; preds = %235, %230
  br label %240

240:                                              ; preds = %239, %224
  %241 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %242 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %241, i32 0, i32 3
  %243 = load i32, i32* %242, align 4
  %244 = and i32 %243, -16777216
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %251, label %246

246:                                              ; preds = %240
  %247 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %248 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %247, i32 0, i32 3
  %249 = load i32, i32* %248, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %255, label %251

251:                                              ; preds = %246, %240
  %252 = load i32, i32* @MAJOR, align 4
  %253 = load i32, i32* @E_INVALID_VALUE, align 4
  %254 = call i32 @RETURN_ERROR(i32 %252, i32 %253, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0))
  br label %255

255:                                              ; preds = %251, %246
  %256 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %257 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %256, i32 0, i32 2
  %258 = load i32, i32* %257, align 8
  %259 = and i32 %258, -16777216
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %265

261:                                              ; preds = %255
  %262 = load i32, i32* @MAJOR, align 4
  %263 = load i32, i32* @E_INVALID_VALUE, align 4
  %264 = call i32 @RETURN_ERROR(i32 %262, i32 %263, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0))
  br label %265

265:                                              ; preds = %261, %255
  br label %266

266:                                              ; preds = %265, %45
  %267 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %268 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %267, i32 0, i32 0
  %269 = load i64, i64* %268, align 8
  %270 = load i64, i64* @e_FM_PORT_TYPE_RX, align 8
  %271 = icmp eq i64 %269, %270
  br i1 %271, label %278, label %272

272:                                              ; preds = %266
  %273 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %274 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %273, i32 0, i32 0
  %275 = load i64, i64* %274, align 8
  %276 = load i64, i64* @e_FM_PORT_TYPE_RX_10G, align 8
  %277 = icmp eq i64 %275, %276
  br i1 %277, label %278, label %404

278:                                              ; preds = %272, %266
  %279 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %5, align 8
  %280 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %279, i32 0, i32 1
  %281 = load i32, i32* %280, align 4
  %282 = load i32, i32* @BMI_FIFO_UNITS, align 4
  %283 = srem i32 %281, %282
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %292

285:                                              ; preds = %278
  %286 = load i32, i32* @MAJOR, align 4
  %287 = load i32, i32* @E_INVALID_VALUE, align 4
  %288 = load i32, i32* @BMI_FIFO_UNITS, align 4
  %289 = sext i32 %288 to i64
  %290 = inttoptr i64 %289 to i8*
  %291 = call i32 @RETURN_ERROR(i32 %286, i32 %287, i8* %290)
  br label %292

292:                                              ; preds = %285, %278
  %293 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %5, align 8
  %294 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %293, i32 0, i32 1
  %295 = load i32, i32* %294, align 4
  %296 = load i32, i32* @BMI_FIFO_UNITS, align 4
  %297 = icmp slt i32 %295, %296
  br i1 %297, label %304, label %298

298:                                              ; preds = %292
  %299 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %5, align 8
  %300 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %299, i32 0, i32 1
  %301 = load i32, i32* %300, align 4
  %302 = load i32, i32* @MAX_PORT_FIFO_SIZE, align 4
  %303 = icmp sgt i32 %301, %302
  br i1 %303, label %304, label %311

304:                                              ; preds = %298, %292
  %305 = load i32, i32* @MAJOR, align 4
  %306 = load i32, i32* @E_INVALID_VALUE, align 4
  %307 = load i32, i32* @MAX_PORT_FIFO_SIZE, align 4
  %308 = sext i32 %307 to i64
  %309 = inttoptr i64 %308 to i8*
  %310 = call i32 @RETURN_ERROR(i32 %305, i32 %306, i8* %309)
  br label %311

311:                                              ; preds = %304, %298
  %312 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %5, align 8
  %313 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %312, i32 0, i32 2
  %314 = load i32, i32* %313, align 8
  %315 = load i32, i32* @BMI_FIFO_UNITS, align 4
  %316 = srem i32 %314, %315
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %325

318:                                              ; preds = %311
  %319 = load i32, i32* @MAJOR, align 4
  %320 = load i32, i32* @E_INVALID_VALUE, align 4
  %321 = load i32, i32* @BMI_FIFO_UNITS, align 4
  %322 = sext i32 %321 to i64
  %323 = inttoptr i64 %322 to i8*
  %324 = call i32 @RETURN_ERROR(i32 %319, i32 %320, i8* %323)
  br label %325

325:                                              ; preds = %318, %311
  %326 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %5, align 8
  %327 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %326, i32 0, i32 2
  %328 = load i32, i32* %327, align 8
  %329 = load i32, i32* @BMI_FIFO_UNITS, align 4
  %330 = icmp slt i32 %328, %329
  br i1 %330, label %337, label %331

331:                                              ; preds = %325
  %332 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %5, align 8
  %333 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %332, i32 0, i32 2
  %334 = load i32, i32* %333, align 8
  %335 = load i32, i32* @MAX_PORT_FIFO_SIZE, align 4
  %336 = icmp sgt i32 %334, %335
  br i1 %336, label %337, label %344

337:                                              ; preds = %331, %325
  %338 = load i32, i32* @MAJOR, align 4
  %339 = load i32, i32* @E_INVALID_VALUE, align 4
  %340 = load i32, i32* @MAX_PORT_FIFO_SIZE, align 4
  %341 = sext i32 %340 to i64
  %342 = inttoptr i64 %341 to i8*
  %343 = call i32 @RETURN_ERROR(i32 %338, i32 %339, i8* %342)
  br label %344

344:                                              ; preds = %337, %331
  %345 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %5, align 8
  %346 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %345, i32 0, i32 3
  %347 = load i64, i64* %346, align 8
  %348 = load i64, i64* @FRAME_END_DATA_SIZE, align 8
  %349 = icmp sgt i64 %347, %348
  br i1 %349, label %350, label %356

350:                                              ; preds = %344
  %351 = load i32, i32* @MAJOR, align 4
  %352 = load i32, i32* @E_INVALID_VALUE, align 4
  %353 = load i64, i64* @FRAME_END_DATA_SIZE, align 8
  %354 = inttoptr i64 %353 to i8*
  %355 = call i32 @RETURN_ERROR(i32 %351, i32 %352, i8* %354)
  br label %356

356:                                              ; preds = %350, %344
  %357 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %358 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %357, i32 0, i32 13
  %359 = call i64 @FmSpCheckBufMargins(%struct.TYPE_15__* %358)
  %360 = load i64, i64* @E_OK, align 8
  %361 = icmp ne i64 %359, %360
  br i1 %361, label %362, label %367

362:                                              ; preds = %356
  %363 = load i32, i32* @MAJOR, align 4
  %364 = load i32, i32* @E_INVALID_VALUE, align 4
  %365 = load i8*, i8** @NO_MSG, align 8
  %366 = call i32 @RETURN_ERROR(i32 %363, i32 %364, i8* %365)
  br label %367

367:                                              ; preds = %362, %356
  %368 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %369 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %368, i32 0, i32 7
  %370 = load i64, i64* %369, align 8
  %371 = icmp ne i64 %370, 0
  br i1 %371, label %372, label %387

372:                                              ; preds = %367
  %373 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %374 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %373, i32 0, i32 3
  %375 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %374, i32 0, i32 0
  %376 = load i32, i32* %375, align 4
  %377 = load i32, i32* @BMI_FIFO_UNITS, align 4
  %378 = srem i32 %376, %377
  %379 = icmp ne i32 %378, 0
  br i1 %379, label %380, label %387

380:                                              ; preds = %372
  %381 = load i32, i32* @MAJOR, align 4
  %382 = load i32, i32* @E_INVALID_VALUE, align 4
  %383 = load i32, i32* @BMI_FIFO_UNITS, align 4
  %384 = sext i32 %383 to i64
  %385 = inttoptr i64 %384 to i8*
  %386 = call i32 @RETURN_ERROR(i32 %381, i32 %382, i8* %385)
  br label %387

387:                                              ; preds = %380, %372, %367
  %388 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %389 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %388, i32 0, i32 12
  %390 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %389, i32 0, i32 1
  %391 = load i64, i64* %390, align 8
  %392 = icmp ne i64 %391, 0
  br i1 %392, label %393, label %403

393:                                              ; preds = %387
  %394 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %395 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %394, i32 0, i32 12
  %396 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %395, i32 0, i32 0
  %397 = load i32, i32* %396, align 8
  %398 = icmp ne i32 %397, 0
  br i1 %398, label %403, label %399

399:                                              ; preds = %393
  %400 = load i32, i32* @MAJOR, align 4
  %401 = load i32, i32* @E_INVALID_VALUE, align 4
  %402 = call i32 @RETURN_ERROR(i32 %400, i32 %401, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.15, i64 0, i64 0))
  br label %403

403:                                              ; preds = %399, %393, %387
  br label %415

404:                                              ; preds = %272
  %405 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %406 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %405, i32 0, i32 3
  %407 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %406, i32 0, i32 0
  %408 = load i32, i32* %407, align 4
  %409 = icmp ne i32 %408, 0
  br i1 %409, label %410, label %414

410:                                              ; preds = %404
  %411 = load i32, i32* @MAJOR, align 4
  %412 = load i32, i32* @E_INVALID_VALUE, align 4
  %413 = call i32 @RETURN_ERROR(i32 %411, i32 %412, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.16, i64 0, i64 0))
  br label %414

414:                                              ; preds = %410, %404
  br label %415

415:                                              ; preds = %414, %403
  %416 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %417 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %416, i32 0, i32 0
  %418 = load i64, i64* %417, align 8
  %419 = load i64, i64* @e_FM_PORT_TYPE_TX, align 8
  %420 = icmp eq i64 %418, %419
  br i1 %420, label %427, label %421

421:                                              ; preds = %415
  %422 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %423 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %422, i32 0, i32 0
  %424 = load i64, i64* %423, align 8
  %425 = load i64, i64* @e_FM_PORT_TYPE_TX_10G, align 8
  %426 = icmp eq i64 %424, %425
  br i1 %426, label %427, label %509

427:                                              ; preds = %421, %415
  %428 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %5, align 8
  %429 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %428, i32 0, i32 5
  %430 = load i32, i32* %429, align 8
  %431 = load i32, i32* @BMI_FIFO_UNITS, align 4
  %432 = srem i32 %430, %431
  %433 = icmp ne i32 %432, 0
  br i1 %433, label %434, label %441

434:                                              ; preds = %427
  %435 = load i32, i32* @MAJOR, align 4
  %436 = load i32, i32* @E_INVALID_VALUE, align 4
  %437 = load i32, i32* @BMI_FIFO_UNITS, align 4
  %438 = sext i32 %437 to i64
  %439 = inttoptr i64 %438 to i8*
  %440 = call i32 @RETURN_ERROR(i32 %435, i32 %436, i8* %439)
  br label %441

441:                                              ; preds = %434, %427
  %442 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %5, align 8
  %443 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %442, i32 0, i32 5
  %444 = load i32, i32* %443, align 8
  %445 = load i32, i32* @MAX_PORT_FIFO_SIZE, align 4
  %446 = sub nsw i32 %445, 256
  %447 = icmp sgt i32 %444, %446
  br i1 %447, label %448, label %456

448:                                              ; preds = %441
  %449 = load i32, i32* @MAJOR, align 4
  %450 = load i32, i32* @E_INVALID_VALUE, align 4
  %451 = load i32, i32* @MAX_PORT_FIFO_SIZE, align 4
  %452 = sub nsw i32 %451, 256
  %453 = sext i32 %452 to i64
  %454 = inttoptr i64 %453 to i8*
  %455 = call i32 @RETURN_ERROR(i32 %449, i32 %450, i8* %454)
  br label %456

456:                                              ; preds = %448, %441
  %457 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %5, align 8
  %458 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %457, i32 0, i32 6
  %459 = load i32, i32* %458, align 4
  %460 = load i32, i32* @BMI_FIFO_UNITS, align 4
  %461 = srem i32 %459, %460
  %462 = icmp ne i32 %461, 0
  br i1 %462, label %463, label %470

463:                                              ; preds = %456
  %464 = load i32, i32* @MAJOR, align 4
  %465 = load i32, i32* @E_INVALID_VALUE, align 4
  %466 = load i32, i32* @BMI_FIFO_UNITS, align 4
  %467 = sext i32 %466 to i64
  %468 = inttoptr i64 %467 to i8*
  %469 = call i32 @RETURN_ERROR(i32 %464, i32 %465, i8* %468)
  br label %470

470:                                              ; preds = %463, %456
  %471 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %5, align 8
  %472 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %471, i32 0, i32 6
  %473 = load i32, i32* %472, align 4
  %474 = load i32, i32* @BMI_FIFO_UNITS, align 4
  %475 = icmp slt i32 %473, %474
  br i1 %475, label %482, label %476

476:                                              ; preds = %470
  %477 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %5, align 8
  %478 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %477, i32 0, i32 6
  %479 = load i32, i32* %478, align 4
  %480 = load i32, i32* @MAX_PORT_FIFO_SIZE, align 4
  %481 = icmp sgt i32 %479, %480
  br i1 %481, label %482, label %489

482:                                              ; preds = %476, %470
  %483 = load i32, i32* @MAJOR, align 4
  %484 = load i32, i32* @E_INVALID_VALUE, align 4
  %485 = load i32, i32* @MAX_PORT_FIFO_SIZE, align 4
  %486 = sext i32 %485 to i64
  %487 = inttoptr i64 %486 to i8*
  %488 = call i32 @RETURN_ERROR(i32 %483, i32 %484, i8* %487)
  br label %489

489:                                              ; preds = %482, %476
  %490 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %491 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %490, i32 0, i32 0
  %492 = load i64, i64* %491, align 8
  %493 = load i64, i64* @e_FM_PORT_TYPE_TX, align 8
  %494 = icmp eq i64 %492, %493
  br i1 %494, label %495, label %508

495:                                              ; preds = %489
  %496 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %497 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %496, i32 0, i32 1
  %498 = load %struct.TYPE_21__*, %struct.TYPE_21__** %497, align 8
  %499 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %498, i32 0, i32 11
  %500 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %499, i32 0, i32 0
  %501 = load i32, i32* %500, align 8
  %502 = icmp sgt i32 %501, 2
  br i1 %502, label %503, label %507

503:                                              ; preds = %495
  %504 = load i32, i32* @MAJOR, align 4
  %505 = load i32, i32* @E_INVALID_VALUE, align 4
  %506 = call i32 @RETURN_ERROR(i32 %504, i32 %505, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.21, i64 0, i64 0))
  br label %507

507:                                              ; preds = %503, %495
  br label %508

508:                                              ; preds = %507, %489
  br label %524

509:                                              ; preds = %421
  %510 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %5, align 8
  %511 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %510, i32 0, i32 7
  %512 = load i64, i64* %511, align 8
  %513 = icmp ne i64 %512, 0
  br i1 %513, label %514, label %523

514:                                              ; preds = %509
  %515 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %516 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %515, i32 0, i32 4
  %517 = load i32, i32* %516, align 8
  %518 = icmp ne i32 %517, 0
  br i1 %518, label %519, label %523

519:                                              ; preds = %514
  %520 = load i32, i32* @MAJOR, align 4
  %521 = load i32, i32* @E_CONFLICT, align 4
  %522 = call i32 @RETURN_ERROR(i32 %520, i32 %521, i8* getelementptr inbounds ([116 x i8], [116 x i8]* @.str.22, i64 0, i64 0))
  br label %523

523:                                              ; preds = %519, %514, %509
  br label %524

524:                                              ; preds = %523, %508
  %525 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %526 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %525, i32 0, i32 0
  %527 = load i64, i64* %526, align 8
  %528 = load i64, i64* @e_FM_PORT_TYPE_RX, align 8
  %529 = icmp eq i64 %527, %528
  br i1 %529, label %542, label %530

530:                                              ; preds = %524
  %531 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %532 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %531, i32 0, i32 0
  %533 = load i64, i64* %532, align 8
  %534 = load i64, i64* @e_FM_PORT_TYPE_RX_10G, align 8
  %535 = icmp eq i64 %533, %534
  br i1 %535, label %542, label %536

536:                                              ; preds = %530
  %537 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %538 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %537, i32 0, i32 0
  %539 = load i64, i64* %538, align 8
  %540 = load i64, i64* @e_FM_PORT_TYPE_OH_OFFLINE_PARSING, align 8
  %541 = icmp eq i64 %539, %540
  br i1 %541, label %542, label %564

542:                                              ; preds = %536, %530, %524
  %543 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %544 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %543, i32 0, i32 0
  %545 = load i64, i64* %544, align 8
  %546 = load i64, i64* @e_FM_PORT_TYPE_OH_OFFLINE_PARSING, align 8
  %547 = icmp eq i64 %545, %546
  br i1 %547, label %548, label %550

548:                                              ; preds = %542
  %549 = load i32, i32* @BMI_STATUS_OP_MASK_UNUSED, align 4
  store i32 %549, i32* %7, align 4
  br label %552

550:                                              ; preds = %542
  %551 = load i32, i32* @BMI_STATUS_RX_MASK_UNUSED, align 4
  store i32 %551, i32* %7, align 4
  br label %552

552:                                              ; preds = %550, %548
  %553 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %554 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %553, i32 0, i32 4
  %555 = load i32, i32* %554, align 8
  %556 = load i32, i32* %7, align 4
  %557 = and i32 %555, %556
  %558 = icmp ne i32 %557, 0
  br i1 %558, label %559, label %563

559:                                              ; preds = %552
  %560 = load i32, i32* @MAJOR, align 4
  %561 = load i32, i32* @E_INVALID_SELECTION, align 4
  %562 = call i32 @RETURN_ERROR(i32 %560, i32 %561, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.23, i64 0, i64 0))
  br label %563

563:                                              ; preds = %559, %552
  br label %564

564:                                              ; preds = %563, %536
  %565 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %566 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %565, i32 0, i32 0
  %567 = load i64, i64* %566, align 8
  %568 = load i64, i64* @e_FM_PORT_TYPE_OH_OFFLINE_PARSING, align 8
  %569 = icmp eq i64 %567, %568
  br i1 %569, label %576, label %570

570:                                              ; preds = %564
  %571 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %572 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %571, i32 0, i32 0
  %573 = load i64, i64* %572, align 8
  %574 = load i64, i64* @e_FM_PORT_TYPE_OH_HOST_COMMAND, align 8
  %575 = icmp eq i64 %573, %574
  br i1 %575, label %576, label %621

576:                                              ; preds = %570, %564
  %577 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %578 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %577, i32 0, i32 2
  %579 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %578, i32 0, i32 0
  %580 = load i32, i32* %579, align 8
  %581 = icmp slt i32 %580, 6
  br i1 %581, label %582, label %594

582:                                              ; preds = %576
  %583 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %584 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %583, i32 0, i32 1
  %585 = load %struct.TYPE_21__*, %struct.TYPE_21__** %584, align 8
  %586 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %585, i32 0, i32 5
  %587 = load i64, i64* %586, align 8
  %588 = load i64, i64* @DEFAULT_notSupported, align 8
  %589 = icmp ne i64 %587, %588
  br i1 %589, label %590, label %594

590:                                              ; preds = %582
  %591 = load i32, i32* @MAJOR, align 4
  %592 = load i32, i32* @E_NOT_SUPPORTED, align 4
  %593 = call i32 @RETURN_ERROR(i32 %591, i32 %592, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.24, i64 0, i64 0))
  br label %594

594:                                              ; preds = %590, %582, %576
  %595 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %596 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %595, i32 0, i32 2
  %597 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %596, i32 0, i32 0
  %598 = load i32, i32* %597, align 8
  %599 = icmp eq i32 %598, 4
  br i1 %599, label %620, label %600

600:                                              ; preds = %594
  %601 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %602 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %601, i32 0, i32 2
  %603 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %602, i32 0, i32 0
  %604 = load i32, i32* %603, align 8
  %605 = icmp sge i32 %604, 6
  br i1 %605, label %620, label %606

606:                                              ; preds = %600
  %607 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %608 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %607, i32 0, i32 1
  %609 = load %struct.TYPE_21__*, %struct.TYPE_21__** %608, align 8
  %610 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %609, i32 0, i32 11
  %611 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %610, i32 0, i32 0
  %612 = load i32, i32* %611, align 8
  %613 = sext i32 %612 to i64
  %614 = load i64, i64* @DEFAULT_notSupported, align 8
  %615 = icmp ne i64 %613, %614
  br i1 %615, label %616, label %620

616:                                              ; preds = %606
  %617 = load i32, i32* @MAJOR, align 4
  %618 = load i32, i32* @E_INVALID_OPERATION, align 4
  %619 = call i32 @RETURN_ERROR(i32 %617, i32 %618, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.25, i64 0, i64 0))
  br label %620

620:                                              ; preds = %616, %606, %600, %594
  br label %621

621:                                              ; preds = %620, %570
  %622 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %623 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %622, i32 0, i32 5
  %624 = load i64, i64* %623, align 8
  %625 = load i64, i64* @FRAME_END_DATA_SIZE, align 8
  %626 = icmp sgt i64 %624, %625
  br i1 %626, label %627, label %639

627:                                              ; preds = %621
  %628 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %629 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %628, i32 0, i32 5
  %630 = load i64, i64* %629, align 8
  %631 = load i64, i64* @DEFAULT_notSupported, align 8
  %632 = icmp ne i64 %630, %631
  br i1 %632, label %633, label %639

633:                                              ; preds = %627
  %634 = load i32, i32* @MAJOR, align 4
  %635 = load i32, i32* @E_INVALID_VALUE, align 4
  %636 = load i64, i64* @FRAME_END_DATA_SIZE, align 8
  %637 = inttoptr i64 %636 to i8*
  %638 = call i32 @RETURN_ERROR(i32 %634, i32 %635, i8* %637)
  br label %639

639:                                              ; preds = %633, %627, %621
  %640 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %641 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %640, i32 0, i32 10
  %642 = call i64 @FmSpCheckIntContextParams(%struct.TYPE_23__* %641)
  %643 = load i64, i64* @E_OK, align 8
  %644 = icmp ne i64 %642, %643
  br i1 %644, label %645, label %650

645:                                              ; preds = %639
  %646 = load i32, i32* @MAJOR, align 4
  %647 = load i32, i32* @E_INVALID_VALUE, align 4
  %648 = load i8*, i8** @NO_MSG, align 8
  %649 = call i32 @RETURN_ERROR(i32 %646, i32 %647, i8* %648)
  br label %650

650:                                              ; preds = %645, %639
  %651 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %652 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %651, i32 0, i32 9
  %653 = load i64, i64* %652, align 8
  %654 = icmp ne i64 %653, 0
  br i1 %654, label %655, label %674

655:                                              ; preds = %650
  %656 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %657 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %656, i32 0, i32 5
  %658 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %657, i32 0, i32 0
  %659 = load i64, i64* %658, align 8
  %660 = icmp ne i64 %659, 0
  br i1 %660, label %661, label %668

661:                                              ; preds = %655
  %662 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %663 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %662, i32 0, i32 5
  %664 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %663, i32 0, i32 0
  %665 = load i64, i64* %664, align 8
  %666 = load i64, i64* @MAX_NUM_OF_TASKS, align 8
  %667 = icmp sgt i64 %665, %666
  br i1 %667, label %668, label %674

668:                                              ; preds = %661, %655
  %669 = load i32, i32* @MAJOR, align 4
  %670 = load i32, i32* @E_INVALID_VALUE, align 4
  %671 = load i64, i64* @MAX_NUM_OF_TASKS, align 8
  %672 = inttoptr i64 %671 to i8*
  %673 = call i32 @RETURN_ERROR(i32 %669, i32 %670, i8* %672)
  br label %674

674:                                              ; preds = %668, %661, %650
  %675 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %676 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %675, i32 0, i32 9
  %677 = load i64, i64* %676, align 8
  %678 = icmp ne i64 %677, 0
  br i1 %678, label %679, label %692

679:                                              ; preds = %674
  %680 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %681 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %680, i32 0, i32 5
  %682 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %681, i32 0, i32 1
  %683 = load i64, i64* %682, align 8
  %684 = load i64, i64* @MAX_NUM_OF_EXTRA_TASKS, align 8
  %685 = icmp sgt i64 %683, %684
  br i1 %685, label %686, label %692

686:                                              ; preds = %679
  %687 = load i32, i32* @MAJOR, align 4
  %688 = load i32, i32* @E_INVALID_VALUE, align 4
  %689 = load i64, i64* @MAX_NUM_OF_EXTRA_TASKS, align 8
  %690 = inttoptr i64 %689 to i8*
  %691 = call i32 @RETURN_ERROR(i32 %687, i32 %688, i8* %690)
  br label %692

692:                                              ; preds = %686, %679, %674
  %693 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %694 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %693, i32 0, i32 8
  %695 = load i64, i64* %694, align 8
  %696 = icmp ne i64 %695, 0
  br i1 %696, label %697, label %716

697:                                              ; preds = %692
  %698 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %699 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %698, i32 0, i32 4
  %700 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %699, i32 0, i32 0
  %701 = load i64, i64* %700, align 8
  %702 = icmp ne i64 %701, 0
  br i1 %702, label %703, label %710

703:                                              ; preds = %697
  %704 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %705 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %704, i32 0, i32 4
  %706 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %705, i32 0, i32 0
  %707 = load i64, i64* %706, align 8
  %708 = load i64, i64* @MAX_NUM_OF_DMAS, align 8
  %709 = icmp sgt i64 %707, %708
  br i1 %709, label %710, label %716

710:                                              ; preds = %703, %697
  %711 = load i32, i32* @MAJOR, align 4
  %712 = load i32, i32* @E_INVALID_VALUE, align 4
  %713 = load i64, i64* @MAX_NUM_OF_DMAS, align 8
  %714 = inttoptr i64 %713 to i8*
  %715 = call i32 @RETURN_ERROR(i32 %711, i32 %712, i8* %714)
  br label %716

716:                                              ; preds = %710, %703, %692
  %717 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %718 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %717, i32 0, i32 8
  %719 = load i64, i64* %718, align 8
  %720 = icmp ne i64 %719, 0
  br i1 %720, label %721, label %734

721:                                              ; preds = %716
  %722 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %723 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %722, i32 0, i32 4
  %724 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %723, i32 0, i32 1
  %725 = load i64, i64* %724, align 8
  %726 = load i64, i64* @MAX_NUM_OF_EXTRA_DMAS, align 8
  %727 = icmp sgt i64 %725, %726
  br i1 %727, label %728, label %734

728:                                              ; preds = %721
  %729 = load i32, i32* @MAJOR, align 4
  %730 = load i32, i32* @E_INVALID_VALUE, align 4
  %731 = load i64, i64* @MAX_NUM_OF_EXTRA_DMAS, align 8
  %732 = inttoptr i64 %731 to i8*
  %733 = call i32 @RETURN_ERROR(i32 %729, i32 %730, i8* %732)
  br label %734

734:                                              ; preds = %728, %721, %716
  %735 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %736 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %735, i32 0, i32 7
  %737 = load i64, i64* %736, align 8
  %738 = icmp ne i64 %737, 0
  br i1 %738, label %739, label %759

739:                                              ; preds = %734
  %740 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %741 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %740, i32 0, i32 3
  %742 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %741, i32 0, i32 1
  %743 = load i32, i32* %742, align 4
  %744 = icmp ne i32 %743, 0
  br i1 %744, label %745, label %752

745:                                              ; preds = %739
  %746 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %747 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %746, i32 0, i32 3
  %748 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %747, i32 0, i32 1
  %749 = load i32, i32* %748, align 4
  %750 = load i32, i32* @MAX_PORT_FIFO_SIZE, align 4
  %751 = icmp sgt i32 %749, %750
  br i1 %751, label %752, label %759

752:                                              ; preds = %745, %739
  %753 = load i32, i32* @MAJOR, align 4
  %754 = load i32, i32* @E_INVALID_VALUE, align 4
  %755 = load i32, i32* @MAX_PORT_FIFO_SIZE, align 4
  %756 = sext i32 %755 to i64
  %757 = inttoptr i64 %756 to i8*
  %758 = call i32 @RETURN_ERROR(i32 %753, i32 %754, i8* %757)
  br label %759

759:                                              ; preds = %752, %745, %734
  %760 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %761 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %760, i32 0, i32 7
  %762 = load i64, i64* %761, align 8
  %763 = icmp ne i64 %762, 0
  br i1 %763, label %764, label %779

764:                                              ; preds = %759
  %765 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %766 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %765, i32 0, i32 3
  %767 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %766, i32 0, i32 1
  %768 = load i32, i32* %767, align 4
  %769 = load i32, i32* @BMI_FIFO_UNITS, align 4
  %770 = srem i32 %768, %769
  %771 = icmp ne i32 %770, 0
  br i1 %771, label %772, label %779

772:                                              ; preds = %764
  %773 = load i32, i32* @MAJOR, align 4
  %774 = load i32, i32* @E_INVALID_VALUE, align 4
  %775 = load i32, i32* @BMI_FIFO_UNITS, align 4
  %776 = sext i32 %775 to i64
  %777 = inttoptr i64 %776 to i8*
  %778 = call i32 @RETURN_ERROR(i32 %773, i32 %774, i8* %777)
  br label %779

779:                                              ; preds = %772, %764, %759
  %780 = load i64, i64* @E_OK, align 8
  store i64 %780, i64* %2, align 8
  br label %781

781:                                              ; preds = %779, %42
  %782 = load i64, i64* %2, align 8
  ret i64 %782
}

declare dso_local i32 @RETURN_ERROR(i32, i32, i8*) #1

declare dso_local i64 @FmPortImCheckInitParameters(%struct.TYPE_22__*) #1

declare dso_local i64 @ERROR_CODE(i64) #1

declare dso_local i64 @FmSpCheckBufPoolsParams(%struct.TYPE_24__*, i64, %struct.TYPE_14__*) #1

declare dso_local i64 @FmSpCheckBufMargins(%struct.TYPE_15__*) #1

declare dso_local i64 @FmSpCheckIntContextParams(%struct.TYPE_23__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
