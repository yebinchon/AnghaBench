; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_create.c__pthread_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_create.c__pthread_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, i32, i64, i32, i32, i32, i32, i32* }
%struct.pthread = type { i8* (i8*)*, i32, i32, i32, i32, i32, i8*, i32, i32, %struct.TYPE_5__, i64, i32*, i64, i8*, i32 }
%struct.thr_param = type { void (i8*)*, i8*, i32, %struct.rtprio*, i32, i8**, i8**, i32, i32, %struct.pthread* }
%struct.rtprio = type { i32 }
%struct.sched_param = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@_pthread_attr_default = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@PTHREAD_INHERIT_SCHED = common dso_local global i64 0, align 8
@PTHREAD_SCOPE_SYSTEM = common dso_local global i32 0, align 4
@TID_TERMINATED = common dso_local global i8* null, align 8
@THR_MAGIC = common dso_local global i32 0, align 4
@TMQ_NITEMS = common dso_local global i32 0, align 4
@THR_CREATE_SUSPENDED = common dso_local global i64 0, align 8
@THR_FLAGS_NEED_SUSPEND = common dso_local global i32 0, align 4
@PS_RUNNING = common dso_local global i32 0, align 4
@PTHREAD_CREATE_DETACHED = common dso_local global i32 0, align 4
@THR_FLAGS_DETACHED = common dso_local global i32 0, align 4
@TD_CREATE = common dso_local global i32 0, align 4
@thread_start = common dso_local global i64 0, align 8
@THR_SYSTEM_SCOPE = common dso_local global i32 0, align 4
@SIGTRAP = common dso_local global i32 0, align 4
@SIG_SETMASK = common dso_local global i32 0, align 4
@SIGCANCEL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EPROCLIM = common dso_local global i32 0, align 4
@PS_DEAD = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@_thread_active_threads = common dso_local global i32 0, align 4
@CPU_LEVEL_WHICH = common dso_local global i32 0, align 4
@CPU_WHICH_TID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_pthread_create(%struct.pthread** noalias %0, %struct.TYPE_5__** noalias %1, i8* (i8*)* %2, i8* noalias %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pthread**, align 8
  %7 = alloca %struct.TYPE_5__**, align 8
  %8 = alloca i8* (i8*)*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.pthread*, align 8
  %11 = alloca %struct.pthread*, align 8
  %12 = alloca %struct.thr_param, align 8
  %13 = alloca %struct.sched_param, align 4
  %14 = alloca %struct.rtprio, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.pthread** %0, %struct.pthread*** %6, align 8
  store %struct.TYPE_5__** %1, %struct.TYPE_5__*** %7, align 8
  store i8* (i8*)* %2, i8* (i8*)** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32* null, i32** %17, align 8
  store i32 0, i32* %19, align 4
  store i32 0, i32* %23, align 4
  %24 = call i32 (...) @_thr_check_init()
  %25 = call i64 (...) @_thr_isthreaded()
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %4
  %28 = call i32 (...) @_malloc_first_thread()
  %29 = call i32 @_thr_setthreaded(i32 1)
  br label %30

30:                                               ; preds = %27, %4
  %31 = call %struct.pthread* (...) @_get_curthread()
  store %struct.pthread* %31, %struct.pthread** %10, align 8
  %32 = load %struct.pthread*, %struct.pthread** %10, align 8
  %33 = call %struct.pthread* @_thr_alloc(%struct.pthread* %32)
  store %struct.pthread* %33, %struct.pthread** %11, align 8
  %34 = icmp eq %struct.pthread* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* @EAGAIN, align 4
  store i32 %36, i32* %5, align 4
  br label %403

37:                                               ; preds = %30
  %38 = call i32 @memset(%struct.thr_param* %12, i32 0, i32 72)
  %39 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %7, align 8
  %40 = icmp eq %struct.TYPE_5__** %39, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %7, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = icmp eq %struct.TYPE_5__* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %41, %37
  %46 = load %struct.pthread*, %struct.pthread** %11, align 8
  %47 = getelementptr inbounds %struct.pthread, %struct.pthread* %46, i32 0, i32 9
  %48 = bitcast %struct.TYPE_5__* %47 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %48, i8* align 8 bitcast (%struct.TYPE_5__* @_pthread_attr_default to i8*), i64 56, i1 false)
  br label %70

