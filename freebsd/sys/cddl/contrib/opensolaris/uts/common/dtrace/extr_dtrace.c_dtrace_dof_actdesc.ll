; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/dtrace/extr_dtrace.c_dtrace_dof_actdesc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/dtrace/extr_dtrace.c_dtrace_dof_actdesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_15__*, i32* }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_16__ = type { i64, i64, i32, i32, i32 }
%struct.TYPE_18__ = type { i64, i64, i64, i32, i32, i64 }

@DOF_SECT_ACTDESC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"invalid action section\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"truncated action description\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"bad alignment in action description\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"section entry size exceeds total size\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"bad entry size in action description\00", align 1
@dtrace_actions_max = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"actions exceed dtrace_actions_max\00", align 1
@DTRACEACT_PRINTA = common dso_local global i64 0, align 8
@DOF_SECIDX_NONE = common dso_local global i64 0, align 8
@DTRACEACT_DIFEXPR = common dso_local global i64 0, align 8
@DOF_SECT_STRTAB = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [20 x i8] c"bogus format string\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"empty format string\00", align 1
@KM_SLEEP = common dso_local global i32 0, align 4
@DOF_SECT_DIFOHDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_15__* (%struct.TYPE_17__*, %struct.TYPE_16__*, i32*, i32*)* @dtrace_dof_actdesc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_15__* @dtrace_dof_actdesc(%struct.TYPE_17__* %0, %struct.TYPE_16__* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca %struct.TYPE_15__*, align 8
  %13 = alloca %struct.TYPE_15__*, align 8
  %14 = alloca %struct.TYPE_18__*, align 8
  %15 = alloca %struct.TYPE_16__*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.TYPE_16__*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %6, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %11, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %12, align 8
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %25 = ptrtoint %struct.TYPE_17__* %24 to i64
  store i64 %25, i64* %17, align 8
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @DOF_SECT_ACTDESC, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %4
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %33 = call i32 @dtrace_dof_error(%struct.TYPE_17__* %32, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %5, align 8
  br label %304

34:                                               ; preds = %4
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = add i64 %37, 40
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ugt i64 %38, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %34
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %45 = call i32 @dtrace_dof_error(%struct.TYPE_17__* %44, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %5, align 8
  br label %304

46:                                               ; preds = %34
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = sext i32 %49 to i64
  %51 = icmp ne i64 %50, 8
  br i1 %51, label %52, label %55

52:                                               ; preds = %46
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %54 = call i32 @dtrace_dof_error(%struct.TYPE_17__* %53, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %5, align 8
  br label %304

55:                                               ; preds = %46
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  %62 = icmp slt i32 %58, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %55
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %65 = call i32 @dtrace_dof_error(%struct.TYPE_17__* %64, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %5, align 8
  br label %304

66:                                               ; preds = %55
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 8
  %70 = sext i32 %69 to i64
  %71 = icmp ne i64 %70, 40
  br i1 %71, label %72, label %75

72:                                               ; preds = %66
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %74 = call i32 @dtrace_dof_error(%struct.TYPE_17__* %73, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %5, align 8
  br label %304

75:                                               ; preds = %66
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 8
  %82 = sdiv i32 %78, %81
  %83 = load i32, i32* @dtrace_actions_max, align 4
  %84 = icmp sgt i32 %82, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %75
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %87 = call i32 @dtrace_dof_error(%struct.TYPE_17__* %86, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %5, align 8
  br label %304

88:                                               ; preds = %75
  store i64 0, i64* %16, align 8
  br label %89

89:                                               ; preds = %276, %88
  %90 = load i64, i64* %16, align 8
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = sext i32 %93 to i64
  %95 = icmp ult i64 %90, %94
  br i1 %95, label %96, label %283

96:                                               ; preds = %89
  %97 = load i64, i64* %17, align 8
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = add i64 %97, %100
  %102 = load i64, i64* %16, align 8
  %103 = add i64 %101, %102
  %104 = inttoptr i64 %103 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %104, %struct.TYPE_18__** %14, align 8
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %106 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %105, i32 0, i32 5
  %107 = load i64, i64* %106, align 8
  store i64 %107, i64* %19, align 8
  %108 = load i64, i64* %19, align 8
  %109 = call i64 @DTRACEACT_ISPRINTFLIKE(i64 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %121

111:                                              ; preds = %96
  %112 = load i64, i64* %19, align 8
  %113 = load i64, i64* @DTRACEACT_PRINTA, align 8
  %114 = icmp ne i64 %112, %113
  br i1 %114, label %131, label %115

115:                                              ; preds = %111
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @DOF_SECIDX_NONE, align 8
  %120 = icmp ne i64 %118, %119
  br i1 %120, label %131, label %121

121:                                              ; preds = %115, %96
  %122 = load i64, i64* %19, align 8
  %123 = load i64, i64* @DTRACEACT_DIFEXPR, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %210

125:                                              ; preds = %121
  %126 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %127 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @DOF_SECIDX_NONE, align 8
  %130 = icmp ne i64 %128, %129
  br i1 %130, label %131, label %210

131:                                              ; preds = %125, %115, %111
  %132 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %133 = load i32, i32* @DOF_SECT_STRTAB, align 4
  %134 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %135 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = call %struct.TYPE_16__* @dtrace_dof_sect(%struct.TYPE_17__* %132, i32 %133, i64 %136)
  store %struct.TYPE_16__* %137, %struct.TYPE_16__** %20, align 8
  %138 = icmp eq %struct.TYPE_16__* %137, null
  br i1 %138, label %139, label %140

139:                                              ; preds = %131
  br label %289

140:                                              ; preds = %131
  %141 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %142 = ptrtoint %struct.TYPE_17__* %141 to i64
  %143 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = add i64 %142, %145
  %147 = inttoptr i64 %146 to i8*
  store i8* %147, i8** %21, align 8
  %148 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %149 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  store i64 %150, i64* %23, align 8
  br label %151

151:                                              ; preds = %167, %140
  %152 = load i64, i64* %23, align 8
  %153 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 4
  %156 = sext i32 %155 to i64
  %157 = icmp ult i64 %152, %156
  br i1 %157, label %158, label %170

158:                                              ; preds = %151
  %159 = load i8*, i8** %21, align 8
  %160 = load i64, i64* %23, align 8
  %161 = getelementptr inbounds i8, i8* %159, i64 %160
  %162 = load i8, i8* %161, align 1
  %163 = sext i8 %162 to i32
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %158
  br label %170

166:                                              ; preds = %158
  br label %167

167:                                              ; preds = %166
  %168 = load i64, i64* %23, align 8
  %169 = add i64 %168, 1
  store i64 %169, i64* %23, align 8
  br label %151

170:                                              ; preds = %165, %151
  %171 = load i64, i64* %23, align 8
  %172 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %173 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %172, i32 0, i32 3
  %174 = load i32, i32* %173, align 4
  %175 = sext i32 %174 to i64
  %176 = icmp uge i64 %171, %175
  br i1 %176, label %177, label %180

177:                                              ; preds = %170
  %178 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %179 = call i32 @dtrace_dof_error(%struct.TYPE_17__* %178, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  br label %289

180:                                              ; preds = %170
  %181 = load i64, i64* %23, align 8
  %182 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %183 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %182, i32 0, i32 1
  %184 = load i64, i64* %183, align 8
  %185 = icmp eq i64 %181, %184
  br i1 %185, label %186, label %189

186:                                              ; preds = %180
  %187 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %188 = call i32 @dtrace_dof_error(%struct.TYPE_17__* %187, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  br label %289

189:                                              ; preds = %180
  %190 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %191 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %190, i32 0, i32 1
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* %23, align 8
  %194 = sub i64 %193, %192
  store i64 %194, i64* %23, align 8
  %195 = load i64, i64* %23, align 8
  %196 = add i64 %195, 1
  %197 = load i32, i32* @KM_SLEEP, align 4
  %198 = call i8* @kmem_alloc(i64 %196, i32 %197)
  store i8* %198, i8** %22, align 8
  %199 = load i8*, i8** %21, align 8
  %200 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %201 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %200, i32 0, i32 1
  %202 = load i64, i64* %201, align 8
  %203 = getelementptr inbounds i8, i8* %199, i64 %202
  %204 = load i8*, i8** %22, align 8
  %205 = load i64, i64* %23, align 8
  %206 = add i64 %205, 1
  %207 = call i32 @bcopy(i8* %203, i8* %204, i64 %206)
  %208 = load i8*, i8** %22, align 8
  %209 = ptrtoint i8* %208 to i64
  store i64 %209, i64* %18, align 8
  br label %227

210:                                              ; preds = %125, %121
  %211 = load i64, i64* %19, align 8
  %212 = load i64, i64* @DTRACEACT_PRINTA, align 8
  %213 = icmp eq i64 %211, %212
  br i1 %213, label %214, label %222

214:                                              ; preds = %210
  %215 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %216 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = load i64, i64* @DOF_SECIDX_NONE, align 8
  %219 = icmp eq i64 %217, %218
  %220 = zext i1 %219 to i32
  %221 = call i32 @ASSERT(i32 %220)
  store i64 0, i64* %18, align 8
  br label %226

222:                                              ; preds = %210
  %223 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %224 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %223, i32 0, i32 1
  %225 = load i64, i64* %224, align 8
  store i64 %225, i64* %18, align 8
  br label %226

226:                                              ; preds = %222, %214
  br label %227

227:                                              ; preds = %226, %189
  %228 = load i64, i64* %19, align 8
  %229 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %230 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %229, i32 0, i32 4
  %231 = load i32, i32* %230, align 4
  %232 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %233 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %232, i32 0, i32 3
  %234 = load i32, i32* %233, align 8
  %235 = load i64, i64* %18, align 8
  %236 = call %struct.TYPE_15__* @dtrace_actdesc_create(i64 %228, i32 %231, i32 %234, i64 %235)
  store %struct.TYPE_15__* %236, %struct.TYPE_15__** %10, align 8
  %237 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %238 = icmp ne %struct.TYPE_15__* %237, null
  br i1 %238, label %239, label %243

239:                                              ; preds = %227
  %240 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %241 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %242 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %241, i32 0, i32 0
  store %struct.TYPE_15__* %240, %struct.TYPE_15__** %242, align 8
  br label %245

243:                                              ; preds = %227
  %244 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  store %struct.TYPE_15__* %244, %struct.TYPE_15__** %11, align 8
  br label %245

245:                                              ; preds = %243, %239
  %246 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  store %struct.TYPE_15__* %246, %struct.TYPE_15__** %12, align 8
  %247 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %248 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %247, i32 0, i32 2
  %249 = load i64, i64* %248, align 8
  %250 = load i64, i64* @DOF_SECIDX_NONE, align 8
  %251 = icmp eq i64 %249, %250
  br i1 %251, label %252, label %253

252:                                              ; preds = %245
  br label %276

253:                                              ; preds = %245
  %254 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %255 = load i32, i32* @DOF_SECT_DIFOHDR, align 4
  %256 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %257 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %256, i32 0, i32 2
  %258 = load i64, i64* %257, align 8
  %259 = call %struct.TYPE_16__* @dtrace_dof_sect(%struct.TYPE_17__* %254, i32 %255, i64 %258)
  store %struct.TYPE_16__* %259, %struct.TYPE_16__** %15, align 8
  %260 = icmp eq %struct.TYPE_16__* %259, null
  br i1 %260, label %261, label %262

261:                                              ; preds = %253
  br label %289

262:                                              ; preds = %253
  %263 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %264 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %265 = load i32*, i32** %8, align 8
  %266 = load i32*, i32** %9, align 8
  %267 = call i32* @dtrace_dof_difo(%struct.TYPE_17__* %263, %struct.TYPE_16__* %264, i32* %265, i32* %266)
  %268 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %269 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %268, i32 0, i32 1
  store i32* %267, i32** %269, align 8
  %270 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %271 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %270, i32 0, i32 1
  %272 = load i32*, i32** %271, align 8
  %273 = icmp eq i32* %272, null
  br i1 %273, label %274, label %275

274:                                              ; preds = %262
  br label %289

275:                                              ; preds = %262
  br label %276

276:                                              ; preds = %275, %252
  %277 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %278 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %277, i32 0, i32 4
  %279 = load i32, i32* %278, align 8
  %280 = sext i32 %279 to i64
  %281 = load i64, i64* %16, align 8
  %282 = add i64 %281, %280
  store i64 %282, i64* %16, align 8
  br label %89

283:                                              ; preds = %89
  %284 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %285 = icmp ne %struct.TYPE_15__* %284, null
  %286 = zext i1 %285 to i32
  %287 = call i32 @ASSERT(i32 %286)
  %288 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  store %struct.TYPE_15__* %288, %struct.TYPE_15__** %5, align 8
  br label %304

289:                                              ; preds = %274, %261, %186, %177, %139
  %290 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  store %struct.TYPE_15__* %290, %struct.TYPE_15__** %10, align 8
  br label %291

291:                                              ; preds = %301, %289
  %292 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %293 = icmp ne %struct.TYPE_15__* %292, null
  br i1 %293, label %294, label %303

294:                                              ; preds = %291
  %295 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %296 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %295, i32 0, i32 0
  %297 = load %struct.TYPE_15__*, %struct.TYPE_15__** %296, align 8
  store %struct.TYPE_15__* %297, %struct.TYPE_15__** %13, align 8
  %298 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %299 = load i32*, i32** %8, align 8
  %300 = call i32 @dtrace_actdesc_release(%struct.TYPE_15__* %298, i32* %299)
  br label %301

301:                                              ; preds = %294
  %302 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  store %struct.TYPE_15__* %302, %struct.TYPE_15__** %10, align 8
  br label %291

303:                                              ; preds = %291
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %5, align 8
  br label %304

304:                                              ; preds = %303, %283, %85, %72, %63, %52, %43, %31
  %305 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  ret %struct.TYPE_15__* %305
}

declare dso_local i32 @dtrace_dof_error(%struct.TYPE_17__*, i8*) #1

declare dso_local i64 @DTRACEACT_ISPRINTFLIKE(i64) #1

declare dso_local %struct.TYPE_16__* @dtrace_dof_sect(%struct.TYPE_17__*, i32, i64) #1

declare dso_local i8* @kmem_alloc(i64, i32) #1

declare dso_local i32 @bcopy(i8*, i8*, i64) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local %struct.TYPE_15__* @dtrace_actdesc_create(i64, i32, i32, i64) #1

declare dso_local i32* @dtrace_dof_difo(%struct.TYPE_17__*, %struct.TYPE_16__*, i32*, i32*) #1

declare dso_local i32 @dtrace_actdesc_release(%struct.TYPE_15__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
