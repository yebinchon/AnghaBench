; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/powerpc/dtrace/extr_fasttrap_isa.c_fasttrap_pid_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/powerpc/dtrace/extr_fasttrap_isa.c_fasttrap_pid_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64 }
%struct.TYPE_22__ = type { i32, i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_15__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i64, i64, i32, i32, i64, i32*, i32, i32, %struct.TYPE_20__*, %struct.TYPE_16__*, %struct.TYPE_18__* }
%struct.TYPE_20__ = type { i64, %struct.TYPE_19__*, %struct.TYPE_20__* }
%struct.TYPE_19__ = type { i32, i32* }
%struct.TYPE_16__ = type { i64 }
%struct.trapframe = type { i32 }
%struct.reg = type { i64, i64*, i32, i64 }
%struct.rm_priotracker = type { i32 }

@curproc = common dso_local global %struct.TYPE_17__* null, align 8
@curthread = common dso_local global %struct.TYPE_22__* null, align 8
@fasttrap_tp_lock = common dso_local global i32 0, align 4
@fasttrap_tpoints = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@DTFTP_ENTRY = common dso_local global i64 0, align 8
@CPU_DTRACE_ENTRY = common dso_local global i32 0, align 4
@DTFTP_IS_ENABLED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fasttrap_pid_probe(%struct.trapframe* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.trapframe*, align 8
  %4 = alloca %struct.reg, align 8
  %5 = alloca %struct.reg*, align 8
  %6 = alloca %struct.rm_priotracker, align 4
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_21__*, align 8
  %11 = alloca %struct.TYPE_18__*, align 8
  %12 = alloca %struct.TYPE_18__, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_20__*, align 8
  %17 = alloca %struct.TYPE_19__*, align 8
  %18 = alloca [5 x i64], align 16
  store %struct.trapframe* %0, %struct.trapframe** %3, align 8
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** @curproc, align 8
  store %struct.TYPE_17__* %19, %struct.TYPE_17__** %7, align 8
  store i64 0, i64* %9, align 8
  store i32 0, i32* %15, align 4
  %20 = load %struct.TYPE_22__*, %struct.TYPE_22__** @curthread, align 8
  %21 = call i32 @fill_regs(%struct.TYPE_22__* %20, %struct.reg* %4)
  store %struct.reg* %4, %struct.reg** %5, align 8
  %22 = load %struct.reg*, %struct.reg** %5, align 8
  %23 = getelementptr inbounds %struct.reg, %struct.reg* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %8, align 8
  %25 = load %struct.TYPE_22__*, %struct.TYPE_22__** @curthread, align 8
  %26 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %25, i32 0, i32 7
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %1
  %30 = load %struct.TYPE_22__*, %struct.TYPE_22__** @curthread, align 8
  %31 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @ASSERT(i32 %32)
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %35 = load %struct.TYPE_22__*, %struct.TYPE_22__** @curthread, align 8
  %36 = load i64, i64* %8, align 8
  %37 = call i32 @fasttrap_sigtrap(%struct.TYPE_17__* %34, %struct.TYPE_22__* %35, i64 %36)
  store i32 0, i32* %2, align 4
  br label %369

38:                                               ; preds = %1
  %39 = load %struct.TYPE_22__*, %struct.TYPE_22__** @curthread, align 8
  %40 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %39, i32 0, i32 6
  store i64 0, i64* %40, align 8
  %41 = load %struct.TYPE_22__*, %struct.TYPE_22__** @curthread, align 8
  %42 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %41, i32 0, i32 1
  store i64 0, i64* %42, align 8
  %43 = load %struct.TYPE_22__*, %struct.TYPE_22__** @curthread, align 8
  %44 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %43, i32 0, i32 5
  store i64 0, i64* %44, align 8
  %45 = load %struct.TYPE_22__*, %struct.TYPE_22__** @curthread, align 8
  %46 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %45, i32 0, i32 2
  store i64 0, i64* %46, align 8
  %47 = load %struct.TYPE_22__*, %struct.TYPE_22__** @curthread, align 8
  %48 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %47, i32 0, i32 3
  store i64 0, i64* %48, align 8
  %49 = call i32 @rm_rlock(i32* @fasttrap_tp_lock, %struct.rm_priotracker* %6)
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %13, align 8
  %53 = load %struct.TYPE_21__*, %struct.TYPE_21__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @fasttrap_tpoints, i32 0, i32 0), align 8
  %54 = load i64, i64* %13, align 8
  %55 = load i64, i64* %8, align 8
  %56 = call i64 @FASTTRAP_TPOINTS_INDEX(i64 %54, i64 %55)
  %57 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %53, i64 %56
  store %struct.TYPE_21__* %57, %struct.TYPE_21__** %10, align 8
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %59, align 8
  store %struct.TYPE_18__* %60, %struct.TYPE_18__** %11, align 8
  br label %61

