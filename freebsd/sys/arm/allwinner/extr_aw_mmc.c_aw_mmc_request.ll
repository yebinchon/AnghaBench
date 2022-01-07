; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_mmc.c_aw_mmc_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_mmc.c_aw_mmc_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_request = type { %struct.mmc_command* }
%struct.mmc_command = type { i32, i32, i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.aw_mmc_softc = type { i32, i32, i32, i32, i64, i64, %struct.mmc_request*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.mmc_command }

@EBUSY = common dso_local global i32 0, align 4
@AW_MMC_CMDR_LOAD = common dso_local global i32 0, align 4
@AW_MMC_INT_ERR_BIT = common dso_local global i32 0, align 4
@MMC_ERR_NONE = common dso_local global i32 0, align 4
@MMC_GO_IDLE_STATE = common dso_local global i32 0, align 4
@AW_MMC_CMDR_SEND_INIT_SEQ = common dso_local global i32 0, align 4
@MMC_RSP_PRESENT = common dso_local global i32 0, align 4
@AW_MMC_CMDR_RESP_RCV = common dso_local global i32 0, align 4
@MMC_RSP_136 = common dso_local global i32 0, align 4
@AW_MMC_CMDR_LONG_RESP = common dso_local global i32 0, align 4
@MMC_RSP_CRC = common dso_local global i32 0, align 4
@AW_MMC_CMDR_CHK_RESP_CRC = common dso_local global i32 0, align 4
@AW_MMC_CMDR_DATA_TRANS = common dso_local global i32 0, align 4
@AW_MMC_CMDR_WAIT_PRE_OVER = common dso_local global i32 0, align 4
@MMC_DATA_MULTI = common dso_local global i32 0, align 4
@AW_MMC_CMDR_STOP_CMD_FLAG = common dso_local global i32 0, align 4
@AW_MMC_INT_AUTO_STOP_DONE = common dso_local global i32 0, align 4
@AW_MMC_INT_DATA_OVER = common dso_local global i32 0, align 4
@MMC_DATA_WRITE = common dso_local global i32 0, align 4
@AW_MMC_CMDR_DIR_WRITE = common dso_local global i32 0, align 4
@MMC_SECTOR_SIZE = common dso_local global i32 0, align 4
@AW_MMC_BKSR = common dso_local global i32 0, align 4
@AW_MMC_BYCR = common dso_local global i32 0, align 4
@AW_MMC_INT_CMD_DONE = common dso_local global i32 0, align 4
@AW_MMC_IMKR = common dso_local global i32 0, align 4
@AW_MMC_RISR = common dso_local global i32 0, align 4
@AW_MMC_A12A = common dso_local global i32 0, align 4
@AW_MMC_CAGR = common dso_local global i32 0, align 4
@AW_MMC_CMDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"prepare_dma failed: %d\0A\00", align 1
@hz = common dso_local global i32 0, align 4
@aw_mmc_timeout = common dso_local global i32 0, align 4
@MMC_DATA_BLOCK_SIZE = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.mmc_request*)* @aw_mmc_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aw_mmc_request(i32 %0, i32 %1, %struct.mmc_request* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mmc_request*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.aw_mmc_softc*, align 8
  %10 = alloca %struct.mmc_command*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.mmc_request* %2, %struct.mmc_request** %7, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call %struct.aw_mmc_softc* @device_get_softc(i32 %14)
  store %struct.aw_mmc_softc* %15, %struct.aw_mmc_softc** %9, align 8
  %16 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %9, align 8
  %17 = call i32 @AW_MMC_LOCK(%struct.aw_mmc_softc* %16)
  %18 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %9, align 8
  %19 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %18, i32 0, i32 6
  %20 = load %struct.mmc_request*, %struct.mmc_request** %19, align 8
  %21 = icmp ne %struct.mmc_request* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %3
  %23 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %9, align 8
  %24 = call i32 @AW_MMC_UNLOCK(%struct.aw_mmc_softc* %23)
  %25 = load i32, i32* @EBUSY, align 4
  store i32 %25, i32* %4, align 4
  br label %232

26:                                               ; preds = %3
  %27 = load %struct.mmc_request*, %struct.mmc_request** %7, align 8
  %28 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %9, align 8
  %29 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %28, i32 0, i32 6
  store %struct.mmc_request* %27, %struct.mmc_request** %29, align 8
  %30 = load %struct.mmc_request*, %struct.mmc_request** %7, align 8
  %31 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %30, i32 0, i32 0
  %32 = load %struct.mmc_command*, %struct.mmc_command** %31, align 8
  store %struct.mmc_command* %32, %struct.mmc_command** %10, align 8
  %33 = load i32, i32* @AW_MMC_CMDR_LOAD, align 4
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* @AW_MMC_INT_ERR_BIT, align 4
  store i32 %34, i32* %12, align 4
  %35 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %9, align 8
  %36 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %35, i32 0, i32 0
  store i32 0, i32* %36, align 8
  %37 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %9, align 8
  %38 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %37, i32 0, i32 5
  store i64 0, i64* %38, align 8
  %39 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %9, align 8
  %40 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %39, i32 0, i32 4
  store i64 0, i64* %40, align 8
  %41 = load i32, i32* @MMC_ERR_NONE, align 4
  %42 = load %struct.mmc_command*, %struct.mmc_command** %10, align 8
  %43 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %42, i32 0, i32 4
  store i32 %41, i32* %43, align 8
  %44 = load %struct.mmc_command*, %struct.mmc_command** %10, align 8
  %45 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @MMC_GO_IDLE_STATE, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %26
  %50 = load i32, i32* @AW_MMC_CMDR_SEND_INIT_SEQ, align 4
  %51 = load i32, i32* %11, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %11, align 4
  br label %53

53:                                               ; preds = %49, %26
  %54 = load %struct.mmc_command*, %struct.mmc_command** %10, align 8
  %55 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @MMC_RSP_PRESENT, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %53
  %61 = load i32, i32* @AW_MMC_CMDR_RESP_RCV, align 4
  %62 = load i32, i32* %11, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %11, align 4
  br label %64

64:                                               ; preds = %60, %53
  %65 = load %struct.mmc_command*, %struct.mmc_command** %10, align 8
  %66 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @MMC_RSP_136, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %64
  %72 = load i32, i32* @AW_MMC_CMDR_LONG_RESP, align 4
  %73 = load i32, i32* %11, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %11, align 4
  br label %75

75:                                               ; preds = %71, %64
  %76 = load %struct.mmc_command*, %struct.mmc_command** %10, align 8
  %77 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @MMC_RSP_CRC, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %75
  %83 = load i32, i32* @AW_MMC_CMDR_CHK_RESP_CRC, align 4
  %84 = load i32, i32* %11, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %11, align 4
  br label %86

86:                                               ; preds = %82, %75
  %87 = load %struct.mmc_command*, %struct.mmc_command** %10, align 8
  %88 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %87, i32 0, i32 3
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = icmp ne %struct.TYPE_6__* %89, null
  br i1 %90, label %91, label %159

91:                                               ; preds = %86
  %92 = load i32, i32* @AW_MMC_CMDR_DATA_TRANS, align 4
  %93 = load i32, i32* @AW_MMC_CMDR_WAIT_PRE_OVER, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* %11, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %11, align 4
  %97 = load %struct.mmc_command*, %struct.mmc_command** %10, align 8
  %98 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %97, i32 0, i32 3
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @MMC_DATA_MULTI, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %117

105:                                              ; preds = %91
  %106 = load i32, i32* @AW_MMC_CMDR_STOP_CMD_FLAG, align 4
  %107 = load i32, i32* %11, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %11, align 4
  %109 = load i32, i32* @AW_MMC_INT_AUTO_STOP_DONE, align 4
  %110 = load i32, i32* %12, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %12, align 4
  %112 = load i32, i32* @AW_MMC_INT_AUTO_STOP_DONE, align 4
  %113 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %9, align 8
  %114 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = or i32 %115, %112
  store i32 %116, i32* %114, align 8
  br label %126

117:                                              ; preds = %91
  %118 = load i32, i32* @AW_MMC_INT_DATA_OVER, align 4
  %119 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %9, align 8
  %120 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = or i32 %121, %118
  store i32 %122, i32* %120, align 8
  %123 = load i32, i32* @AW_MMC_INT_DATA_OVER, align 4
  %124 = load i32, i32* %12, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %12, align 4
  br label %126

126:                                              ; preds = %117, %105
  %127 = load %struct.mmc_command*, %struct.mmc_command** %10, align 8
  %128 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %127, i32 0, i32 3
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @MMC_DATA_WRITE, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %126
  %136 = load i32, i32* @AW_MMC_CMDR_DIR_WRITE, align 4
  %137 = load i32, i32* %11, align 4
  %138 = or i32 %137, %136
  store i32 %138, i32* %11, align 4
  br label %139

139:                                              ; preds = %135, %126
  %140 = load %struct.mmc_command*, %struct.mmc_command** %10, align 8
  %141 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %140, i32 0, i32 3
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @MMC_SECTOR_SIZE, align 4
  %146 = call i32 @min(i32 %144, i32 %145)
  store i32 %146, i32* %8, align 4
  %147 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %9, align 8
  %148 = load i32, i32* @AW_MMC_BKSR, align 4
  %149 = load i32, i32* %8, align 4
  %150 = call i32 @AW_MMC_WRITE_4(%struct.aw_mmc_softc* %147, i32 %148, i32 %149)
  %151 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %9, align 8
  %152 = load i32, i32* @AW_MMC_BYCR, align 4
  %153 = load %struct.mmc_command*, %struct.mmc_command** %10, align 8
  %154 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %153, i32 0, i32 3
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @AW_MMC_WRITE_4(%struct.aw_mmc_softc* %151, i32 %152, i32 %157)
  br label %163

159:                                              ; preds = %86
  %160 = load i32, i32* @AW_MMC_INT_CMD_DONE, align 4
  %161 = load i32, i32* %12, align 4
  %162 = or i32 %161, %160
  store i32 %162, i32* %12, align 4
  br label %163

163:                                              ; preds = %159, %139
  %164 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %9, align 8
  %165 = load i32, i32* @AW_MMC_IMKR, align 4
  %166 = load i32, i32* %12, align 4
  %167 = call i32 @AW_MMC_WRITE_4(%struct.aw_mmc_softc* %164, i32 %165, i32 %166)
  %168 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %9, align 8
  %169 = load i32, i32* @AW_MMC_RISR, align 4
  %170 = call i32 @AW_MMC_WRITE_4(%struct.aw_mmc_softc* %168, i32 %169, i32 -1)
  %171 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %9, align 8
  %172 = load i32, i32* @AW_MMC_A12A, align 4
  %173 = load i32, i32* %11, align 4
  %174 = load i32, i32* @AW_MMC_CMDR_STOP_CMD_FLAG, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  %177 = zext i1 %176 to i64
  %178 = select i1 %176, i32 0, i32 65535
  %179 = call i32 @AW_MMC_WRITE_4(%struct.aw_mmc_softc* %171, i32 %172, i32 %178)
  %180 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %9, align 8
  %181 = load i32, i32* @AW_MMC_CAGR, align 4
  %182 = load %struct.mmc_command*, %struct.mmc_command** %10, align 8
  %183 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @AW_MMC_WRITE_4(%struct.aw_mmc_softc* %180, i32 %181, i32 %184)
  %186 = load %struct.mmc_command*, %struct.mmc_command** %10, align 8
  %187 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %186, i32 0, i32 3
  %188 = load %struct.TYPE_6__*, %struct.TYPE_6__** %187, align 8
  %189 = icmp eq %struct.TYPE_6__* %188, null
  br i1 %189, label %190, label %199

190:                                              ; preds = %163
  %191 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %9, align 8
  %192 = load i32, i32* @AW_MMC_CMDR, align 4
  %193 = load i32, i32* %11, align 4
  %194 = load %struct.mmc_command*, %struct.mmc_command** %10, align 8
  %195 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = or i32 %193, %196
  %198 = call i32 @AW_MMC_WRITE_4(%struct.aw_mmc_softc* %191, i32 %192, i32 %197)
  br label %219

199:                                              ; preds = %163
  %200 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %9, align 8
  %201 = call i32 @aw_mmc_prepare_dma(%struct.aw_mmc_softc* %200)
  store i32 %201, i32* %13, align 4
  %202 = load i32, i32* %13, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %210

204:                                              ; preds = %199
  %205 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %9, align 8
  %206 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %205, i32 0, i32 3
  %207 = load i32, i32* %206, align 4
  %208 = load i32, i32* %13, align 4
  %209 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %207, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %208)
  br label %210

