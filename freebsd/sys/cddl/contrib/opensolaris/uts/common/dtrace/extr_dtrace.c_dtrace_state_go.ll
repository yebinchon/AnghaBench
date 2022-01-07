; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/dtrace/extr_dtrace.c_dtrace_state_go.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/dtrace/extr_dtrace.c_dtrace_state_go.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i64, %struct.TYPE_29__* }
%struct.TYPE_29__ = type { i32*, i64, i32, i64, i32, i64, %struct.TYPE_30__*, %struct.TYPE_30__*, %struct.TYPE_30__*, %struct.TYPE_28__, i8*, i8*, i32, i32, %struct.TYPE_24__, i32*, i64, %struct.TYPE_29__*, i64 }
%struct.TYPE_30__ = type { i32, %struct.TYPE_30__* }
%struct.TYPE_28__ = type { i32, %struct.TYPE_27__*, i32 }
%struct.TYPE_27__ = type { %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_24__ = type { i32 }

@NCPU = common dso_local global i32 0, align 4
@cpu_lock = common dso_local global i32 0, align 4
@dtrace_lock = common dso_local global i32 0, align 4
@DTRACE_ACTIVITY_INACTIVE = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@DTRACEOPT_NSPEC = common dso_local global i64 0, align 8
@DTRACEOPT_UNSET = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@KM_NOSLEEP = common dso_local global i32 0, align 4
@KM_NORMALPRI = common dso_local global i32 0, align 4
@DTRACEOPT_GRABANON = common dso_local global i64 0, align 8
@dtrace_anon = common dso_local global %struct.TYPE_25__ zeroinitializer, align 8
@ENOENT = common dso_local global i32 0, align 4
@EALREADY = common dso_local global i32 0, align 4
@DTRACEOPT_AGGSIZE = common dso_local global i64 0, align 8
@DTRACEOPT_BUFSIZE = common dso_local global i64 0, align 8
@DTRACEOPT_SPECSIZE = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i32 0, align 4
@DTRACEOPT_DYNVARSIZE = common dso_local global i64 0, align 8
@dtrace_dstate_defsize = common dso_local global i32 0, align 4
@DTRACEOPT_BUFRESIZE = common dso_local global i64 0, align 8
@DTRACEOPT_BUFRESIZE_MANUAL = common dso_local global i32 0, align 4
@DTRACEOPT_STATUSRATE = common dso_local global i64 0, align 8
@dtrace_statusrate_max = common dso_local global i32 0, align 4
@DTRACEOPT_CLEANRATE = common dso_local global i64 0, align 8
@dtrace_cleanrate_max = common dso_local global i32 0, align 4
@dtrace_cleanrate_min = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@NANOSEC = common dso_local global i32 0, align 4
@dtrace_state_clean = common dso_local global i64 0, align 8
@dtrace_deadman_interval = common dso_local global i32 0, align 4
@dtrace_state_deadman = common dso_local global i64 0, align 8
@DTRACE_ACTIVITY_WARMUP = common dso_local global i64 0, align 8
@curcpu = common dso_local global i64 0, align 8
@DTRACEBUF_INACTIVE = common dso_local global i32 0, align 4
@dtrace_probeid_begin = common dso_local global i32 0, align 4
@DTRACE_ACTIVITY_DRAINING = common dso_local global i64 0, align 8
@DTRACE_ACTIVITY_ACTIVE = common dso_local global i64 0, align 8
@DTRACE_CPUALL = common dso_local global i32 0, align 4
@dtrace_buffer_activate = common dso_local global i64 0, align 8
@CY_LOW_LEVEL = common dso_local global i8* null, align 8
@DTRACE_CRV_KERNEL = common dso_local global i32 0, align 4
@dtrace_closef = common dso_local global i32* null, align 8
@dtrace_getf = common dso_local global i32 0, align 4
@dtrace_getf_barrier = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_29__*, i64*)* @dtrace_state_go to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dtrace_state_go(%struct.TYPE_29__* %0, i64* %1) #0 {
  %3 = alloca %struct.TYPE_29__*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_30__*, align 8
  %9 = alloca %struct.TYPE_30__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_29__* %0, %struct.TYPE_29__** %3, align 8
  store i64* %1, i64** %4, align 8
  %14 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %5, align 8
  store i32 0, i32* %10, align 4
  %17 = load i32, i32* @NCPU, align 4
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 16
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %12, align 4
  %21 = call i32 @mutex_enter(i32* @cpu_lock)
  %22 = call i32 @mutex_enter(i32* @dtrace_lock)
  %23 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @DTRACE_ACTIVITY_INACTIVE, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %2
  %29 = load i32, i32* @EBUSY, align 4
  store i32 %29, i32* %10, align 4
  br label %512

