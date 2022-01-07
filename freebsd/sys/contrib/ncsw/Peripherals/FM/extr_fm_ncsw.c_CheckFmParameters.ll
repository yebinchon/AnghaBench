; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/extr_fm_ncsw.c_CheckFmParameters.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/extr_fm_ncsw.c_CheckFmParameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i64, i32, %struct.TYPE_8__*, %struct.TYPE_9__*, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i64, i64, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i64, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@MAJOR = common dso_local global i32 0, align 4
@E_INVALID_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Old FMan CTRL code is loaded; FM must be reset!\00", align 1
@DMA_MODE_MAX_AXI_DBG_NUM_OF_BEATS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [47 x i8] c"axiDbgNumOfBeats has to be in the range 1 - %d\00", align 1
@DMA_CAM_UNITS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"dma_cam_num_of_entries has to be divisble by %d\00", align 1
@DMA_THRESH_MAX_COMMQ = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [50 x i8] c"dma_comm_qtsh_asrt_emer can not be larger than %d\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"dma_comm_qtsh_clr_emer can not be larger than %d\00", align 1
@.str.5 = private unnamed_addr constant [68 x i8] c"dma_comm_qtsh_clr_emer must be smaller than dma_comm_qtsh_asrt_emer\00", align 1
@DMA_THRESH_MAX_BUF = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [53 x i8] c"dma_read_buf_tsh_asrt_emer can not be larger than %d\00", align 1
@.str.7 = private unnamed_addr constant [52 x i8] c"dma_read_buf_tsh_clr_emer can not be larger than %d\00", align 1
@.str.8 = private unnamed_addr constant [74 x i8] c"dma_read_buf_tsh_clr_emer must be smaller than dma_read_buf_tsh_asrt_emer\00", align 1
@.str.9 = private unnamed_addr constant [54 x i8] c"dma_write_buf_tsh_asrt_emer can not be larger than %d\00", align 1
@.str.10 = private unnamed_addr constant [53 x i8] c"dma_write_buf_tsh_clr_emer can not be larger than %d\00", align 1
@.str.11 = private unnamed_addr constant [76 x i8] c"dma_write_buf_tsh_clr_emer must be smaller than dma_write_buf_tsh_asrt_emer\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"fmClkFreq must be set.\00", align 1
@DMA_MAX_WATCHDOG = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [101 x i8] c"dma_watchdog depends on FM clock. dma_watchdog(in microseconds) * clk (in Mhz), may not exceed 0x08x\00", align 1
@BMI_FIFO_UNITS = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [47 x i8] c"totalFifoSize number has to be divisible by %d\00", align 1
@BMI_MAX_FIFO_SIZE = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [76 x i8] c"totalFifoSize (currently defined as %d) has to be in the range of 256 to %d\00", align 1
@BMI_MAX_NUM_OF_TASKS = common dso_local global i64 0, align 8
@.str.16 = private unnamed_addr constant [53 x i8] c"totalNumOfTasks number has to be in the range 1 - %d\00", align 1
@FPM_MAX_DISP_LIMIT = common dso_local global i64 0, align 8
@.str.17 = private unnamed_addr constant [40 x i8] c"disp_limit_tsh can't be greater than %d\00", align 1
@.str.18 = private unnamed_addr constant [33 x i8] c"Exceptions callback not provided\00", align 1
@E_OK = common dso_local global i32 0, align 4
@BMI_MAX_NUM_OF_DMAS = common dso_local global i64 0, align 8
@E_FMAN_DMA_AID_OUT_PORT_ID = common dso_local global i64 0, align 8
@E_FMAN_DMA_DBG_CNT_INT_READ_EM = common dso_local global i64 0, align 8
@E_FMAN_DMA_DBG_CNT_INT_WRITE_EM = common dso_local global i64 0, align 8
@E_FMAN_DMA_DBG_CNT_RAW_WAR_PROT = common dso_local global i64 0, align 8
@E_NOT_SUPPORTED = common dso_local global i32 0, align 4
@FM_DMA_MURAM_READ_EMERGENCY = common dso_local global i64 0, align 8
@FM_DMA_MURAM_WRITE_EMERGENCY = common dso_local global i64 0, align 8
@FM_EX_BMI_DISPATCH_RAM_ECC = common dso_local global i32 0, align 4
@FM_EX_QMI_DOUBLE_ECC = common dso_local global i32 0, align 4
@FM_EX_QMI_SINGLE_ECC = common dso_local global i32 0, align 4
@FM_VSP_MAX_NUM_OF_ENTRIES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*)* @CheckFmParameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CheckFmParameters(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %3 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %4 = call i64 @IsFmanCtrlCodeLoaded(%struct.TYPE_10__* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %15

6:                                                ; preds = %1
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 7
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %6
  %12 = load i32, i32* @MAJOR, align 4
  %13 = load i32, i32* @E_INVALID_VALUE, align 4
  %14 = call i32 @RETURN_ERROR(i32 %12, i32 %13, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %11, %6, %1
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 4
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %15
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 4
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @DMA_MODE_MAX_AXI_DBG_NUM_OF_BEATS, align 8
  %29 = icmp sgt i64 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %22, %15
  %31 = load i32, i32* @MAJOR, align 4
  %32 = load i32, i32* @E_INVALID_VALUE, align 4
  %33 = load i64, i64* @DMA_MODE_MAX_AXI_DBG_NUM_OF_BEATS, align 8
  %34 = inttoptr i64 %33 to i8*
  %35 = call i32 @RETURN_ERROR(i32 %31, i32 %32, i8* %34)
  br label %36

36:                                               ; preds = %30, %22
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 4
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @DMA_CAM_UNITS, align 4
  %43 = srem i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %36
  %46 = load i32, i32* @MAJOR, align 4
  %47 = load i32, i32* @E_INVALID_VALUE, align 4
  %48 = load i32, i32* @DMA_CAM_UNITS, align 4
  %49 = sext i32 %48 to i64
  %50 = inttoptr i64 %49 to i8*
  %51 = call i32 @RETURN_ERROR(i32 %46, i32 %47, i8* %50)
  br label %52

52:                                               ; preds = %45, %36
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 4
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @DMA_THRESH_MAX_COMMQ, align 8
  %59 = icmp sgt i64 %57, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %52
  %61 = load i32, i32* @MAJOR, align 4
  %62 = load i32, i32* @E_INVALID_VALUE, align 4
  %63 = load i64, i64* @DMA_THRESH_MAX_COMMQ, align 8
  %64 = inttoptr i64 %63 to i8*
  %65 = call i32 @RETURN_ERROR(i32 %61, i32 %62, i8* %64)
  br label %66

66:                                               ; preds = %60, %52
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 4
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @DMA_THRESH_MAX_COMMQ, align 8
  %73 = icmp sgt i64 %71, %72
  br i1 %73, label %74, label %80

74:                                               ; preds = %66
  %75 = load i32, i32* @MAJOR, align 4
  %76 = load i32, i32* @E_INVALID_VALUE, align 4
  %77 = load i64, i64* @DMA_THRESH_MAX_COMMQ, align 8
  %78 = inttoptr i64 %77 to i8*
  %79 = call i32 @RETURN_ERROR(i32 %75, i32 %76, i8* %78)
  br label %80

80:                                               ; preds = %74, %66
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 4
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 4
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = icmp sge i64 %85, %90
  br i1 %91, label %92, label %96

92:                                               ; preds = %80
  %93 = load i32, i32* @MAJOR, align 4
  %94 = load i32, i32* @E_INVALID_VALUE, align 4
  %95 = call i32 @RETURN_ERROR(i32 %93, i32 %94, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.5, i64 0, i64 0))
  br label %96

96:                                               ; preds = %92, %80
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 4
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 4
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @DMA_THRESH_MAX_BUF, align 8
  %103 = icmp sgt i64 %101, %102
  br i1 %103, label %104, label %110

104:                                              ; preds = %96
  %105 = load i32, i32* @MAJOR, align 4
  %106 = load i32, i32* @E_INVALID_VALUE, align 4
  %107 = load i64, i64* @DMA_THRESH_MAX_BUF, align 8
  %108 = inttoptr i64 %107 to i8*
  %109 = call i32 @RETURN_ERROR(i32 %105, i32 %106, i8* %108)
  br label %110

110:                                              ; preds = %104, %96
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 4
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 5
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @DMA_THRESH_MAX_BUF, align 8
  %117 = icmp sgt i64 %115, %116
  br i1 %117, label %118, label %124

118:                                              ; preds = %110
  %119 = load i32, i32* @MAJOR, align 4
  %120 = load i32, i32* @E_INVALID_VALUE, align 4
  %121 = load i64, i64* @DMA_THRESH_MAX_BUF, align 8
  %122 = inttoptr i64 %121 to i8*
  %123 = call i32 @RETURN_ERROR(i32 %119, i32 %120, i8* %122)
  br label %124

124:                                              ; preds = %118, %110
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 4
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 5
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 4
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 4
  %134 = load i64, i64* %133, align 8
  %135 = icmp sge i64 %129, %134
  br i1 %135, label %136, label %140

136:                                              ; preds = %124
  %137 = load i32, i32* @MAJOR, align 4
  %138 = load i32, i32* @E_INVALID_VALUE, align 4
  %139 = call i32 @RETURN_ERROR(i32 %137, i32 %138, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.8, i64 0, i64 0))
  br label %140

140:                                              ; preds = %136, %124
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 4
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 6
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @DMA_THRESH_MAX_BUF, align 8
  %147 = icmp sgt i64 %145, %146
  br i1 %147, label %148, label %154

148:                                              ; preds = %140
  %149 = load i32, i32* @MAJOR, align 4
  %150 = load i32, i32* @E_INVALID_VALUE, align 4
  %151 = load i64, i64* @DMA_THRESH_MAX_BUF, align 8
  %152 = inttoptr i64 %151 to i8*
  %153 = call i32 @RETURN_ERROR(i32 %149, i32 %150, i8* %152)
  br label %154

154:                                              ; preds = %148, %140
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 4
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 7
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @DMA_THRESH_MAX_BUF, align 8
  %161 = icmp sgt i64 %159, %160
  br i1 %161, label %162, label %168

162:                                              ; preds = %154
  %163 = load i32, i32* @MAJOR, align 4
  %164 = load i32, i32* @E_INVALID_VALUE, align 4
  %165 = load i64, i64* @DMA_THRESH_MAX_BUF, align 8
  %166 = inttoptr i64 %165 to i8*
  %167 = call i32 @RETURN_ERROR(i32 %163, i32 %164, i8* %166)
  br label %168

168:                                              ; preds = %162, %154
  %169 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 4
  %171 = load %struct.TYPE_9__*, %struct.TYPE_9__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 7
  %173 = load i64, i64* %172, align 8
  %174 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 4
  %176 = load %struct.TYPE_9__*, %struct.TYPE_9__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i32 0, i32 6
  %178 = load i64, i64* %177, align 8
  %179 = icmp sge i64 %173, %178
  br i1 %179, label %180, label %184

180:                                              ; preds = %168
  %181 = load i32, i32* @MAJOR, align 4
  %182 = load i32, i32* @E_INVALID_VALUE, align 4
  %183 = call i32 @RETURN_ERROR(i32 %181, i32 %182, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.11, i64 0, i64 0))
  br label %184