49:                                               ; preds = %41
  %50 = load %struct.pthread*, %struct.pthread** %11, align 8
  %51 = getelementptr inbounds %struct.pthread, %struct.pthread* %50, i32 0, i32 9
  %52 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %7, align 8
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = bitcast %struct.TYPE_5__* %51 to i8*
  %55 = bitcast %struct.TYPE_5__* %53 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %54, i8* align 8 %55, i64 56, i1 false)
  %56 = load %struct.pthread*, %struct.pthread** %11, align 8
  %57 = getelementptr inbounds %struct.pthread, %struct.pthread* %56, i32 0, i32 9
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 8
  %59 = load i32*, i32** %58, align 8
  store i32* %59, i32** %17, align 8
  %60 = load %struct.pthread*, %struct.pthread** %11, align 8
  %61 = getelementptr inbounds %struct.pthread, %struct.pthread* %60, i32 0, i32 9
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  store i32 %63, i32* %19, align 4
  %64 = load %struct.pthread*, %struct.pthread** %11, align 8
  %65 = getelementptr inbounds %struct.pthread, %struct.pthread* %64, i32 0, i32 9
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 8
  store i32* null, i32** %66, align 8
  %67 = load %struct.pthread*, %struct.pthread** %11, align 8
  %68 = getelementptr inbounds %struct.pthread, %struct.pthread* %67, i32 0, i32 9
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  store i32 0, i32* %69, align 8
  br label %70

70:                                               ; preds = %49, %45
  %71 = load %struct.pthread*, %struct.pthread** %11, align 8
  %72 = getelementptr inbounds %struct.pthread, %struct.pthread* %71, i32 0, i32 9
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @PTHREAD_INHERIT_SCHED, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %115

77:                                               ; preds = %70
  %78 = load %struct.pthread*, %struct.pthread** %10, align 8
  %79 = getelementptr inbounds %struct.pthread, %struct.pthread* %78, i32 0, i32 9
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @PTHREAD_SCOPE_SYSTEM, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %77
  %86 = load i32, i32* @PTHREAD_SCOPE_SYSTEM, align 4
  %87 = load %struct.pthread*, %struct.pthread** %11, align 8
  %88 = getelementptr inbounds %struct.pthread, %struct.pthread* %87, i32 0, i32 9
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = or i32 %90, %86
  store i32 %91, i32* %89, align 8
  br label %100

92:                                               ; preds = %77
  %93 = load i32, i32* @PTHREAD_SCOPE_SYSTEM, align 4
  %94 = xor i32 %93, -1
  %95 = load %struct.pthread*, %struct.pthread** %11, align 8
  %96 = getelementptr inbounds %struct.pthread, %struct.pthread* %95, i32 0, i32 9
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = and i32 %98, %94
  store i32 %99, i32* %97, align 8
  br label %100

100:                                              ; preds = %92, %85
  %101 = load %struct.pthread*, %struct.pthread** %10, align 8
  %102 = getelementptr inbounds %struct.pthread, %struct.pthread* %101, i32 0, i32 9
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 5
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.pthread*, %struct.pthread** %11, align 8
  %106 = getelementptr inbounds %struct.pthread, %struct.pthread* %105, i32 0, i32 9
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 5
  store i32 %104, i32* %107, align 4
  %108 = load %struct.pthread*, %struct.pthread** %10, align 8
  %109 = getelementptr inbounds %struct.pthread, %struct.pthread* %108, i32 0, i32 9
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.pthread*, %struct.pthread** %11, align 8
  %113 = getelementptr inbounds %struct.pthread, %struct.pthread* %112, i32 0, i32 9
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 4
  store i32 %111, i32* %114, align 8
  br label %115

