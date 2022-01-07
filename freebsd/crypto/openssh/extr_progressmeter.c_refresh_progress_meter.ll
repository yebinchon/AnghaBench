; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_progressmeter.c_refresh_progress_meter.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_progressmeter.c_refresh_progress_meter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_WINSIZE = common dso_local global i32 0, align 4
@counter = common dso_local global float* null, align 8
@cur_pos = common dso_local global float 0.000000e+00, align 4
@start_pos = common dso_local global float 0.000000e+00, align 4
@end_pos = common dso_local global float 0.000000e+00, align 4
@last_update = common dso_local global double 0.000000e+00, align 8
@start = common dso_local global double 0.000000e+00, align 8
@bytes_per_second = common dso_local global double 0.000000e+00, align 8
@win_size = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"\0D%s\00", align 1
@file = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c" %3d%% \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"/s \00", align 1
@stalled = common dso_local global i64 0, align 8
@STALL_TIME = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [12 x i8] c"- stalled -\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"  --:-- ETA\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"%d:%02d:%02d\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"  %02d:%02d\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c" ETA\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"    \00", align 1
@vwrite = common dso_local global i32 0, align 4
@STDOUT_FILENO = common dso_local global i32 0, align 4
@AGE_FACTOR = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @refresh_progress_meter() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = load i32, i32* @MAX_WINSIZE, align 4
  %16 = add nsw i32 %15, 1
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %1, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %2, align 8
  %20 = load float*, float** @counter, align 8
  %21 = load float, float* %20, align 4
  %22 = load float, float* @cur_pos, align 4
  %23 = fcmp une float %22, 0.000000e+00
  br i1 %23, label %24, label %26

24:                                               ; preds = %0
  %25 = load float, float* @cur_pos, align 4
  br label %28

26:                                               ; preds = %0
  %27 = load float, float* @start_pos, align 4
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi float [ %25, %24 ], [ %27, %26 ]
  %30 = fsub float %21, %29
  %31 = fpext float %30 to double
  store double %31, double* %3, align 8
  %32 = load float*, float** @counter, align 8
  %33 = load float, float* %32, align 4
  store float %33, float* @cur_pos, align 4
  %34 = call double (...) @monotime_double()
  store double %34, double* %5, align 8
  %35 = load float, float* @end_pos, align 4
  %36 = load float, float* @cur_pos, align 4
  %37 = fsub float %35, %36
  %38 = fpext float %37 to double
  store double %38, double* %7, align 8
  %39 = load double, double* %7, align 8
  %40 = fcmp ogt double %39, 0.000000e+00
  br i1 %40, label %41, label %45

41:                                               ; preds = %28
  %42 = load double, double* %5, align 8
  %43 = load double, double* @last_update, align 8
  %44 = fsub double %42, %43
  store double %44, double* %4, align 8
  br label %53

45:                                               ; preds = %28
  %46 = load double, double* %5, align 8
  %47 = load double, double* @start, align 8
  %48 = fsub double %46, %47
  store double %48, double* %4, align 8
  %49 = load float, float* @end_pos, align 4
  %50 = load float, float* @start_pos, align 4
  %51 = fsub float %49, %50
  %52 = fpext float %51 to double
  store double %52, double* %3, align 8
  store double 0.000000e+00, double* @bytes_per_second, align 8
  br label %53

53:                                               ; preds = %45, %41
  %54 = load double, double* %4, align 8
  %55 = fcmp une double %54, 0.000000e+00
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = load double, double* %3, align 8
  %58 = load double, double* %4, align 8
  %59 = fdiv double %57, %58
  %60 = fptosi double %59 to i32
  store i32 %60, i32* %8, align 4
  br label %64

61:                                               ; preds = %53
  %62 = load double, double* %3, align 8
  %63 = fptosi double %62 to i32
  store i32 %63, i32* %8, align 4
  br label %64

64:                                               ; preds = %61, %56
  %65 = load double, double* @bytes_per_second, align 8
  %66 = fcmp une double %65, 0.000000e+00
  br i1 %66, label %67, label %74

67:                                               ; preds = %64
  %68 = load double, double* @bytes_per_second, align 8
  %69 = fmul double %68, 9.000000e-01
  %70 = load i32, i32* %8, align 4
  %71 = sitofp i32 %70 to double
  %72 = fmul double %71, 0x3FB9999999999998
  %73 = fadd double %69, %72
  store double %73, double* @bytes_per_second, align 8
  br label %77

74:                                               ; preds = %64
  %75 = load i32, i32* %8, align 4
  %76 = sitofp i32 %75 to double
  store double %76, double* @bytes_per_second, align 8
  br label %77

