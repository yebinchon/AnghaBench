; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libprocstat/extr_libprocstat.c_getargv.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libprocstat/extr_libprocstat.c_getargv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.procstat = type { i64, i32, i32, i32, i32 }
%struct.kinfo_proc = type { i64, i32, i32, i32, i32 }
%struct.argvec = type { i64, i8*, i8**, i32 }

@PROCSTAT_KVM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"can't use kvm access method\00", align 1
@PROCSTAT_SYSCTL = common dso_local global i64 0, align 8
@PROCSTAT_CORE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"unknown access method: %d\00", align 1
@ARG_MAX = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"malloc(%zu)\00", align 1
@CTL_KERN = common dso_local global i32 0, align 4
@KERN_PROC = common dso_local global i32 0, align 4
@KERN_PROC_ENV = common dso_local global i32 0, align 4
@KERN_PROC_ARGS = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ESRCH = common dso_local global i64 0, align 8
@EPERM = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [21 x i8] c"sysctl(kern.proc.%s)\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"env\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"args\00", align 1
@PSC_TYPE_ENVV = common dso_local global i32 0, align 4
@PSC_TYPE_ARGV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8** (%struct.procstat*, %struct.kinfo_proc*, i64, i32)* @getargv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8** @getargv(%struct.procstat* %0, %struct.kinfo_proc* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i8**, align 8
  %6 = alloca %struct.procstat*, align 8
  %7 = alloca %struct.kinfo_proc*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [4 x i32], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.argvec*, align 8
  %15 = alloca %struct.argvec**, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8**, align 8
  store %struct.procstat* %0, %struct.procstat** %6, align 8
  store %struct.kinfo_proc* %1, %struct.kinfo_proc** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %20 = load %struct.procstat*, %struct.procstat** %6, align 8
  %21 = call i32 @assert(%struct.procstat* %20)
  %22 = load %struct.kinfo_proc*, %struct.kinfo_proc** %7, align 8
  %23 = bitcast %struct.kinfo_proc* %22 to %struct.procstat*
  %24 = call i32 @assert(%struct.procstat* %23)
  %25 = load %struct.procstat*, %struct.procstat** %6, align 8
  %26 = getelementptr inbounds %struct.procstat, %struct.procstat* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @PROCSTAT_KVM, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %4
  %31 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i8** null, i8*** %5, align 8
  br label %250

32:                                               ; preds = %4
  %33 = load %struct.procstat*, %struct.procstat** %6, align 8
  %34 = getelementptr inbounds %struct.procstat, %struct.procstat* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @PROCSTAT_SYSCTL, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %49

38:                                               ; preds = %32
  %39 = load %struct.procstat*, %struct.procstat** %6, align 8
  %40 = getelementptr inbounds %struct.procstat, %struct.procstat* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @PROCSTAT_CORE, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %38
  %45 = load %struct.procstat*, %struct.procstat** %6, align 8
  %46 = getelementptr inbounds %struct.procstat, %struct.procstat* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i64 %47)
  store i8** null, i8*** %5, align 8
  br label %250

49:                                               ; preds = %38, %32
  %50 = load i64, i64* %8, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %49
  %53 = load i64, i64* %8, align 8
  %54 = load i64, i64* @ARG_MAX, align 8
  %55 = icmp ugt i64 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %52, %49
  %57 = load i64, i64* @ARG_MAX, align 8
  store i64 %57, i64* %8, align 8
  br label %58

58:                                               ; preds = %56, %52
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load %struct.procstat*, %struct.procstat** %6, align 8
  %63 = getelementptr inbounds %struct.procstat, %struct.procstat* %62, i32 0, i32 4
  br label %67

64:                                               ; preds = %58
  %65 = load %struct.procstat*, %struct.procstat** %6, align 8
  %66 = getelementptr inbounds %struct.procstat, %struct.procstat* %65, i32 0, i32 3
  br label %67

