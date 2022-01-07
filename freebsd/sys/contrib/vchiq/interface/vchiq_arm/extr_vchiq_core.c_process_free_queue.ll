; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/vchiq/interface/vchiq_arm/extr_vchiq_core.c_process_free_queue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/vchiq/interface/vchiq_arm/extr_vchiq_core.c_process_free_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_9__*, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32* }
%struct.TYPE_10__ = type { i32, i32 }

@VCHIQ_MAX_SERVICES = common dso_local global i32 0, align 4
@VCHIQ_SLOT_QUEUE_MASK = common dso_local global i64 0, align 8
@vchiq_core_log_level = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"%d: pfq %d=%x %x %x\00", align 1
@VCHIQ_SLOT_SIZE = common dso_local global i32 0, align 4
@VCHIQ_MSG_DATA = common dso_local global i64 0, align 8
@quota_spinlock = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [89 x i8] c"service %d message_use_count=%d (header %x, msgid %x, header->msgid %x, header->size %x)\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"invalid message use count\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"%d: pfq:%d %x@%x - slot_use->%d\00", align 1
@.str.4 = private unnamed_addr constant [86 x i8] c"service %d slot_use_count=%d (header %x, msgid %x, header->msgid %x, header->size %x)\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"bad slot use count\0A\00", align 1
@.str.6 = private unnamed_addr constant [69 x i8] c"pfq - pos %x: header %x, msgid %x, header->msgid %x, header->size %x\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"invalid slot position\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @process_free_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_free_queue(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_9__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 7
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  store %struct.TYPE_8__* %19, %struct.TYPE_8__** %3, align 8
  %20 = load i32, i32* @VCHIQ_MAX_SERVICES, align 4
  %21 = call i32 @BITSET_SIZE(i32 %20)
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %4, align 8
  %24 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %5, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %6, align 4
  %28 = call i32 (...) @mb()
  br label %29

29:                                               ; preds = %243, %1
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %30, %33
  br i1 %34, label %35, label %251

35:                                               ; preds = %29
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %6, align 4
  %41 = sext i32 %39 to i64
  %42 = load i64, i64* @VCHIQ_SLOT_QUEUE_MASK, align 8
  %43 = and i64 %41, %42
  %44 = getelementptr inbounds i32, i32* %38, i64 %43
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %8, align 4
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %47 = load i32, i32* %8, align 4
  %48 = call i64 @SLOT_DATA_FROM_INDEX(%struct.TYPE_7__* %46, i32 %47)
  %49 = inttoptr i64 %48 to i8*
  store i8* %49, i8** %9, align 8
  store i32 0, i32* %10, align 4
  %50 = call i32 (...) @rmb()
  %51 = load i32, i32* @vchiq_core_log_level, align 4
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %8, align 4
  %56 = load i8*, i8** %9, align 8
  %57 = ptrtoint i8* %56 to i32
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @vchiq_log_trace(i32 %51, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %54, i32 %55, i32 %57, i32 %60, i32 %61)
  %63 = call i32 @BITSET_ZERO(i32* %24)
  store i32 0, i32* %7, align 4
  br label %64

64:                                               ; preds = %215, %35
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* @VCHIQ_SLOT_SIZE, align 4
  %67 = icmp ult i32 %65, %66
  br i1 %67, label %68, label %216

68:                                               ; preds = %64
  %69 = load i8*, i8** %9, align 8
  %70 = load i32, i32* %7, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %69, i64 %71
  %73 = bitcast i8* %72 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %73, %struct.TYPE_10__** %11, align 8
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %12, align 4
  %77 = load i32, i32* %12, align 4
  %78 = call i64 @VCHIQ_MSG_TYPE(i32 %77)
  %79 = load i64, i64* @VCHIQ_MSG_DATA, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %189

81:                                               ; preds = %68
  %82 = load i32, i32* %12, align 4
  %83 = call i32 @VCHIQ_MSG_SRCPORT(i32 %82)
  store i32 %83, i32* %13, align 4
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 6
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %85, align 8
  %87 = load i32, i32* %13, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i64 %88
  store %struct.TYPE_9__* %89, %struct.TYPE_9__** %14, align 8
  %90 = call i32 @spin_lock(i32* @quota_spinlock)
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %15, align 4
  %94 = load i32, i32* %15, align 4
  %95 = icmp sgt i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %81
  %97 = load i32, i32* %15, align 4
  %98 = sub nsw i32 %97, 1
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 4
  br label %101

101:                                              ; preds = %96, %81
  %102 = call i32 @spin_unlock(i32* @quota_spinlock)
  %103 = load i32, i32* %15, align 4
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = icmp eq i32 %103, %106
  br i1 %107, label %108, label %112

108:                                              ; preds = %101
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 3
  %111 = call i32 @up(i32* %110)
  br label %133

112:                                              ; preds = %101
  %113 = load i32, i32* %15, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %132

115:                                              ; preds = %112
  %116 = load i32, i32* @vchiq_core_log_level, align 4
  %117 = load i32, i32* %13, align 4
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %122 = ptrtoint %struct.TYPE_10__* %121 to i32
  %123 = load i32, i32* %12, align 4
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = call i32 (i32, i8*, i32, i32, i32, i32, i32, ...) @vchiq_log_error(i32 %116, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.1, i64 0, i64 0), i32 %117, i32 %120, i32 %122, i32 %123, i32 %126, i32 %129)
  %131 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %132

132:                                              ; preds = %115, %112
  br label %133

133:                                              ; preds = %132, %108
  %134 = load i32, i32* %13, align 4
  %135 = call i32 @BITSET_IS_SET(i32* %24, i32 %134)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %188, label %137

