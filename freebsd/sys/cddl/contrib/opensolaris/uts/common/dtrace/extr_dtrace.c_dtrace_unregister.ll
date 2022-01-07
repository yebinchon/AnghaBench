; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/dtrace/extr_dtrace.c_dtrace_unregister.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/dtrace/extr_dtrace.c_dtrace_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, %struct.TYPE_14__*, %struct.TYPE_14__*, i64, %struct.TYPE_14__*, %struct.TYPE_14__*, %struct.TYPE_14__*, i32, i32, %struct.TYPE_13__, %struct.TYPE_14__*, %struct.TYPE_14__*, i32* }
%struct.TYPE_13__ = type { void (i8*, i32, i8*)*, i32 (i32, i64, i32)* }
%struct.TYPE_11__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64 }

@dtrace_nullop = common dso_local global i64 0, align 8
@dtrace_provider = common dso_local global %struct.TYPE_14__* null, align 8
@dtrace_provider_lock = common dso_local global i32 0, align 4
@dtrace_lock = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@dtrace_opens = common dso_local global i64 0, align 8
@dtrace_anon = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@dtrace_nprobes = common dso_local global i32 0, align 4
@dtrace_probes = common dso_local global %struct.TYPE_14__** null, align 8
@dtrace_unregister_defunct_reap = common dso_local global i64 0, align 8
@dtrace_taskq = common dso_local global i32 0, align 4
@dtrace_enabling_reap = common dso_local global i64 0, align 8
@TQ_SLEEP = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@dtrace_bymod = common dso_local global i32 0, align 4
@dtrace_byfunc = common dso_local global i32 0, align 4
@dtrace_byname = common dso_local global i32 0, align 4
@dtrace_arena = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"attempt to unregister non-existent dtrace provider %p\0A\00", align 1
@dtrace_devi = common dso_local global i32* null, align 8
@mod_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dtrace_unregister(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  store i64 %0, i64* %3, align 8
  %11 = load i64, i64* %3, align 8
  %12 = inttoptr i64 %11 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %12, %struct.TYPE_14__** %4, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %10, align 8
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 9
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %16 = load void (i8*, i32, i8*)*, void (i8*, i32, i8*)** %15, align 8
  %17 = load i64, i64* @dtrace_nullop, align 8
  %18 = inttoptr i64 %17 to void (i8*, i32, i8*)*
  %19 = icmp eq void (i8*, i32, i8*)* %16, %18
  br i1 %19, label %20, label %37

20:                                               ; preds = %1
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** @dtrace_provider, align 8
  %23 = icmp eq %struct.TYPE_14__* %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @ASSERT(i32 %24)
  %26 = call i32 @MUTEX_HELD(i32* @dtrace_provider_lock)
  %27 = call i32 @ASSERT(i32 %26)
  %28 = call i32 @MUTEX_HELD(i32* @dtrace_lock)
  %29 = call i32 @ASSERT(i32 %28)
  store i32 1, i32* %7, align 4
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** @dtrace_provider, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %31, align 8
  %33 = icmp ne %struct.TYPE_14__* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %20
  %35 = load i32, i32* @EBUSY, align 4
  store i32 %35, i32* %2, align 4
  br label %284

36:                                               ; preds = %20
  br label %40

37:                                               ; preds = %1
  %38 = call i32 @mutex_enter(i32* @dtrace_provider_lock)
  %39 = call i32 @mutex_enter(i32* @dtrace_lock)
  br label %40

40:                                               ; preds = %37, %36
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %64, label %45

45:                                               ; preds = %40
  %46 = load i64, i64* @dtrace_opens, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %56, label %48

48:                                               ; preds = %45
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @dtrace_anon, i32 0, i32 0), align 8
  %50 = icmp ne %struct.TYPE_12__* %49, null
  br i1 %50, label %51, label %64

51:                                               ; preds = %48
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @dtrace_anon, i32 0, i32 0), align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp sgt i64 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %51, %45
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %56
  %60 = call i32 @mutex_exit(i32* @dtrace_lock)
  %61 = call i32 @mutex_exit(i32* @dtrace_provider_lock)
  br label %62

