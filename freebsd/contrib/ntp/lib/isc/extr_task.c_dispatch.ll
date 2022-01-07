; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_task.c_dispatch.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_task.c_dispatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i32, i8*, i32, i32, i32, i32, i64, i32, i64 }
%struct.TYPE_22__ = type { i64, i64, i32, i32, i32, i32, i32 }
%struct.TYPE_20__ = type { i32 (i32*, %struct.TYPE_20__*)* }

@DEFAULT_TASKMGR_QUANTUM = common dso_local global i32 0, align 4
@isc_msgcat = common dso_local global i32 0, align 4
@ISC_MSGSET_TASK = common dso_local global i32 0, align 4
@ISC_MSG_WORKING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"working\00", align 1
@ISC_FALSE = common dso_local global i64 0, align 8
@task_state_ready = common dso_local global i64 0, align 8
@task_state_running = common dso_local global i64 0, align 8
@ISC_MSGSET_GENERAL = common dso_local global i32 0, align 4
@ISC_MSG_RUNNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"running\00", align 1
@ev_link = common dso_local global i32 0, align 4
@ISC_MSG_EXECUTE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"execute action\00", align 1
@ISC_MSG_EMPTY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"empty\00", align 1
@ISC_MSG_DONE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"done\00", align 1
@ISC_TRUE = common dso_local global i64 0, align 8
@task_state_done = common dso_local global i64 0, align 8
@task_state_idle = common dso_local global i64 0, align 8
@ISC_MSG_QUANTUM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"quantum\00", align 1
@ready_link = common dso_local global i32 0, align 4
@TASK_F_PRIVILEGED = common dso_local global i32 0, align 4
@ready_priority_link = common dso_local global i32 0, align 4
@isc_taskmgrmode_normal = common dso_local global i8* null, align 8
@ISC_MSG_AWAKE = common dso_local global i32 0, align 4
@ISC_MSG_WAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_21__*)* @dispatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dispatch(%struct.TYPE_21__* %0) #0 {
  %2 = alloca %struct.TYPE_21__*, align 8
  %3 = alloca %struct.TYPE_22__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_20__*, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %2, align 8
  store i32 0, i32* %4, align 4
  %13 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %14 = call i32 @VALID_MANAGER(%struct.TYPE_21__* %13)
  %15 = call i32 @REQUIRE(i32 %14)
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @ISC_LIST_INIT(i32 %16)
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @ISC_LIST_INIT(i32 %18)
  %20 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %20, i32 0, i32 1
  %22 = call i32 @LOCK(i32* %21)
  br label %23

23:                                               ; preds = %246, %1
  %24 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %25 = call i32 @FINISHED(%struct.TYPE_21__* %24)
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  br i1 %27, label %28, label %247