67:                                               ; preds = %64, %61
  %68 = phi i32* [ %63, %61 ], [ %66, %64 ]
  %69 = bitcast i32* %68 to %struct.argvec**
  store %struct.argvec** %69, %struct.argvec*** %15, align 8
  %70 = load %struct.argvec**, %struct.argvec*** %15, align 8
  %71 = load %struct.argvec*, %struct.argvec** %70, align 8
  store %struct.argvec* %71, %struct.argvec** %14, align 8
  %72 = load %struct.argvec*, %struct.argvec** %14, align 8
  %73 = icmp eq %struct.argvec* %72, null
  br i1 %73, label %74, label %85

74:                                               ; preds = %67
  %75 = load i64, i64* %8, align 8
  %76 = call %struct.argvec* @argvec_alloc(i64 %75)
  store %struct.argvec* %76, %struct.argvec** %14, align 8
  %77 = load %struct.argvec*, %struct.argvec** %14, align 8
  %78 = icmp eq %struct.argvec* %77, null
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = load i64, i64* %8, align 8
  %81 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 %80)
  store i8** null, i8*** %5, align 8
  br label %250

82:                                               ; preds = %74
  %83 = load %struct.argvec*, %struct.argvec** %14, align 8
  %84 = load %struct.argvec**, %struct.argvec*** %15, align 8
  store %struct.argvec* %83, %struct.argvec** %84, align 8
  br label %108

85:                                               ; preds = %67
  %86 = load %struct.argvec*, %struct.argvec** %14, align 8
  %87 = getelementptr inbounds %struct.argvec, %struct.argvec* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* %8, align 8
  %90 = icmp ult i64 %88, %89
  br i1 %90, label %91, label %107

91:                                               ; preds = %85
  %92 = load %struct.argvec*, %struct.argvec** %14, align 8
  %93 = getelementptr inbounds %struct.argvec, %struct.argvec* %92, i32 0, i32 1
  %94 = load i8*, i8** %93, align 8
  %95 = load i64, i64* %8, align 8
  %96 = call i8* @reallocf(i8* %94, i64 %95)
  %97 = load %struct.argvec*, %struct.argvec** %14, align 8
  %98 = getelementptr inbounds %struct.argvec, %struct.argvec* %97, i32 0, i32 1
  store i8* %96, i8** %98, align 8
  %99 = load %struct.argvec*, %struct.argvec** %14, align 8
  %100 = getelementptr inbounds %struct.argvec, %struct.argvec* %99, i32 0, i32 1
  %101 = load i8*, i8** %100, align 8
  %102 = icmp eq i8* %101, null
  br i1 %102, label %103, label %106

103:                                              ; preds = %91
  %104 = load i64, i64* %8, align 8
  %105 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 %104)
  store i8** null, i8*** %5, align 8
  br label %250

106:                                              ; preds = %91
  br label %107

107:                                              ; preds = %106, %85
  br label %108

108:                                              ; preds = %107, %82
  %109 = load %struct.procstat*, %struct.procstat** %6, align 8
  %110 = getelementptr inbounds %struct.procstat, %struct.procstat* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @PROCSTAT_SYSCTL, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %164

114:                                              ; preds = %108
  %115 = load i32, i32* @CTL_KERN, align 4
  %116 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  store i32 %115, i32* %116, align 16
  %117 = load i32, i32* @KERN_PROC, align 4
  %118 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 1
  store i32 %117, i32* %118, align 4
  %119 = load i32, i32* %9, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %114
  %122 = load i32, i32* @KERN_PROC_ENV, align 4
  br label %125

123:                                              ; preds = %114
  %124 = load i32, i32* @KERN_PROC_ARGS, align 4
  br label %125

