; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/ndis/extr_subr_ntoskrnl.c_KeWaitForMultipleObjects.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/ndis/extr_subr_ntoskrnl.c_KeWaitForMultipleObjects.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.TYPE_10__ = type { i64, i64, i32 }
%struct.TYPE_9__ = type { i32, i32, i64, i32, %struct.TYPE_10__*, %struct.TYPE_9__*, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, %struct.thread* }
%struct.timeval = type { i32, i32 }
%struct.timespec = type { i32, i64 }

@curthread = common dso_local global %struct.thread* null, align 8
@MAX_WAIT_OBJECTS = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@STATUS_INVALID_PARAMETER = common dso_local global i32 0, align 4
@THREAD_WAIT_OBJECTS = common dso_local global i32 0, align 4
@ntoskrnl_dispatchlock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"KeWFM\00", align 1
@FALSE = common dso_local global i64 0, align 8
@INT32_MIN = common dso_local global i64 0, align 8
@DISP_TYPE_MUTANT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"mutant limit exceeded\00", align 1
@WAITTYPE_ANY = common dso_local global i32 0, align 4
@STATUS_WAIT_0 = common dso_local global i32 0, align 4
@WAITTYPE_ALL = common dso_local global i32 0, align 4
@STATUS_TIMEOUT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_10__**, i32, i32, i32, i32, i64*, %struct.TYPE_9__*)* @KeWaitForMultipleObjects to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @KeWaitForMultipleObjects(i32 %0, %struct.TYPE_10__** %1, i32 %2, i32 %3, i32 %4, i32 %5, i64* %6, %struct.TYPE_9__* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_10__**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64*, align 8
  %17 = alloca %struct.TYPE_9__*, align 8
  %18 = alloca %struct.thread*, align 8
  %19 = alloca %struct.TYPE_9__*, align 8
  %20 = alloca %struct.TYPE_9__*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca %struct.TYPE_10__*, align 8
  %24 = alloca %struct.timeval, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i64, align 8
  %29 = alloca %struct.timespec, align 8
  %30 = alloca %struct.timespec, align 8
  %31 = alloca i32, align 4
  %32 = alloca %struct.TYPE_8__, align 8
  %33 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  store %struct.TYPE_10__** %1, %struct.TYPE_10__*** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i64* %6, i64** %16, align 8
  store %struct.TYPE_9__* %7, %struct.TYPE_9__** %17, align 8
  %34 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %34, %struct.thread** %18, align 8
  %35 = load i32, i32* @MAX_WAIT_OBJECTS, align 4
  %36 = zext i32 %35 to i64
  %37 = call i8* @llvm.stacksave()
  store i8* %37, i8** %21, align 8
  %38 = alloca %struct.TYPE_9__, i64 %36, align 16
  store i64 %36, i64* %22, align 8
  store i32 0, i32* %26, align 4
  store i32 0, i32* %27, align 4
  %39 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %39, i32* %31, align 4
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* @MAX_WAIT_OBJECTS, align 4
  %42 = icmp sgt i32 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %8
  %44 = load i32, i32* @STATUS_INVALID_PARAMETER, align 4
  store i32 %44, i32* %9, align 4
  store i32 1, i32* %33, align 4
  br label %398

45:                                               ; preds = %8
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* @THREAD_WAIT_OBJECTS, align 4
  %48 = icmp sgt i32 %46, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %45
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %51 = icmp eq %struct.TYPE_9__* %50, null
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = load i32, i32* @STATUS_INVALID_PARAMETER, align 4
  store i32 %53, i32* %9, align 4
  store i32 1, i32* %33, align 4
  br label %398

54:                                               ; preds = %49, %45
  %55 = call i32 @mtx_lock(i32* @ntoskrnl_dispatchlock)
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %57 = call i32 @cv_init(i32* %56, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %58 = load %struct.thread*, %struct.thread** %18, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  store %struct.thread* %58, %struct.thread** %59, align 8
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %61 = icmp eq %struct.TYPE_9__* %60, null
  br i1 %61, label %62, label %63

62:                                               ; preds = %54
  store %struct.TYPE_9__* %38, %struct.TYPE_9__** %19, align 8
  br label %65

63:                                               ; preds = %54
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  store %struct.TYPE_9__* %64, %struct.TYPE_9__** %19, align 8
  br label %65

65:                                               ; preds = %63, %62
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %67 = bitcast %struct.TYPE_9__* %66 to i8*
  %68 = load i32, i32* %10, align 4
  %69 = sext i32 %68 to i64
  %70 = mul i64 56, %69
  %71 = trunc i64 %70 to i32
  %72 = call i32 @bzero(i8* %67, i32 %71)
  store i32 0, i32* %26, align 4
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  store %struct.TYPE_9__* %73, %struct.TYPE_9__** %20, align 8
  store i32 0, i32* %25, align 4
  br label %74

74:                                               ; preds = %177, %65
  %75 = load i32, i32* %25, align 4
  %76 = load i32, i32* %10, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %180

78:                                               ; preds = %74
  %79 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %11, align 8
  %80 = load i32, i32* %25, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %79, i64 %81
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 2
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 3
  %87 = call i32 @InsertTailList(i32* %84, i32* %86)
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 7
  store %struct.TYPE_8__* %32, %struct.TYPE_8__** %89, align 8
  %90 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %11, align 8
  %91 = load i32, i32* %25, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %90, i64 %92
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %93, align 8
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 4
  store %struct.TYPE_10__* %94, %struct.TYPE_10__** %96, align 8
  %97 = load i32, i32* %12, align 4
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 8
  %100 = load i32, i32* %25, align 4
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 4
  %103 = load i64, i64* @FALSE, align 8
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 2
  store i64 %103, i64* %105, align 8
  %106 = load %struct.thread*, %struct.thread** %18, align 8
  %107 = getelementptr inbounds %struct.thread, %struct.thread* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 6
  store i32 %108, i32* %110, align 8
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i64 1
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 5
  store %struct.TYPE_9__* %112, %struct.TYPE_9__** %114, align 8
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 1
  store %struct.TYPE_9__* %116, %struct.TYPE_9__** %20, align 8
  %117 = load i32, i32* %26, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %26, align 4
  %119 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %11, align 8
  %120 = load i32, i32* %25, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %119, i64 %121
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %122, align 8
  %124 = load %struct.thread*, %struct.thread** %18, align 8
  %125 = call i64 @ntoskrnl_is_signalled(%struct.TYPE_10__* %123, %struct.thread* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %176

127:                                              ; preds = %78
  %128 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %11, align 8
  %129 = load i32, i32* %25, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %128, i64 %130
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @INT32_MIN, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %150

137:                                              ; preds = %127
  %138 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %11, align 8
  %139 = load i32, i32* %25, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %138, i64 %140
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @DISP_TYPE_MUTANT, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %150

147:                                              ; preds = %137
  %148 = call i32 @mtx_unlock(i32* @ntoskrnl_dispatchlock)
  %149 = call i32 @panic(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %150

150:                                              ; preds = %147, %137, %127
  %151 = load i32, i32* %12, align 4
  %152 = load i32, i32* @WAITTYPE_ANY, align 4
  %153 = icmp eq i32 %151, %152
  br i1 %153, label %154, label %165

154:                                              ; preds = %150
  %155 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %11, align 8
  %156 = load i32, i32* %25, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %155, i64 %157
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** %158, align 8
  %160 = load %struct.thread*, %struct.thread** %18, align 8
  %161 = call i32 @ntoskrnl_satisfy_wait(%struct.TYPE_10__* %159, %struct.thread* %160)
  %162 = load i32, i32* @STATUS_WAIT_0, align 4
  %163 = load i32, i32* %25, align 4
  %164 = add nsw i32 %162, %163
  store i32 %164, i32* %31, align 4
  br label %369

165:                                              ; preds = %150
  %166 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 -1
  store %struct.TYPE_9__* %167, %struct.TYPE_9__** %20, align 8
  %168 = load i32, i32* %26, align 4
  %169 = add nsw i32 %168, -1
  store i32 %169, i32* %26, align 4
  %170 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 4
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %171, align 8
  %172 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i32 0, i32 3
  %174 = call i32 @RemoveEntryList(i32* %173)
  br label %175

175:                                              ; preds = %165
  br label %176

176:                                              ; preds = %175, %78
  br label %177

177:                                              ; preds = %176
  %178 = load i32, i32* %25, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %25, align 4
  br label %74

180:                                              ; preds = %74
  %181 = load i32, i32* %12, align 4
  %182 = load i32, i32* @WAITTYPE_ALL, align 4
  %183 = icmp eq i32 %181, %182
  br i1 %183, label %184, label %205

184:                                              ; preds = %180
  %185 = load i32, i32* %26, align 4
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %205

187:                                              ; preds = %184
  store i32 0, i32* %25, align 4
  br label %188

188:                                              ; preds = %200, %187
  %189 = load i32, i32* %25, align 4
  %190 = load i32, i32* %10, align 4
  %191 = icmp slt i32 %189, %190
  br i1 %191, label %192, label %203

192:                                              ; preds = %188
  %193 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %11, align 8
  %194 = load i32, i32* %25, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %193, i64 %195
  %197 = load %struct.TYPE_10__*, %struct.TYPE_10__** %196, align 8
  %198 = load %struct.thread*, %struct.thread** %18, align 8
  %199 = call i32 @ntoskrnl_satisfy_wait(%struct.TYPE_10__* %197, %struct.thread* %198)
  br label %200

200:                                              ; preds = %192
  %201 = load i32, i32* %25, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %25, align 4
  br label %188

203:                                              ; preds = %188
  %204 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %204, i32* %31, align 4
  br label %369

205:                                              ; preds = %184, %180
  %206 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %207 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %208 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %207, i64 -1
  %209 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %208, i32 0, i32 5
  store %struct.TYPE_9__* %206, %struct.TYPE_9__** %209, align 8
  %210 = load i64*, i64** %16, align 8
  %211 = icmp ne i64* %210, null
  br i1 %211, label %212, label %265

212:                                              ; preds = %205
  %213 = load i64*, i64** %16, align 8
  %214 = load i64, i64* %213, align 8
  %215 = icmp slt i64 %214, 0
  br i1 %215, label %216, label %234

216:                                              ; preds = %212
  %217 = load i64*, i64** %16, align 8
  %218 = load i64, i64* %217, align 8
  %219 = sub nsw i64 0, %218
  %220 = sdiv i64 %219, 10000000
  %221 = trunc i64 %220 to i32
  %222 = getelementptr inbounds %struct.timeval, %struct.timeval* %24, i32 0, i32 0
  store i32 %221, i32* %222, align 4
  %223 = load i64*, i64** %16, align 8
  %224 = load i64, i64* %223, align 8
  %225 = sub nsw i64 0, %224
  %226 = sdiv i64 %225, 10
  %227 = getelementptr inbounds %struct.timeval, %struct.timeval* %24, i32 0, i32 0
  %228 = load i32, i32* %227, align 4
  %229 = mul nsw i32 %228, 1000000
  %230 = sext i32 %229 to i64
  %231 = sub nsw i64 %226, %230
  %232 = trunc i64 %231 to i32
  %233 = getelementptr inbounds %struct.timeval, %struct.timeval* %24, i32 0, i32 1
  store i32 %232, i32* %233, align 4
  br label %264

234:                                              ; preds = %212
  %235 = call i32 @ntoskrnl_time(i64* %28)
  %236 = load i64*, i64** %16, align 8
  %237 = load i64, i64* %236, align 8
  %238 = load i64, i64* %28, align 8
  %239 = icmp slt i64 %237, %238
  br i1 %239, label %240, label %243

240:                                              ; preds = %234
  %241 = getelementptr inbounds %struct.timeval, %struct.timeval* %24, i32 0, i32 1
  store i32 0, i32* %241, align 4
  %242 = getelementptr inbounds %struct.timeval, %struct.timeval* %24, i32 0, i32 0
  store i32 0, i32* %242, align 4
  br label %263

243:                                              ; preds = %234
  %244 = load i64*, i64** %16, align 8
  %245 = load i64, i64* %244, align 8
  %246 = load i64, i64* %28, align 8
  %247 = sub nsw i64 %245, %246
  %248 = sdiv i64 %247, 10000000
  %249 = trunc i64 %248 to i32
  %250 = getelementptr inbounds %struct.timeval, %struct.timeval* %24, i32 0, i32 0
  store i32 %249, i32* %250, align 4
  %251 = load i64*, i64** %16, align 8
  %252 = load i64, i64* %251, align 8
  %253 = load i64, i64* %28, align 8
  %254 = sub nsw i64 %252, %253
  %255 = sdiv i64 %254, 10
  %256 = getelementptr inbounds %struct.timeval, %struct.timeval* %24, i32 0, i32 0
  %257 = load i32, i32* %256, align 4
  %258 = mul nsw i32 %257, 1000000
  %259 = sext i32 %258 to i64
  %260 = sub nsw i64 %255, %259
  %261 = trunc i64 %260 to i32
  %262 = getelementptr inbounds %struct.timeval, %struct.timeval* %24, i32 0, i32 1
  store i32 %261, i32* %262, align 4
  br label %263

263:                                              ; preds = %243, %240
  br label %264

264:                                              ; preds = %263, %216
  br label %265

265:                                              ; preds = %264, %205
  br label %266

266:                                              ; preds = %367, %265
  %267 = load i32, i32* %26, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %368

269:                                              ; preds = %266
  %270 = call i32 @nanotime(%struct.timespec* %29)
  %271 = load i64*, i64** %16, align 8
  %272 = icmp eq i64* %271, null
  br i1 %272, label %273, label %276

273:                                              ; preds = %269
  %274 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %275 = call i32 @cv_wait(i32* %274, i32* @ntoskrnl_dispatchlock)
  br label %280

276:                                              ; preds = %269
  %277 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %278 = call i32 @tvtohz(%struct.timeval* %24)
  %279 = call i32 @cv_timedwait(i32* %277, i32* @ntoskrnl_dispatchlock, i32 %278)
  store i32 %279, i32* %27, align 4
  br label %280

280:                                              ; preds = %276, %273
  %281 = load i32, i32* %27, align 4
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %285

283:                                              ; preds = %280
  %284 = load i32, i32* @STATUS_TIMEOUT, align 4
  store i32 %284, i32* %31, align 4
  br label %369

285:                                              ; preds = %280
  %286 = call i32 @nanotime(%struct.timespec* %30)
  %287 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  store %struct.TYPE_9__* %287, %struct.TYPE_9__** %20, align 8
  br label %288

288:                                              ; preds = %335, %285
  %289 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %290 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %289, i32 0, i32 4
  %291 = load %struct.TYPE_10__*, %struct.TYPE_10__** %290, align 8
  store %struct.TYPE_10__* %291, %struct.TYPE_10__** %23, align 8
  %292 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %293 = load %struct.thread*, %struct.thread** %18, align 8
  %294 = call i64 @ntoskrnl_is_signalled(%struct.TYPE_10__* %292, %struct.thread* %293)
  %295 = load i64, i64* @TRUE, align 8
  %296 = icmp eq i64 %294, %295
  br i1 %296, label %303, label %297

297:                                              ; preds = %288
  %298 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %299 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %298, i32 0, i32 2
  %300 = load i64, i64* %299, align 8
  %301 = load i64, i64* @TRUE, align 8
  %302 = icmp eq i64 %300, %301
  br i1 %302, label %303, label %331

303:                                              ; preds = %297, %288
  %304 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %305 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %304, i32 0, i32 0
  %306 = load i64, i64* %305, align 8
  %307 = load i64, i64* @INT32_MIN, align 8
  %308 = icmp eq i64 %306, %307
  br i1 %308, label %309, label %318

309:                                              ; preds = %303
  %310 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %311 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %310, i32 0, i32 1
  %312 = load i64, i64* %311, align 8
  %313 = load i64, i64* @DISP_TYPE_MUTANT, align 8
  %314 = icmp eq i64 %312, %313
  br i1 %314, label %315, label %318

315:                                              ; preds = %309
  %316 = call i32 @mtx_unlock(i32* @ntoskrnl_dispatchlock)
  %317 = call i32 @panic(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %318

318:                                              ; preds = %315, %309, %303
  %319 = load i32, i32* %26, align 4
  %320 = add nsw i32 %319, -1
  store i32 %320, i32* %26, align 4
  %321 = load i32, i32* %12, align 4
  %322 = load i32, i32* @WAITTYPE_ANY, align 4
  %323 = icmp eq i32 %321, %322
  br i1 %323, label %324, label %330

324:                                              ; preds = %318
  %325 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %326 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %325, i32 0, i32 1
  %327 = load i32, i32* %326, align 4
  %328 = load i32, i32* @STATUS_WAIT_0, align 4
  %329 = and i32 %327, %328
  store i32 %329, i32* %31, align 4
  br label %369

330:                                              ; preds = %318
  br label %331

331:                                              ; preds = %330, %297
  %332 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %333 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %332, i32 0, i32 5
  %334 = load %struct.TYPE_9__*, %struct.TYPE_9__** %333, align 8
  store %struct.TYPE_9__* %334, %struct.TYPE_9__** %20, align 8
  br label %335

335:                                              ; preds = %331
  %336 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %337 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %338 = icmp ne %struct.TYPE_9__* %336, %337
  br i1 %338, label %288, label %339

339:                                              ; preds = %335
  %340 = load i32, i32* %26, align 4
  %341 = icmp eq i32 %340, 0
  br i1 %341, label %342, label %344

342:                                              ; preds = %339
  %343 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %343, i32* %31, align 4
  br label %369

344:                                              ; preds = %339
  %345 = load i64*, i64** %16, align 8
  %346 = icmp ne i64* %345, null
  br i1 %346, label %347, label %367

347:                                              ; preds = %344
  %348 = getelementptr inbounds %struct.timespec, %struct.timespec* %30, i32 0, i32 1
  %349 = load i64, i64* %348, align 8
  %350 = getelementptr inbounds %struct.timespec, %struct.timespec* %29, i32 0, i32 1
  %351 = load i64, i64* %350, align 8
  %352 = sub nsw i64 %349, %351
  %353 = getelementptr inbounds %struct.timeval, %struct.timeval* %24, i32 0, i32 0
  %354 = load i32, i32* %353, align 4
  %355 = sext i32 %354 to i64
  %356 = sub nsw i64 %355, %352
  %357 = trunc i64 %356 to i32
  store i32 %357, i32* %353, align 4
  %358 = getelementptr inbounds %struct.timespec, %struct.timespec* %30, i32 0, i32 0
  %359 = load i32, i32* %358, align 8
  %360 = getelementptr inbounds %struct.timespec, %struct.timespec* %29, i32 0, i32 0
  %361 = load i32, i32* %360, align 8
  %362 = sub nsw i32 %359, %361
  %363 = sdiv i32 %362, 1000
  %364 = getelementptr inbounds %struct.timeval, %struct.timeval* %24, i32 0, i32 1
  %365 = load i32, i32* %364, align 4
  %366 = sub nsw i32 %365, %363
  store i32 %366, i32* %364, align 4
  br label %367

367:                                              ; preds = %347, %344
  br label %266

368:                                              ; preds = %266
  br label %369

369:                                              ; preds = %368, %342, %324, %283, %203, %154
  %370 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %371 = call i32 @cv_destroy(i32* %370)
  store i32 0, i32* %25, align 4
  br label %372

372:                                              ; preds = %392, %369
  %373 = load i32, i32* %25, align 4
  %374 = load i32, i32* %10, align 4
  %375 = icmp slt i32 %373, %374
  br i1 %375, label %376, label %395

376:                                              ; preds = %372
  %377 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %378 = load i32, i32* %25, align 4
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %377, i64 %379
  %381 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %380, i32 0, i32 4
  %382 = load %struct.TYPE_10__*, %struct.TYPE_10__** %381, align 8
  %383 = icmp ne %struct.TYPE_10__* %382, null
  br i1 %383, label %384, label %391

384:                                              ; preds = %376
  %385 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %386 = load i32, i32* %25, align 4
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %385, i64 %387
  %389 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %388, i32 0, i32 3
  %390 = call i32 @RemoveEntryList(i32* %389)
  br label %391

391:                                              ; preds = %384, %376
  br label %392

392:                                              ; preds = %391
  %393 = load i32, i32* %25, align 4
  %394 = add nsw i32 %393, 1
  store i32 %394, i32* %25, align 4
  br label %372

395:                                              ; preds = %372
  %396 = call i32 @mtx_unlock(i32* @ntoskrnl_dispatchlock)
  %397 = load i32, i32* %31, align 4
  store i32 %397, i32* %9, align 4
  store i32 1, i32* %33, align 4
  br label %398

398:                                              ; preds = %395, %52, %43
  %399 = load i8*, i8** %21, align 8
  call void @llvm.stackrestore(i8* %399)
  %400 = load i32, i32* %9, align 4
  ret i32 %400
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mtx_lock(i32*) #2

declare dso_local i32 @cv_init(i32*, i8*) #2

declare dso_local i32 @bzero(i8*, i32) #2

declare dso_local i32 @InsertTailList(i32*, i32*) #2

declare dso_local i64 @ntoskrnl_is_signalled(%struct.TYPE_10__*, %struct.thread*) #2

declare dso_local i32 @mtx_unlock(i32*) #2

declare dso_local i32 @panic(i8*) #2

declare dso_local i32 @ntoskrnl_satisfy_wait(%struct.TYPE_10__*, %struct.thread*) #2

declare dso_local i32 @RemoveEntryList(i32*) #2

declare dso_local i32 @ntoskrnl_time(i64*) #2

declare dso_local i32 @nanotime(%struct.timespec*) #2

declare dso_local i32 @cv_wait(i32*, i32*) #2

declare dso_local i32 @cv_timedwait(i32*, i32*, i32) #2

declare dso_local i32 @tvtohz(%struct.timeval*) #2

declare dso_local i32 @cv_destroy(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
