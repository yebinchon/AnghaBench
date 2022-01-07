; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/vchiq/interface/vchiq_arm/extr_vchiq_core.c_queue_message_sync.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/vchiq/interface/vchiq_arm/extr_vchiq_core.c_queue_message_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, %struct.TYPE_16__*, i32, %struct.TYPE_18__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_20__ = type { i32, i32, i64 }

@VCHIQ_MSG_RESUME = common dso_local global i64 0, align 8
@VCHIQ_RETRY = common dso_local global i64 0, align 8
@VCHIQ_MSGID_PADDING = common dso_local global i32 0, align 4
@vchiq_core_log_level = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"%d: qms - msgid %x, not PADDING\00", align 1
@vchiq_sync_log_level = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"%d: qms %s@%x,%x (%d->%d)\00", align 1
@VCHIQ_SUCCESS = common dso_local global i64 0, align 8
@error_count = common dso_local global i32 0, align 4
@VCHIQ_ERROR = common dso_local global i64 0, align 8
@VCHIQ_LOG_TRACE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"Sent Sync\00", align 1
@ctrl_tx_count = common dso_local global i32 0, align 4
@ctrl_tx_bytes = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [50 x i8] c"Sent Sync Msg %s(%u) to %c%c%c%c s:%u d:%d len:%d\00", align 1
@VCHIQ_MSG_PAUSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_17__*, %struct.TYPE_19__*, i32, %struct.TYPE_21__*, i32, i32, i32)* @queue_message_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @queue_message_sync(%struct.TYPE_17__* %0, %struct.TYPE_19__* %1, i32 %2, %struct.TYPE_21__* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_21__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_18__*, align 8
  %17 = alloca %struct.TYPE_20__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %9, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %10, align 8
  store i32 %2, i32* %11, align 4
  store %struct.TYPE_21__* %3, %struct.TYPE_21__** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 3
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %23, align 8
  store %struct.TYPE_18__* %24, %struct.TYPE_18__** %16, align 8
  %25 = load i32, i32* %11, align 4
  %26 = call i64 @VCHIQ_MSG_TYPE(i32 %25)
  %27 = load i64, i64* @VCHIQ_MSG_RESUME, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %7
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 0
  %32 = call i64 @lmutex_lock_interruptible(i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i64, i64* @VCHIQ_RETRY, align 8
  store i64 %35, i64* %8, align 8
  br label %255

36:                                               ; preds = %29, %7
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 1
  %39 = call i32 @remote_event_wait(i32* %38)
  %40 = call i32 (...) @rmb()
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @SLOT_DATA_FROM_INDEX(%struct.TYPE_17__* %41, i32 %44)
  %46 = inttoptr i64 %45 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %46, %struct.TYPE_20__** %17, align 8
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %48 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  store i32 %49, i32* %18, align 4
  %50 = load i32, i32* %18, align 4
  %51 = load i32, i32* @VCHIQ_MSGID_PADDING, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %36
  %54 = load i32, i32* @vchiq_core_log_level, align 4
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %18, align 4
  %59 = call i32 @vchiq_log_error(i32 %54, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %53, %36
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %62 = icmp ne %struct.TYPE_19__* %61, null
  br i1 %62, label %63, label %153

63:                                               ; preds = %60
  %64 = load i64, i64* @vchiq_sync_log_level, align 8
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %11, align 4
  %69 = call i64 @VCHIQ_MSG_TYPE(i32 %68)
  %70 = call i32 @msg_type_str(i64 %69)
  %71 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %72 = ptrtoint %struct.TYPE_20__* %71 to i32
  %73 = load i32, i32* %14, align 4
  %74 = load i32, i32* %11, align 4
  %75 = call i32 @VCHIQ_MSG_SRCPORT(i32 %74)
  %76 = load i32, i32* %11, align 4
  %77 = call i32 @VCHIQ_MSG_DSTPORT(i32 %76)
  %78 = call i32 @vchiq_log_info(i64 %64, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %67, i32 %70, i32 %72, i32 %73, i32 %75, i32 %77)
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  br label %79

79:                                               ; preds = %124, %63
  %80 = load i32, i32* %19, align 4
  %81 = load i32, i32* %13, align 4
  %82 = icmp ult i32 %80, %81
  br i1 %82, label %83, label %134

83:                                               ; preds = %79
  %84 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %85 = load i32, i32* %19, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %123

91:                                               ; preds = %83
  %92 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %93 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = load i32, i32* %20, align 4
  %96 = sext i32 %95 to i64
  %97 = add nsw i64 %94, %96
  %98 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %99 = load i32, i32* %19, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %105 = load i32, i32* %19, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = sext i32 %109 to i64
  %111 = call i64 @vchiq_copy_from_user(i64 %97, i32 %103, i64 %110)
  %112 = load i64, i64* @VCHIQ_SUCCESS, align 8
  %113 = icmp ne i64 %111, %112
  br i1 %113, label %114, label %122

114:                                              ; preds = %91
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %115, i32 0, i32 0
  %117 = call i32 @lmutex_unlock(i32* %116)
  %118 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %119 = load i32, i32* @error_count, align 4
  %120 = call i32 @VCHIQ_SERVICE_STATS_INC(%struct.TYPE_19__* %118, i32 %119)
  %121 = load i64, i64* @VCHIQ_ERROR, align 8
  store i64 %121, i64* %8, align 8
  br label %255

122:                                              ; preds = %91
  br label %123

123:                                              ; preds = %122, %83
  br label %124

124:                                              ; preds = %123
  %125 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %126 = load i32, i32* %19, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %19, align 4
  %128 = sext i32 %126 to i64
  %129 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %125, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* %20, align 4
  %133 = add nsw i32 %132, %131
  store i32 %133, i32* %20, align 4
  br label %79

134:                                              ; preds = %79
  %135 = load i64, i64* @vchiq_sync_log_level, align 8
  %136 = load i64, i64* @VCHIQ_LOG_TRACE, align 8
  %137 = icmp sge i64 %135, %136
  br i1 %137, label %138, label %145

138:                                              ; preds = %134
  %139 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %140 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %139, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = load i32, i32* %20, align 4
  %143 = call i32 @min(i32 16, i32 %142)
  %144 = call i32 @vchiq_log_dump_mem(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 0, i64 %141, i32 %143)
  br label %145

145:                                              ; preds = %138, %134
  %146 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %147 = load i32, i32* @ctrl_tx_count, align 4
  %148 = call i32 @VCHIQ_SERVICE_STATS_INC(%struct.TYPE_19__* %146, i32 %147)
  %149 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %150 = load i32, i32* @ctrl_tx_bytes, align 4
  %151 = load i32, i32* %14, align 4
  %152 = call i32 @VCHIQ_SERVICE_STATS_ADD(%struct.TYPE_19__* %149, i32 %150, i32 %151)
  br label %202

153:                                              ; preds = %60
  %154 = load i64, i64* @vchiq_sync_log_level, align 8
  %155 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %156 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* %11, align 4
  %159 = call i64 @VCHIQ_MSG_TYPE(i32 %158)
  %160 = call i32 @msg_type_str(i64 %159)
  %161 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %162 = ptrtoint %struct.TYPE_20__* %161 to i32
  %163 = load i32, i32* %14, align 4
  %164 = load i32, i32* %11, align 4
  %165 = call i32 @VCHIQ_MSG_SRCPORT(i32 %164)
  %166 = load i32, i32* %11, align 4
  %167 = call i32 @VCHIQ_MSG_DSTPORT(i32 %166)
  %168 = call i32 @vchiq_log_info(i64 %154, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %157, i32 %160, i32 %162, i32 %163, i32 %165, i32 %167)
  %169 = load i32, i32* %14, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %198

171:                                              ; preds = %153
  %172 = load i32, i32* %13, align 4
  %173 = icmp eq i32 %172, 1
  br i1 %173, label %174, label %181

174:                                              ; preds = %171
  %175 = load i32, i32* %14, align 4
  %176 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %177 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %176, i64 0
  %178 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = icmp eq i32 %175, %179
  br label %181

181:                                              ; preds = %174, %171
  %182 = phi i1 [ false, %171 ], [ %180, %174 ]
  %183 = xor i1 %182, true
  %184 = zext i1 %183 to i32
  %185 = call i32 @WARN_ON(i32 %184)
  %186 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %187 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %186, i32 0, i32 2
  %188 = load i64, i64* %187, align 8
  %189 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %190 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %189, i64 0
  %191 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %194 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %193, i64 0
  %195 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @memcpy(i64 %188, i32 %192, i32 %196)
  br label %198

198:                                              ; preds = %181, %153
  %199 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %200 = load i32, i32* @ctrl_tx_count, align 4
  %201 = call i32 @VCHIQ_STATS_INC(%struct.TYPE_17__* %199, i32 %200)
  br label %202

202:                                              ; preds = %198, %145
  %203 = load i32, i32* %14, align 4
  %204 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %205 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %204, i32 0, i32 1
  store i32 %203, i32* %205, align 4
  %206 = load i32, i32* %11, align 4
  %207 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %208 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %207, i32 0, i32 0
  store i32 %206, i32* %208, align 8
  %209 = load i64, i64* @vchiq_sync_log_level, align 8
  %210 = load i64, i64* @VCHIQ_LOG_TRACE, align 8
  %211 = icmp sge i64 %209, %210
  br i1 %211, label %212, label %238

212:                                              ; preds = %202
  %213 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %214 = icmp ne %struct.TYPE_19__* %213, null
  br i1 %214, label %215, label %220

215:                                              ; preds = %212
  %216 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %217 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  br label %222

220:                                              ; preds = %212
  %221 = call i32 @VCHIQ_MAKE_FOURCC(i8 signext 63, i8 signext 63, i8 signext 63, i8 signext 63)
  br label %222

222:                                              ; preds = %220, %215
  %223 = phi i32 [ %219, %215 ], [ %221, %220 ]
  store i32 %223, i32* %21, align 4
  %224 = load i64, i64* @vchiq_sync_log_level, align 8
  %225 = load i32, i32* %11, align 4
  %226 = call i64 @VCHIQ_MSG_TYPE(i32 %225)
  %227 = call i32 @msg_type_str(i64 %226)
  %228 = load i32, i32* %11, align 4
  %229 = call i64 @VCHIQ_MSG_TYPE(i32 %228)
  %230 = load i32, i32* %21, align 4
  %231 = call i32 @VCHIQ_FOURCC_AS_4CHARS(i32 %230)
  %232 = load i32, i32* %11, align 4
  %233 = call i32 @VCHIQ_MSG_SRCPORT(i32 %232)
  %234 = load i32, i32* %11, align 4
  %235 = call i32 @VCHIQ_MSG_DSTPORT(i32 %234)
  %236 = load i32, i32* %14, align 4
  %237 = call i32 @vchiq_log_trace(i64 %224, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i32 %227, i64 %229, i32 %231, i32 %233, i32 %235, i32 %236)
  br label %238

238:                                              ; preds = %222, %202
  %239 = call i32 (...) @wmb()
  %240 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %241 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %240, i32 0, i32 1
  %242 = load %struct.TYPE_16__*, %struct.TYPE_16__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %242, i32 0, i32 0
  %244 = call i32 @remote_event_signal(i32* %243)
  %245 = load i32, i32* %11, align 4
  %246 = call i64 @VCHIQ_MSG_TYPE(i32 %245)
  %247 = load i64, i64* @VCHIQ_MSG_PAUSE, align 8
  %248 = icmp ne i64 %246, %247
  br i1 %248, label %249, label %253

249:                                              ; preds = %238
  %250 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %251 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %250, i32 0, i32 0
  %252 = call i32 @lmutex_unlock(i32* %251)
  br label %253

253:                                              ; preds = %249, %238
  %254 = load i64, i64* @VCHIQ_SUCCESS, align 8
  store i64 %254, i64* %8, align 8
  br label %255

255:                                              ; preds = %253, %114, %34
  %256 = load i64, i64* %8, align 8
  ret i64 %256
}

declare dso_local i64 @VCHIQ_MSG_TYPE(i32) #1

declare dso_local i64 @lmutex_lock_interruptible(i32*) #1

declare dso_local i32 @remote_event_wait(i32*) #1

declare dso_local i32 @rmb(...) #1

declare dso_local i64 @SLOT_DATA_FROM_INDEX(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @vchiq_log_error(i32, i8*, i32, i32) #1

declare dso_local i32 @vchiq_log_info(i64, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @msg_type_str(i64) #1

declare dso_local i32 @VCHIQ_MSG_SRCPORT(i32) #1

declare dso_local i32 @VCHIQ_MSG_DSTPORT(i32) #1

declare dso_local i64 @vchiq_copy_from_user(i64, i32, i64) #1

declare dso_local i32 @lmutex_unlock(i32*) #1

declare dso_local i32 @VCHIQ_SERVICE_STATS_INC(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @vchiq_log_dump_mem(i8*, i32, i64, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @VCHIQ_SERVICE_STATS_ADD(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @memcpy(i64, i32, i32) #1

declare dso_local i32 @VCHIQ_STATS_INC(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @VCHIQ_MAKE_FOURCC(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @vchiq_log_trace(i64, i8*, i32, i64, i32, i32, i32, i32) #1

declare dso_local i32 @VCHIQ_FOURCC_AS_4CHARS(i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @remote_event_signal(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