30:                                               ; preds = %2
  %31 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %32 = call i32 @dtrace_enabling_prime(%struct.TYPE_29__* %31)
  %33 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %33, i32 0, i32 18
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %30
  %38 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %38, i32 0, i32 9
  %40 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %37
  %44 = load i32, i32* @EACCES, align 4
  store i32 %44, i32* %10, align 4
  br label %512

45:                                               ; preds = %37, %30
  %46 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %47 = call i32 @dtrace_state_prereserve(%struct.TYPE_29__* %46)
  %48 = load i32*, i32** %5, align 8
  %49 = load i64, i64* @DTRACEOPT_NSPEC, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @DTRACEOPT_UNSET, align 4
  %54 = icmp ne i32 %52, %53
  %55 = zext i1 %54 to i32
  %56 = call i32 @ASSERT(i32 %55)
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @INT_MAX, align 4
  %59 = icmp sgt i32 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %45
  %61 = load i32, i32* @ENOMEM, align 4
  store i32 %61, i32* %10, align 4
  br label %512

62:                                               ; preds = %45
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = mul i64 %64, 16
  %66 = trunc i64 %65 to i32
  %67 = load i32, i32* @KM_NOSLEEP, align 4
  %68 = load i32, i32* @KM_NORMALPRI, align 4
  %69 = or i32 %67, %68
  %70 = call %struct.TYPE_30__* @kmem_zalloc(i32 %66, i32 %69)
  store %struct.TYPE_30__* %70, %struct.TYPE_30__** %8, align 8
  %71 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %72 = icmp eq %struct.TYPE_30__* %71, null
  br i1 %72, label %73, label %75

73:                                               ; preds = %62
  %74 = load i32, i32* @ENOMEM, align 4
  store i32 %74, i32* %10, align 4
  br label %512

75:                                               ; preds = %62
  %76 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %77 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %77, i32 0, i32 6
  store %struct.TYPE_30__* %76, %struct.TYPE_30__** %78, align 8
  %79 = load i32, i32* %7, align 4
  %80 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 8
  store i32 0, i32* %11, align 4
  br label %82

82:                                               ; preds = %102, %75
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* %7, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %105

86:                                               ; preds = %82
  %87 = load i32, i32* %12, align 4
  %88 = load i32, i32* @KM_NOSLEEP, align 4
  %89 = load i32, i32* @KM_NORMALPRI, align 4
  %90 = or i32 %88, %89
  %91 = call %struct.TYPE_30__* @kmem_zalloc(i32 %87, i32 %90)
  store %struct.TYPE_30__* %91, %struct.TYPE_30__** %9, align 8
  %92 = icmp eq %struct.TYPE_30__* %91, null
  br i1 %92, label %93, label %95

93:                                               ; preds = %86
  %94 = load i32, i32* @ENOMEM, align 4
  store i32 %94, i32* %10, align 4
  br label %449

95:                                               ; preds = %86
  %96 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %97 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %98 = load i32, i32* %11, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %100, i32 0, i32 1
  store %struct.TYPE_30__* %96, %struct.TYPE_30__** %101, align 8
  br label %102

102:                                              ; preds = %95
  %103 = load i32, i32* %11, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %11, align 4
  br label %82

105:                                              ; preds = %82
  %106 = load i32*, i32** %5, align 8
  %107 = load i64, i64* @DTRACEOPT_GRABANON, align 8
  %108 = getelementptr inbounds i32, i32* %106, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @DTRACEOPT_UNSET, align 4
  %111 = icmp ne i32 %109, %110
  br i1 %111, label %112, label %155