61:                                               ; preds = %85, %38
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %63 = icmp ne %struct.TYPE_18__* %62, null
  br i1 %63, label %64, label %89

64:                                               ; preds = %61
  %65 = load i64, i64* %13, align 8
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %65, %68
  br i1 %69, label %70, label %84

70:                                               ; preds = %64
  %71 = load i64, i64* %8, align 8
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp eq i64 %71, %74
  br i1 %75, label %76, label %84

76:                                               ; preds = %70
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 9
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %76
  br label %89

84:                                               ; preds = %76, %70, %64
  br label %85

85:                                               ; preds = %84
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i32 0, i32 10
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %87, align 8
  store %struct.TYPE_18__* %88, %struct.TYPE_18__** %11, align 8
  br label %61

89:                                               ; preds = %83, %61
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %91 = icmp eq %struct.TYPE_18__* %90, null
  br i1 %91, label %92, label %94

92:                                               ; preds = %89
  %93 = call i32 @rm_runlock(i32* @fasttrap_tp_lock, %struct.rm_priotracker* %6)
  store i32 -1, i32* %2, align 4
  br label %369

94:                                               ; preds = %89
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i32 0, i32 8
  %97 = load %struct.TYPE_20__*, %struct.TYPE_20__** %96, align 8
  %98 = icmp ne %struct.TYPE_20__* %97, null
  br i1 %98, label %99, label %221

99:                                               ; preds = %94
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i32 0, i32 8
  %102 = load %struct.TYPE_20__*, %struct.TYPE_20__** %101, align 8
  store %struct.TYPE_20__* %102, %struct.TYPE_20__** %16, align 8
  br label %103

103:                                              ; preds = %216, %99
  %104 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %105 = icmp ne %struct.TYPE_20__* %104, null
  br i1 %105, label %106, label %220

106:                                              ; preds = %103
  %107 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %108 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %107, i32 0, i32 1
  %109 = load %struct.TYPE_19__*, %struct.TYPE_19__** %108, align 8
  store %struct.TYPE_19__* %109, %struct.TYPE_19__** %17, align 8
  %110 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %111 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @DTFTP_ENTRY, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %152