125:                                              ; preds = %123, %121
  %126 = phi i32 [ %122, %121 ], [ %124, %123 ]
  %127 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 2
  store i32 %126, i32* %127, align 8
  %128 = load %struct.kinfo_proc*, %struct.kinfo_proc** %7, align 8
  %129 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 3
  store i32 %130, i32* %131, align 4
  %132 = load i64, i64* %8, align 8
  store i64 %132, i64* %17, align 8
  %133 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %134 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %135 = call i32 @nitems(i32* %134)
  %136 = load %struct.argvec*, %struct.argvec** %14, align 8
  %137 = getelementptr inbounds %struct.argvec, %struct.argvec* %136, i32 0, i32 1
  %138 = load i8*, i8** %137, align 8
  %139 = call i32 @sysctl(i32* %133, i32 %135, i8* %138, i64* %17, i32* null, i32 0)
  store i32 %139, i32* %10, align 4
  %140 = load i32, i32* %10, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %156

142:                                              ; preds = %125
  %143 = load i64, i64* @errno, align 8
  %144 = load i64, i64* @ESRCH, align 8
  %145 = icmp ne i64 %143, %144
  br i1 %145, label %146, label %156

146:                                              ; preds = %142
  %147 = load i64, i64* @errno, align 8
  %148 = load i64, i64* @EPERM, align 8
  %149 = icmp ne i64 %147, %148
  br i1 %149, label %150, label %156

150:                                              ; preds = %146
  %151 = load i32, i32* %9, align 4
  %152 = icmp ne i32 %151, 0
  %153 = zext i1 %152 to i64
  %154 = select i1 %152, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0)
  %155 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* %154)
  br label %156

156:                                              ; preds = %150, %146, %142, %125
  %157 = load i32, i32* %10, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %162, label %159

159:                                              ; preds = %156
  %160 = load i64, i64* %17, align 8
  %161 = icmp eq i64 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %159, %156
  store i8** null, i8*** %5, align 8
  br label %250

163:                                              ; preds = %159
  br label %185

164:                                              ; preds = %108
  %165 = load i32, i32* %9, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %164
  %168 = load i32, i32* @PSC_TYPE_ENVV, align 4
  br label %171

169:                                              ; preds = %164
  %170 = load i32, i32* @PSC_TYPE_ARGV, align 4
  br label %171

171:                                              ; preds = %169, %167
  %172 = phi i32 [ %168, %167 ], [ %170, %169 ]
  store i32 %172, i32* %16, align 4
  %173 = load i64, i64* %8, align 8
  store i64 %173, i64* %17, align 8
  %174 = load %struct.procstat*, %struct.procstat** %6, align 8
  %175 = getelementptr inbounds %struct.procstat, %struct.procstat* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* %16, align 4
  %178 = load %struct.argvec*, %struct.argvec** %14, align 8
  %179 = getelementptr inbounds %struct.argvec, %struct.argvec* %178, i32 0, i32 1
  %180 = load i8*, i8** %179, align 8
  %181 = call i32* @procstat_core_get(i32 %176, i32 %177, i8* %180, i64* %17)
  %182 = icmp eq i32* %181, null
  br i1 %182, label %183, label %184

183:                                              ; preds = %171
  store i8** null, i8*** %5, align 8
  br label %250

184:                                              ; preds = %171
  br label %185

185:                                              ; preds = %184, %163
  %186 = load %struct.argvec*, %struct.argvec** %14, align 8
  %187 = getelementptr inbounds %struct.argvec, %struct.argvec* %186, i32 0, i32 2
  %188 = load i8**, i8*** %187, align 8
  store i8** %188, i8*** %19, align 8
  %189 = load %struct.argvec*, %struct.argvec** %14, align 8
  %190 = getelementptr inbounds %struct.argvec, %struct.argvec* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 8
  store i32 %191, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %192 = load %struct.argvec*, %struct.argvec** %14, align 8
  %193 = getelementptr inbounds %struct.argvec, %struct.argvec* %192, i32 0, i32 1
  %194 = load i8*, i8** %193, align 8
  store i8* %194, i8** %18, align 8
  br label %195