210:                                              ; preds = %204, %199
  %211 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %9, align 8
  %212 = load i32, i32* @AW_MMC_CMDR, align 4
  %213 = load i32, i32* %11, align 4
  %214 = load %struct.mmc_command*, %struct.mmc_command** %10, align 8
  %215 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = or i32 %213, %216
  %218 = call i32 @AW_MMC_WRITE_4(%struct.aw_mmc_softc* %211, i32 %212, i32 %217)
  br label %219

219:                                              ; preds = %210, %190
  %220 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %9, align 8
  %221 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %220, i32 0, i32 2
  %222 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %9, align 8
  %223 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = load i32, i32* @hz, align 4
  %226 = mul nsw i32 %224, %225
  %227 = load i32, i32* @aw_mmc_timeout, align 4
  %228 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %9, align 8
  %229 = call i32 @callout_reset(i32* %221, i32 %226, i32 %227, %struct.aw_mmc_softc* %228)
  %230 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %9, align 8
  %231 = call i32 @AW_MMC_UNLOCK(%struct.aw_mmc_softc* %230)
  store i32 0, i32* %4, align 4
  br label %232

232:                                              ; preds = %219, %22
  %233 = load i32, i32* %4, align 4
  ret i32 %233
}

declare dso_local %struct.aw_mmc_softc* @device_get_softc(i32) #1

declare dso_local i32 @AW_MMC_LOCK(%struct.aw_mmc_softc*) #1

declare dso_local i32 @AW_MMC_UNLOCK(%struct.aw_mmc_softc*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @AW_MMC_WRITE_4(%struct.aw_mmc_softc*, i32, i32) #1

declare dso_local i32 @aw_mmc_prepare_dma(%struct.aw_mmc_softc*) #1

declare dso_local i32 @device_printf(i32, i8*, i32, ...) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.aw_mmc_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
