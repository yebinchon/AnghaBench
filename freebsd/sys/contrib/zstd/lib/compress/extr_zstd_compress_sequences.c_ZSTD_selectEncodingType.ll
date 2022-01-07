; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/compress/extr_zstd_compress_sequences.c_ZSTD_selectEncodingType.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/compress/extr_zstd_compress_sequences.c_ZSTD_selectEncodingType.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZSTD_defaultDisallowed = common dso_local global i64 0, align 8
@ZSTD_defaultAllowed = common dso_local global i64 0, align 8
@FSE_repeat_none = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"Selected set_basic\00", align 1
@set_basic = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"Selected set_rle\00", align 1
@set_rle = common dso_local global i32 0, align 4
@ZSTD_lazy = common dso_local global i32 0, align 4
@FSE_repeat_valid = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"Selected set_repeat\00", align 1
@set_repeat = common dso_local global i32 0, align 4
@GENERIC = common dso_local global i32 0, align 4
@maxCode = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [54 x i8] c"Estimated bit costs: basic=%u\09repeat=%u\09compressed=%u\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"Selected set_compressed\00", align 1
@FSE_repeat_check = common dso_local global i64 0, align 8
@set_compressed = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ZSTD_selectEncodingType(i64* %0, i32* %1, i32 %2, i64 %3, i64 %4, i32 %5, i32* %6, i16* %7, i64 %8, i32 %9, i32 %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca i64*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i16*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  store i64* %0, i64** %13, align 8
  store i32* %1, i32** %14, align 8
  store i32 %2, i32* %15, align 4
  store i64 %3, i64* %16, align 8
  store i64 %4, i64* %17, align 8
  store i32 %5, i32* %18, align 4
  store i32* %6, i32** %19, align 8
  store i16* %7, i16** %20, align 8
  store i64 %8, i64* %21, align 8
  store i32 %9, i32* %22, align 4
  store i32 %10, i32* %23, align 4
  %32 = load i64, i64* @ZSTD_defaultDisallowed, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %11
  %35 = load i64, i64* @ZSTD_defaultAllowed, align 8
  %36 = icmp ne i64 %35, 0
  br label %37

37:                                               ; preds = %34, %11
  %38 = phi i1 [ false, %11 ], [ %36, %34 ]
  %39 = zext i1 %38 to i32
  %40 = call i32 @ZSTD_STATIC_ASSERT(i32 %39)
  %41 = load i64, i64* %16, align 8
  %42 = load i64, i64* %17, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %58

44:                                               ; preds = %37
  %45 = load i64, i64* @FSE_repeat_none, align 8
  %46 = load i64*, i64** %13, align 8
  store i64 %45, i64* %46, align 8
  %47 = load i32, i32* %22, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = load i64, i64* %17, align 8
  %51 = icmp ule i64 %50, 2
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = call i32 (i32, i8*, ...) @DEBUGLOG(i32 5, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %54 = load i32, i32* @set_basic, align 4
  store i32 %54, i32* %12, align 4
  br label %246

55:                                               ; preds = %49, %44
  %56 = call i32 (i32, i8*, ...) @DEBUGLOG(i32 5, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %57 = load i32, i32* @set_rle, align 4
  store i32 %57, i32* %12, align 4
  br label %246

58:                                               ; preds = %37
  %59 = load i32, i32* %23, align 4
  %60 = load i32, i32* @ZSTD_lazy, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %120

62:                                               ; preds = %58
  %63 = load i32, i32* %22, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %119

65:                                               ; preds = %62
  store i64 1000, i64* %24, align 8
  %66 = load i32, i32* %23, align 4
  %67 = sub nsw i32 10, %66
  %68 = sext i32 %67 to i64
  store i64 %68, i64* %25, align 8
  store i64 3, i64* %26, align 8
  %69 = load i64, i64* %21, align 8
  %70 = shl i64 1, %69
  %71 = load i64, i64* %25, align 8
  %72 = mul i64 %70, %71
  %73 = lshr i64 %72, 3
  store i64 %73, i64* %27, align 8
  %74 = load i64, i64* %21, align 8
  %75 = icmp uge i64 %74, 5
  br i1 %75, label %76, label %79

76:                                               ; preds = %65
  %77 = load i64, i64* %21, align 8
  %78 = icmp ule i64 %77, 6
  br label %79

79:                                               ; preds = %76, %65
  %80 = phi i1 [ false, %65 ], [ %78, %76 ]
  %81 = zext i1 %80 to i32
  %82 = call i32 @assert(i32 %81)
  %83 = load i64, i64* %25, align 8
  %84 = icmp ule i64 %83, 9
  br i1 %84, label %85, label %88

85:                                               ; preds = %79
  %86 = load i64, i64* %25, align 8
  %87 = icmp uge i64 %86, 7
  br label %88

88:                                               ; preds = %85, %79
  %89 = phi i1 [ false, %79 ], [ %87, %85 ]
  %90 = zext i1 %89 to i32
  %91 = call i32 @assert(i32 %90)
  %92 = load i64*, i64** %13, align 8
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @FSE_repeat_valid, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %102

96:                                               ; preds = %88
  %97 = load i64, i64* %17, align 8
  %98 = icmp ult i64 %97, 1000
  br i1 %98, label %99, label %102

99:                                               ; preds = %96
  %100 = call i32 (i32, i8*, ...) @DEBUGLOG(i32 5, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %101 = load i32, i32* @set_repeat, align 4
  store i32 %101, i32* %12, align 4
  br label %246

102:                                              ; preds = %96, %88
  %103 = load i64, i64* %17, align 8
  %104 = load i64, i64* %27, align 8
  %105 = icmp ult i64 %103, %104
  br i1 %105, label %113, label %106

106:                                              ; preds = %102
  %107 = load i64, i64* %16, align 8
  %108 = load i64, i64* %17, align 8
  %109 = load i64, i64* %21, align 8
  %110 = sub i64 %109, 1
  %111 = lshr i64 %108, %110
  %112 = icmp ult i64 %107, %111
  br i1 %112, label %113, label %118

113:                                              ; preds = %106, %102
  %114 = call i32 (i32, i8*, ...) @DEBUGLOG(i32 5, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %115 = load i64, i64* @FSE_repeat_none, align 8
  %116 = load i64*, i64** %13, align 8
  store i64 %115, i64* %116, align 8
  %117 = load i32, i32* @set_basic, align 4
  store i32 %117, i32* %12, align 4
  br label %246

118:                                              ; preds = %106
  br label %119

119:                                              ; preds = %118, %62
  br label %241

120:                                              ; preds = %58
  %121 = load i32, i32* %22, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %120
  %124 = load i16*, i16** %20, align 8
  %125 = load i64, i64* %21, align 8
  %126 = load i32*, i32** %14, align 8
  %127 = load i32, i32* %15, align 4
  %128 = call i64 @ZSTD_crossEntropyCost(i16* %124, i64 %125, i32* %126, i32 %127)
  br label %132

129:                                              ; preds = %120
  %130 = load i32, i32* @GENERIC, align 4
  %131 = call i64 @ERROR(i32 %130)
  br label %132

132:                                              ; preds = %129, %123
  %133 = phi i64 [ %128, %123 ], [ %131, %129 ]
  store i64 %133, i64* %28, align 8
  %134 = load i64*, i64** %13, align 8
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @FSE_repeat_none, align 8
  %137 = icmp ne i64 %135, %136
  br i1 %137, label %138, label %143

138:                                              ; preds = %132
  %139 = load i32*, i32** %19, align 8
  %140 = load i32*, i32** %14, align 8
  %141 = load i32, i32* %15, align 4
  %142 = call i64 @ZSTD_fseBitCost(i32* %139, i32* %140, i32 %141)
  br label %146

143:                                              ; preds = %132
  %144 = load i32, i32* @GENERIC, align 4
  %145 = call i64 @ERROR(i32 %144)
  br label %146

146:                                              ; preds = %143, %138
  %147 = phi i64 [ %142, %138 ], [ %145, %143 ]
  store i64 %147, i64* %29, align 8
  %148 = load i32*, i32** %14, align 8
  %149 = load i32, i32* %15, align 4
  %150 = load i64, i64* %17, align 8
  %151 = load i32, i32* %18, align 4
  %152 = call i64 @ZSTD_NCountCost(i32* %148, i32 %149, i64 %150, i32 %151)
  store i64 %152, i64* %30, align 8
  %153 = load i64, i64* %30, align 8
  %154 = shl i64 %153, 3
  %155 = load i32*, i32** %14, align 8
  %156 = load i32, i32* %15, align 4
  %157 = load i64, i64* %17, align 8
  %158 = call i64 @ZSTD_entropyCost(i32* %155, i32 %156, i64 %157)
  %159 = add i64 %154, %158
  store i64 %159, i64* %31, align 8
  %160 = load i32, i32* %22, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %182

162:                                              ; preds = %146
  %163 = load i64, i64* %28, align 8
  %164 = call i64 @ZSTD_isError(i64 %163)
  %165 = icmp ne i64 %164, 0
  %166 = xor i1 %165, true
  %167 = zext i1 %166 to i32
  %168 = call i32 @assert(i32 %167)
  %169 = load i64*, i64** %13, align 8
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @FSE_repeat_valid, align 8
  %172 = icmp eq i64 %170, %171
  br i1 %172, label %173, label %177

173:                                              ; preds = %162
  %174 = load i64, i64* %29, align 8
  %175 = call i64 @ZSTD_isError(i64 %174)
  %176 = icmp ne i64 %175, 0
  br label %177

177:                                              ; preds = %173, %162
  %178 = phi i1 [ false, %162 ], [ %176, %173 ]
  %179 = xor i1 %178, true
  %180 = zext i1 %179 to i32
  %181 = call i32 @assert(i32 %180)
  br label %182

182:                                              ; preds = %177, %146
  %183 = load i64, i64* %30, align 8
  %184 = call i64 @ZSTD_isError(i64 %183)
  %185 = icmp ne i64 %184, 0
  %186 = xor i1 %185, true
  %187 = zext i1 %186 to i32
  %188 = call i32 @assert(i32 %187)
  %189 = load i64, i64* %31, align 8
  %190 = load i32, i32* @maxCode, align 4
  %191 = call i64 @ERROR(i32 %190)
  %192 = icmp ult i64 %189, %191
  %193 = zext i1 %192 to i32
  %194 = call i32 @assert(i32 %193)
  %195 = load i64, i64* %28, align 8
  %196 = trunc i64 %195 to i32
  %197 = load i64, i64* %29, align 8
  %198 = trunc i64 %197 to i32
  %199 = load i64, i64* %31, align 8
  %200 = trunc i64 %199 to i32
  %201 = call i32 (i32, i8*, ...) @DEBUGLOG(i32 5, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i32 %196, i32 %198, i32 %200)
  %202 = load i64, i64* %28, align 8
  %203 = load i64, i64* %29, align 8
  %204 = icmp ule i64 %202, %203
  br i1 %204, label %205, label %216

205:                                              ; preds = %182
  %206 = load i64, i64* %28, align 8
  %207 = load i64, i64* %31, align 8
  %208 = icmp ule i64 %206, %207
  br i1 %208, label %209, label %216

209:                                              ; preds = %205
  %210 = call i32 (i32, i8*, ...) @DEBUGLOG(i32 5, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %211 = load i32, i32* %22, align 4
  %212 = call i32 @assert(i32 %211)
  %213 = load i64, i64* @FSE_repeat_none, align 8
  %214 = load i64*, i64** %13, align 8
  store i64 %213, i64* %214, align 8
  %215 = load i32, i32* @set_basic, align 4
  store i32 %215, i32* %12, align 4
  br label %246

216:                                              ; preds = %205, %182
  %217 = load i64, i64* %29, align 8
  %218 = load i64, i64* %31, align 8
  %219 = icmp ule i64 %217, %218
  br i1 %219, label %220, label %229

220:                                              ; preds = %216
  %221 = call i32 (i32, i8*, ...) @DEBUGLOG(i32 5, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %222 = load i64, i64* %29, align 8
  %223 = call i64 @ZSTD_isError(i64 %222)
  %224 = icmp ne i64 %223, 0
  %225 = xor i1 %224, true
  %226 = zext i1 %225 to i32
  %227 = call i32 @assert(i32 %226)
  %228 = load i32, i32* @set_repeat, align 4
  store i32 %228, i32* %12, align 4
  br label %246

229:                                              ; preds = %216
  %230 = load i64, i64* %31, align 8
  %231 = load i64, i64* %28, align 8
  %232 = icmp ult i64 %230, %231
  br i1 %232, label %233, label %237

233:                                              ; preds = %229
  %234 = load i64, i64* %31, align 8
  %235 = load i64, i64* %29, align 8
  %236 = icmp ult i64 %234, %235
  br label %237

237:                                              ; preds = %233, %229
  %238 = phi i1 [ false, %229 ], [ %236, %233 ]
  %239 = zext i1 %238 to i32
  %240 = call i32 @assert(i32 %239)
  br label %241

241:                                              ; preds = %237, %119
  %242 = call i32 (i32, i8*, ...) @DEBUGLOG(i32 5, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %243 = load i64, i64* @FSE_repeat_check, align 8
  %244 = load i64*, i64** %13, align 8
  store i64 %243, i64* %244, align 8
  %245 = load i32, i32* @set_compressed, align 4
  store i32 %245, i32* %12, align 4
  br label %246

246:                                              ; preds = %241, %220, %209, %113, %99, %55, %52
  %247 = load i32, i32* %12, align 4
  ret i32 %247
}

declare dso_local i32 @ZSTD_STATIC_ASSERT(i32) #1

declare dso_local i32 @DEBUGLOG(i32, i8*, ...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @ZSTD_crossEntropyCost(i16*, i64, i32*, i32) #1

declare dso_local i64 @ERROR(i32) #1

declare dso_local i64 @ZSTD_fseBitCost(i32*, i32*, i32) #1

declare dso_local i64 @ZSTD_NCountCost(i32*, i32, i64, i32) #1

declare dso_local i64 @ZSTD_entropyCost(i32*, i32, i64) #1

declare dso_local i64 @ZSTD_isError(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
