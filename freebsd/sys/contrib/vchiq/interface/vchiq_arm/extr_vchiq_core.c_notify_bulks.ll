; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/vchiq/interface/vchiq_arm/extr_vchiq_core.c_notify_bulks.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/vchiq/interface/vchiq_arm/extr_vchiq_core.c_notify_bulks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_17__, %struct.TYPE_18__*, i32, i64, i32, i32 }
%struct.TYPE_17__ = type { i64, i64, i64, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64, i64, i64, %struct.bulk_waiter*, i64, i64 }
%struct.bulk_waiter = type { i64, i32 }
%struct.TYPE_18__ = type { i64, i32 }
%struct.TYPE_15__ = type { i64*, i32 }

@VCHIQ_SUCCESS = common dso_local global i64 0, align 8
@vchiq_core_log_level = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"%d: nb:%d %cx - p=%x rn=%x r=%x\00", align 1
@VCHIQ_BULK_TRANSMIT = common dso_local global i64 0, align 8
@VCHIQ_MSG_BULK_RX_DONE = common dso_local global i32 0, align 4
@VCHIQ_MSG_BULK_TX_DONE = common dso_local global i32 0, align 4
@VCHIQ_BULK_ACTUAL_ABORTED = common dso_local global i64 0, align 8
@bulk_tx_count = common dso_local global i32 0, align 4
@bulk_tx_bytes = common dso_local global i32 0, align 4
@bulk_rx_count = common dso_local global i32 0, align 4
@bulk_rx_bytes = common dso_local global i32 0, align 4
@bulk_aborted_count = common dso_local global i32 0, align 4
@VCHIQ_BULK_MODE_BLOCKING = common dso_local global i64 0, align 8
@bulk_waiter_spinlock = common dso_local global i32 0, align 4
@VCHIQ_BULK_MODE_CALLBACK = common dso_local global i64 0, align 8
@VCHIQ_BULK_TRANSMIT_ABORTED = common dso_local global i32 0, align 4
@VCHIQ_BULK_TRANSMIT_DONE = common dso_local global i32 0, align 4
@VCHIQ_BULK_RECEIVE_ABORTED = common dso_local global i32 0, align 4
@VCHIQ_BULK_RECEIVE_DONE = common dso_local global i32 0, align 4
@VCHIQ_RETRY = common dso_local global i64 0, align 8
@VCHIQ_POLL_TXNOTIFY = common dso_local global i32 0, align 4
@VCHIQ_POLL_RXNOTIFY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_14__*, %struct.TYPE_17__*, i32)* @notify_bulks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @notify_bulks(%struct.TYPE_14__* %0, %struct.TYPE_17__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_15__, align 8
  %12 = alloca %struct.TYPE_16__*, align 8
  %13 = alloca %struct.bulk_waiter*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load i64, i64* @VCHIQ_SUCCESS, align 8
  store i64 %15, i64* %7, align 8
  %16 = load i32, i32* @vchiq_core_log_level, align 4
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  %28 = icmp eq %struct.TYPE_17__* %25, %27
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i32 116, i32 114
  %31 = trunc i32 %30 to i8
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @vchiq_log_trace(i32 %16, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %24, i8 signext %31, i64 %34, i64 %37, i64 %40)
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %110

48:                                               ; preds = %3
  br label %49

49:                                               ; preds = %104, %48
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %52, %55
  br i1 %56, label %57, label %109

57:                                               ; preds = %49
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 3
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %59, align 8
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = call i64 @BULK_INDEX(i64 %63)
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i64 %64
  store %struct.TYPE_16__* %65, %struct.TYPE_16__** %8, align 8
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @VCHIQ_BULK_TRANSMIT, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %57
  %72 = load i32, i32* @VCHIQ_MSG_BULK_RX_DONE, align 4
  br label %75

73:                                               ; preds = %57
  %74 = load i32, i32* @VCHIQ_MSG_BULK_TX_DONE, align 4
  br label %75

75:                                               ; preds = %73, %71
  %76 = phi i32 [ %72, %71 ], [ %74, %73 ]
  store i32 %76, i32* %9, align 4
  %77 = load i32, i32* %9, align 4
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 5
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @VCHIQ_MAKE_MSG(i32 %77, i32 %80, i32 %83)
  store i32 %84, i32* %10, align 4
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 1
  store i64* %87, i64** %85, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 1
  store i32 4, i32* %88, align 8
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 5
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %104

93:                                               ; preds = %75
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 1
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %95, align 8
  %97 = load i32, i32* %10, align 4
  %98 = call i64 @queue_message(%struct.TYPE_18__* %96, i32* null, i32 %97, %struct.TYPE_15__* %11, i32 1, i32 4, i32 0)
  store i64 %98, i64* %7, align 8
  %99 = load i64, i64* %7, align 8
  %100 = load i64, i64* @VCHIQ_SUCCESS, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %93
  br label %109

103:                                              ; preds = %93
  br label %104

104:                                              ; preds = %103, %75
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = add nsw i64 %107, 1
  store i64 %108, i64* %106, align 8
  br label %49

109:                                              ; preds = %102, %49
  br label %116

110:                                              ; preds = %3
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %114, i32 0, i32 1
  store i64 %113, i64* %115, align 8
  br label %116

116:                                              ; preds = %110, %109
  %117 = load i64, i64* %7, align 8
  %118 = load i64, i64* @VCHIQ_SUCCESS, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %273

120:                                              ; preds = %116
  br label %121

121:                                              ; preds = %259, %120
  %122 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %124, %127
  br i1 %128, label %129, label %267

129:                                              ; preds = %121
  %130 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %130, i32 0, i32 3
  %132 = load %struct.TYPE_16__*, %struct.TYPE_16__** %131, align 8
  %133 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = call i64 @BULK_INDEX(i64 %135)
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i64 %136
  store %struct.TYPE_16__* %137, %struct.TYPE_16__** %12, align 8
  %138 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %138, i32 0, i32 4
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %259

142:                                              ; preds = %129
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i32 0, i32 3
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %259

147:                                              ; preds = %142
  %148 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %149 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @VCHIQ_BULK_ACTUAL_ABORTED, align 8
  %152 = icmp ne i64 %150, %151
  br i1 %152, label %153, label %180

153:                                              ; preds = %147
  %154 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @VCHIQ_BULK_TRANSMIT, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %169

159:                                              ; preds = %153
  %160 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %161 = load i32, i32* @bulk_tx_count, align 4
  %162 = call i32 @VCHIQ_SERVICE_STATS_INC(%struct.TYPE_14__* %160, i32 %161)
  %163 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %164 = load i32, i32* @bulk_tx_bytes, align 4
  %165 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %166 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = call i32 @VCHIQ_SERVICE_STATS_ADD(%struct.TYPE_14__* %163, i32 %164, i64 %167)
  br label %179

169:                                              ; preds = %153
  %170 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %171 = load i32, i32* @bulk_rx_count, align 4
  %172 = call i32 @VCHIQ_SERVICE_STATS_INC(%struct.TYPE_14__* %170, i32 %171)
  %173 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %174 = load i32, i32* @bulk_rx_bytes, align 4
  %175 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %176 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %175, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = call i32 @VCHIQ_SERVICE_STATS_ADD(%struct.TYPE_14__* %173, i32 %174, i64 %177)
  br label %179

179:                                              ; preds = %169, %159
  br label %184

180:                                              ; preds = %147
  %181 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %182 = load i32, i32* @bulk_aborted_count, align 4
  %183 = call i32 @VCHIQ_SERVICE_STATS_INC(%struct.TYPE_14__* %181, i32 %182)
  br label %184

184:                                              ; preds = %180, %179
  %185 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %186 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %185, i32 0, i32 2
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* @VCHIQ_BULK_MODE_BLOCKING, align 8
  %189 = icmp eq i64 %187, %188
  br i1 %189, label %190, label %208

190:                                              ; preds = %184
  %191 = call i32 @spin_lock(i32* @bulk_waiter_spinlock)
  %192 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %193 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %192, i32 0, i32 3
  %194 = load %struct.bulk_waiter*, %struct.bulk_waiter** %193, align 8
  store %struct.bulk_waiter* %194, %struct.bulk_waiter** %13, align 8
  %195 = load %struct.bulk_waiter*, %struct.bulk_waiter** %13, align 8
  %196 = icmp ne %struct.bulk_waiter* %195, null
  br i1 %196, label %197, label %206

197:                                              ; preds = %190
  %198 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %199 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %198, i32 0, i32 1
  %200 = load i64, i64* %199, align 8
  %201 = load %struct.bulk_waiter*, %struct.bulk_waiter** %13, align 8
  %202 = getelementptr inbounds %struct.bulk_waiter, %struct.bulk_waiter* %201, i32 0, i32 0
  store i64 %200, i64* %202, align 8
  %203 = load %struct.bulk_waiter*, %struct.bulk_waiter** %13, align 8
  %204 = getelementptr inbounds %struct.bulk_waiter, %struct.bulk_waiter* %203, i32 0, i32 1
  %205 = call i32 @up(i32* %204)
  br label %206

206:                                              ; preds = %197, %190
  %207 = call i32 @spin_unlock(i32* @bulk_waiter_spinlock)
  br label %258

208:                                              ; preds = %184
  %209 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %210 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %209, i32 0, i32 2
  %211 = load i64, i64* %210, align 8
  %212 = load i64, i64* @VCHIQ_BULK_MODE_CALLBACK, align 8
  %213 = icmp eq i64 %211, %212
  br i1 %213, label %214, label %257

214:                                              ; preds = %208
  %215 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %216 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = load i64, i64* @VCHIQ_BULK_TRANSMIT, align 8
  %219 = icmp eq i64 %217, %218
  br i1 %219, label %220, label %232

220:                                              ; preds = %214
  %221 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %222 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %221, i32 0, i32 1
  %223 = load i64, i64* %222, align 8
  %224 = load i64, i64* @VCHIQ_BULK_ACTUAL_ABORTED, align 8
  %225 = icmp eq i64 %223, %224
  br i1 %225, label %226, label %228

226:                                              ; preds = %220
  %227 = load i32, i32* @VCHIQ_BULK_TRANSMIT_ABORTED, align 4
  br label %230

228:                                              ; preds = %220
  %229 = load i32, i32* @VCHIQ_BULK_TRANSMIT_DONE, align 4
  br label %230

230:                                              ; preds = %228, %226
  %231 = phi i32 [ %227, %226 ], [ %229, %228 ]
  br label %244

232:                                              ; preds = %214
  %233 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %234 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %233, i32 0, i32 1
  %235 = load i64, i64* %234, align 8
  %236 = load i64, i64* @VCHIQ_BULK_ACTUAL_ABORTED, align 8
  %237 = icmp eq i64 %235, %236
  br i1 %237, label %238, label %240

238:                                              ; preds = %232
  %239 = load i32, i32* @VCHIQ_BULK_RECEIVE_ABORTED, align 4
  br label %242

240:                                              ; preds = %232
  %241 = load i32, i32* @VCHIQ_BULK_RECEIVE_DONE, align 4
  br label %242

242:                                              ; preds = %240, %238
  %243 = phi i32 [ %239, %238 ], [ %241, %240 ]
  br label %244

244:                                              ; preds = %242, %230
  %245 = phi i32 [ %231, %230 ], [ %243, %242 ]
  store i32 %245, i32* %14, align 4
  %246 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %247 = load i32, i32* %14, align 4
  %248 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %249 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %248, i32 0, i32 3
  %250 = load %struct.bulk_waiter*, %struct.bulk_waiter** %249, align 8
  %251 = call i64 @make_service_callback(%struct.TYPE_14__* %246, i32 %247, i32* null, %struct.bulk_waiter* %250)
  store i64 %251, i64* %7, align 8
  %252 = load i64, i64* %7, align 8
  %253 = load i64, i64* @VCHIQ_RETRY, align 8
  %254 = icmp eq i64 %252, %253
  br i1 %254, label %255, label %256

255:                                              ; preds = %244
  br label %267

256:                                              ; preds = %244
  br label %257

257:                                              ; preds = %256, %208
  br label %258

258:                                              ; preds = %257, %206
  br label %259

259:                                              ; preds = %258, %142, %129
  %260 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %261 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %260, i32 0, i32 2
  %262 = load i64, i64* %261, align 8
  %263 = add nsw i64 %262, 1
  store i64 %263, i64* %261, align 8
  %264 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %265 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %264, i32 0, i32 2
  %266 = call i32 @up(i32* %265)
  br label %121

267:                                              ; preds = %255, %121
  %268 = load i32, i32* %6, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %272, label %270

270:                                              ; preds = %267
  %271 = load i64, i64* @VCHIQ_SUCCESS, align 8
  store i64 %271, i64* %7, align 8
  br label %272

272:                                              ; preds = %270, %267
  br label %273

273:                                              ; preds = %272, %116
  %274 = load i64, i64* %7, align 8
  %275 = load i64, i64* @VCHIQ_RETRY, align 8
  %276 = icmp eq i64 %274, %275
  br i1 %276, label %277, label %293

277:                                              ; preds = %273
  %278 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %279 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %278, i32 0, i32 1
  %280 = load %struct.TYPE_18__*, %struct.TYPE_18__** %279, align 8
  %281 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %282 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %283 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %284 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %283, i32 0, i32 0
  %285 = icmp eq %struct.TYPE_17__* %282, %284
  br i1 %285, label %286, label %288

286:                                              ; preds = %277
  %287 = load i32, i32* @VCHIQ_POLL_TXNOTIFY, align 4
  br label %290

288:                                              ; preds = %277
  %289 = load i32, i32* @VCHIQ_POLL_RXNOTIFY, align 4
  br label %290

290:                                              ; preds = %288, %286
  %291 = phi i32 [ %287, %286 ], [ %289, %288 ]
  %292 = call i32 @request_poll(%struct.TYPE_18__* %280, %struct.TYPE_14__* %281, i32 %291)
  br label %293

293:                                              ; preds = %290, %273
  %294 = load i64, i64* %7, align 8
  ret i64 %294
}

declare dso_local i32 @vchiq_log_trace(i32, i8*, i32, i32, i8 signext, i64, i64, i64) #1

declare dso_local i64 @BULK_INDEX(i64) #1

declare dso_local i32 @VCHIQ_MAKE_MSG(i32, i32, i32) #1

declare dso_local i64 @queue_message(%struct.TYPE_18__*, i32*, i32, %struct.TYPE_15__*, i32, i32, i32) #1

declare dso_local i32 @VCHIQ_SERVICE_STATS_INC(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @VCHIQ_SERVICE_STATS_ADD(%struct.TYPE_14__*, i32, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @up(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @make_service_callback(%struct.TYPE_14__*, i32, i32*, %struct.bulk_waiter*) #1

declare dso_local i32 @request_poll(%struct.TYPE_18__*, %struct.TYPE_14__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