112:                                              ; preds = %105
  %113 = load %struct.TYPE_29__*, %struct.TYPE_29__** getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @dtrace_anon, i32 0, i32 1), align 8
  %114 = icmp eq %struct.TYPE_29__* %113, null
  br i1 %114, label %115, label %117

115:                                              ; preds = %112
  %116 = load i32, i32* @ENOENT, align 4
  store i32 %116, i32* %10, align 4
  br label %512

117:                                              ; preds = %112
  %118 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %118, i32 0, i32 3
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %117
  %123 = load i32, i32* @EALREADY, align 4
  store i32 %123, i32* %10, align 4
  br label %512

124:                                              ; preds = %117
  %125 = call %struct.TYPE_29__* (...) @dtrace_anon_grab()
  %126 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %126, i32 0, i32 17
  store %struct.TYPE_29__* %125, %struct.TYPE_29__** %127, align 8
  %128 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %128, i32 0, i32 17
  %130 = load %struct.TYPE_29__*, %struct.TYPE_29__** %129, align 8
  %131 = icmp ne %struct.TYPE_29__* %130, null
  %132 = zext i1 %131 to i32
  %133 = call i32 @ASSERT(i32 %132)
  %134 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %134, i32 0, i32 17
  %136 = load %struct.TYPE_29__*, %struct.TYPE_29__** %135, align 8
  store %struct.TYPE_29__* %136, %struct.TYPE_29__** %3, align 8
  %137 = load i32*, i32** %5, align 8
  %138 = load i64, i64* @DTRACEOPT_GRABANON, align 8
  %139 = getelementptr inbounds i32, i32* %137, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %141, i32 0, i32 0
  %143 = load i32*, i32** %142, align 8
  %144 = load i64, i64* @DTRACEOPT_GRABANON, align 8
  %145 = getelementptr inbounds i32, i32* %143, i64 %144
  store i32 %140, i32* %145, align 4
  %146 = load i64, i64* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @dtrace_anon, i32 0, i32 0), align 8
  %147 = load i64*, i64** %4, align 8
  store i64 %146, i64* %147, align 8
  %148 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @DTRACE_ACTIVITY_INACTIVE, align 8
  %152 = icmp ne i64 %150, %151
  br i1 %152, label %153, label %154

153:                                              ; preds = %124
  br label %512

154:                                              ; preds = %124
  br label %155

155:                                              ; preds = %154, %105
  %156 = load i32*, i32** %5, align 8
  %157 = load i64, i64* @DTRACEOPT_AGGSIZE, align 8
  %158 = getelementptr inbounds i32, i32* %156, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @DTRACEOPT_UNSET, align 4
  %161 = icmp ne i32 %159, %160
  br i1 %161, label %162, label %202

162:                                              ; preds = %155
  %163 = load i32*, i32** %5, align 8
  %164 = load i64, i64* @DTRACEOPT_AGGSIZE, align 8
  %165 = getelementptr inbounds i32, i32* %163, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %202

168:                                              ; preds = %162
  %169 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %170 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %169, i32 0, i32 15
  %171 = load i32*, i32** %170, align 8
  %172 = icmp eq i32* %171, null
  br i1 %172, label %173, label %177

173:                                              ; preds = %168
  %174 = load i32*, i32** %5, align 8
  %175 = load i64, i64* @DTRACEOPT_AGGSIZE, align 8
  %176 = getelementptr inbounds i32, i32* %174, i64 %175
  store i32 0, i32* %176, align 4
  br label %201

177:                                              ; preds = %168
  %178 = load i32*, i32** %5, align 8
  %179 = load i64, i64* @DTRACEOPT_BUFSIZE, align 8
  %180 = getelementptr inbounds i32, i32* %178, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* @DTRACEOPT_UNSET, align 4
  %183 = icmp eq i32 %181, %182
  br i1 %183, label %193, label %184

