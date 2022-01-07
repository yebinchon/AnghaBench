; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_utils_module_tests.c_bitfield_tests.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_utils_module_tests.c_bitfield_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bitfield = type { i32 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"bitfield tests\00", align 1
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"%d bitfield test(s) failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @bitfield_tests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bitfield_tests() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.bitfield*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %4, align 4
  %5 = load i32, i32* @MSG_INFO, align 4
  %6 = call i32 (i32, i8*, ...) @wpa_printf(i32 %5, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %7 = call %struct.bitfield* @bitfield_alloc(i32 123)
  store %struct.bitfield* %7, %struct.bitfield** %2, align 8
  %8 = load %struct.bitfield*, %struct.bitfield** %2, align 8
  %9 = icmp eq %struct.bitfield* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %0
  store i32 -1, i32* %1, align 4
  br label %288

11:                                               ; preds = %0
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %64, %11
  %13 = load i32, i32* %3, align 4
  %14 = icmp slt i32 %13, 123
  br i1 %14, label %15, label %67

15:                                               ; preds = %12
  %16 = load %struct.bitfield*, %struct.bitfield** %2, align 8
  %17 = load i32, i32* %3, align 4
  %18 = call i64 @bitfield_is_set(%struct.bitfield* %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %15
  %21 = load %struct.bitfield*, %struct.bitfield** %2, align 8
  %22 = load i32, i32* %3, align 4
  %23 = add nsw i32 %22, 1
  %24 = call i64 @bitfield_is_set(%struct.bitfield* %21, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %20, %15
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %26, %20
  %30 = load i32, i32* %3, align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %29
  %33 = load %struct.bitfield*, %struct.bitfield** %2, align 8
  %34 = load i32, i32* %3, align 4
  %35 = sub nsw i32 %34, 1
  %36 = call i64 @bitfield_is_set(%struct.bitfield* %33, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load i32, i32* %4, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %38, %32, %29
  %42 = load %struct.bitfield*, %struct.bitfield** %2, align 8
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @bitfield_set(%struct.bitfield* %42, i32 %43)
  %45 = load %struct.bitfield*, %struct.bitfield** %2, align 8
  %46 = load i32, i32* %3, align 4
  %47 = call i64 @bitfield_is_set(%struct.bitfield* %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %41
  %50 = load i32, i32* %4, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %49, %41
  %53 = load %struct.bitfield*, %struct.bitfield** %2, align 8
  %54 = load i32, i32* %3, align 4
  %55 = call i32 @bitfield_clear(%struct.bitfield* %53, i32 %54)
  %56 = load %struct.bitfield*, %struct.bitfield** %2, align 8
  %57 = load i32, i32* %3, align 4
  %58 = call i64 @bitfield_is_set(%struct.bitfield* %56, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %52
  %61 = load i32, i32* %4, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %60, %52
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %3, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %3, align 4
  br label %12

67:                                               ; preds = %12
  store i32 123, i32* %3, align 4
  br label %68

68:                                               ; preds = %120, %67
  %69 = load i32, i32* %3, align 4
  %70 = icmp slt i32 %69, 200
  br i1 %70, label %71, label %123

71:                                               ; preds = %68
  %72 = load %struct.bitfield*, %struct.bitfield** %2, align 8
  %73 = load i32, i32* %3, align 4
  %74 = call i64 @bitfield_is_set(%struct.bitfield* %72, i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %82, label %76

76:                                               ; preds = %71
  %77 = load %struct.bitfield*, %struct.bitfield** %2, align 8
  %78 = load i32, i32* %3, align 4
  %79 = add nsw i32 %78, 1
  %80 = call i64 @bitfield_is_set(%struct.bitfield* %77, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %76, %71
  %83 = load i32, i32* %4, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %4, align 4
  br label %85

85:                                               ; preds = %82, %76
  %86 = load i32, i32* %3, align 4
  %87 = icmp sgt i32 %86, 0
  br i1 %87, label %88, label %97

88:                                               ; preds = %85
  %89 = load %struct.bitfield*, %struct.bitfield** %2, align 8
  %90 = load i32, i32* %3, align 4
  %91 = sub nsw i32 %90, 1
  %92 = call i64 @bitfield_is_set(%struct.bitfield* %89, i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %88
  %95 = load i32, i32* %4, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %4, align 4
  br label %97

97:                                               ; preds = %94, %88, %85
  %98 = load %struct.bitfield*, %struct.bitfield** %2, align 8
  %99 = load i32, i32* %3, align 4
  %100 = call i32 @bitfield_set(%struct.bitfield* %98, i32 %99)
  %101 = load %struct.bitfield*, %struct.bitfield** %2, align 8
  %102 = load i32, i32* %3, align 4
  %103 = call i64 @bitfield_is_set(%struct.bitfield* %101, i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %97
  %106 = load i32, i32* %4, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %4, align 4
  br label %108

108:                                              ; preds = %105, %97
  %109 = load %struct.bitfield*, %struct.bitfield** %2, align 8
  %110 = load i32, i32* %3, align 4
  %111 = call i32 @bitfield_clear(%struct.bitfield* %109, i32 %110)
  %112 = load %struct.bitfield*, %struct.bitfield** %2, align 8
  %113 = load i32, i32* %3, align 4
  %114 = call i64 @bitfield_is_set(%struct.bitfield* %112, i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %108
  %117 = load i32, i32* %4, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %4, align 4
  br label %119

119:                                              ; preds = %116, %108
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %3, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %3, align 4
  br label %68

123:                                              ; preds = %68
  store i32 0, i32* %3, align 4
  br label %124

124:                                              ; preds = %153, %123
  %125 = load i32, i32* %3, align 4
  %126 = icmp slt i32 %125, 123
  br i1 %126, label %127, label %156

127:                                              ; preds = %124
  %128 = load %struct.bitfield*, %struct.bitfield** %2, align 8
  %129 = load i32, i32* %3, align 4
  %130 = call i64 @bitfield_is_set(%struct.bitfield* %128, i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %138, label %132

132:                                              ; preds = %127
  %133 = load %struct.bitfield*, %struct.bitfield** %2, align 8
  %134 = load i32, i32* %3, align 4
  %135 = add nsw i32 %134, 1
  %136 = call i64 @bitfield_is_set(%struct.bitfield* %133, i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %132, %127
  %139 = load i32, i32* %4, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %4, align 4
  br label %141

141:                                              ; preds = %138, %132
  %142 = load %struct.bitfield*, %struct.bitfield** %2, align 8
  %143 = load i32, i32* %3, align 4
  %144 = call i32 @bitfield_set(%struct.bitfield* %142, i32 %143)
  %145 = load %struct.bitfield*, %struct.bitfield** %2, align 8
  %146 = load i32, i32* %3, align 4
  %147 = call i64 @bitfield_is_set(%struct.bitfield* %145, i32 %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %152, label %149

149:                                              ; preds = %141
  %150 = load i32, i32* %4, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %4, align 4
  br label %152

152:                                              ; preds = %149, %141
  br label %153

153:                                              ; preds = %152
  %154 = load i32, i32* %3, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %3, align 4
  br label %124

156:                                              ; preds = %124
  store i32 0, i32* %3, align 4
  br label %157

157:                                              ; preds = %180, %156
  %158 = load i32, i32* %3, align 4
  %159 = icmp slt i32 %158, 123
  br i1 %159, label %160, label %183

160:                                              ; preds = %157
  %161 = load %struct.bitfield*, %struct.bitfield** %2, align 8
  %162 = load i32, i32* %3, align 4
  %163 = call i64 @bitfield_is_set(%struct.bitfield* %161, i32 %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %168, label %165

165:                                              ; preds = %160
  %166 = load i32, i32* %4, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %4, align 4
  br label %168

168:                                              ; preds = %165, %160
  %169 = load %struct.bitfield*, %struct.bitfield** %2, align 8
  %170 = load i32, i32* %3, align 4
  %171 = call i32 @bitfield_clear(%struct.bitfield* %169, i32 %170)
  %172 = load %struct.bitfield*, %struct.bitfield** %2, align 8
  %173 = load i32, i32* %3, align 4
  %174 = call i64 @bitfield_is_set(%struct.bitfield* %172, i32 %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %179

176:                                              ; preds = %168
  %177 = load i32, i32* %4, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %4, align 4
  br label %179

179:                                              ; preds = %176, %168
  br label %180

180:                                              ; preds = %179
  %181 = load i32, i32* %3, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %3, align 4
  br label %157

183:                                              ; preds = %157
  store i32 0, i32* %3, align 4
  br label %184

184:                                              ; preds = %199, %183
  %185 = load i32, i32* %3, align 4
  %186 = icmp slt i32 %185, 123
  br i1 %186, label %187, label %202

187:                                              ; preds = %184
  %188 = load %struct.bitfield*, %struct.bitfield** %2, align 8
  %189 = call i32 @bitfield_get_first_zero(%struct.bitfield* %188)
  %190 = load i32, i32* %3, align 4
  %191 = icmp ne i32 %189, %190
  br i1 %191, label %192, label %195

192:                                              ; preds = %187
  %193 = load i32, i32* %4, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %4, align 4
  br label %195

195:                                              ; preds = %192, %187
  %196 = load %struct.bitfield*, %struct.bitfield** %2, align 8
  %197 = load i32, i32* %3, align 4
  %198 = call i32 @bitfield_set(%struct.bitfield* %196, i32 %197)
  br label %199

199:                                              ; preds = %195
  %200 = load i32, i32* %3, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %3, align 4
  br label %184

202:                                              ; preds = %184
  %203 = load %struct.bitfield*, %struct.bitfield** %2, align 8
  %204 = call i32 @bitfield_get_first_zero(%struct.bitfield* %203)
  %205 = icmp ne i32 %204, -1
  br i1 %205, label %206, label %209

206:                                              ; preds = %202
  %207 = load i32, i32* %4, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %4, align 4
  br label %209

209:                                              ; preds = %206, %202
  store i32 0, i32* %3, align 4
  br label %210

210:                                              ; preds = %236, %209
  %211 = load i32, i32* %3, align 4
  %212 = icmp slt i32 %211, 123
  br i1 %212, label %213, label %239

213:                                              ; preds = %210
  %214 = load %struct.bitfield*, %struct.bitfield** %2, align 8
  %215 = load i32, i32* %3, align 4
  %216 = call i64 @bitfield_is_set(%struct.bitfield* %214, i32 %215)
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %221, label %218

218:                                              ; preds = %213
  %219 = load i32, i32* %4, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %4, align 4
  br label %221

221:                                              ; preds = %218, %213
  %222 = load %struct.bitfield*, %struct.bitfield** %2, align 8
  %223 = load i32, i32* %3, align 4
  %224 = call i32 @bitfield_clear(%struct.bitfield* %222, i32 %223)
  %225 = load %struct.bitfield*, %struct.bitfield** %2, align 8
  %226 = call i32 @bitfield_get_first_zero(%struct.bitfield* %225)
  %227 = load i32, i32* %3, align 4
  %228 = icmp ne i32 %226, %227
  br i1 %228, label %229, label %232

229:                                              ; preds = %221
  %230 = load i32, i32* %4, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %4, align 4
  br label %232

232:                                              ; preds = %229, %221
  %233 = load %struct.bitfield*, %struct.bitfield** %2, align 8
  %234 = load i32, i32* %3, align 4
  %235 = call i32 @bitfield_set(%struct.bitfield* %233, i32 %234)
  br label %236

236:                                              ; preds = %232
  %237 = load i32, i32* %3, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %3, align 4
  br label %210

239:                                              ; preds = %210
  %240 = load %struct.bitfield*, %struct.bitfield** %2, align 8
  %241 = call i32 @bitfield_get_first_zero(%struct.bitfield* %240)
  %242 = icmp ne i32 %241, -1
  br i1 %242, label %243, label %246

243:                                              ; preds = %239
  %244 = load i32, i32* %4, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %4, align 4
  br label %246

246:                                              ; preds = %243, %239
  %247 = load %struct.bitfield*, %struct.bitfield** %2, align 8
  %248 = call i32 @bitfield_free(%struct.bitfield* %247)
  %249 = call %struct.bitfield* @bitfield_alloc(i32 8)
  store %struct.bitfield* %249, %struct.bitfield** %2, align 8
  %250 = load %struct.bitfield*, %struct.bitfield** %2, align 8
  %251 = icmp eq %struct.bitfield* %250, null
  br i1 %251, label %252, label %253

252:                                              ; preds = %246
  store i32 -1, i32* %1, align 4
  br label %288

253:                                              ; preds = %246
  %254 = load %struct.bitfield*, %struct.bitfield** %2, align 8
  %255 = call i32 @bitfield_get_first_zero(%struct.bitfield* %254)
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %260

257:                                              ; preds = %253
  %258 = load i32, i32* %4, align 4
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* %4, align 4
  br label %260

260:                                              ; preds = %257, %253
  store i32 0, i32* %3, align 4
  br label %261

261:                                              ; preds = %268, %260
  %262 = load i32, i32* %3, align 4
  %263 = icmp slt i32 %262, 8
  br i1 %263, label %264, label %271

264:                                              ; preds = %261
  %265 = load %struct.bitfield*, %struct.bitfield** %2, align 8
  %266 = load i32, i32* %3, align 4
  %267 = call i32 @bitfield_set(%struct.bitfield* %265, i32 %266)
  br label %268

268:                                              ; preds = %264
  %269 = load i32, i32* %3, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %3, align 4
  br label %261

271:                                              ; preds = %261
  %272 = load %struct.bitfield*, %struct.bitfield** %2, align 8
  %273 = call i32 @bitfield_get_first_zero(%struct.bitfield* %272)
  %274 = icmp ne i32 %273, -1
  br i1 %274, label %275, label %278

275:                                              ; preds = %271
  %276 = load i32, i32* %4, align 4
  %277 = add nsw i32 %276, 1
  store i32 %277, i32* %4, align 4
  br label %278

278:                                              ; preds = %275, %271
  %279 = load %struct.bitfield*, %struct.bitfield** %2, align 8
  %280 = call i32 @bitfield_free(%struct.bitfield* %279)
  %281 = load i32, i32* %4, align 4
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %287

283:                                              ; preds = %278
  %284 = load i32, i32* @MSG_ERROR, align 4
  %285 = load i32, i32* %4, align 4
  %286 = call i32 (i32, i8*, ...) @wpa_printf(i32 %284, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %285)
  store i32 -1, i32* %1, align 4
  br label %288

287:                                              ; preds = %278
  store i32 0, i32* %1, align 4
  br label %288

288:                                              ; preds = %287, %283, %252, %10
  %289 = load i32, i32* %1, align 4
  ret i32 %289
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local %struct.bitfield* @bitfield_alloc(i32) #1

declare dso_local i64 @bitfield_is_set(%struct.bitfield*, i32) #1

declare dso_local i32 @bitfield_set(%struct.bitfield*, i32) #1

declare dso_local i32 @bitfield_clear(%struct.bitfield*, i32) #1

declare dso_local i32 @bitfield_get_first_zero(%struct.bitfield*) #1

declare dso_local i32 @bitfield_free(%struct.bitfield*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
