; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Port/extr_fm_port.c_FM_PORT_GetBmiCounters.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Port/extr_fm_port.c_FM_PORT_GetBmiCounters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_5__ = type { i64 }

@e_FM_PORT_TYPE_RX = common dso_local global i64 0, align 8
@e_FM_PORT_TYPE_RX_10G = common dso_local global i64 0, align 8
@e_FM_PORT_COUNTERS_CYCLE = common dso_local global i32 0, align 4
@e_FM_PORT_COUNTERS_TASK_UTIL = common dso_local global i32 0, align 4
@e_FM_PORT_COUNTERS_QUEUE_UTIL = common dso_local global i32 0, align 4
@e_FM_PORT_COUNTERS_DMA_UTIL = common dso_local global i32 0, align 4
@e_FM_PORT_COUNTERS_FIFO_UTIL = common dso_local global i32 0, align 4
@e_FM_PORT_COUNTERS_RX_PAUSE_ACTIVATION = common dso_local global i32 0, align 4
@e_FM_PORT_COUNTERS_FRAME = common dso_local global i32 0, align 4
@e_FM_PORT_COUNTERS_DISCARD_FRAME = common dso_local global i32 0, align 4
@e_FM_PORT_COUNTERS_DEALLOC_BUF = common dso_local global i32 0, align 4
@e_FM_PORT_COUNTERS_RX_BAD_FRAME = common dso_local global i32 0, align 4
@e_FM_PORT_COUNTERS_RX_LARGE_FRAME = common dso_local global i32 0, align 4
@e_FM_PORT_COUNTERS_RX_FILTER_FRAME = common dso_local global i32 0, align 4
@e_FM_PORT_COUNTERS_RX_LIST_DMA_ERR = common dso_local global i32 0, align 4
@e_FM_PORT_COUNTERS_RX_OUT_OF_BUFFERS_DISCARD = common dso_local global i32 0, align 4
@e_FM_PORT_TYPE_TX = common dso_local global i64 0, align 8
@e_FM_PORT_TYPE_TX_10G = common dso_local global i64 0, align 8
@e_FM_PORT_COUNTERS_LENGTH_ERR = common dso_local global i32 0, align 4
@e_FM_PORT_COUNTERS_UNSUPPRTED_FORMAT = common dso_local global i32 0, align 4
@e_FM_PORT_TYPE_OH_OFFLINE_PARSING = common dso_local global i64 0, align 8
@e_FM_PORT_COUNTERS_WRED_DISCARD = common dso_local global i32 0, align 4
@E_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FM_PORT_GetBmiCounters(i64 %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  store i64 %0, i64* %3, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  %6 = load i64, i64* %3, align 8
  %7 = inttoptr i64 %6 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %7, %struct.TYPE_5__** %5, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @e_FM_PORT_TYPE_RX, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %19, label %13

13:                                               ; preds = %2
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @e_FM_PORT_TYPE_RX_10G, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %96

19:                                               ; preds = %13, %2
  %20 = load i64, i64* %3, align 8
  %21 = load i32, i32* @e_FM_PORT_COUNTERS_CYCLE, align 4
  %22 = call i8* @FM_PORT_GetCounter(i64 %20, i32 %21)
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 16
  store i8* %22, i8** %24, align 8
  %25 = load i64, i64* %3, align 8
  %26 = load i32, i32* @e_FM_PORT_COUNTERS_TASK_UTIL, align 4
  %27 = call i8* @FM_PORT_GetCounter(i64 %25, i32 %26)
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 15
  store i8* %27, i8** %29, align 8
  %30 = load i64, i64* %3, align 8
  %31 = load i32, i32* @e_FM_PORT_COUNTERS_QUEUE_UTIL, align 4
  %32 = call i8* @FM_PORT_GetCounter(i64 %30, i32 %31)
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 14
  store i8* %32, i8** %34, align 8
  %35 = load i64, i64* %3, align 8
  %36 = load i32, i32* @e_FM_PORT_COUNTERS_DMA_UTIL, align 4
  %37 = call i8* @FM_PORT_GetCounter(i64 %35, i32 %36)
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 13
  store i8* %37, i8** %39, align 8
  %40 = load i64, i64* %3, align 8
  %41 = load i32, i32* @e_FM_PORT_COUNTERS_FIFO_UTIL, align 4
  %42 = call i8* @FM_PORT_GetCounter(i64 %40, i32 %41)
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 12
  store i8* %42, i8** %44, align 8
  %45 = load i64, i64* %3, align 8
  %46 = load i32, i32* @e_FM_PORT_COUNTERS_RX_PAUSE_ACTIVATION, align 4
  %47 = call i8* @FM_PORT_GetCounter(i64 %45, i32 %46)
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 11
  store i8* %47, i8** %49, align 8
  %50 = load i64, i64* %3, align 8
  %51 = load i32, i32* @e_FM_PORT_COUNTERS_FRAME, align 4
  %52 = call i8* @FM_PORT_GetCounter(i64 %50, i32 %51)
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 10
  store i8* %52, i8** %54, align 8
  %55 = load i64, i64* %3, align 8
  %56 = load i32, i32* @e_FM_PORT_COUNTERS_DISCARD_FRAME, align 4
  %57 = call i8* @FM_PORT_GetCounter(i64 %55, i32 %56)
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 9
  store i8* %57, i8** %59, align 8
  %60 = load i64, i64* %3, align 8
  %61 = load i32, i32* @e_FM_PORT_COUNTERS_DEALLOC_BUF, align 4
  %62 = call i8* @FM_PORT_GetCounter(i64 %60, i32 %61)
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 8
  store i8* %62, i8** %64, align 8
  %65 = load i64, i64* %3, align 8
  %66 = load i32, i32* @e_FM_PORT_COUNTERS_RX_BAD_FRAME, align 4
  %67 = call i8* @FM_PORT_GetCounter(i64 %65, i32 %66)
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 7
  store i8* %67, i8** %69, align 8
  %70 = load i64, i64* %3, align 8
  %71 = load i32, i32* @e_FM_PORT_COUNTERS_RX_LARGE_FRAME, align 4
  %72 = call i8* @FM_PORT_GetCounter(i64 %70, i32 %71)
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 6
  store i8* %72, i8** %74, align 8
  %75 = load i64, i64* %3, align 8
  %76 = load i32, i32* @e_FM_PORT_COUNTERS_RX_FILTER_FRAME, align 4
  %77 = call i8* @FM_PORT_GetCounter(i64 %75, i32 %76)
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 5
  store i8* %77, i8** %79, align 8
  %80 = load i64, i64* %3, align 8
  %81 = load i32, i32* @e_FM_PORT_COUNTERS_RX_LIST_DMA_ERR, align 4
  %82 = call i8* @FM_PORT_GetCounter(i64 %80, i32 %81)
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 4
  store i8* %82, i8** %84, align 8
  %85 = load i64, i64* %3, align 8
  %86 = load i32, i32* @e_FM_PORT_COUNTERS_RX_OUT_OF_BUFFERS_DISCARD, align 4
  %87 = call i8* @FM_PORT_GetCounter(i64 %85, i32 %86)
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 3
  store i8* %87, i8** %89, align 8
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 2
  store i8* null, i8** %91, align 8
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 1
  store i8* null, i8** %93, align 8
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  store i8* null, i8** %95, align 8
  br label %255

96:                                               ; preds = %13
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @e_FM_PORT_TYPE_TX, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %108, label %102

102:                                              ; preds = %96
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @e_FM_PORT_TYPE_TX_10G, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %173

108:                                              ; preds = %102, %96
  %109 = load i64, i64* %3, align 8
  %110 = load i32, i32* @e_FM_PORT_COUNTERS_CYCLE, align 4
  %111 = call i8* @FM_PORT_GetCounter(i64 %109, i32 %110)
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 16
  store i8* %111, i8** %113, align 8
  %114 = load i64, i64* %3, align 8
  %115 = load i32, i32* @e_FM_PORT_COUNTERS_TASK_UTIL, align 4
  %116 = call i8* @FM_PORT_GetCounter(i64 %114, i32 %115)
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 15
  store i8* %116, i8** %118, align 8
  %119 = load i64, i64* %3, align 8
  %120 = load i32, i32* @e_FM_PORT_COUNTERS_QUEUE_UTIL, align 4
  %121 = call i8* @FM_PORT_GetCounter(i64 %119, i32 %120)
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 14
  store i8* %121, i8** %123, align 8
  %124 = load i64, i64* %3, align 8
  %125 = load i32, i32* @e_FM_PORT_COUNTERS_DMA_UTIL, align 4
  %126 = call i8* @FM_PORT_GetCounter(i64 %124, i32 %125)
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 13
  store i8* %126, i8** %128, align 8
  %129 = load i64, i64* %3, align 8
  %130 = load i32, i32* @e_FM_PORT_COUNTERS_FIFO_UTIL, align 4
  %131 = call i8* @FM_PORT_GetCounter(i64 %129, i32 %130)
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 12
  store i8* %131, i8** %133, align 8
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 11
  store i8* null, i8** %135, align 8
  %136 = load i64, i64* %3, align 8
  %137 = load i32, i32* @e_FM_PORT_COUNTERS_FRAME, align 4
  %138 = call i8* @FM_PORT_GetCounter(i64 %136, i32 %137)
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 10
  store i8* %138, i8** %140, align 8
  %141 = load i64, i64* %3, align 8
  %142 = load i32, i32* @e_FM_PORT_COUNTERS_DISCARD_FRAME, align 4
  %143 = call i8* @FM_PORT_GetCounter(i64 %141, i32 %142)
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 9
  store i8* %143, i8** %145, align 8
  %146 = load i64, i64* %3, align 8
  %147 = load i32, i32* @e_FM_PORT_COUNTERS_DEALLOC_BUF, align 4
  %148 = call i8* @FM_PORT_GetCounter(i64 %146, i32 %147)
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 8
  store i8* %148, i8** %150, align 8
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 7
  store i8* null, i8** %152, align 8
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 6
  store i8* null, i8** %154, align 8
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 5
  store i8* null, i8** %156, align 8
  %157 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 4
  store i8* null, i8** %158, align 8
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 3
  store i8* null, i8** %160, align 8
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 2
  store i8* null, i8** %162, align 8
  %163 = load i64, i64* %3, align 8
  %164 = load i32, i32* @e_FM_PORT_COUNTERS_LENGTH_ERR, align 4
  %165 = call i8* @FM_PORT_GetCounter(i64 %163, i32 %164)
  %166 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 1
  store i8* %165, i8** %167, align 8
  %168 = load i64, i64* %3, align 8
  %169 = load i32, i32* @e_FM_PORT_COUNTERS_UNSUPPRTED_FORMAT, align 4
  %170 = call i8* @FM_PORT_GetCounter(i64 %168, i32 %169)
  %171 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 0
  store i8* %170, i8** %172, align 8
  br label %254

173:                                              ; preds = %102
  %174 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* @e_FM_PORT_TYPE_OH_OFFLINE_PARSING, align 8
  %178 = icmp eq i64 %176, %177
  br i1 %178, label %179, label %253

179:                                              ; preds = %173
  %180 = load i64, i64* %3, align 8
  %181 = load i32, i32* @e_FM_PORT_COUNTERS_CYCLE, align 4
  %182 = call i8* @FM_PORT_GetCounter(i64 %180, i32 %181)
  %183 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 16
  store i8* %182, i8** %184, align 8
  %185 = load i64, i64* %3, align 8
  %186 = load i32, i32* @e_FM_PORT_COUNTERS_TASK_UTIL, align 4
  %187 = call i8* @FM_PORT_GetCounter(i64 %185, i32 %186)
  %188 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 15
  store i8* %187, i8** %189, align 8
  %190 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 14
  store i8* null, i8** %191, align 8
  %192 = load i64, i64* %3, align 8
  %193 = load i32, i32* @e_FM_PORT_COUNTERS_DMA_UTIL, align 4
  %194 = call i8* @FM_PORT_GetCounter(i64 %192, i32 %193)
  %195 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 13
  store i8* %194, i8** %196, align 8
  %197 = load i64, i64* %3, align 8
  %198 = load i32, i32* @e_FM_PORT_COUNTERS_FIFO_UTIL, align 4
  %199 = call i8* @FM_PORT_GetCounter(i64 %197, i32 %198)
  %200 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i32 0, i32 12
  store i8* %199, i8** %201, align 8
  %202 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i32 0, i32 11
  store i8* null, i8** %203, align 8
  %204 = load i64, i64* %3, align 8
  %205 = load i32, i32* @e_FM_PORT_COUNTERS_FRAME, align 4
  %206 = call i8* @FM_PORT_GetCounter(i64 %204, i32 %205)
  %207 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %207, i32 0, i32 10
  store i8* %206, i8** %208, align 8
  %209 = load i64, i64* %3, align 8
  %210 = load i32, i32* @e_FM_PORT_COUNTERS_DISCARD_FRAME, align 4
  %211 = call i8* @FM_PORT_GetCounter(i64 %209, i32 %210)
  %212 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %212, i32 0, i32 9
  store i8* %211, i8** %213, align 8
  %214 = load i64, i64* %3, align 8
  %215 = load i32, i32* @e_FM_PORT_COUNTERS_DEALLOC_BUF, align 4
  %216 = call i8* @FM_PORT_GetCounter(i64 %214, i32 %215)
  %217 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %218 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %217, i32 0, i32 8
  store i8* %216, i8** %218, align 8
  %219 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %220 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %219, i32 0, i32 7
  store i8* null, i8** %220, align 8
  %221 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %222 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %221, i32 0, i32 6
  store i8* null, i8** %222, align 8
  %223 = load i64, i64* %3, align 8
  %224 = load i32, i32* @e_FM_PORT_COUNTERS_RX_FILTER_FRAME, align 4
  %225 = call i8* @FM_PORT_GetCounter(i64 %223, i32 %224)
  %226 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %227 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %226, i32 0, i32 5
  store i8* %225, i8** %227, align 8
  %228 = load i64, i64* %3, align 8
  %229 = load i32, i32* @e_FM_PORT_COUNTERS_RX_LIST_DMA_ERR, align 4
  %230 = call i8* @FM_PORT_GetCounter(i64 %228, i32 %229)
  %231 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %232 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %231, i32 0, i32 4
  store i8* %230, i8** %232, align 8
  %233 = load i64, i64* %3, align 8
  %234 = load i32, i32* @e_FM_PORT_COUNTERS_RX_OUT_OF_BUFFERS_DISCARD, align 4
  %235 = call i8* @FM_PORT_GetCounter(i64 %233, i32 %234)
  %236 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %237 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %236, i32 0, i32 3
  store i8* %235, i8** %237, align 8
  %238 = load i64, i64* %3, align 8
  %239 = load i32, i32* @e_FM_PORT_COUNTERS_WRED_DISCARD, align 4
  %240 = call i8* @FM_PORT_GetCounter(i64 %238, i32 %239)
  %241 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %242 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %241, i32 0, i32 2
  store i8* %240, i8** %242, align 8
  %243 = load i64, i64* %3, align 8
  %244 = load i32, i32* @e_FM_PORT_COUNTERS_LENGTH_ERR, align 4
  %245 = call i8* @FM_PORT_GetCounter(i64 %243, i32 %244)
  %246 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %247 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %246, i32 0, i32 1
  store i8* %245, i8** %247, align 8
  %248 = load i64, i64* %3, align 8
  %249 = load i32, i32* @e_FM_PORT_COUNTERS_UNSUPPRTED_FORMAT, align 4
  %250 = call i8* @FM_PORT_GetCounter(i64 %248, i32 %249)
  %251 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %252 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %251, i32 0, i32 0
  store i8* %250, i8** %252, align 8
  br label %253

253:                                              ; preds = %179, %173
  br label %254

254:                                              ; preds = %253, %108
  br label %255

255:                                              ; preds = %254, %19
  %256 = load i32, i32* @E_OK, align 4
  ret i32 %256
}

declare dso_local i8* @FM_PORT_GetCounter(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