184:                                              ; preds = %177
  %185 = load i32*, i32** %5, align 8
  %186 = load i64, i64* @DTRACEOPT_BUFSIZE, align 8
  %187 = getelementptr inbounds i32, i32* %185, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %190 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %189, i32 0, i32 4
  %191 = load i32, i32* %190, align 8
  %192 = icmp slt i32 %188, %191
  br i1 %192, label %193, label %200

193:                                              ; preds = %184, %177
  %194 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %195 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %194, i32 0, i32 4
  %196 = load i32, i32* %195, align 8
  %197 = load i32*, i32** %5, align 8
  %198 = load i64, i64* @DTRACEOPT_BUFSIZE, align 8
  %199 = getelementptr inbounds i32, i32* %197, i64 %198
  store i32 %196, i32* %199, align 4
  br label %200

200:                                              ; preds = %193, %184
  br label %201

201:                                              ; preds = %200, %173
  br label %202

202:                                              ; preds = %201, %162, %155
  %203 = load i32*, i32** %5, align 8
  %204 = load i64, i64* @DTRACEOPT_SPECSIZE, align 8
  %205 = getelementptr inbounds i32, i32* %203, i64 %204
  %206 = load i32, i32* %205, align 4
  %207 = load i32, i32* @DTRACEOPT_UNSET, align 4
  %208 = icmp ne i32 %206, %207
  br i1 %208, label %209, label %225

209:                                              ; preds = %202
  %210 = load i32*, i32** %5, align 8
  %211 = load i64, i64* @DTRACEOPT_SPECSIZE, align 8
  %212 = getelementptr inbounds i32, i32* %210, i64 %211
  %213 = load i32, i32* %212, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %225

215:                                              ; preds = %209
  %216 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %217 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %216, i32 0, i32 16
  %218 = load i64, i64* %217, align 8
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %224, label %220

220:                                              ; preds = %215
  %221 = load i32*, i32** %5, align 8
  %222 = load i64, i64* @DTRACEOPT_SPECSIZE, align 8
  %223 = getelementptr inbounds i32, i32* %221, i64 %222
  store i32 0, i32* %223, align 4
  br label %224

224:                                              ; preds = %220, %215
  br label %225

225:                                              ; preds = %224, %209, %202
  store i32 4, i32* %6, align 4
  %226 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %227 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %226, i32 0, i32 4
  %228 = load i32, i32* %227, align 8
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %237

230:                                              ; preds = %225
  %231 = load i32*, i32** %5, align 8
  %232 = load i64, i64* @DTRACEOPT_BUFSIZE, align 8
  %233 = getelementptr inbounds i32, i32* %231, i64 %232
  %234 = load i32, i32* %233, align 4
  %235 = load i32, i32* %6, align 4
  %236 = icmp slt i32 %234, %235
  br i1 %236, label %261, label %237

237:                                              ; preds = %230, %225
  %238 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %239 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %238, i32 0, i32 16
  %240 = load i64, i64* %239, align 8
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %249

242:                                              ; preds = %237
  %243 = load i32*, i32** %5, align 8
  %244 = load i64, i64* @DTRACEOPT_SPECSIZE, align 8
  %245 = getelementptr inbounds i32, i32* %243, i64 %244
  %246 = load i32, i32* %245, align 4
  %247 = load i32, i32* %6, align 4
  %248 = icmp slt i32 %246, %247
  br i1 %248, label %261, label %249

249:                                              ; preds = %242, %237
  %250 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %251 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %250, i32 0, i32 15
  %252 = load i32*, i32** %251, align 8
  %253 = icmp ne i32* %252, null
  br i1 %253, label %254, label %263

254:                                              ; preds = %249
  %255 = load i32*, i32** %5, align 8
  %256 = load i64, i64* @DTRACEOPT_AGGSIZE, align 8
  %257 = getelementptr inbounds i32, i32* %255, i64 %256
  %258 = load i32, i32* %257, align 4
  %259 = load i32, i32* %6, align 4
  %260 = icmp slt i32 %258, %259
  br i1 %260, label %261, label %263

261:                                              ; preds = %254, %242, %230
  %262 = load i32, i32* @ENOSPC, align 4
  store i32 %262, i32* %10, align 4
  br label %512