115:                                              ; preds = %106
  %116 = call i32 (...) @dtrace_interrupt_disable()
  store i32 %116, i32* %14, align 4
  %117 = load i32, i32* @CPU_DTRACE_ENTRY, align 4
  %118 = call i32 @DTRACE_CPUFLAG_SET(i32 %117)
  %119 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %120 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.reg*, %struct.reg** %5, align 8
  %123 = getelementptr inbounds %struct.reg, %struct.reg* %122, i32 0, i32 1
  %124 = load i64*, i64** %123, align 8
  %125 = getelementptr inbounds i64, i64* %124, i64 3
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.reg*, %struct.reg** %5, align 8
  %128 = getelementptr inbounds %struct.reg, %struct.reg* %127, i32 0, i32 1
  %129 = load i64*, i64** %128, align 8
  %130 = getelementptr inbounds i64, i64* %129, i64 4
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.reg*, %struct.reg** %5, align 8
  %133 = getelementptr inbounds %struct.reg, %struct.reg* %132, i32 0, i32 1
  %134 = load i64*, i64** %133, align 8
  %135 = getelementptr inbounds i64, i64* %134, i64 5
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.reg*, %struct.reg** %5, align 8
  %138 = getelementptr inbounds %struct.reg, %struct.reg* %137, i32 0, i32 1
  %139 = load i64*, i64** %138, align 8
  %140 = getelementptr inbounds i64, i64* %139, i64 6
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.reg*, %struct.reg** %5, align 8
  %143 = getelementptr inbounds %struct.reg, %struct.reg* %142, i32 0, i32 1
  %144 = load i64*, i64** %143, align 8
  %145 = getelementptr inbounds i64, i64* %144, i64 7
  %146 = load i64, i64* %145, align 8
  %147 = call i32 @dtrace_probe(i32 %121, i64 %126, i64 %131, i64 %136, i64 %141, i64 %146)
  %148 = load i32, i32* @CPU_DTRACE_ENTRY, align 4
  %149 = call i32 @DTRACE_CPUFLAG_CLEAR(i32 %148)
  %150 = load i32, i32* %14, align 4
  %151 = call i32 @dtrace_interrupt_enable(i32 %150)
  br label %215

152:                                              ; preds = %106
  %153 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %154 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @DTFTP_IS_ENABLED, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %158, label %159

158:                                              ; preds = %152
  store i32 1, i32* %15, align 4
  br label %214

159:                                              ; preds = %152
  %160 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %161 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %160, i32 0, i32 1
  %162 = load i32*, i32** %161, align 8
  %163 = icmp eq i32* %162, null
  br i1 %163, label %164, label %194

164:                                              ; preds = %159
  %165 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %166 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.reg*, %struct.reg** %5, align 8
  %169 = getelementptr inbounds %struct.reg, %struct.reg* %168, i32 0, i32 1
  %170 = load i64*, i64** %169, align 8
  %171 = getelementptr inbounds i64, i64* %170, i64 3
  %172 = load i64, i64* %171, align 8
  %173 = load %struct.reg*, %struct.reg** %5, align 8
  %174 = getelementptr inbounds %struct.reg, %struct.reg* %173, i32 0, i32 1
  %175 = load i64*, i64** %174, align 8
  %176 = getelementptr inbounds i64, i64* %175, i64 4
  %177 = load i64, i64* %176, align 8
  %178 = load %struct.reg*, %struct.reg** %5, align 8
  %179 = getelementptr inbounds %struct.reg, %struct.reg* %178, i32 0, i32 1
  %180 = load i64*, i64** %179, align 8
  %181 = getelementptr inbounds i64, i64* %180, i64 5
  %182 = load i64, i64* %181, align 8
  %183 = load %struct.reg*, %struct.reg** %5, align 8
  %184 = getelementptr inbounds %struct.reg, %struct.reg* %183, i32 0, i32 1
  %185 = load i64*, i64** %184, align 8
  %186 = getelementptr inbounds i64, i64* %185, i64 6
  %187 = load i64, i64* %186, align 8
  %188 = load %struct.reg*, %struct.reg** %5, align 8
  %189 = getelementptr inbounds %struct.reg, %struct.reg* %188, i32 0, i32 1
  %190 = load i64*, i64** %189, align 8
  %191 = getelementptr inbounds i64, i64* %190, i64 7
  %192 = load i64, i64* %191, align 8
  %193 = call i32 @dtrace_probe(i32 %167, i64 %172, i64 %177, i64 %182, i64 %187, i64 %192)
  br label %213