77:                                               ; preds = %74, %67
  %78 = getelementptr inbounds i8, i8* %19, i64 0
  store i8 0, i8* %78, align 16
  %79 = load i32, i32* @win_size, align 4
  %80 = sub nsw i32 %79, 35
  store i32 %80, i32* %14, align 4
  %81 = load i32, i32* %14, align 4
  %82 = icmp sgt i32 %81, 0
  br i1 %82, label %83, label %115

83:                                               ; preds = %77
  %84 = load i32, i32* %14, align 4
  %85 = add nsw i32 %84, 1
  %86 = load i8*, i8** @file, align 8
  %87 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %19, i32 %85, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %86)
  store i32 %87, i32* %13, align 4
  %88 = load i32, i32* %13, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %83
  store i32 0, i32* %13, align 4
  br label %91

91:                                               ; preds = %90, %83
  %92 = load i32, i32* %13, align 4
  %93 = load i32, i32* %14, align 4
  %94 = add nsw i32 %93, 1
  %95 = icmp sge i32 %92, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %91
  %97 = load i32, i32* %14, align 4
  store i32 %97, i32* %13, align 4
  br label %98

98:                                               ; preds = %96, %91
  %99 = load i32, i32* %13, align 4
  store i32 %99, i32* %12, align 4
  br label %100

100:                                              ; preds = %108, %98
  %101 = load i32, i32* %12, align 4
  %102 = load i32, i32* %14, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %111

104:                                              ; preds = %100
  %105 = load i32, i32* %12, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8, i8* %19, i64 %106
  store i8 32, i8* %107, align 1
  br label %108

108:                                              ; preds = %104
  %109 = load i32, i32* %12, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %12, align 4
  br label %100

111:                                              ; preds = %100
  %112 = load i32, i32* %14, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8, i8* %19, i64 %113
  store i8 0, i8* %114, align 1
  br label %115

115:                                              ; preds = %111, %77
  %116 = load float, float* @end_pos, align 4
  %117 = fcmp oeq float %116, 0.000000e+00
  br i1 %117, label %122, label %118

118:                                              ; preds = %115
  %119 = load float, float* @cur_pos, align 4
  %120 = load float, float* @end_pos, align 4
  %121 = fcmp oeq float %119, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %118, %115
  store i32 100, i32* %6, align 4
  br label %129

123:                                              ; preds = %118
  %124 = load float, float* @cur_pos, align 4
  %125 = load float, float* @end_pos, align 4
  %126 = fdiv float %124, %125
  %127 = fmul float %126, 1.000000e+02
  %128 = fptosi float %127 to i32
  store i32 %128, i32* %6, align 4
  br label %129

129:                                              ; preds = %123, %122
  %130 = call i32 @strlen(i8* %19)
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8, i8* %19, i64 %131
  %133 = load i32, i32* @win_size, align 4
  %134 = call i32 @strlen(i8* %19)
  %135 = sub nsw i32 %133, %134
  %136 = load i32, i32* %6, align 4
  %137 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %132, i32 %135, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %136)
  %138 = call i32 @strlen(i8* %19)
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8, i8* %19, i64 %139
  %141 = load i32, i32* @win_size, align 4
  %142 = call i32 @strlen(i8* %19)
  %143 = sub nsw i32 %141, %142
  %144 = load float, float* @cur_pos, align 4
  %145 = call i32 @format_size(i8* %140, i32 %143, float %144)
  %146 = load i32, i32* @win_size, align 4
  %147 = call i32 @strlcat(i8* %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %146)
  %148 = call i32 @strlen(i8* %19)
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i8, i8* %19, i64 %149
  %151 = load i32, i32* @win_size, align 4
  %152 = call i32 @strlen(i8* %19)
  %153 = sub nsw i32 %151, %152
  %154 = load double, double* @bytes_per_second, align 8
  %155 = call i32 @format_rate(i8* %150, i32 %153, double %154)
  %156 = load i32, i32* @win_size, align 4
  %157 = call i32 @strlcat(i8* %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %156)
  %158 = load double, double* %3, align 8
  %159 = fcmp une double %158, 0.000000e+00
  br i1 %159, label %166, label %160

160:                                              ; preds = %129
  %161 = load double, double* %4, align 8
  %162 = load i64, i64* @stalled, align 8
  %163 = sitofp i64 %162 to double
  %164 = fadd double %163, %161
  %165 = fptosi double %164 to i64
  store i64 %165, i64* @stalled, align 8
  br label %167

166:                                              ; preds = %129
  store i64 0, i64* @stalled, align 8
  br label %167