115:                                              ; preds = %100, %70
  %116 = load i8*, i8** @TID_TERMINATED, align 8
  %117 = load %struct.pthread*, %struct.pthread** %11, align 8
  %118 = getelementptr inbounds %struct.pthread, %struct.pthread* %117, i32 0, i32 6
  store i8* %116, i8** %118, align 8
  %119 = call i32 (...) @_rtld_get_stack_prot()
  store i32 %119, i32* %22, align 4
  %120 = load %struct.pthread*, %struct.pthread** %11, align 8
  %121 = getelementptr inbounds %struct.pthread, %struct.pthread* %120, i32 0, i32 9
  %122 = call i64 @create_stack(%struct.TYPE_5__* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %115
  %125 = load %struct.pthread*, %struct.pthread** %10, align 8
  %126 = load %struct.pthread*, %struct.pthread** %11, align 8
  %127 = call i32 @_thr_free(%struct.pthread* %125, %struct.pthread* %126)
  %128 = load i32, i32* @EAGAIN, align 4
  store i32 %128, i32* %5, align 4
  br label %403

129:                                              ; preds = %115
  %130 = load i32, i32* @THR_MAGIC, align 4
  %131 = load %struct.pthread*, %struct.pthread** %11, align 8
  %132 = getelementptr inbounds %struct.pthread, %struct.pthread* %131, i32 0, i32 14
  store i32 %130, i32* %132, align 8
  %133 = load i8* (i8*)*, i8* (i8*)** %8, align 8
  %134 = load %struct.pthread*, %struct.pthread** %11, align 8
  %135 = getelementptr inbounds %struct.pthread, %struct.pthread* %134, i32 0, i32 0
  store i8* (i8*)* %133, i8* (i8*)** %135, align 8
  %136 = load i8*, i8** %9, align 8
  %137 = load %struct.pthread*, %struct.pthread** %11, align 8
  %138 = getelementptr inbounds %struct.pthread, %struct.pthread* %137, i32 0, i32 13
  store i8* %136, i8** %138, align 8
  %139 = load %struct.pthread*, %struct.pthread** %11, align 8
  %140 = getelementptr inbounds %struct.pthread, %struct.pthread* %139, i32 0, i32 1
  store i32 1, i32* %140, align 8
  %141 = load %struct.pthread*, %struct.pthread** %11, align 8
  %142 = getelementptr inbounds %struct.pthread, %struct.pthread* %141, i32 0, i32 12
  store i64 0, i64* %142, align 8
  store i32 0, i32* %18, align 4
  br label %143

143:                                              ; preds = %155, %129
  %144 = load i32, i32* %18, align 4
  %145 = load i32, i32* @TMQ_NITEMS, align 4
  %146 = icmp slt i32 %144, %145
  br i1 %146, label %147, label %158

147:                                              ; preds = %143
  %148 = load %struct.pthread*, %struct.pthread** %11, align 8
  %149 = getelementptr inbounds %struct.pthread, %struct.pthread* %148, i32 0, i32 11
  %150 = load i32*, i32** %149, align 8
  %151 = load i32, i32* %18, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  %154 = call i32 @TAILQ_INIT(i32* %153)
  br label %155

155:                                              ; preds = %147
  %156 = load i32, i32* %18, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %18, align 4
  br label %143

158:                                              ; preds = %143
  %159 = load %struct.pthread*, %struct.pthread** %11, align 8
  %160 = getelementptr inbounds %struct.pthread, %struct.pthread* %159, i32 0, i32 9
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 3
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @THR_CREATE_SUSPENDED, align 8
  %164 = icmp eq i64 %162, %163
  br i1 %164, label %165, label %169

165:                                              ; preds = %158
  %166 = load i32, i32* @THR_FLAGS_NEED_SUSPEND, align 4
  %167 = load %struct.pthread*, %struct.pthread** %11, align 8
  %168 = getelementptr inbounds %struct.pthread, %struct.pthread* %167, i32 0, i32 2
  store i32 %166, i32* %168, align 4
  store i32 1, i32* %20, align 4
  br label %170

169:                                              ; preds = %158
  store i32 0, i32* %20, align 4
  br label %170

170:                                              ; preds = %169, %165
  %171 = load i32, i32* @PS_RUNNING, align 4
  %172 = load %struct.pthread*, %struct.pthread** %11, align 8
  %173 = getelementptr inbounds %struct.pthread, %struct.pthread* %172, i32 0, i32 7
  store i32 %171, i32* %173, align 8
  %174 = load %struct.pthread*, %struct.pthread** %11, align 8
  %175 = getelementptr inbounds %struct.pthread, %struct.pthread* %174, i32 0, i32 9
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 8
  %178 = load i32, i32* @PTHREAD_CREATE_DETACHED, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %187

181:                                              ; preds = %170
  %182 = load i32, i32* @THR_FLAGS_DETACHED, align 4
  %183 = load %struct.pthread*, %struct.pthread** %11, align 8
  %184 = getelementptr inbounds %struct.pthread, %struct.pthread* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 4
  %186 = or i32 %185, %182
  store i32 %186, i32* %184, align 4
  br label %187

187:                                              ; preds = %181, %170
  %188 = load %struct.pthread*, %struct.pthread** %11, align 8
  %189 = getelementptr inbounds %struct.pthread, %struct.pthread* %188, i32 0, i32 3
  store i32 1, i32* %189, align 8
  %190 = load %struct.pthread*, %struct.pthread** %10, align 8
  %191 = load %struct.pthread*, %struct.pthread** %11, align 8
  %192 = call i32 @_thr_link(%struct.pthread* %190, %struct.pthread* %191)
  %193 = load i32, i32* %22, align 4
  %194 = call i32 (...) @_rtld_get_stack_prot()
  %195 = icmp ne i32 %193, %194
  br i1 %195, label %196, label %199

196:                                              ; preds = %187
  %197 = load %struct.pthread*, %struct.pthread** %11, align 8
  %198 = call i32 @_thr_stack_fix_protection(%struct.pthread* %197)
  br label %199

199:                                              ; preds = %196, %187
  %200 = load %struct.pthread*, %struct.pthread** %11, align 8
  %201 = load %struct.pthread**, %struct.pthread*** %6, align 8
  store %struct.pthread* %200, %struct.pthread** %201, align 8
  %202 = load %struct.pthread*, %struct.pthread** %10, align 8
  %203 = load i32, i32* @TD_CREATE, align 4
  %204 = call i64 @SHOULD_REPORT_EVENT(%struct.pthread* %202, i32 %203)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %209, label %206

206:                                              ; preds = %199
  %207 = load i32*, i32** %17, align 8
  %208 = icmp ne i32* %207, null
  br i1 %208, label %209, label %213

209:                                              ; preds = %206, %199
  %210 = load %struct.pthread*, %struct.pthread** %10, align 8
  %211 = load %struct.pthread*, %struct.pthread** %11, align 8
  %212 = call i32 @THR_THREAD_LOCK(%struct.pthread* %210, %struct.pthread* %211)
  store i32 1, i32* %21, align 4
  br label %214

213:                                              ; preds = %206
  store i32 0, i32* %21, align 4
  br label %214

214:                                              ; preds = %213, %209
  %215 = load i64, i64* @thread_start, align 8
  %216 = inttoptr i64 %215 to void (i8*)*
  %217 = getelementptr inbounds %struct.thr_param, %struct.thr_param* %12, i32 0, i32 0
  store void (i8*)* %216, void (i8*)** %217, align 8
  %218 = load %struct.pthread*, %struct.pthread** %11, align 8
  %219 = getelementptr inbounds %struct.thr_param, %struct.thr_param* %12, i32 0, i32 9
  store %struct.pthread* %218, %struct.pthread** %219, align 8
  %220 = load %struct.pthread*, %struct.pthread** %11, align 8
  %221 = getelementptr inbounds %struct.pthread, %struct.pthread* %220, i32 0, i32 9
  %222 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %221, i32 0, i32 7
  %223 = load i32, i32* %222, align 4
  %224 = getelementptr inbounds %struct.thr_param, %struct.thr_param* %12, i32 0, i32 8
  store i32 %223, i32* %224, align 4
  %225 = load %struct.pthread*, %struct.pthread** %11, align 8
  %226 = getelementptr inbounds %struct.pthread, %struct.pthread* %225, i32 0, i32 9
  %227 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %226, i32 0, i32 6
  %228 = load i32, i32* %227, align 8
  %229 = getelementptr inbounds %struct.thr_param, %struct.thr_param* %12, i32 0, i32 7
  store i32 %228, i32* %229, align 8
  %230 = load %struct.pthread*, %struct.pthread** %11, align 8
  %231 = getelementptr inbounds %struct.pthread, %struct.pthread* %230, i32 0, i32 10
  %232 = load i64, i64* %231, align 8
  %233 = inttoptr i64 %232 to i8*
  %234 = getelementptr inbounds %struct.thr_param, %struct.thr_param* %12, i32 0, i32 1
  store i8* %233, i8** %234, align 8
  %235 = getelementptr inbounds %struct.thr_param, %struct.thr_param* %12, i32 0, i32 2
  store i32 4, i32* %235, align 8
  %236 = load %struct.pthread*, %struct.pthread** %11, align 8
  %237 = getelementptr inbounds %struct.pthread, %struct.pthread* %236, i32 0, i32 6
  %238 = getelementptr inbounds %struct.thr_param, %struct.thr_param* %12, i32 0, i32 6
  store i8** %237, i8*** %238, align 8
  %239 = load %struct.pthread*, %struct.pthread** %11, align 8
  %240 = getelementptr inbounds %struct.pthread, %struct.pthread* %239, i32 0, i32 6
  %241 = getelementptr inbounds %struct.thr_param, %struct.thr_param* %12, i32 0, i32 5
  store i8** %240, i8*** %241, align 8
  %242 = getelementptr inbounds %struct.thr_param, %struct.thr_param* %12, i32 0, i32 4
  store i32 0, i32* %242, align 8
  %243 = load %struct.pthread*, %struct.pthread** %11, align 8
  %244 = getelementptr inbounds %struct.pthread, %struct.pthread* %243, i32 0, i32 9
  %245 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %244, i32 0, i32 2
  %246 = load i32, i32* %245, align 8
  %247 = load i32, i32* @PTHREAD_SCOPE_SYSTEM, align 4
  %248 = and i32 %246, %247
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %255

250:                                              ; preds = %214
  %251 = load i32, i32* @THR_SYSTEM_SCOPE, align 4
  %252 = getelementptr inbounds %struct.thr_param, %struct.thr_param* %12, i32 0, i32 4
  %253 = load i32, i32* %252, align 8
  %254 = or i32 %253, %251
  store i32 %254, i32* %252, align 8
  br label %255

255:                                              ; preds = %250, %214
  %256 = load %struct.pthread*, %struct.pthread** %11, align 8
  %257 = getelementptr inbounds %struct.pthread, %struct.pthread* %256, i32 0, i32 9
  %258 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %257, i32 0, i32 1
  %259 = load i64, i64* %258, align 8
  %260 = load i64, i64* @PTHREAD_INHERIT_SCHED, align 8
  %261 = icmp eq i64 %259, %260
  br i1 %261, label %262, label %264

262:                                              ; preds = %255
  %263 = getelementptr inbounds %struct.thr_param, %struct.thr_param* %12, i32 0, i32 3
  store %struct.rtprio* null, %struct.rtprio** %263, align 8
  br label %276

264:                                              ; preds = %255
  %265 = load %struct.pthread*, %struct.pthread** %11, align 8
  %266 = getelementptr inbounds %struct.pthread, %struct.pthread* %265, i32 0, i32 9
  %267 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %266, i32 0, i32 5
  %268 = load i32, i32* %267, align 4
  %269 = getelementptr inbounds %struct.sched_param, %struct.sched_param* %13, i32 0, i32 0
  store i32 %268, i32* %269, align 4
  %270 = load %struct.pthread*, %struct.pthread** %11, align 8
  %271 = getelementptr inbounds %struct.pthread, %struct.pthread* %270, i32 0, i32 9
  %272 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %271, i32 0, i32 4
  %273 = load i32, i32* %272, align 8
  %274 = call i32 @_schedparam_to_rtp(i32 %273, %struct.sched_param* %13, %struct.rtprio* %14)
  %275 = getelementptr inbounds %struct.thr_param, %struct.thr_param* %12, i32 0, i32 3
  store %struct.rtprio* %14, %struct.rtprio** %275, align 8
  br label %276

276:                                              ; preds = %264, %262
  %277 = load i32, i32* %20, align 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %295

279:                                              ; preds = %276
  %280 = load i32, i32* %15, align 4
  %281 = call i32 @SIGFILLSET(i32 %280)
  %282 = load i32, i32* %15, align 4
  %283 = load i32, i32* @SIGTRAP, align 4
  %284 = call i32 @SIGDELSET(i32 %282, i32 %283)
  %285 = load i32, i32* @SIG_SETMASK, align 4
  %286 = call i32 @__sys_sigprocmask(i32 %285, i32* %15, i32* %16)
  %287 = load i32, i32* %16, align 4
  %288 = load %struct.pthread*, %struct.pthread** %11, align 8
  %289 = getelementptr inbounds %struct.pthread, %struct.pthread* %288, i32 0, i32 8
  store i32 %287, i32* %289, align 4
  %290 = load %struct.pthread*, %struct.pthread** %11, align 8
  %291 = getelementptr inbounds %struct.pthread, %struct.pthread* %290, i32 0, i32 8
  %292 = load i32, i32* %291, align 4
  %293 = load i32, i32* @SIGCANCEL, align 4
  %294 = call i32 @SIGDELSET(i32 %292, i32 %293)
  br label %295

295:                                              ; preds = %279, %276
  %296 = call i32 @thr_new(%struct.thr_param* %12, i32 72)
  store i32 %296, i32* %23, align 4
  %297 = load i32, i32* %23, align 4
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %307

299:                                              ; preds = %295
  %300 = load i32, i32* @errno, align 4
  store i32 %300, i32* %23, align 4
  %301 = load i32, i32* %23, align 4
  %302 = load i32, i32* @EPROCLIM, align 4
  %303 = icmp eq i32 %301, %302
  br i1 %303, label %304, label %306

304:                                              ; preds = %299
  %305 = load i32, i32* @EAGAIN, align 4
  store i32 %305, i32* %23, align 4
  br label %306

306:                                              ; preds = %304, %299
  br label %307

307:                                              ; preds = %306, %295
  %308 = load i32, i32* %20, align 4
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %313

310:                                              ; preds = %307
  %311 = load i32, i32* @SIG_SETMASK, align 4
  %312 = call i32 @__sys_sigprocmask(i32 %311, i32* %16, i32* null)
  br label %313

313:                                              ; preds = %310, %307
  %314 = load i32, i32* %23, align 4
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %359

316:                                              ; preds = %313
  %317 = load i32, i32* %21, align 4
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %323, label %319

319:                                              ; preds = %316
  %320 = load %struct.pthread*, %struct.pthread** %10, align 8
  %321 = load %struct.pthread*, %struct.pthread** %11, align 8
  %322 = call i32 @THR_THREAD_LOCK(%struct.pthread* %320, %struct.pthread* %321)
  br label %323

323:                                              ; preds = %319, %316
  %324 = load i32, i32* @PS_DEAD, align 4
  %325 = load %struct.pthread*, %struct.pthread** %11, align 8
  %326 = getelementptr inbounds %struct.pthread, %struct.pthread* %325, i32 0, i32 7
  store i32 %324, i32* %326, align 8
  %327 = load i8*, i8** @TID_TERMINATED, align 8
  %328 = load %struct.pthread*, %struct.pthread** %11, align 8
  %329 = getelementptr inbounds %struct.pthread, %struct.pthread* %328, i32 0, i32 6
  store i8* %327, i8** %329, align 8
  %330 = load i32, i32* @THR_FLAGS_DETACHED, align 4
  %331 = load %struct.pthread*, %struct.pthread** %11, align 8
  %332 = getelementptr inbounds %struct.pthread, %struct.pthread* %331, i32 0, i32 2
  %333 = load i32, i32* %332, align 4
  %334 = or i32 %333, %330
  store i32 %334, i32* %332, align 4
  %335 = load %struct.pthread*, %struct.pthread** %11, align 8
  %336 = getelementptr inbounds %struct.pthread, %struct.pthread* %335, i32 0, i32 3
  %337 = load i32, i32* %336, align 8
  %338 = add nsw i32 %337, -1
  store i32 %338, i32* %336, align 8
  %339 = load %struct.pthread*, %struct.pthread** %11, align 8
  %340 = getelementptr inbounds %struct.pthread, %struct.pthread* %339, i32 0, i32 2
  %341 = load i32, i32* %340, align 4
  %342 = load i32, i32* @THR_FLAGS_NEED_SUSPEND, align 4
  %343 = and i32 %341, %342
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %345, label %354

345:                                              ; preds = %323
  %346 = load %struct.pthread*, %struct.pthread** %11, align 8
  %347 = getelementptr inbounds %struct.pthread, %struct.pthread* %346, i32 0, i32 5
  %348 = load i32, i32* %347, align 8
  %349 = add nsw i32 %348, 1
  store i32 %349, i32* %347, align 8
  %350 = load %struct.pthread*, %struct.pthread** %11, align 8
  %351 = getelementptr inbounds %struct.pthread, %struct.pthread* %350, i32 0, i32 5
  %352 = load i32, i32* @INT_MAX, align 4
  %353 = call i32 @_thr_umtx_wake(i32* %351, i32 %352, i32 0)
  br label %354

354:                                              ; preds = %345, %323
  %355 = load %struct.pthread*, %struct.pthread** %10, align 8
  %356 = load %struct.pthread*, %struct.pthread** %11, align 8
  %357 = call i32 @_thr_try_gc(%struct.pthread* %355, %struct.pthread* %356)
  %358 = call i32 @atomic_add_int(i32* @_thread_active_threads, i32 -1)
  br label %395

359:                                              ; preds = %313
  %360 = load i32, i32* %21, align 4
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %362, label %394

362:                                              ; preds = %359
  %363 = load i32*, i32** %17, align 8
  %364 = icmp ne i32* %363, null
  br i1 %364, label %365, label %387

365:                                              ; preds = %362
  %366 = load i32, i32* @CPU_LEVEL_WHICH, align 4
  %367 = load i32, i32* @CPU_WHICH_TID, align 4
  %368 = load %struct.pthread*, %struct.pthread** %11, align 8
  %369 = call i32 @TID(%struct.pthread* %368)
  %370 = load i32, i32* %19, align 4
  %371 = load i32*, i32** %17, align 8
  %372 = call i64 @cpuset_setaffinity(i32 %366, i32 %367, i32 %369, i32 %370, i32* %371)
  %373 = icmp ne i64 %372, 0
  br i1 %373, label %374, label %386

374:                                              ; preds = %365
  %375 = load i32, i32* @errno, align 4
  store i32 %375, i32* %23, align 4
  %376 = load %struct.pthread*, %struct.pthread** %11, align 8
  %377 = getelementptr inbounds %struct.pthread, %struct.pthread* %376, i32 0, i32 4
  store i32 1, i32* %377, align 4
  %378 = load i32, i32* @THR_FLAGS_DETACHED, align 4
  %379 = load %struct.pthread*, %struct.pthread** %11, align 8
  %380 = getelementptr inbounds %struct.pthread, %struct.pthread* %379, i32 0, i32 2
  %381 = load i32, i32* %380, align 4
  %382 = or i32 %381, %378
  store i32 %382, i32* %380, align 4
  %383 = load %struct.pthread*, %struct.pthread** %10, align 8
  %384 = load %struct.pthread*, %struct.pthread** %11, align 8
  %385 = call i32 @_thr_try_gc(%struct.pthread* %383, %struct.pthread* %384)
  br label %396

386:                                              ; preds = %365
  br label %387

387:                                              ; preds = %386, %362
  %388 = load %struct.pthread*, %struct.pthread** %10, align 8
  %389 = load %struct.pthread*, %struct.pthread** %11, align 8
  %390 = call i32 @_thr_report_creation(%struct.pthread* %388, %struct.pthread* %389)
  %391 = load %struct.pthread*, %struct.pthread** %10, align 8
  %392 = load %struct.pthread*, %struct.pthread** %11, align 8
  %393 = call i32 @THR_THREAD_UNLOCK(%struct.pthread* %391, %struct.pthread* %392)
  br label %394

394:                                              ; preds = %387, %359
  br label %395

395:                                              ; preds = %394, %354
  br label %396

396:                                              ; preds = %395, %374
  %397 = load i32, i32* %23, align 4
  %398 = icmp ne i32 %397, 0
  br i1 %398, label %399, label %401

399:                                              ; preds = %396
  %400 = load %struct.pthread**, %struct.pthread*** %6, align 8
  store %struct.pthread* null, %struct.pthread** %400, align 8
  br label %401

401:                                              ; preds = %399, %396
  %402 = load i32, i32* %23, align 4
  store i32 %402, i32* %5, align 4
  br label %403

403:                                              ; preds = %401, %124, %35
  %404 = load i32, i32* %5, align 4
  ret i32 %404
}