263:                                              ; preds = %254, %249
  %264 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %265 = call i32 @dtrace_state_buffers(%struct.TYPE_29__* %264)
  store i32 %265, i32* %10, align 4
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %268

267:                                              ; preds = %263
  br label %449

268:                                              ; preds = %263
  %269 = load i32*, i32** %5, align 8
  %270 = load i64, i64* @DTRACEOPT_DYNVARSIZE, align 8
  %271 = getelementptr inbounds i32, i32* %269, i64 %270
  %272 = load i32, i32* %271, align 4
  store i32 %272, i32* %6, align 4
  %273 = load i32, i32* @DTRACEOPT_UNSET, align 4
  %274 = icmp eq i32 %272, %273
  br i1 %274, label %275, label %277

275:                                              ; preds = %268
  %276 = load i32, i32* @dtrace_dstate_defsize, align 4
  store i32 %276, i32* %6, align 4
  br label %277

277:                                              ; preds = %275, %268
  br label %278

278:                                              ; preds = %296, %277
  %279 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %280 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %279, i32 0, i32 14
  %281 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %280, i32 0, i32 0
  %282 = load i32, i32* %6, align 4
  %283 = call i32 @dtrace_dstate_init(i32* %281, i32 %282)
  store i32 %283, i32* %10, align 4
  %284 = load i32, i32* %10, align 4
  %285 = icmp eq i32 %284, 0
  br i1 %285, label %286, label %287

286:                                              ; preds = %278
  br label %300

287:                                              ; preds = %278
  %288 = load i32*, i32** %5, align 8
  %289 = load i64, i64* @DTRACEOPT_BUFRESIZE, align 8
  %290 = getelementptr inbounds i32, i32* %288, i64 %289
  %291 = load i32, i32* %290, align 4
  %292 = load i32, i32* @DTRACEOPT_BUFRESIZE_MANUAL, align 4
  %293 = icmp eq i32 %291, %292
  br i1 %293, label %294, label %295

294:                                              ; preds = %287
  br label %449

295:                                              ; preds = %287
  br label %296

296:                                              ; preds = %295
  %297 = load i32, i32* %6, align 4
  %298 = ashr i32 %297, 1
  store i32 %298, i32* %6, align 4
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %278, label %300

300:                                              ; preds = %296, %286
  %301 = load i32, i32* %6, align 4
  %302 = load i32*, i32** %5, align 8
  %303 = load i64, i64* @DTRACEOPT_DYNVARSIZE, align 8
  %304 = getelementptr inbounds i32, i32* %302, i64 %303
  store i32 %301, i32* %304, align 4
  %305 = load i32, i32* %10, align 4
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %308

307:                                              ; preds = %300
  br label %449

308:                                              ; preds = %300
  %309 = load i32*, i32** %5, align 8
  %310 = load i64, i64* @DTRACEOPT_STATUSRATE, align 8
  %311 = getelementptr inbounds i32, i32* %309, i64 %310
  %312 = load i32, i32* %311, align 4
  %313 = load i32, i32* @dtrace_statusrate_max, align 4
  %314 = icmp sgt i32 %312, %313
  br i1 %314, label %315, label %320

315:                                              ; preds = %308
  %316 = load i32, i32* @dtrace_statusrate_max, align 4
  %317 = load i32*, i32** %5, align 8
  %318 = load i64, i64* @DTRACEOPT_STATUSRATE, align 8
  %319 = getelementptr inbounds i32, i32* %317, i64 %318
  store i32 %316, i32* %319, align 4
  br label %320

320:                                              ; preds = %315, %308
  %321 = load i32*, i32** %5, align 8
  %322 = load i64, i64* @DTRACEOPT_CLEANRATE, align 8
  %323 = getelementptr inbounds i32, i32* %321, i64 %322
  %324 = load i32, i32* %323, align 4
  %325 = icmp eq i32 %324, 0
  br i1 %325, label %326, label %331