137:                                              ; preds = %133
  %138 = load i32, i32* %13, align 4
  %139 = call i32 @BITSET_SET(i32* %24, i32 %138)
  %140 = call i32 @spin_lock(i32* @quota_spinlock)
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  store i32 %143, i32* %15, align 4
  %144 = load i32, i32* %15, align 4
  %145 = icmp sgt i32 %144, 0
  br i1 %145, label %146, label %151

146:                                              ; preds = %137
  %147 = load i32, i32* %15, align 4
  %148 = sub nsw i32 %147, 1
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 2
  store i32 %148, i32* %150, align 4
  br label %151

151:                                              ; preds = %146, %137
  %152 = call i32 @spin_unlock(i32* @quota_spinlock)
  %153 = load i32, i32* %15, align 4
  %154 = icmp sgt i32 %153, 0
  br i1 %154, label %155, label %172

155:                                              ; preds = %151
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 3
  %158 = call i32 @up(i32* %157)
  %159 = load i32, i32* @vchiq_core_log_level, align 4
  %160 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 5
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* %13, align 4
  %164 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %168 = ptrtoint %struct.TYPE_10__* %167 to i32
  %169 = load i32, i32* %15, align 4
  %170 = sub nsw i32 %169, 1
  %171 = call i32 @vchiq_log_trace(i32 %159, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %162, i32 %163, i32 %166, i32 %168, i32 %170)
  br label %187

172:                                              ; preds = %151
  %173 = load i32, i32* @vchiq_core_log_level, align 4
  %174 = load i32, i32* %13, align 4
  %175 = load i32, i32* %15, align 4
  %176 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %177 = ptrtoint %struct.TYPE_10__* %176 to i32
  %178 = load i32, i32* %12, align 4
  %179 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %180 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = call i32 (i32, i8*, i32, i32, i32, i32, i32, ...) @vchiq_log_error(i32 %173, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.4, i64 0, i64 0), i32 %174, i32 %175, i32 %177, i32 %178, i32 %181, i32 %184)
  %186 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  br label %187

187:                                              ; preds = %172, %155
  br label %188

188:                                              ; preds = %187, %133
  store i32 1, i32* %10, align 4
  br label %189

189:                                              ; preds = %188, %68
  %190 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %191 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = call i64 @calc_stride(i32 %192)
  %194 = load i32, i32* %7, align 4
  %195 = zext i32 %194 to i64
  %196 = add nsw i64 %195, %193
  %197 = trunc i64 %196 to i32
  store i32 %197, i32* %7, align 4
  %198 = load i32, i32* %7, align 4
  %199 = load i32, i32* @VCHIQ_SLOT_SIZE, align 4
  %200 = icmp ugt i32 %198, %199
  br i1 %200, label %201, label %215

201:                                              ; preds = %189
  %202 = load i32, i32* @vchiq_core_log_level, align 4
  %203 = load i32, i32* %7, align 4
  %204 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %205 = ptrtoint %struct.TYPE_10__* %204 to i32
  %206 = load i32, i32* %12, align 4
  %207 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %208 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %211 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = call i32 (i32, i8*, i32, i32, i32, i32, i32, ...) @vchiq_log_error(i32 %202, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.6, i64 0, i64 0), i32 %203, i32 %205, i32 %206, i32 %209, i32 %212)
  %214 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  br label %215

215:                                              ; preds = %201, %189
  br label %64

216:                                              ; preds = %64
  %217 = load i32, i32* %10, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %243

219:                                              ; preds = %216
  %220 = call i32 @spin_lock(i32* @quota_spinlock)
  %221 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %222 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  store i32 %223, i32* %16, align 4
  %224 = load i32, i32* %16, align 4
  %225 = icmp sgt i32 %224, 0
  br i1 %225, label %226, label %231

226:                                              ; preds = %219
  %227 = load i32, i32* %16, align 4
  %228 = sub nsw i32 %227, 1
  %229 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %230 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %229, i32 0, i32 1
  store i32 %228, i32* %230, align 4
  br label %231

231:                                              ; preds = %226, %219
  %232 = call i32 @spin_unlock(i32* @quota_spinlock)
  %233 = load i32, i32* %16, align 4
  %234 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %235 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %234, i32 0, i32 2
  %236 = load i32, i32* %235, align 8
  %237 = icmp eq i32 %233, %236
  br i1 %237, label %238, label %242

238:                                              ; preds = %231
  %239 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %240 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %239, i32 0, i32 4
  %241 = call i32 @up(i32* %240)
  br label %242

242:                                              ; preds = %238, %231
  br label %243

243:                                              ; preds = %242, %216
  %244 = call i32 (...) @mb()
  %245 = load i32, i32* %6, align 4
  %246 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %247 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %246, i32 0, i32 0
  store i32 %245, i32* %247, align 8
  %248 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %249 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %248, i32 0, i32 3
  %250 = call i32 @up(i32* %249)
  br label %29

251:                                              ; preds = %29
  %252 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %252)
  ret void
}

declare dso_local i32 @BITSET_SIZE(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @mb(...) #1

declare dso_local i64 @SLOT_DATA_FROM_INDEX(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @rmb(...) #1

declare dso_local i32 @vchiq_log_trace(i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @BITSET_ZERO(i32*) #1

declare dso_local i64 @VCHIQ_MSG_TYPE(i32) #1

declare dso_local i32 @VCHIQ_MSG_SRCPORT(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @up(i32*) #1

declare dso_local i32 @vchiq_log_error(i32, i8*, i32, i32, i32, i32, i32, ...) #1

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i32 @BITSET_IS_SET(i32*, i32) #1

declare dso_local i32 @BITSET_SET(i32*, i32) #1

declare dso_local i64 @calc_stride(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