194:                                              ; preds = %159
  %195 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %196 = load %struct.reg*, %struct.reg** %5, align 8
  %197 = getelementptr inbounds [5 x i64], [5 x i64]* %18, i64 0, i64 0
  %198 = call i32 @fasttrap_usdt_args(%struct.TYPE_19__* %195, %struct.reg* %196, i32 5, i64* %197)
  %199 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %200 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = getelementptr inbounds [5 x i64], [5 x i64]* %18, i64 0, i64 0
  %203 = load i64, i64* %202, align 16
  %204 = getelementptr inbounds [5 x i64], [5 x i64]* %18, i64 0, i64 1
  %205 = load i64, i64* %204, align 8
  %206 = getelementptr inbounds [5 x i64], [5 x i64]* %18, i64 0, i64 2
  %207 = load i64, i64* %206, align 16
  %208 = getelementptr inbounds [5 x i64], [5 x i64]* %18, i64 0, i64 3
  %209 = load i64, i64* %208, align 8
  %210 = getelementptr inbounds [5 x i64], [5 x i64]* %18, i64 0, i64 4
  %211 = load i64, i64* %210, align 16
  %212 = call i32 @dtrace_probe(i32 %201, i64 %203, i64 %205, i64 %207, i64 %209, i64 %211)
  br label %213

213:                                              ; preds = %194, %164
  br label %214

214:                                              ; preds = %213, %158
  br label %215

215:                                              ; preds = %214, %115
  br label %216

216:                                              ; preds = %215
  %217 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %218 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %217, i32 0, i32 2
  %219 = load %struct.TYPE_20__*, %struct.TYPE_20__** %218, align 8
  store %struct.TYPE_20__* %219, %struct.TYPE_20__** %16, align 8
  br label %103

220:                                              ; preds = %103
  br label %221

221:                                              ; preds = %220, %94
  %222 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %223 = bitcast %struct.TYPE_18__* %12 to i8*
  %224 = bitcast %struct.TYPE_18__* %222 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %223, i8* align 8 %224, i64 72, i1 false)
  %225 = call i32 @rm_runlock(i32* @fasttrap_tp_lock, %struct.rm_priotracker* %6)
  store %struct.TYPE_18__* %12, %struct.TYPE_18__** %11, align 8
  %226 = load i32, i32* %15, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %237

228:                                              ; preds = %221
  %229 = load %struct.reg*, %struct.reg** %5, align 8
  %230 = getelementptr inbounds %struct.reg, %struct.reg* %229, i32 0, i32 1
  %231 = load i64*, i64** %230, align 8
  %232 = getelementptr inbounds i64, i64* %231, i64 3
  store i64 1, i64* %232, align 8
  %233 = load %struct.reg*, %struct.reg** %5, align 8
  %234 = getelementptr inbounds %struct.reg, %struct.reg* %233, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = add i64 %235, 4
  store i64 %236, i64* %9, align 8
  br label %318

237:                                              ; preds = %221
  %238 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %239 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %238, i32 0, i32 2
  %240 = load i32, i32* %239, align 8
  switch i32 %240, label %317 [
    i32 128, label %241
    i32 132, label %246
    i32 133, label %258
    i32 130, label %276
    i32 131, label %276
    i32 129, label %316
  ]

241:                                              ; preds = %237
  %242 = load %struct.reg*, %struct.reg** %5, align 8
  %243 = getelementptr inbounds %struct.reg, %struct.reg* %242, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = add i64 %244, 4
  store i64 %245, i64* %9, align 8
  br label %317

246:                                              ; preds = %237
  %247 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %248 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %247, i32 0, i32 7
  %249 = load i32, i32* %248, align 4
  %250 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %251 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %250, i32 0, i32 6
  %252 = load i32, i32* %251, align 8
  %253 = load %struct.reg*, %struct.reg** %5, align 8
  %254 = call i32 @fasttrap_branch_taken(i32 %249, i32 %252, %struct.reg* %253)
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %257, label %256

256:                                              ; preds = %246
  br label %317

257:                                              ; preds = %246
  br label %258