326:                                              ; preds = %320
  %327 = load i32, i32* @dtrace_cleanrate_max, align 4
  %328 = load i32*, i32** %5, align 8
  %329 = load i64, i64* @DTRACEOPT_CLEANRATE, align 8
  %330 = getelementptr inbounds i32, i32* %328, i64 %329
  store i32 %327, i32* %330, align 4
  br label %331

331:                                              ; preds = %326, %320
  %332 = load i32*, i32** %5, align 8
  %333 = load i64, i64* @DTRACEOPT_CLEANRATE, align 8
  %334 = getelementptr inbounds i32, i32* %332, i64 %333
  %335 = load i32, i32* %334, align 4
  %336 = load i32, i32* @dtrace_cleanrate_min, align 4
  %337 = icmp slt i32 %335, %336
  br i1 %337, label %338, label %343

338:                                              ; preds = %331
  %339 = load i32, i32* @dtrace_cleanrate_min, align 4
  %340 = load i32*, i32** %5, align 8
  %341 = load i64, i64* @DTRACEOPT_CLEANRATE, align 8
  %342 = getelementptr inbounds i32, i32* %340, i64 %341
  store i32 %339, i32* %342, align 4
  br label %343

343:                                              ; preds = %338, %331
  %344 = load i32*, i32** %5, align 8
  %345 = load i64, i64* @DTRACEOPT_CLEANRATE, align 8
  %346 = getelementptr inbounds i32, i32* %344, i64 %345
  %347 = load i32, i32* %346, align 4
  %348 = load i32, i32* @dtrace_cleanrate_max, align 4
  %349 = icmp sgt i32 %347, %348
  br i1 %349, label %350, label %355

350:                                              ; preds = %343
  %351 = load i32, i32* @dtrace_cleanrate_max, align 4
  %352 = load i32*, i32** %5, align 8
  %353 = load i64, i64* @DTRACEOPT_CLEANRATE, align 8
  %354 = getelementptr inbounds i32, i32* %352, i64 %353
  store i32 %351, i32* %354, align 4
  br label %355

355:                                              ; preds = %350, %343
  %356 = call i32 (...) @dtrace_gethrtime()
  %357 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %358 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %357, i32 0, i32 12
  store i32 %356, i32* %358, align 8
  %359 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %360 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %359, i32 0, i32 13
  store i32 %356, i32* %360, align 4
  %361 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %362 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %361, i32 0, i32 11
  %363 = load i32, i32* @hz, align 4
  %364 = load i32*, i32** %5, align 8
  %365 = load i64, i64* @DTRACEOPT_CLEANRATE, align 8
  %366 = getelementptr inbounds i32, i32* %364, i64 %365
  %367 = load i32, i32* %366, align 4
  %368 = mul nsw i32 %363, %367
  %369 = load i32, i32* @NANOSEC, align 4
  %370 = sdiv i32 %368, %369
  %371 = load i64, i64* @dtrace_state_clean, align 8
  %372 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %373 = call i32 @callout_reset(i8** %362, i32 %370, i64 %371, %struct.TYPE_29__* %372)
  %374 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %375 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %374, i32 0, i32 10
  %376 = load i32, i32* @hz, align 4
  %377 = load i32, i32* @dtrace_deadman_interval, align 4
  %378 = mul nsw i32 %376, %377
  %379 = load i32, i32* @NANOSEC, align 4
  %380 = sdiv i32 %378, %379
  %381 = load i64, i64* @dtrace_state_deadman, align 8
  %382 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %383 = call i32 @callout_reset(i8** %375, i32 %380, i64 %381, %struct.TYPE_29__* %382)
  %384 = load i64, i64* @DTRACE_ACTIVITY_WARMUP, align 8
  %385 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %386 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %385, i32 0, i32 1
  store i64 %384, i64* %386, align 8
  %387 = call i32 (...) @dtrace_interrupt_disable()
  store i32 %387, i32* %13, align 4
  %388 = load i64, i64* @curcpu, align 8
  %389 = load i64*, i64** %4, align 8
  store i64 %388, i64* %389, align 8
  %390 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %391 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %390, i32 0, i32 8
  %392 = load %struct.TYPE_30__*, %struct.TYPE_30__** %391, align 8
  %393 = load i64*, i64** %4, align 8
  %394 = load i64, i64* %393, align 8
  %395 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %392, i64 %394
  %396 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %395, i32 0, i32 0
  %397 = load i32, i32* %396, align 8
  %398 = load i32, i32* @DTRACEBUF_INACTIVE, align 4
  %399 = and i32 %397, %398
  %400 = call i32 @ASSERT(i32 %399)
  %401 = load i32, i32* @DTRACEBUF_INACTIVE, align 4
  %402 = xor i32 %401, -1
  %403 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %404 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %403, i32 0, i32 8
  %405 = load %struct.TYPE_30__*, %struct.TYPE_30__** %404, align 8
  %406 = load i64*, i64** %4, align 8
  %407 = load i64, i64* %406, align 8
  %408 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %405, i64 %407
  %409 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %408, i32 0, i32 0
  %410 = load i32, i32* %409, align 8
  %411 = and i32 %410, %402
  store i32 %411, i32* %409, align 8
  %412 = load i32, i32* @dtrace_probeid_begin, align 4
  %413 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %414 = ptrtoint %struct.TYPE_29__* %413 to i64
  %415 = trunc i64 %414 to i32
  %416 = call i32 @dtrace_probe(i32 %412, i32 %415, i32 0, i32 0, i32 0, i32 0)
  %417 = load i32, i32* %13, align 4
  %418 = call i32 @dtrace_interrupt_enable(i32 %417)
  %419 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %420 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %419, i32 0, i32 1
  %421 = load i64, i64* %420, align 8
  %422 = load i64, i64* @DTRACE_ACTIVITY_WARMUP, align 8
  %423 = icmp eq i64 %421, %422
  br i1 %423, label %430, label %424