declare dso_local i32 @_thr_check_init(...) #1

declare dso_local i64 @_thr_isthreaded(...) #1

declare dso_local i32 @_malloc_first_thread(...) #1

declare dso_local i32 @_thr_setthreaded(i32) #1

declare dso_local %struct.pthread* @_get_curthread(...) #1

declare dso_local %struct.pthread* @_thr_alloc(%struct.pthread*) #1

declare dso_local i32 @memset(%struct.thr_param*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @_rtld_get_stack_prot(...) #1

declare dso_local i64 @create_stack(%struct.TYPE_5__*) #1

declare dso_local i32 @_thr_free(%struct.pthread*, %struct.pthread*) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @_thr_link(%struct.pthread*, %struct.pthread*) #1

declare dso_local i32 @_thr_stack_fix_protection(%struct.pthread*) #1

declare dso_local i64 @SHOULD_REPORT_EVENT(%struct.pthread*, i32) #1

declare dso_local i32 @THR_THREAD_LOCK(%struct.pthread*, %struct.pthread*) #1

declare dso_local i32 @_schedparam_to_rtp(i32, %struct.sched_param*, %struct.rtprio*) #1

declare dso_local i32 @SIGFILLSET(i32) #1

declare dso_local i32 @SIGDELSET(i32, i32) #1

declare dso_local i32 @__sys_sigprocmask(i32, i32*, i32*) #1

declare dso_local i32 @thr_new(%struct.thr_param*, i32) #1

declare dso_local i32 @_thr_umtx_wake(i32*, i32, i32) #1

declare dso_local i32 @_thr_try_gc(%struct.pthread*, %struct.pthread*) #1

declare dso_local i32 @atomic_add_int(i32*, i32) #1

declare dso_local i64 @cpuset_setaffinity(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @TID(%struct.pthread*) #1

declare dso_local i32 @_thr_report_creation(%struct.pthread*, %struct.pthread*) #1

declare dso_local i32 @THR_THREAD_UNLOCK(%struct.pthread*, %struct.pthread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