28:                                               ; preds = %23
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @DEFAULT_TASKMGR_QUANTUM, align 4
  %31 = icmp uge i32 %29, %30
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %34 = call i64 @empty_readyq(%struct.TYPE_21__* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32, %28
  br label %247

37:                                               ; preds = %32
  %38 = load i32, i32* @isc_msgcat, align 4
  %39 = load i32, i32* @ISC_MSGSET_TASK, align 4
  %40 = load i32, i32* @ISC_MSG_WORKING, align 4
  %41 = call i32 @isc_msgcat_get(i32 %38, i32 %39, i32 %40, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %42 = call i32 @XTHREADTRACE(i32 %41)
  %43 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %44 = call %struct.TYPE_22__* @pop_readyq(%struct.TYPE_21__* %43)
  store %struct.TYPE_22__* %44, %struct.TYPE_22__** %3, align 8
  %45 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %46 = icmp ne %struct.TYPE_22__* %45, null
  br i1 %46, label %47, label %246

47:                                               ; preds = %37
  store i32 0, i32* %7, align 4
  %48 = load i64, i64* @ISC_FALSE, align 8
  store i64 %48, i64* %8, align 8
  %49 = load i64, i64* @ISC_FALSE, align 8
  store i64 %49, i64* %9, align 8
  %50 = load i64, i64* @ISC_FALSE, align 8
  store i64 %50, i64* %10, align 8
  %51 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %52 = call i32 @VALID_TASK(%struct.TYPE_22__* %51)
  %53 = call i32 @INSIST(i32 %52)
  %54 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %55, align 8
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %58, i32 0, i32 1
  %60 = call i32 @UNLOCK(i32* %59)
  %61 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %61, i32 0, i32 4
  %63 = call i32 @LOCK(i32* %62)
  %64 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @task_state_ready, align 8
  %68 = icmp eq i64 %66, %67
  %69 = zext i1 %68 to i32
  %70 = call i32 @INSIST(i32 %69)
  %71 = load i64, i64* @task_state_running, align 8
  %72 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %72, i32 0, i32 0
  store i64 %71, i64* %73, align 8
  %74 = load i32, i32* @isc_msgcat, align 4
  %75 = load i32, i32* @ISC_MSGSET_GENERAL, align 4
  %76 = load i32, i32* @ISC_MSG_RUNNING, align 4
  %77 = call i32 @isc_msgcat_get(i32 %74, i32 %75, i32 %76, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %78 = call i32 @XTRACE(i32 %77)
  %79 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %79, i32 0, i32 6
  %81 = call i32 @isc_stdtime_get(i32* %80)
  br label %82

82:                                               ; preds = %205, %47
  %83 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %83, i32 0, i32 5
  %85 = load i32, i32* %84, align 4
  %86 = call i64 @EMPTY(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %127, label %88

88:                                               ; preds = %82
  %89 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %89, i32 0, i32 5
  %91 = load i32, i32* %90, align 4
  %92 = call %struct.TYPE_20__* @HEAD(i32 %91)
  store %struct.TYPE_20__* %92, %struct.TYPE_20__** %11, align 8
  %93 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %97 = load i32, i32* @ev_link, align 4
  %98 = call i32 @DEQUEUE(i32 %95, %struct.TYPE_20__* %96, i32 %97)
  %99 = load i32, i32* @isc_msgcat, align 4
  %100 = load i32, i32* @ISC_MSGSET_TASK, align 4
  %101 = load i32, i32* @ISC_MSG_EXECUTE, align 4
  %102 = call i32 @isc_msgcat_get(i32 %99, i32 %100, i32 %101, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %103 = call i32 @XTRACE(i32 %102)
  %104 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %105 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %104, i32 0, i32 0
  %106 = load i32 (i32*, %struct.TYPE_20__*)*, i32 (i32*, %struct.TYPE_20__*)** %105, align 8
  %107 = icmp ne i32 (i32*, %struct.TYPE_20__*)* %106, null
  br i1 %107, label %108, label %122

108:                                              ; preds = %88
  %109 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %109, i32 0, i32 4
  %111 = call i32 @UNLOCK(i32* %110)
  %112 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %113 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %112, i32 0, i32 0
  %114 = load i32 (i32*, %struct.TYPE_20__*)*, i32 (i32*, %struct.TYPE_20__*)** %113, align 8
  %115 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %116 = bitcast %struct.TYPE_22__* %115 to i32*
  %117 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %118 = call i32 %114(i32* %116, %struct.TYPE_20__* %117)
  %119 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %119, i32 0, i32 4
  %121 = call i32 @LOCK(i32* %120)
  br label %122

122:                                              ; preds = %108, %88
  %123 = load i32, i32* %7, align 4
  %124 = add i32 %123, 1
  store i32 %124, i32* %7, align 4
  %125 = load i32, i32* %4, align 4
  %126 = add i32 %125, 1
  store i32 %126, i32* %4, align 4
  br label %127

127:                                              ; preds = %122, %82
  %128 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = icmp eq i64 %130, 0
  br i1 %131, label %132, label %150

132:                                              ; preds = %127
  %133 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %133, i32 0, i32 5
  %135 = load i32, i32* %134, align 4
  %136 = call i64 @EMPTY(i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %150

138:                                              ; preds = %132
  %139 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %140 = call i64 @TASK_SHUTTINGDOWN(%struct.TYPE_22__* %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %150, label %142

142:                                              ; preds = %138
  %143 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %144 = call i64 @task_shutdown(%struct.TYPE_22__* %143)
  store i64 %144, i64* %12, align 8
  %145 = load i64, i64* %12, align 8
  %146 = icmp ne i64 %145, 0
  %147 = xor i1 %146, true
  %148 = zext i1 %147 to i32
  %149 = call i32 @INSIST(i32 %148)
  br label %150

150:                                              ; preds = %142, %138, %132, %127
  %151 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %151, i32 0, i32 5
  %153 = load i32, i32* %152, align 4
  %154 = call i64 @EMPTY(i32 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %186

156:                                              ; preds = %150
  %157 = load i32, i32* @isc_msgcat, align 4
  %158 = load i32, i32* @ISC_MSGSET_TASK, align 4
  %159 = load i32, i32* @ISC_MSG_EMPTY, align 4
  %160 = call i32 @isc_msgcat_get(i32 %157, i32 %158, i32 %159, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %161 = call i32 @XTRACE(i32 %160)
  %162 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = icmp eq i64 %164, 0
  br i1 %165, label %166, label %180

166:                                              ; preds = %156
  %167 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %168 = call i64 @TASK_SHUTTINGDOWN(%struct.TYPE_22__* %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %180

170:                                              ; preds = %166
  %171 = load i32, i32* @isc_msgcat, align 4
  %172 = load i32, i32* @ISC_MSGSET_TASK, align 4
  %173 = load i32, i32* @ISC_MSG_DONE, align 4
  %174 = call i32 @isc_msgcat_get(i32 %171, i32 %172, i32 %173, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %175 = call i32 @XTRACE(i32 %174)
  %176 = load i64, i64* @ISC_TRUE, align 8
  store i64 %176, i64* %10, align 8
  %177 = load i64, i64* @task_state_done, align 8
  %178 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %178, i32 0, i32 0
  store i64 %177, i64* %179, align 8
  br label %184

180:                                              ; preds = %166, %156
  %181 = load i64, i64* @task_state_idle, align 8
  %182 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %183 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %182, i32 0, i32 0
  store i64 %181, i64* %183, align 8
  br label %184

184:                                              ; preds = %180, %170
  %185 = load i64, i64* @ISC_TRUE, align 8
  store i64 %185, i64* %8, align 8
  br label %204

186:                                              ; preds = %150
  %187 = load i32, i32* %7, align 4
  %188 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %189 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 8
  %191 = icmp uge i32 %187, %190
  br i1 %191, label %192, label %203

192:                                              ; preds = %186
  %193 = load i32, i32* @isc_msgcat, align 4
  %194 = load i32, i32* @ISC_MSGSET_TASK, align 4
  %195 = load i32, i32* @ISC_MSG_QUANTUM, align 4
  %196 = call i32 @isc_msgcat_get(i32 %193, i32 %194, i32 %195, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %197 = call i32 @XTRACE(i32 %196)
  %198 = load i64, i64* @task_state_ready, align 8
  %199 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %200 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %199, i32 0, i32 0
  store i64 %198, i64* %200, align 8
  %201 = load i64, i64* @ISC_TRUE, align 8
  store i64 %201, i64* %9, align 8
  %202 = load i64, i64* @ISC_TRUE, align 8
  store i64 %202, i64* %8, align 8
  br label %203

203:                                              ; preds = %192, %186
  br label %204

204:                                              ; preds = %203, %184
  br label %205

205:                                              ; preds = %204
  %206 = load i64, i64* %8, align 8
  %207 = icmp ne i64 %206, 0
  %208 = xor i1 %207, true
  br i1 %208, label %82, label %209

209:                                              ; preds = %205
  %210 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %211 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %210, i32 0, i32 4
  %212 = call i32 @UNLOCK(i32* %211)
  %213 = load i64, i64* %10, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %218

215:                                              ; preds = %209
  %216 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %217 = call i32 @task_finished(%struct.TYPE_22__* %216)
  br label %218

218:                                              ; preds = %215, %209
  %219 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %220 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %219, i32 0, i32 1
  %221 = call i32 @LOCK(i32* %220)
  %222 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %223 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = add nsw i32 %224, -1
  store i32 %225, i32* %223, align 8
  %226 = load i64, i64* %9, align 8
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %245

228:                                              ; preds = %218
  %229 = load i32, i32* %5, align 4
  %230 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %231 = load i32, i32* @ready_link, align 4
  %232 = call i32 @ENQUEUE(i32 %229, %struct.TYPE_22__* %230, i32 %231)
  %233 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %234 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %233, i32 0, i32 3
  %235 = load i32, i32* %234, align 4
  %236 = load i32, i32* @TASK_F_PRIVILEGED, align 4
  %237 = and i32 %235, %236
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %244

239:                                              ; preds = %228
  %240 = load i32, i32* %6, align 4
  %241 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %242 = load i32, i32* @ready_priority_link, align 4
  %243 = call i32 @ENQUEUE(i32 %240, %struct.TYPE_22__* %241, i32 %242)
  br label %244

244:                                              ; preds = %239, %228
  br label %245

245:                                              ; preds = %244, %218
  br label %246

246:                                              ; preds = %245, %37
  br label %23

247:                                              ; preds = %36, %23
  %248 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %249 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %248, i32 0, i32 4
  %250 = load i32, i32* %249, align 4
  %251 = load i32, i32* %5, align 4
  %252 = load i32, i32* @ready_link, align 4
  %253 = call i32 @ISC_LIST_APPENDLIST(i32 %250, i32 %251, i32 %252)
  %254 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %255 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %254, i32 0, i32 3
  %256 = load i32, i32* %255, align 8
  %257 = load i32, i32* %6, align 4
  %258 = load i32, i32* @ready_priority_link, align 4
  %259 = call i32 @ISC_LIST_APPENDLIST(i32 %256, i32 %257, i32 %258)
  %260 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %261 = call i64 @empty_readyq(%struct.TYPE_21__* %260)
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %263, label %267

263:                                              ; preds = %247
  %264 = load i8*, i8** @isc_taskmgrmode_normal, align 8
  %265 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %266 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %265, i32 0, i32 2
  store i8* %264, i8** %266, align 8
  br label %267

267:                                              ; preds = %263, %247
  %268 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %269 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %268, i32 0, i32 1
  %270 = call i32 @UNLOCK(i32* %269)
  ret void
}

declare dso_local i32 @REQUIRE(i32) #1

declare dso_local i32 @VALID_MANAGER(%struct.TYPE_21__*) #1

declare dso_local i32 @ISC_LIST_INIT(i32) #1

declare dso_local i32 @LOCK(i32*) #1

declare dso_local i32 @FINISHED(%struct.TYPE_21__*) #1

declare dso_local i64 @empty_readyq(%struct.TYPE_21__*) #1

declare dso_local i32 @XTHREADTRACE(i32) #1

declare dso_local i32 @isc_msgcat_get(i32, i32, i32, i8*) #1

declare dso_local %struct.TYPE_22__* @pop_readyq(%struct.TYPE_21__*) #1

declare dso_local i32 @INSIST(i32) #1

declare dso_local i32 @VALID_TASK(%struct.TYPE_22__*) #1

declare dso_local i32 @UNLOCK(i32*) #1

declare dso_local i32 @XTRACE(i32) #1

declare dso_local i32 @isc_stdtime_get(i32*) #1

declare dso_local i64 @EMPTY(i32) #1

declare dso_local %struct.TYPE_20__* @HEAD(i32) #1

declare dso_local i32 @DEQUEUE(i32, %struct.TYPE_20__*, i32) #1

declare dso_local i64 @TASK_SHUTTINGDOWN(%struct.TYPE_22__*) #1

declare dso_local i64 @task_shutdown(%struct.TYPE_22__*) #1

declare dso_local i32 @task_finished(%struct.TYPE_22__*) #1

declare dso_local i32 @ENQUEUE(i32, %struct.TYPE_22__*, i32) #1

declare dso_local i32 @ISC_LIST_APPENDLIST(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
