; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_getarg.c_arg_match_short.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_getarg.c_arg_match_short.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.getargs = type { i8, i64, %struct.getarg_collect_info* }
%struct.getarg_collect_info = type { i32, i64 (i32, i32, i8**, i32*, i32*, i32)* }

@arg_flag = common dso_local global i64 0, align 8
@arg_negative_flag = common dso_local global i64 0, align 8
@arg_counter = common dso_local global i64 0, align 8
@arg_collect = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@ARG_ERR_BAD_ARG = common dso_local global i32 0, align 4
@ARG_ERR_NO_ARG = common dso_local global i32 0, align 4
@arg_integer = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@arg_string = common dso_local global i64 0, align 8
@arg_strings = common dso_local global i64 0, align 8
@arg_double = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"%lf\00", align 1
@ARG_ERR_NO_MATCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.getargs*, i64, i8*, i32, i8**, i32*)* @arg_match_short to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arg_match_short(%struct.getargs* %0, i64 %1, i8* %2, i32 %3, i8** %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.getargs*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.getarg_collect_info*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca double, align 8
  store %struct.getargs* %0, %struct.getargs** %8, align 8
  store i64 %1, i64* %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i8** %4, i8*** %12, align 8
  store i32* %5, i32** %13, align 8
  store i64 1, i64* %14, align 8
  br label %21

21:                                               ; preds = %266, %6
  %22 = load i64, i64* %14, align 8
  %23 = icmp ugt i64 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %21
  %25 = load i64, i64* %14, align 8
  %26 = load i8**, i8*** %12, align 8
  %27 = load i32*, i32** %13, align 8
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8*, i8** %26, i64 %29
  %31 = load i8*, i8** %30, align 8
  %32 = call i64 @strlen(i8* %31)
  %33 = icmp ult i64 %25, %32
  br label %34

34:                                               ; preds = %24, %21
  %35 = phi i1 [ false, %21 ], [ %33, %24 ]
  br i1 %35, label %36, label %269

36:                                               ; preds = %34
  store i64 0, i64* %15, align 8
  br label %37

37:                                               ; preds = %256, %36
  %38 = load i64, i64* %15, align 8
  %39 = load i64, i64* %9, align 8
  %40 = icmp ult i64 %38, %39
  br i1 %40, label %41, label %259

41:                                               ; preds = %37
  %42 = load %struct.getargs*, %struct.getargs** %8, align 8
  %43 = load i64, i64* %15, align 8
  %44 = getelementptr inbounds %struct.getargs, %struct.getargs* %42, i64 %43
  %45 = getelementptr inbounds %struct.getargs, %struct.getargs* %44, i32 0, i32 0
  %46 = load i8, i8* %45, align 8
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  br label %256

50:                                               ; preds = %41
  %51 = load i8*, i8** %10, align 8
  %52 = load i64, i64* %14, align 8
  %53 = getelementptr inbounds i8, i8* %51, i64 %52
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = load %struct.getargs*, %struct.getargs** %8, align 8
  %57 = load i64, i64* %15, align 8
  %58 = getelementptr inbounds %struct.getargs, %struct.getargs* %56, i64 %57
  %59 = getelementptr inbounds %struct.getargs, %struct.getargs* %58, i32 0, i32 0
  %60 = load i8, i8* %59, align 8
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %55, %61
  br i1 %62, label %63, label %255

63:                                               ; preds = %50
  %64 = load %struct.getargs*, %struct.getargs** %8, align 8
  %65 = load i64, i64* %15, align 8
  %66 = getelementptr inbounds %struct.getargs, %struct.getargs* %64, i64 %65
  %67 = getelementptr inbounds %struct.getargs, %struct.getargs* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @arg_flag, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %78

71:                                               ; preds = %63
  %72 = load %struct.getargs*, %struct.getargs** %8, align 8
  %73 = load i64, i64* %15, align 8
  %74 = getelementptr inbounds %struct.getargs, %struct.getargs* %72, i64 %73
  %75 = getelementptr inbounds %struct.getargs, %struct.getargs* %74, i32 0, i32 2
  %76 = load %struct.getarg_collect_info*, %struct.getarg_collect_info** %75, align 8
  %77 = bitcast %struct.getarg_collect_info* %76 to i32*
  store i32 1, i32* %77, align 4
  br label %259

78:                                               ; preds = %63
  %79 = load %struct.getargs*, %struct.getargs** %8, align 8
  %80 = load i64, i64* %15, align 8
  %81 = getelementptr inbounds %struct.getargs, %struct.getargs* %79, i64 %80
  %82 = getelementptr inbounds %struct.getargs, %struct.getargs* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @arg_negative_flag, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %93

86:                                               ; preds = %78
  %87 = load %struct.getargs*, %struct.getargs** %8, align 8
  %88 = load i64, i64* %15, align 8
  %89 = getelementptr inbounds %struct.getargs, %struct.getargs* %87, i64 %88
  %90 = getelementptr inbounds %struct.getargs, %struct.getargs* %89, i32 0, i32 2
  %91 = load %struct.getarg_collect_info*, %struct.getarg_collect_info** %90, align 8
  %92 = bitcast %struct.getarg_collect_info* %91 to i32*
  store i32 0, i32* %92, align 4
  br label %259

93:                                               ; preds = %78
  %94 = load %struct.getargs*, %struct.getargs** %8, align 8
  %95 = load i64, i64* %15, align 8
  %96 = getelementptr inbounds %struct.getargs, %struct.getargs* %94, i64 %95
  %97 = getelementptr inbounds %struct.getargs, %struct.getargs* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @arg_counter, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %110

101:                                              ; preds = %93
  %102 = load %struct.getargs*, %struct.getargs** %8, align 8
  %103 = load i64, i64* %15, align 8
  %104 = getelementptr inbounds %struct.getargs, %struct.getargs* %102, i64 %103
  %105 = getelementptr inbounds %struct.getargs, %struct.getargs* %104, i32 0, i32 2
  %106 = load %struct.getarg_collect_info*, %struct.getarg_collect_info** %105, align 8
  %107 = bitcast %struct.getarg_collect_info* %106 to i32*
  %108 = load i32, i32* %107, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %107, align 4
  br label %259

110:                                              ; preds = %93
  %111 = load %struct.getargs*, %struct.getargs** %8, align 8
  %112 = load i64, i64* %15, align 8
  %113 = getelementptr inbounds %struct.getargs, %struct.getargs* %111, i64 %112
  %114 = getelementptr inbounds %struct.getargs, %struct.getargs* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @arg_collect, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %143

118:                                              ; preds = %110
  %119 = load %struct.getargs*, %struct.getargs** %8, align 8
  %120 = load i64, i64* %15, align 8
  %121 = getelementptr inbounds %struct.getargs, %struct.getargs* %119, i64 %120
  %122 = getelementptr inbounds %struct.getargs, %struct.getargs* %121, i32 0, i32 2
  %123 = load %struct.getarg_collect_info*, %struct.getarg_collect_info** %122, align 8
  store %struct.getarg_collect_info* %123, %struct.getarg_collect_info** %17, align 8
  %124 = load i64, i64* %14, align 8
  %125 = trunc i64 %124 to i32
  store i32 %125, i32* %18, align 4
  %126 = load %struct.getarg_collect_info*, %struct.getarg_collect_info** %17, align 8
  %127 = getelementptr inbounds %struct.getarg_collect_info, %struct.getarg_collect_info* %126, i32 0, i32 1
  %128 = load i64 (i32, i32, i8**, i32*, i32*, i32)*, i64 (i32, i32, i8**, i32*, i32*, i32)** %127, align 8
  %129 = load i32, i32* @TRUE, align 4
  %130 = load i32, i32* %11, align 4
  %131 = load i8**, i8*** %12, align 8
  %132 = load i32*, i32** %13, align 8
  %133 = load %struct.getarg_collect_info*, %struct.getarg_collect_info** %17, align 8
  %134 = getelementptr inbounds %struct.getarg_collect_info, %struct.getarg_collect_info* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = call i64 %128(i32 %129, i32 %130, i8** %131, i32* %132, i32* %18, i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %118
  %139 = load i32, i32* @ARG_ERR_BAD_ARG, align 4
  store i32 %139, i32* %7, align 4
  br label %270

140:                                              ; preds = %118
  %141 = load i32, i32* %18, align 4
  %142 = sext i32 %141 to i64
  store i64 %142, i64* %14, align 8
  br label %259

143:                                              ; preds = %110
  %144 = load i8*, i8** %10, align 8
  %145 = load i64, i64* %14, align 8
  %146 = add i64 %145, 1
  %147 = getelementptr inbounds i8, i8* %144, i64 %146
  %148 = load i8, i8* %147, align 1
  %149 = icmp ne i8 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %143
  %151 = load i8*, i8** %10, align 8
  %152 = load i64, i64* %14, align 8
  %153 = add i64 %152, 1
  %154 = getelementptr inbounds i8, i8* %151, i64 %153
  store i8* %154, i8** %16, align 8
  br label %165

155:                                              ; preds = %143
  %156 = load i32*, i32** %13, align 8
  %157 = load i32, i32* %156, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %156, align 4
  %159 = load i8**, i8*** %12, align 8
  %160 = load i32*, i32** %13, align 8
  %161 = load i32, i32* %160, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i8*, i8** %159, i64 %162
  %164 = load i8*, i8** %163, align 8
  store i8* %164, i8** %16, align 8
  br label %165

165:                                              ; preds = %155, %150
  %166 = load i8*, i8** %16, align 8
  %167 = icmp eq i8* %166, null
  br i1 %167, label %168, label %173

168:                                              ; preds = %165
  %169 = load i32*, i32** %13, align 8
  %170 = load i32, i32* %169, align 4
  %171 = add nsw i32 %170, -1
  store i32 %171, i32* %169, align 4
  %172 = load i32, i32* @ARG_ERR_NO_ARG, align 4
  store i32 %172, i32* %7, align 4
  br label %270

173:                                              ; preds = %165
  %174 = load %struct.getargs*, %struct.getargs** %8, align 8
  %175 = load i64, i64* %15, align 8
  %176 = getelementptr inbounds %struct.getargs, %struct.getargs* %174, i64 %175
  %177 = getelementptr inbounds %struct.getargs, %struct.getargs* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = load i64, i64* @arg_integer, align 8
  %180 = icmp eq i64 %178, %179
  br i1 %180, label %181, label %195

181:                                              ; preds = %173
  %182 = load i8*, i8** %16, align 8
  %183 = call i32 (i8*, i8*, ...) @sscanf(i8* %182, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %19)
  %184 = icmp ne i32 %183, 1
  br i1 %184, label %185, label %187

185:                                              ; preds = %181
  %186 = load i32, i32* @ARG_ERR_BAD_ARG, align 4
  store i32 %186, i32* %7, align 4
  br label %270

187:                                              ; preds = %181
  %188 = load i32, i32* %19, align 4
  %189 = load %struct.getargs*, %struct.getargs** %8, align 8
  %190 = load i64, i64* %15, align 8
  %191 = getelementptr inbounds %struct.getargs, %struct.getargs* %189, i64 %190
  %192 = getelementptr inbounds %struct.getargs, %struct.getargs* %191, i32 0, i32 2
  %193 = load %struct.getarg_collect_info*, %struct.getarg_collect_info** %192, align 8
  %194 = bitcast %struct.getarg_collect_info* %193 to i32*
  store i32 %188, i32* %194, align 4
  store i32 0, i32* %7, align 4
  br label %270

195:                                              ; preds = %173
  %196 = load %struct.getargs*, %struct.getargs** %8, align 8
  %197 = load i64, i64* %15, align 8
  %198 = getelementptr inbounds %struct.getargs, %struct.getargs* %196, i64 %197
  %199 = getelementptr inbounds %struct.getargs, %struct.getargs* %198, i32 0, i32 1
  %200 = load i64, i64* %199, align 8
  %201 = load i64, i64* @arg_string, align 8
  %202 = icmp eq i64 %200, %201
  br i1 %202, label %203, label %211

203:                                              ; preds = %195
  %204 = load i8*, i8** %16, align 8
  %205 = load %struct.getargs*, %struct.getargs** %8, align 8
  %206 = load i64, i64* %15, align 8
  %207 = getelementptr inbounds %struct.getargs, %struct.getargs* %205, i64 %206
  %208 = getelementptr inbounds %struct.getargs, %struct.getargs* %207, i32 0, i32 2
  %209 = load %struct.getarg_collect_info*, %struct.getarg_collect_info** %208, align 8
  %210 = bitcast %struct.getarg_collect_info* %209 to i8**
  store i8* %204, i8** %210, align 8
  store i32 0, i32* %7, align 4
  br label %270

211:                                              ; preds = %195
  %212 = load %struct.getargs*, %struct.getargs** %8, align 8
  %213 = load i64, i64* %15, align 8
  %214 = getelementptr inbounds %struct.getargs, %struct.getargs* %212, i64 %213
  %215 = getelementptr inbounds %struct.getargs, %struct.getargs* %214, i32 0, i32 1
  %216 = load i64, i64* %215, align 8
  %217 = load i64, i64* @arg_strings, align 8
  %218 = icmp eq i64 %216, %217
  br i1 %218, label %219, label %228

219:                                              ; preds = %211
  %220 = load %struct.getargs*, %struct.getargs** %8, align 8
  %221 = load i64, i64* %15, align 8
  %222 = getelementptr inbounds %struct.getargs, %struct.getargs* %220, i64 %221
  %223 = getelementptr inbounds %struct.getargs, %struct.getargs* %222, i32 0, i32 2
  %224 = load %struct.getarg_collect_info*, %struct.getarg_collect_info** %223, align 8
  %225 = bitcast %struct.getarg_collect_info* %224 to i32*
  %226 = load i8*, i8** %16, align 8
  %227 = call i32 @add_string(i32* %225, i8* %226)
  store i32 %227, i32* %7, align 4
  br label %270

228:                                              ; preds = %211
  %229 = load %struct.getargs*, %struct.getargs** %8, align 8
  %230 = load i64, i64* %15, align 8
  %231 = getelementptr inbounds %struct.getargs, %struct.getargs* %229, i64 %230
  %232 = getelementptr inbounds %struct.getargs, %struct.getargs* %231, i32 0, i32 1
  %233 = load i64, i64* %232, align 8
  %234 = load i64, i64* @arg_double, align 8
  %235 = icmp eq i64 %233, %234
  br i1 %235, label %236, label %250

236:                                              ; preds = %228
  %237 = load i8*, i8** %16, align 8
  %238 = call i32 (i8*, i8*, ...) @sscanf(i8* %237, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), double* %20)
  %239 = icmp ne i32 %238, 1
  br i1 %239, label %240, label %242

240:                                              ; preds = %236
  %241 = load i32, i32* @ARG_ERR_BAD_ARG, align 4
  store i32 %241, i32* %7, align 4
  br label %270

242:                                              ; preds = %236
  %243 = load double, double* %20, align 8
  %244 = load %struct.getargs*, %struct.getargs** %8, align 8
  %245 = load i64, i64* %15, align 8
  %246 = getelementptr inbounds %struct.getargs, %struct.getargs* %244, i64 %245
  %247 = getelementptr inbounds %struct.getargs, %struct.getargs* %246, i32 0, i32 2
  %248 = load %struct.getarg_collect_info*, %struct.getarg_collect_info** %247, align 8
  %249 = bitcast %struct.getarg_collect_info* %248 to double*
  store double %243, double* %249, align 8
  store i32 0, i32* %7, align 4
  br label %270

250:                                              ; preds = %228
  br label %251

251:                                              ; preds = %250
  br label %252

252:                                              ; preds = %251
  br label %253

253:                                              ; preds = %252
  %254 = load i32, i32* @ARG_ERR_BAD_ARG, align 4
  store i32 %254, i32* %7, align 4
  br label %270

255:                                              ; preds = %50
  br label %256

256:                                              ; preds = %255, %49
  %257 = load i64, i64* %15, align 8
  %258 = add i64 %257, 1
  store i64 %258, i64* %15, align 8
  br label %37

259:                                              ; preds = %140, %101, %86, %71, %37
  %260 = load i64, i64* %15, align 8
  %261 = load i64, i64* %9, align 8
  %262 = icmp eq i64 %260, %261
  br i1 %262, label %263, label %265

263:                                              ; preds = %259
  %264 = load i32, i32* @ARG_ERR_NO_MATCH, align 4
  store i32 %264, i32* %7, align 4
  br label %270

265:                                              ; preds = %259
  br label %266

266:                                              ; preds = %265
  %267 = load i64, i64* %14, align 8
  %268 = add i64 %267, 1
  store i64 %268, i64* %14, align 8
  br label %21

269:                                              ; preds = %34
  store i32 0, i32* %7, align 4
  br label %270

270:                                              ; preds = %269, %263, %253, %242, %240, %219, %203, %187, %185, %168, %138
  %271 = load i32, i32* %7, align 4
  ret i32 %271
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, ...) #1

declare dso_local i32 @add_string(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