167:                                              ; preds = %166, %160
  %168 = load i64, i64* @stalled, align 8
  %169 = load i64, i64* @STALL_TIME, align 8
  %170 = icmp sge i64 %168, %169
  br i1 %170, label %171, label %174

171:                                              ; preds = %167
  %172 = load i32, i32* @win_size, align 4
  %173 = call i32 @strlcat(i8* %19, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %172)
  br label %241

174:                                              ; preds = %167
  %175 = load double, double* @bytes_per_second, align 8
  %176 = fcmp oeq double %175, 0.000000e+00
  br i1 %176, label %177, label %183

177:                                              ; preds = %174
  %178 = load double, double* %7, align 8
  %179 = fcmp une double %178, 0.000000e+00
  br i1 %179, label %180, label %183

180:                                              ; preds = %177
  %181 = load i32, i32* @win_size, align 4
  %182 = call i32 @strlcat(i8* %19, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 %181)
  br label %240

183:                                              ; preds = %177, %174
  %184 = load double, double* %7, align 8
  %185 = fcmp ogt double %184, 0.000000e+00
  br i1 %185, label %186, label %191

186:                                              ; preds = %183
  %187 = load double, double* %7, align 8
  %188 = load double, double* @bytes_per_second, align 8
  %189 = fdiv double %187, %188
  %190 = fptosi double %189 to i32
  store i32 %190, i32* %11, align 4
  br label %194

191:                                              ; preds = %183
  %192 = load double, double* %4, align 8
  %193 = fptosi double %192 to i32
  store i32 %193, i32* %11, align 4
  br label %194

194:                                              ; preds = %191, %186
  %195 = load i32, i32* %11, align 4
  %196 = sdiv i32 %195, 3600
  store i32 %196, i32* %9, align 4
  %197 = load i32, i32* %9, align 4
  %198 = mul nsw i32 %197, 3600
  %199 = load i32, i32* %11, align 4
  %200 = sub nsw i32 %199, %198
  store i32 %200, i32* %11, align 4
  %201 = load i32, i32* %11, align 4
  %202 = sdiv i32 %201, 60
  store i32 %202, i32* %10, align 4
  %203 = load i32, i32* %10, align 4
  %204 = mul nsw i32 %203, 60
  %205 = load i32, i32* %11, align 4
  %206 = sub nsw i32 %205, %204
  store i32 %206, i32* %11, align 4
  %207 = load i32, i32* %9, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %220

209:                                              ; preds = %194
  %210 = call i32 @strlen(i8* %19)
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i8, i8* %19, i64 %211
  %213 = load i32, i32* @win_size, align 4
  %214 = call i32 @strlen(i8* %19)
  %215 = sub nsw i32 %213, %214
  %216 = load i32, i32* %9, align 4
  %217 = load i32, i32* %10, align 4
  %218 = load i32, i32* %11, align 4
  %219 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %212, i32 %215, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32 %216, i32 %217, i32 %218)
  br label %230

220:                                              ; preds = %194
  %221 = call i32 @strlen(i8* %19)
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i8, i8* %19, i64 %222
  %224 = load i32, i32* @win_size, align 4
  %225 = call i32 @strlen(i8* %19)
  %226 = sub nsw i32 %224, %225
  %227 = load i32, i32* %10, align 4
  %228 = load i32, i32* %11, align 4
  %229 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %223, i32 %226, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32 %227, i32 %228)
  br label %230

230:                                              ; preds = %220, %209
  %231 = load double, double* %7, align 8
  %232 = fcmp ogt double %231, 0.000000e+00
  br i1 %232, label %233, label %236

233:                                              ; preds = %230
  %234 = load i32, i32* @win_size, align 4
  %235 = call i32 @strlcat(i8* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 %234)
  br label %239

236:                                              ; preds = %230
  %237 = load i32, i32* @win_size, align 4
  %238 = call i32 @strlcat(i8* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 %237)
  br label %239

239:                                              ; preds = %236, %233
  br label %240

240:                                              ; preds = %239, %180
  br label %241

241:                                              ; preds = %240, %171
  %242 = load i32, i32* @vwrite, align 4
  %243 = load i32, i32* @STDOUT_FILENO, align 4
  %244 = load i32, i32* @win_size, align 4
  %245 = sub nsw i32 %244, 1
  %246 = call i32 @atomicio(i32 %242, i32 %243, i8* %19, i32 %245)
  %247 = load double, double* %5, align 8
  store double %247, double* @last_update, align 8
  %248 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %248)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local double @monotime_double(...) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @format_size(i8*, i32, float) #2

declare dso_local i32 @strlcat(i8*, i8*, i32) #2

declare dso_local i32 @format_rate(i8*, i32, double) #2

declare dso_local i32 @atomicio(i32, i32, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