184:                                              ; preds = %180, %168
  %185 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i32 0, i32 3
  %187 = load %struct.TYPE_8__*, %struct.TYPE_8__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 4
  %189 = load i32, i32* %188, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %195, label %191

191:                                              ; preds = %184
  %192 = load i32, i32* @MAJOR, align 4
  %193 = load i32, i32* @E_INVALID_VALUE, align 4
  %194 = call i32 @RETURN_ERROR(i32 %192, i32 %193, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0))
  br label %195

195:                                              ; preds = %191, %184
  %196 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %197 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %196, i32 0, i32 4
  %198 = load %struct.TYPE_9__*, %struct.TYPE_9__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %198, i32 0, i32 14
  %200 = load i64, i64* %199, align 8
  %201 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i32 0, i32 3
  %203 = load %struct.TYPE_8__*, %struct.TYPE_8__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %203, i32 0, i32 4
  %205 = load i32, i32* %204, align 4
  %206 = call i64 @USEC_TO_CLK(i64 %200, i32 %205)
  %207 = load i64, i64* @DMA_MAX_WATCHDOG, align 8
  %208 = icmp sgt i64 %206, %207
  br i1 %208, label %209, label %215

209:                                              ; preds = %195
  %210 = load i32, i32* @MAJOR, align 4
  %211 = load i32, i32* @E_INVALID_VALUE, align 4
  %212 = load i64, i64* @DMA_MAX_WATCHDOG, align 8
  %213 = inttoptr i64 %212 to i8*
  %214 = call i32 @RETURN_ERROR(i32 %210, i32 %211, i8* %213)
  br label %215