258:                                              ; preds = %237, %257
  %259 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %260 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %259, i32 0, i32 3
  %261 = load i32, i32* %260, align 4
  %262 = and i32 %261, 1
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %272

264:                                              ; preds = %258
  %265 = load %struct.reg*, %struct.reg** %5, align 8
  %266 = getelementptr inbounds %struct.reg, %struct.reg* %265, i32 0, i32 0
  %267 = load i64, i64* %266, align 8
  %268 = add i64 %267, 4
  %269 = trunc i64 %268 to i32
  %270 = load %struct.reg*, %struct.reg** %5, align 8
  %271 = getelementptr inbounds %struct.reg, %struct.reg* %270, i32 0, i32 2
  store i32 %269, i32* %271, align 8
  br label %272

272:                                              ; preds = %264, %258
  %273 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %274 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %273, i32 0, i32 4
  %275 = load i64, i64* %274, align 8
  store i64 %275, i64* %9, align 8
  br label %317

276:                                              ; preds = %237, %237
  %277 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %278 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %277, i32 0, i32 7
  %279 = load i32, i32* %278, align 4
  %280 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %281 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %280, i32 0, i32 6
  %282 = load i32, i32* %281, align 8
  %283 = load %struct.reg*, %struct.reg** %5, align 8
  %284 = call i32 @fasttrap_branch_taken(i32 %279, i32 %282, %struct.reg* %283)
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %287, label %286

286:                                              ; preds = %276
  br label %317

287:                                              ; preds = %276
  %288 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %289 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %288, i32 0, i32 2
  %290 = load i32, i32* %289, align 8
  %291 = icmp eq i32 %290, 131
  br i1 %291, label %292, label %296

292:                                              ; preds = %287
  %293 = load %struct.reg*, %struct.reg** %5, align 8
  %294 = getelementptr inbounds %struct.reg, %struct.reg* %293, i32 0, i32 3
  %295 = load i64, i64* %294, align 8
  store i64 %295, i64* %9, align 8
  br label %301

296:                                              ; preds = %287
  %297 = load %struct.reg*, %struct.reg** %5, align 8
  %298 = getelementptr inbounds %struct.reg, %struct.reg* %297, i32 0, i32 2
  %299 = load i32, i32* %298, align 8
  %300 = sext i32 %299 to i64
  store i64 %300, i64* %9, align 8
  br label %301

301:                                              ; preds = %296, %292
  %302 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %303 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %302, i32 0, i32 3
  %304 = load i32, i32* %303, align 4
  %305 = and i32 %304, 1
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %315

307:                                              ; preds = %301
  %308 = load %struct.reg*, %struct.reg** %5, align 8
  %309 = getelementptr inbounds %struct.reg, %struct.reg* %308, i32 0, i32 0
  %310 = load i64, i64* %309, align 8
  %311 = add i64 %310, 4
  %312 = trunc i64 %311 to i32
  %313 = load %struct.reg*, %struct.reg** %5, align 8
  %314 = getelementptr inbounds %struct.reg, %struct.reg* %313, i32 0, i32 2
  store i32 %312, i32* %314, align 8
  br label %315

315:                                              ; preds = %307, %301
  br label %317

316:                                              ; preds = %237
  br label %317

317:                                              ; preds = %237, %316, %315, %286, %272, %256, %241
  br label %318

318:                                              ; preds = %317, %228
  %319 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %320 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %319, i32 0, i32 5
  %321 = load i32*, i32** %320, align 8
  %322 = icmp ne i32* %321, null
  br i1 %322, label %323, label %362

323:                                              ; preds = %318
  %324 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %325 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %324, i32 0, i32 2
  %326 = load i32, i32* %325, align 8
  %327 = icmp ne i32 %326, 129
  br i1 %327, label %328, label %334

