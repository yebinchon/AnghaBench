; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/wind/extr_punycode.c_wind_punycode_label_toascii.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/wind/extr_punycode.c_wind_punycode_label_toascii.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@initial_n = common dso_local global i32 0, align 4
@initial_bias = common dso_local global i32 0, align 4
@WIND_ERR_OVERRUN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"xn--\00", align 1
@base = common dso_local global i32 0, align 4
@t_min = common dso_local global i32 0, align 4
@t_max = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wind_punycode_label_toascii(i32* %0, i64 %1, i8* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i64* %3, i64** %9, align 8
  %21 = load i32, i32* @initial_n, align 4
  store i32 %21, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %22 = load i32, i32* @initial_bias, align 4
  store i32 %22, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %15, align 4
  br label %23

23:                                               ; preds = %58, %4
  %24 = load i32, i32* %15, align 4
  %25 = zext i32 %24 to i64
  %26 = load i64, i64* %7, align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %28, label %61

28:                                               ; preds = %23
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* %15, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = icmp slt i32 %33, 128
  br i1 %34, label %35, label %57

35:                                               ; preds = %28
  %36 = load i32, i32* %13, align 4
  %37 = add i32 %36, 1
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %16, align 4
  %39 = zext i32 %38 to i64
  %40 = load i64*, i64** %9, align 8
  %41 = load i64, i64* %40, align 8
  %42 = icmp uge i64 %39, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %35
  %44 = load i32, i32* @WIND_ERR_OVERRUN, align 4
  store i32 %44, i32* %5, align 4
  br label %277

45:                                               ; preds = %35
  %46 = load i32*, i32** %6, align 8
  %47 = load i32, i32* %15, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = trunc i32 %50 to i8
  %52 = load i8*, i8** %8, align 8
  %53 = load i32, i32* %16, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %16, align 4
  %55 = zext i32 %53 to i64
  %56 = getelementptr inbounds i8, i8* %52, i64 %55
  store i8 %51, i8* %56, align 1
  br label %57

57:                                               ; preds = %45, %28
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %15, align 4
  %60 = add i32 %59, 1
  store i32 %60, i32* %15, align 4
  br label %23

61:                                               ; preds = %23
  %62 = load i32, i32* %13, align 4
  store i32 %62, i32* %14, align 4
  %63 = load i32, i32* %14, align 4
  %64 = icmp ugt i32 %63, 0
  br i1 %64, label %65, label %79

65:                                               ; preds = %61
  %66 = load i32, i32* %16, align 4
  %67 = zext i32 %66 to i64
  %68 = load i64*, i64** %9, align 8
  %69 = load i64, i64* %68, align 8
  %70 = icmp uge i64 %67, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %65
  %72 = load i32, i32* @WIND_ERR_OVERRUN, align 4
  store i32 %72, i32* %5, align 4
  br label %277

73:                                               ; preds = %65
  %74 = load i8*, i8** %8, align 8
  %75 = load i32, i32* %16, align 4
  %76 = add i32 %75, 1
  store i32 %76, i32* %16, align 4
  %77 = zext i32 %75 to i64
  %78 = getelementptr inbounds i8, i8* %74, i64 %77
  store i8 45, i8* %78, align 1
  br label %79

79:                                               ; preds = %73, %61
  %80 = load i32, i32* %13, align 4
  %81 = zext i32 %80 to i64
  %82 = load i64, i64* %7, align 8
  %83 = icmp ult i64 %81, %82
  br i1 %83, label %84, label %103

84:                                               ; preds = %79
  %85 = load i32, i32* %16, align 4
  %86 = add i32 %85, 4
  %87 = zext i32 %86 to i64
  %88 = load i64*, i64** %9, align 8
  %89 = load i64, i64* %88, align 8
  %90 = icmp uge i64 %87, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %84
  %92 = load i32, i32* @WIND_ERR_OVERRUN, align 4
  store i32 %92, i32* %5, align 4
  br label %277

93:                                               ; preds = %84
  %94 = load i8*, i8** %8, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 4
  %96 = load i8*, i8** %8, align 8
  %97 = load i32, i32* %16, align 4
  %98 = call i32 @memmove(i8* %95, i8* %96, i32 %97)
  %99 = load i8*, i8** %8, align 8
  %100 = call i32 @memcpy(i8* %99, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %101 = load i32, i32* %16, align 4
  %102 = add i32 %101, 4
  store i32 %102, i32* %16, align 4
  br label %103

103:                                              ; preds = %93, %79
  br label %104

104:                                              ; preds = %268, %103
  %105 = load i32, i32* %13, align 4
  %106 = zext i32 %105 to i64
  %107 = load i64, i64* %7, align 8
  %108 = icmp ult i64 %106, %107
  br i1 %108, label %109, label %273

109:                                              ; preds = %104
  store i32 -1, i32* %17, align 4
  store i32 0, i32* %15, align 4
  br label %110

110:                                              ; preds = %138, %109
  %111 = load i32, i32* %15, align 4
  %112 = zext i32 %111 to i64
  %113 = load i64, i64* %7, align 8
  %114 = icmp ult i64 %112, %113
  br i1 %114, label %115, label %141

115:                                              ; preds = %110
  %116 = load i32*, i32** %6, align 8
  %117 = load i32, i32* %15, align 4
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %17, align 4
  %122 = icmp ult i32 %120, %121
  br i1 %122, label %123, label %137

123:                                              ; preds = %115
  %124 = load i32*, i32** %6, align 8
  %125 = load i32, i32* %15, align 4
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* %10, align 4
  %130 = icmp uge i32 %128, %129
  br i1 %130, label %131, label %137

131:                                              ; preds = %123
  %132 = load i32*, i32** %6, align 8
  %133 = load i32, i32* %15, align 4
  %134 = zext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = load i32, i32* %135, align 4
  store i32 %136, i32* %17, align 4
  br label %137

137:                                              ; preds = %131, %123, %115
  br label %138

138:                                              ; preds = %137
  %139 = load i32, i32* %15, align 4
  %140 = add i32 %139, 1
  store i32 %140, i32* %15, align 4
  br label %110

141:                                              ; preds = %110
  %142 = load i32, i32* %17, align 4
  %143 = load i32, i32* %10, align 4
  %144 = sub i32 %142, %143
  %145 = load i32, i32* %13, align 4
  %146 = add i32 %145, 1
  %147 = mul i32 %144, %146
  %148 = load i32, i32* %11, align 4
  %149 = add i32 %148, %147
  store i32 %149, i32* %11, align 4
  %150 = load i32, i32* %17, align 4
  store i32 %150, i32* %10, align 4
  store i32 0, i32* %15, align 4
  br label %151

151:                                              ; preds = %265, %141
  %152 = load i32, i32* %15, align 4
  %153 = zext i32 %152 to i64
  %154 = load i64, i64* %7, align 8
  %155 = icmp ult i64 %153, %154
  br i1 %155, label %156, label %268

156:                                              ; preds = %151
  %157 = load i32*, i32** %6, align 8
  %158 = load i32, i32* %15, align 4
  %159 = zext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %157, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* %10, align 4
  %163 = icmp ult i32 %161, %162
  br i1 %163, label %164, label %167

164:                                              ; preds = %156
  %165 = load i32, i32* %11, align 4
  %166 = add i32 %165, 1
  store i32 %166, i32* %11, align 4
  br label %264

167:                                              ; preds = %156
  %168 = load i32*, i32** %6, align 8
  %169 = load i32, i32* %15, align 4
  %170 = zext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %168, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* %10, align 4
  %174 = icmp eq i32 %172, %173
  br i1 %174, label %175, label %263

175:                                              ; preds = %167
  %176 = load i32, i32* %11, align 4
  store i32 %176, i32* %18, align 4
  %177 = load i32, i32* @base, align 4
  store i32 %177, i32* %19, align 4
  br label %178

178:                                              ; preds = %233, %175
  %179 = load i32, i32* %19, align 4
  %180 = load i32, i32* %12, align 4
  %181 = icmp ule i32 %179, %180
  br i1 %181, label %182, label %184

182:                                              ; preds = %178
  %183 = load i32, i32* @t_min, align 4
  store i32 %183, i32* %20, align 4
  br label %197

184:                                              ; preds = %178
  %185 = load i32, i32* %19, align 4
  %186 = load i32, i32* %12, align 4
  %187 = load i32, i32* @t_max, align 4
  %188 = add i32 %186, %187
  %189 = icmp uge i32 %185, %188
  br i1 %189, label %190, label %192

190:                                              ; preds = %184
  %191 = load i32, i32* @t_max, align 4
  store i32 %191, i32* %20, align 4
  br label %196

192:                                              ; preds = %184
  %193 = load i32, i32* %19, align 4
  %194 = load i32, i32* %12, align 4
  %195 = sub i32 %193, %194
  store i32 %195, i32* %20, align 4
  br label %196

196:                                              ; preds = %192, %190
  br label %197

197:                                              ; preds = %196, %182
  %198 = load i32, i32* %18, align 4
  %199 = load i32, i32* %20, align 4
  %200 = icmp ult i32 %198, %199
  br i1 %200, label %201, label %202

201:                                              ; preds = %197
  br label %237

202:                                              ; preds = %197
  %203 = load i32, i32* %16, align 4
  %204 = zext i32 %203 to i64
  %205 = load i64*, i64** %9, align 8
  %206 = load i64, i64* %205, align 8
  %207 = icmp uge i64 %204, %206
  br i1 %207, label %208, label %210

208:                                              ; preds = %202
  %209 = load i32, i32* @WIND_ERR_OVERRUN, align 4
  store i32 %209, i32* %5, align 4
  br label %277

210:                                              ; preds = %202
  %211 = load i32, i32* %20, align 4
  %212 = load i32, i32* %18, align 4
  %213 = load i32, i32* %20, align 4
  %214 = sub i32 %212, %213
  %215 = load i32, i32* @base, align 4
  %216 = load i32, i32* %20, align 4
  %217 = sub i32 %215, %216
  %218 = urem i32 %214, %217
  %219 = add i32 %211, %218
  %220 = call signext i8 @digit(i32 %219)
  %221 = load i8*, i8** %8, align 8
  %222 = load i32, i32* %16, align 4
  %223 = add i32 %222, 1
  store i32 %223, i32* %16, align 4
  %224 = zext i32 %222 to i64
  %225 = getelementptr inbounds i8, i8* %221, i64 %224
  store i8 %220, i8* %225, align 1
  %226 = load i32, i32* %18, align 4
  %227 = load i32, i32* %20, align 4
  %228 = sub i32 %226, %227
  %229 = load i32, i32* @base, align 4
  %230 = load i32, i32* %20, align 4
  %231 = sub i32 %229, %230
  %232 = udiv i32 %228, %231
  store i32 %232, i32* %18, align 4
  br label %233

233:                                              ; preds = %210
  %234 = load i32, i32* @base, align 4
  %235 = load i32, i32* %19, align 4
  %236 = add i32 %235, %234
  store i32 %236, i32* %19, align 4
  br label %178

237:                                              ; preds = %201
  %238 = load i32, i32* %16, align 4
  %239 = zext i32 %238 to i64
  %240 = load i64*, i64** %9, align 8
  %241 = load i64, i64* %240, align 8
  %242 = icmp uge i64 %239, %241
  br i1 %242, label %243, label %245

243:                                              ; preds = %237
  %244 = load i32, i32* @WIND_ERR_OVERRUN, align 4
  store i32 %244, i32* %5, align 4
  br label %277

245:                                              ; preds = %237
  %246 = load i32, i32* %18, align 4
  %247 = call signext i8 @digit(i32 %246)
  %248 = load i8*, i8** %8, align 8
  %249 = load i32, i32* %16, align 4
  %250 = add i32 %249, 1
  store i32 %250, i32* %16, align 4
  %251 = zext i32 %249 to i64
  %252 = getelementptr inbounds i8, i8* %248, i64 %251
  store i8 %247, i8* %252, align 1
  %253 = load i32, i32* %11, align 4
  %254 = load i32, i32* %13, align 4
  %255 = add i32 %254, 1
  %256 = load i32, i32* %13, align 4
  %257 = load i32, i32* %14, align 4
  %258 = icmp eq i32 %256, %257
  %259 = zext i1 %258 to i32
  %260 = call i32 @adapt(i32 %253, i32 %255, i32 %259)
  store i32 %260, i32* %12, align 4
  store i32 0, i32* %11, align 4
  %261 = load i32, i32* %13, align 4
  %262 = add i32 %261, 1
  store i32 %262, i32* %13, align 4
  br label %263

263:                                              ; preds = %245, %167
  br label %264

264:                                              ; preds = %263, %164
  br label %265

265:                                              ; preds = %264
  %266 = load i32, i32* %15, align 4
  %267 = add i32 %266, 1
  store i32 %267, i32* %15, align 4
  br label %151

268:                                              ; preds = %151
  %269 = load i32, i32* %11, align 4
  %270 = add i32 %269, 1
  store i32 %270, i32* %11, align 4
  %271 = load i32, i32* %10, align 4
  %272 = add i32 %271, 1
  store i32 %272, i32* %10, align 4
  br label %104

273:                                              ; preds = %104
  %274 = load i32, i32* %16, align 4
  %275 = zext i32 %274 to i64
  %276 = load i64*, i64** %9, align 8
  store i64 %275, i64* %276, align 8
  store i32 0, i32* %5, align 4
  br label %277

277:                                              ; preds = %273, %243, %208, %91, %71, %43
  %278 = load i32, i32* %5, align 4
  ret i32 %278
}

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local signext i8 @digit(i32) #1

declare dso_local i32 @adapt(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