215:                                              ; preds = %209, %195
  %216 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %217 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %216, i32 0, i32 3
  %218 = load %struct.TYPE_8__*, %struct.TYPE_8__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = load i32, i32* @BMI_FIFO_UNITS, align 4
  %222 = srem i32 %220, %221
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %231

224:                                              ; preds = %215
  %225 = load i32, i32* @MAJOR, align 4
  %226 = load i32, i32* @E_INVALID_VALUE, align 4
  %227 = load i32, i32* @BMI_FIFO_UNITS, align 4
  %228 = sext i32 %227 to i64
  %229 = inttoptr i64 %228 to i8*
  %230 = call i32 @RETURN_ERROR(i32 %225, i32 %226, i8* %229)
  br label %231

231:                                              ; preds = %224, %215
  %232 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %233 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %232, i32 0, i32 3
  %234 = load %struct.TYPE_8__*, %struct.TYPE_8__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %246

238:                                              ; preds = %231
  %239 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %240 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %239, i32 0, i32 3
  %241 = load %struct.TYPE_8__*, %struct.TYPE_8__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = load i32, i32* @BMI_MAX_FIFO_SIZE, align 4
  %245 = icmp sgt i32 %243, %244
  br i1 %245, label %246, label %258

246:                                              ; preds = %238, %231
  %247 = load i32, i32* @MAJOR, align 4
  %248 = load i32, i32* @E_INVALID_VALUE, align 4
  %249 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %250 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %249, i32 0, i32 3
  %251 = load %struct.TYPE_8__*, %struct.TYPE_8__** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = load i32, i32* @BMI_MAX_FIFO_SIZE, align 4
  %255 = sext i32 %254 to i64
  %256 = inttoptr i64 %255 to i8*
  %257 = call i32 @RETURN_ERROR(i32 %247, i32 %248, i8* %256)
  br label %258