62:                                               ; preds = %59, %56
  %63 = load i32, i32* @EBUSY, align 4
  store i32 %63, i32* %2, align 4
  br label %284

64:                                               ; preds = %51, %48, %40
  store i32 0, i32* %6, align 4
  br label %65

65:                                               ; preds = %117, %64
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* @dtrace_nprobes, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %120

69:                                               ; preds = %65
  %70 = load %struct.TYPE_14__**, %struct.TYPE_14__*** @dtrace_probes, align 8
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %70, i64 %72
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %73, align 8
  store %struct.TYPE_14__* %74, %struct.TYPE_14__** %9, align 8
  %75 = icmp eq %struct.TYPE_14__* %74, null
  br i1 %75, label %76, label %77

76:                                               ; preds = %69
  br label %117

77:                                               ; preds = %69
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 11
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %79, align 8
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %82 = icmp ne %struct.TYPE_14__* %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %77
  br label %117

84:                                               ; preds = %77
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 12
  %87 = load i32*, i32** %86, align 8
  %88 = icmp eq i32* %87, null
  br i1 %88, label %89, label %90

89:                                               ; preds = %84
  br label %117

90:                                               ; preds = %84
  %91 = call i64 (...) @dtrace_gethrtime()
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = sub nsw i64 %91, %94
  %96 = load i64, i64* @dtrace_unregister_defunct_reap, align 8
  %97 = icmp sgt i64 %95, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %90
  store i32 1, i32* %8, align 4
  br label %99

99:                                               ; preds = %98, %90
  %100 = load i32, i32* %7, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %105, label %102

102:                                              ; preds = %99
  %103 = call i32 @mutex_exit(i32* @dtrace_lock)
  %104 = call i32 @mutex_exit(i32* @dtrace_provider_lock)
  br label %105

105:                                              ; preds = %102, %99
  %106 = load i32, i32* %8, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %105
  %109 = load i32, i32* @EBUSY, align 4
  store i32 %109, i32* %2, align 4
  br label %284

110:                                              ; preds = %105
  %111 = load i32, i32* @dtrace_taskq, align 4
  %112 = load i64, i64* @dtrace_enabling_reap, align 8
  %113 = inttoptr i64 %112 to i32*
  %114 = load i32, i32* @TQ_SLEEP, align 4
  %115 = call i32 @taskq_dispatch(i32 %111, i32* %113, i32* null, i32 %114)
  %116 = load i32, i32* @EAGAIN, align 4
  store i32 %116, i32* %2, align 4
  br label %284

117:                                              ; preds = %89, %83, %76
  %118 = load i32, i32* %6, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %6, align 4
  br label %65

120:                                              ; preds = %65
  store i32 0, i32* %6, align 4
  br label %121

121:                                              ; preds = %166, %120
  %122 = load i32, i32* %6, align 4
  %123 = load i32, i32* @dtrace_nprobes, align 4
  %124 = icmp slt i32 %122, %123
  br i1 %124, label %125, label %169

125:                                              ; preds = %121
  %126 = load %struct.TYPE_14__**, %struct.TYPE_14__*** @dtrace_probes, align 8
  %127 = load i32, i32* %6, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %126, i64 %128
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %129, align 8
  store %struct.TYPE_14__* %130, %struct.TYPE_14__** %9, align 8
  %131 = icmp eq %struct.TYPE_14__* %130, null
  br i1 %131, label %132, label %133

132:                                              ; preds = %125
  br label %166

133:                                              ; preds = %125
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 11
  %136 = load %struct.TYPE_14__*, %struct.TYPE_14__** %135, align 8
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %138 = icmp ne %struct.TYPE_14__* %136, %137
  br i1 %138, label %139, label %140

139:                                              ; preds = %133
  br label %166

140:                                              ; preds = %133
  %141 = load %struct.TYPE_14__**, %struct.TYPE_14__*** @dtrace_probes, align 8
  %142 = load i32, i32* %6, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %141, i64 %143
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %144, align 8
  %145 = load i32, i32* @dtrace_bymod, align 4
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %147 = call i32 @dtrace_hash_remove(i32 %145, %struct.TYPE_14__* %146)
  %148 = load i32, i32* @dtrace_byfunc, align 4
  %149 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %150 = call i32 @dtrace_hash_remove(i32 %148, %struct.TYPE_14__* %149)
  %151 = load i32, i32* @dtrace_byname, align 4
  %152 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %153 = call i32 @dtrace_hash_remove(i32 %151, %struct.TYPE_14__* %152)
  %154 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %155 = icmp eq %struct.TYPE_14__* %154, null
  br i1 %155, label %156, label %160