424:                                              ; preds = %355
  %425 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %426 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %425, i32 0, i32 1
  %427 = load i64, i64* %426, align 8
  %428 = load i64, i64* @DTRACE_ACTIVITY_DRAINING, align 8
  %429 = icmp eq i64 %427, %428
  br label %430

430:                                              ; preds = %424, %355
  %431 = phi i1 [ true, %355 ], [ %429, %424 ]
  %432 = zext i1 %431 to i32
  %433 = call i32 @ASSERT(i32 %432)
  %434 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %435 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %434, i32 0, i32 1
  %436 = load i64, i64* %435, align 8
  %437 = load i64, i64* @DTRACE_ACTIVITY_WARMUP, align 8
  %438 = icmp eq i64 %436, %437
  br i1 %438, label %439, label %443

439:                                              ; preds = %430
  %440 = load i64, i64* @DTRACE_ACTIVITY_ACTIVE, align 8
  %441 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %442 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %441, i32 0, i32 1
  store i64 %440, i64* %442, align 8
  br label %443

443:                                              ; preds = %439, %430
  %444 = load i32, i32* @DTRACE_CPUALL, align 4
  %445 = load i64, i64* @dtrace_buffer_activate, align 8
  %446 = trunc i64 %445 to i32
  %447 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %448 = call i32 @dtrace_xcall(i32 %444, i32 %446, %struct.TYPE_29__* %447)
  br label %512

449:                                              ; preds = %307, %294, %267, %93
  %450 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %451 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %450, i32 0, i32 8
  %452 = load %struct.TYPE_30__*, %struct.TYPE_30__** %451, align 8
  %453 = call i32 @dtrace_buffer_free(%struct.TYPE_30__* %452)
  %454 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %455 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %454, i32 0, i32 7
  %456 = load %struct.TYPE_30__*, %struct.TYPE_30__** %455, align 8
  %457 = call i32 @dtrace_buffer_free(%struct.TYPE_30__* %456)
  %458 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %459 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %458, i32 0, i32 2
  %460 = load i32, i32* %459, align 8
  store i32 %460, i32* %7, align 4
  %461 = icmp eq i32 %460, 0
  br i1 %461, label %462, label %469

462:                                              ; preds = %449
  %463 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %464 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %463, i32 0, i32 6
  %465 = load %struct.TYPE_30__*, %struct.TYPE_30__** %464, align 8
  %466 = icmp eq %struct.TYPE_30__* %465, null
  %467 = zext i1 %466 to i32
  %468 = call i32 @ASSERT(i32 %467)
  br label %512