258:                                              ; preds = %246, %238
  %259 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %260 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %259, i32 0, i32 3
  %261 = load %struct.TYPE_8__*, %struct.TYPE_8__** %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %261, i32 0, i32 1
  %263 = load i64, i64* %262, align 8
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %265, label %273

265:                                              ; preds = %258
  %266 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %267 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %266, i32 0, i32 3
  %268 = load %struct.TYPE_8__*, %struct.TYPE_8__** %267, align 8
  %269 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %268, i32 0, i32 1
  %270 = load i64, i64* %269, align 8
  %271 = load i64, i64* @BMI_MAX_NUM_OF_TASKS, align 8
  %272 = icmp sgt i64 %270, %271
  br i1 %272, label %273, label %279

273:                                              ; preds = %265, %258
  %274 = load i32, i32* @MAJOR, align 4
  %275 = load i32, i32* @E_INVALID_VALUE, align 4
  %276 = load i64, i64* @BMI_MAX_NUM_OF_TASKS, align 8
  %277 = inttoptr i64 %276 to i8*
  %278 = call i32 @RETURN_ERROR(i32 %274, i32 %275, i8* %277)
  br label %279

279:                                              ; preds = %273, %265
  %280 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %281 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %280, i32 0, i32 4
  %282 = load %struct.TYPE_9__*, %struct.TYPE_9__** %281, align 8
  %283 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %282, i32 0, i32 11
  %284 = load i64, i64* %283, align 8
  %285 = load i64, i64* @FPM_MAX_DISP_LIMIT, align 8
  %286 = icmp sgt i64 %284, %285
  br i1 %286, label %287, label %293

287:                                              ; preds = %279
  %288 = load i32, i32* @MAJOR, align 4
  %289 = load i32, i32* @E_INVALID_VALUE, align 4
  %290 = load i64, i64* @FPM_MAX_DISP_LIMIT, align 8
  %291 = inttoptr i64 %290 to i8*
  %292 = call i32 @RETURN_ERROR(i32 %288, i32 %289, i8* %291)
  br label %293

293:                                              ; preds = %287, %279
  %294 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %295 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %294, i32 0, i32 6
  %296 = load i32, i32* %295, align 4
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %302, label %298

298:                                              ; preds = %293
  %299 = load i32, i32* @MAJOR, align 4
  %300 = load i32, i32* @E_INVALID_VALUE, align 4
  %301 = call i32 @RETURN_ERROR(i32 %299, i32 %300, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.18, i64 0, i64 0))
  br label %302

302:                                              ; preds = %298, %293
  %303 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %304 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %303, i32 0, i32 5
  %305 = load i32, i32* %304, align 8
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %311, label %307

307:                                              ; preds = %302
  %308 = load i32, i32* @MAJOR, align 4
  %309 = load i32, i32* @E_INVALID_VALUE, align 4
  %310 = call i32 @RETURN_ERROR(i32 %308, i32 %309, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.18, i64 0, i64 0))
  br label %311

311:                                              ; preds = %307, %302
  %312 = load i32, i32* @E_OK, align 4
  ret i32 %312
}

declare dso_local i64 @IsFmanCtrlCodeLoaded(%struct.TYPE_10__*) #1

declare dso_local i32 @RETURN_ERROR(i32, i32, i8*) #1

declare dso_local i64 @USEC_TO_CLK(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