195:                                              ; preds = %238, %185
  %196 = load i8*, i8** %18, align 8
  %197 = load %struct.argvec*, %struct.argvec** %14, align 8
  %198 = getelementptr inbounds %struct.argvec, %struct.argvec* %197, i32 0, i32 1
  %199 = load i8*, i8** %198, align 8
  %200 = load i64, i64* %17, align 8
  %201 = getelementptr inbounds i8, i8* %199, i64 %200
  %202 = icmp ult i8* %196, %201
  br i1 %202, label %203, label %244

203:                                              ; preds = %195
  %204 = load i8*, i8** %18, align 8
  %205 = load i8**, i8*** %19, align 8
  %206 = load i32, i32* %13, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %13, align 4
  %208 = sext i32 %206 to i64
  %209 = getelementptr inbounds i8*, i8** %205, i64 %208
  store i8* %204, i8** %209, align 8
  %210 = load i32, i32* %13, align 4
  %211 = load i32, i32* %12, align 4
  %212 = icmp slt i32 %210, %211
  br i1 %212, label %213, label %214

213:                                              ; preds = %203
  br label %238

214:                                              ; preds = %203
  %215 = load i32, i32* %12, align 4
  %216 = load i32, i32* %12, align 4
  %217 = add nsw i32 %216, %215
  store i32 %217, i32* %12, align 4
  %218 = load i8**, i8*** %19, align 8
  %219 = load i32, i32* %12, align 4
  %220 = sext i32 %219 to i64
  %221 = mul i64 8, %220
  %222 = trunc i64 %221 to i32
  %223 = call i8** @realloc(i8** %218, i32 %222)
  store i8** %223, i8*** %19, align 8
  %224 = load i8**, i8*** %19, align 8
  %225 = icmp eq i8** %224, null
  br i1 %225, label %226, label %231

226:                                              ; preds = %214
  %227 = load i32, i32* %12, align 4
  %228 = sext i32 %227 to i64
  %229 = mul i64 8, %228
  %230 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 %229)
  store i8** null, i8*** %5, align 8
  br label %250

231:                                              ; preds = %214
  %232 = load i8**, i8*** %19, align 8
  %233 = load %struct.argvec*, %struct.argvec** %14, align 8
  %234 = getelementptr inbounds %struct.argvec, %struct.argvec* %233, i32 0, i32 2
  store i8** %232, i8*** %234, align 8
  %235 = load i32, i32* %12, align 4
  %236 = load %struct.argvec*, %struct.argvec** %14, align 8
  %237 = getelementptr inbounds %struct.argvec, %struct.argvec* %236, i32 0, i32 3
  store i32 %235, i32* %237, align 8
  br label %238

238:                                              ; preds = %231, %213
  %239 = load i8*, i8** %18, align 8
  %240 = call i64 @strlen(i8* %239)
  %241 = add nsw i64 %240, 1
  %242 = load i8*, i8** %18, align 8
  %243 = getelementptr inbounds i8, i8* %242, i64 %241
  store i8* %243, i8** %18, align 8
  br label %195

244:                                              ; preds = %195
  %245 = load i8**, i8*** %19, align 8
  %246 = load i32, i32* %13, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i8*, i8** %245, i64 %247
  store i8* null, i8** %248, align 8
  %249 = load i8**, i8*** %19, align 8
  store i8** %249, i8*** %5, align 8
  br label %250

250:                                              ; preds = %244, %226, %183, %162, %103, %79, %44, %30
  %251 = load i8**, i8*** %5, align 8
  ret i8** %251
}

declare dso_local i32 @assert(%struct.procstat*) #1

declare dso_local i32 @warnx(i8*, ...) #1

declare dso_local %struct.argvec* @argvec_alloc(i64) #1

declare dso_local i32 @warn(i8*, ...) #1

declare dso_local i8* @reallocf(i8*, i64) #1

declare dso_local i32 @sysctl(i32*, i32, i8*, i64*, i32*, i32) #1

declare dso_local i32 @nitems(i32*) #1

declare dso_local i32* @procstat_core_get(i32, i32, i8*, i64*) #1

declare dso_local i8** @realloc(i8**, i32) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