156:                                              ; preds = %140
  %157 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  store %struct.TYPE_14__* %157, %struct.TYPE_14__** %10, align 8
  %158 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 10
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %159, align 8
  br label %165

160:                                              ; preds = %140
  %161 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %162 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %163 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %162, i32 0, i32 10
  store %struct.TYPE_14__* %161, %struct.TYPE_14__** %163, align 8
  %164 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  store %struct.TYPE_14__* %164, %struct.TYPE_14__** %10, align 8
  br label %165

165:                                              ; preds = %160, %156
  br label %166

166:                                              ; preds = %165, %139, %132
  %167 = load i32, i32* %6, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %6, align 4
  br label %121

169:                                              ; preds = %121
  %170 = call i32 (...) @dtrace_sync()
  %171 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  store %struct.TYPE_14__* %171, %struct.TYPE_14__** %9, align 8
  br label %172

172:                                              ; preds = %227, %169
  %173 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %174 = icmp ne %struct.TYPE_14__* %173, null
  br i1 %174, label %175, label %229

175:                                              ; preds = %172
  %176 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %177 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %176, i32 0, i32 10
  %178 = load %struct.TYPE_14__*, %struct.TYPE_14__** %177, align 8
  store %struct.TYPE_14__* %178, %struct.TYPE_14__** %10, align 8
  %179 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %179, i32 0, i32 9
  %181 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %180, i32 0, i32 1
  %182 = load i32 (i32, i64, i32)*, i32 (i32, i64, i32)** %181, align 8
  %183 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %183, i32 0, i32 8
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %187 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %186, i32 0, i32 3
  %188 = load i64, i64* %187, align 8
  %189 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %190 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %189, i32 0, i32 7
  %191 = load i32, i32* %190, align 8
  %192 = call i32 %182(i32 %185, i64 %188, i32 %191)
  %193 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %194 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %193, i32 0, i32 6
  %195 = load %struct.TYPE_14__*, %struct.TYPE_14__** %194, align 8
  %196 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %197 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %196, i32 0, i32 6
  %198 = load %struct.TYPE_14__*, %struct.TYPE_14__** %197, align 8
  %199 = call i32 @strlen(%struct.TYPE_14__* %198)
  %200 = add nsw i32 %199, 1
  %201 = call i32 @kmem_free(%struct.TYPE_14__* %195, i32 %200)
  %202 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %203 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %202, i32 0, i32 5
  %204 = load %struct.TYPE_14__*, %struct.TYPE_14__** %203, align 8
  %205 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %206 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %205, i32 0, i32 5
  %207 = load %struct.TYPE_14__*, %struct.TYPE_14__** %206, align 8
  %208 = call i32 @strlen(%struct.TYPE_14__* %207)
  %209 = add nsw i32 %208, 1
  %210 = call i32 @kmem_free(%struct.TYPE_14__* %204, i32 %209)
  %211 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %212 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %211, i32 0, i32 4
  %213 = load %struct.TYPE_14__*, %struct.TYPE_14__** %212, align 8
  %214 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %215 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %214, i32 0, i32 4
  %216 = load %struct.TYPE_14__*, %struct.TYPE_14__** %215, align 8
  %217 = call i32 @strlen(%struct.TYPE_14__* %216)
  %218 = add nsw i32 %217, 1
  %219 = call i32 @kmem_free(%struct.TYPE_14__* %213, i32 %218)
  %220 = load i32, i32* @dtrace_arena, align 4
  %221 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %222 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %221, i32 0, i32 3
  %223 = load i64, i64* %222, align 8
  %224 = call i32 @free_unr(i32 %220, i64 %223)
  %225 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %226 = call i32 @kmem_free(%struct.TYPE_14__* %225, i32 104)
  br label %227