469:                                              ; preds = %449
  %470 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %471 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %470, i32 0, i32 6
  %472 = load %struct.TYPE_30__*, %struct.TYPE_30__** %471, align 8
  store %struct.TYPE_30__* %472, %struct.TYPE_30__** %8, align 8
  %473 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %474 = icmp ne %struct.TYPE_30__* %473, null
  %475 = zext i1 %474 to i32
  %476 = call i32 @ASSERT(i32 %475)
  store i32 0, i32* %11, align 4
  br label %477

477:                                              ; preds = %498, %469
  %478 = load i32, i32* %11, align 4
  %479 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %480 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %479, i32 0, i32 2
  %481 = load i32, i32* %480, align 8
  %482 = icmp slt i32 %478, %481
  br i1 %482, label %483, label %501

483:                                              ; preds = %477
  %484 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %485 = load i32, i32* %11, align 4
  %486 = sext i32 %485 to i64
  %487 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %484, i64 %486
  %488 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %487, i32 0, i32 1
  %489 = load %struct.TYPE_30__*, %struct.TYPE_30__** %488, align 8
  store %struct.TYPE_30__* %489, %struct.TYPE_30__** %9, align 8
  %490 = icmp eq %struct.TYPE_30__* %489, null
  br i1 %490, label %491, label %492

491:                                              ; preds = %483
  br label %501

492:                                              ; preds = %483
  %493 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %494 = call i32 @dtrace_buffer_free(%struct.TYPE_30__* %493)
  %495 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %496 = load i32, i32* %12, align 4
  %497 = call i32 @kmem_free(%struct.TYPE_30__* %495, i32 %496)
  br label %498

498:                                              ; preds = %492
  %499 = load i32, i32* %11, align 4
  %500 = add nsw i32 %499, 1
  store i32 %500, i32* %11, align 4
  br label %477

501:                                              ; preds = %491, %477
  %502 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %503 = load i32, i32* %7, align 4
  %504 = sext i32 %503 to i64
  %505 = mul i64 %504, 16
  %506 = trunc i64 %505 to i32
  %507 = call i32 @kmem_free(%struct.TYPE_30__* %502, i32 %506)
  %508 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %509 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %508, i32 0, i32 2
  store i32 0, i32* %509, align 8
  %510 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %511 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %510, i32 0, i32 6
  store %struct.TYPE_30__* null, %struct.TYPE_30__** %511, align 8
  br label %512

512:                                              ; preds = %501, %462, %443, %261, %153, %122, %115, %73, %60, %43, %28
  %513 = call i32 @mutex_exit(i32* @dtrace_lock)
  %514 = call i32 @mutex_exit(i32* @cpu_lock)
  %515 = load i32, i32* %10, align 4
  ret i32 %515
}

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @dtrace_enabling_prime(%struct.TYPE_29__*) #1

declare dso_local i32 @dtrace_state_prereserve(%struct.TYPE_29__*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local %struct.TYPE_30__* @kmem_zalloc(i32, i32) #1

declare dso_local %struct.TYPE_29__* @dtrace_anon_grab(...) #1

declare dso_local i32 @dtrace_state_buffers(%struct.TYPE_29__*) #1

declare dso_local i32 @dtrace_dstate_init(i32*, i32) #1

declare dso_local i32 @dtrace_gethrtime(...) #1

declare dso_local i32 @callout_reset(i8**, i32, i64, %struct.TYPE_29__*) #1

declare dso_local i32 @dtrace_interrupt_disable(...) #1

declare dso_local i32 @dtrace_probe(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @dtrace_interrupt_enable(i32) #1

declare dso_local i32 @dtrace_xcall(i32, i32, %struct.TYPE_29__*) #1

declare dso_local i32 @dtrace_buffer_free(%struct.TYPE_30__*) #1

declare dso_local i32 @kmem_free(%struct.TYPE_30__*, i32) #1

declare dso_local i32 @mutex_exit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