328:                                              ; preds = %323
  %329 = load %struct.reg*, %struct.reg** %5, align 8
  %330 = load i64, i64* %8, align 8
  %331 = load i64, i64* %13, align 8
  %332 = load i64, i64* %9, align 8
  %333 = call i32 @fasttrap_return_common(%struct.reg* %329, i64 %330, i64 %331, i64 %332)
  br label %361

334:                                              ; preds = %323
  %335 = load %struct.TYPE_22__*, %struct.TYPE_22__** @curthread, align 8
  %336 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %335, i32 0, i32 4
  %337 = load i64, i64* %336, align 8
  %338 = icmp ne i64 %337, 0
  %339 = zext i1 %338 to i32
  %340 = call i32 @ASSERT(i32 %339)
  %341 = load %struct.TYPE_22__*, %struct.TYPE_22__** @curthread, align 8
  %342 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %341, i32 0, i32 1
  %343 = load i64, i64* %342, align 8
  %344 = load i64, i64* %8, align 8
  %345 = icmp eq i64 %343, %344
  %346 = zext i1 %345 to i32
  %347 = call i32 @ASSERT(i32 %346)
  %348 = load %struct.TYPE_22__*, %struct.TYPE_22__** @curthread, align 8
  %349 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %348, i32 0, i32 2
  %350 = load i64, i64* %349, align 8
  %351 = icmp ne i64 %350, 0
  %352 = zext i1 %351 to i32
  %353 = call i32 @ASSERT(i32 %352)
  %354 = load i64, i64* %9, align 8
  %355 = load %struct.TYPE_22__*, %struct.TYPE_22__** @curthread, align 8
  %356 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %355, i32 0, i32 3
  %357 = load i64, i64* %356, align 8
  %358 = icmp eq i64 %354, %357
  %359 = zext i1 %358 to i32
  %360 = call i32 @ASSERT(i32 %359)
  br label %361

361:                                              ; preds = %334, %328
  br label %362

362:                                              ; preds = %361, %318
  %363 = load i64, i64* %9, align 8
  %364 = load %struct.reg*, %struct.reg** %5, align 8
  %365 = getelementptr inbounds %struct.reg, %struct.reg* %364, i32 0, i32 0
  store i64 %363, i64* %365, align 8
  %366 = load %struct.TYPE_22__*, %struct.TYPE_22__** @curthread, align 8
  %367 = load %struct.reg*, %struct.reg** %5, align 8
  %368 = call i32 @set_regs(%struct.TYPE_22__* %366, %struct.reg* %367)
  store i32 0, i32* %2, align 4
  br label %369

369:                                              ; preds = %362, %92, %29
  %370 = load i32, i32* %2, align 4
  ret i32 %370
}

declare dso_local i32 @fill_regs(%struct.TYPE_22__*, %struct.reg*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @fasttrap_sigtrap(%struct.TYPE_17__*, %struct.TYPE_22__*, i64) #1

declare dso_local i32 @rm_rlock(i32*, %struct.rm_priotracker*) #1

declare dso_local i64 @FASTTRAP_TPOINTS_INDEX(i64, i64) #1

declare dso_local i32 @rm_runlock(i32*, %struct.rm_priotracker*) #1

declare dso_local i32 @dtrace_interrupt_disable(...) #1

declare dso_local i32 @DTRACE_CPUFLAG_SET(i32) #1

declare dso_local i32 @dtrace_probe(i32, i64, i64, i64, i64, i64) #1

declare dso_local i32 @DTRACE_CPUFLAG_CLEAR(i32) #1

declare dso_local i32 @dtrace_interrupt_enable(i32) #1

declare dso_local i32 @fasttrap_usdt_args(%struct.TYPE_19__*, %struct.reg*, i32, i64*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @fasttrap_branch_taken(i32, i32, %struct.reg*) #1

declare dso_local i32 @fasttrap_return_common(%struct.reg*, i64, i64, i64) #1

declare dso_local i32 @set_regs(%struct.TYPE_22__*, %struct.reg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