227:                                              ; preds = %175
  %228 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  store %struct.TYPE_14__* %228, %struct.TYPE_14__** %9, align 8
  br label %172

229:                                              ; preds = %172
  %230 = load %struct.TYPE_14__*, %struct.TYPE_14__** @dtrace_provider, align 8
  store %struct.TYPE_14__* %230, %struct.TYPE_14__** %5, align 8
  %231 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %232 = icmp eq %struct.TYPE_14__* %230, %231
  br i1 %232, label %233, label %237

233:                                              ; preds = %229
  %234 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %235 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %234, i32 0, i32 2
  %236 = load %struct.TYPE_14__*, %struct.TYPE_14__** %235, align 8
  store %struct.TYPE_14__* %236, %struct.TYPE_14__** @dtrace_provider, align 8
  br label %266

237:                                              ; preds = %229
  br label %238

238:                                              ; preds = %249, %237
  %239 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %240 = icmp ne %struct.TYPE_14__* %239, null
  br i1 %240, label %241, label %247

241:                                              ; preds = %238
  %242 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %243 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %242, i32 0, i32 2
  %244 = load %struct.TYPE_14__*, %struct.TYPE_14__** %243, align 8
  %245 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %246 = icmp ne %struct.TYPE_14__* %244, %245
  br label %247

247:                                              ; preds = %241, %238
  %248 = phi i1 [ false, %238 ], [ %246, %241 ]
  br i1 %248, label %249, label %253

249:                                              ; preds = %247
  %250 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %251 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %250, i32 0, i32 2
  %252 = load %struct.TYPE_14__*, %struct.TYPE_14__** %251, align 8
  store %struct.TYPE_14__* %252, %struct.TYPE_14__** %5, align 8
  br label %238

253:                                              ; preds = %247
  %254 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %255 = icmp eq %struct.TYPE_14__* %254, null
  br i1 %255, label %256, label %260

256:                                              ; preds = %253
  %257 = load i64, i64* %3, align 8
  %258 = inttoptr i64 %257 to i8*
  %259 = call i32 @panic(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i8* %258)
  br label %260

260:                                              ; preds = %256, %253
  %261 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %262 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %261, i32 0, i32 2
  %263 = load %struct.TYPE_14__*, %struct.TYPE_14__** %262, align 8
  %264 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %265 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %264, i32 0, i32 2
  store %struct.TYPE_14__* %263, %struct.TYPE_14__** %265, align 8
  br label %266

266:                                              ; preds = %260, %233
  %267 = load i32, i32* %7, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %272, label %269

269:                                              ; preds = %266
  %270 = call i32 @mutex_exit(i32* @dtrace_lock)
  %271 = call i32 @mutex_exit(i32* @dtrace_provider_lock)
  br label %272

272:                                              ; preds = %269, %266
  %273 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %274 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %273, i32 0, i32 1
  %275 = load %struct.TYPE_14__*, %struct.TYPE_14__** %274, align 8
  %276 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %277 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %276, i32 0, i32 1
  %278 = load %struct.TYPE_14__*, %struct.TYPE_14__** %277, align 8
  %279 = call i32 @strlen(%struct.TYPE_14__* %278)
  %280 = add nsw i32 %279, 1
  %281 = call i32 @kmem_free(%struct.TYPE_14__* %275, i32 %280)
  %282 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %283 = call i32 @kmem_free(%struct.TYPE_14__* %282, i32 104)
  store i32 0, i32* %2, align 4
  br label %284

284:                                              ; preds = %272, %110, %108, %62, %34
  %285 = load i32, i32* %2, align 4
  ret i32 %285
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @MUTEX_HELD(i32*) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i64 @dtrace_gethrtime(...) #1

declare dso_local i32 @taskq_dispatch(i32, i32*, i32*, i32) #1

declare dso_local i32 @dtrace_hash_remove(i32, %struct.TYPE_14__*) #1

declare dso_local i32 @dtrace_sync(...) #1

declare dso_local i32 @kmem_free(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @strlen(%struct.TYPE_14__*) #1

declare dso_local i32 @free_unr(i32, i64) #1

declare dso_local i32 @panic(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
