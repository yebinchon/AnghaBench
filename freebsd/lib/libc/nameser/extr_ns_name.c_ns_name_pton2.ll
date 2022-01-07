; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/nameser/extr_ns_name.c_ns_name_pton2.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/nameser/extr_ns_name.c_ns_name_pton2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@digits = common dso_local global i8* null, align 8
@EMSGSIZE = common dso_local global i32 0, align 4
@NS_CMPRSFLGS = common dso_local global i32 0, align 4
@MAXCDNAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ns_name_pton2(i8* %0, i32* %1, i64 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %15, align 4
  %18 = load i32*, i32** %7, align 8
  store i32* %18, i32** %11, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = load i64, i64* %8, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  store i32* %21, i32** %12, align 8
  %22 = load i32*, i32** %11, align 8
  %23 = getelementptr inbounds i32, i32* %22, i32 1
  store i32* %23, i32** %11, align 8
  store i32* %22, i32** %10, align 8
  br label %24

24:                                               ; preds = %224, %213, %135, %65, %4
  %25 = load i8*, i8** %6, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %6, align 8
  %27 = load i8, i8* %25, align 1
  %28 = sext i8 %27 to i32
  store i32 %28, i32* %13, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %228

30:                                               ; preds = %24
  %31 = load i32, i32* %15, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %132

33:                                               ; preds = %30
  %34 = load i32, i32* %13, align 4
  %35 = icmp eq i32 %34, 91
  br i1 %35, label %36, label %66

36:                                               ; preds = %33
  %37 = load i8*, i8** %6, align 8
  %38 = call i8* @strchr(i8* %37, i32 93)
  store i8* %38, i8** %17, align 8
  %39 = icmp eq i8* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i32, i32* @EINVAL, align 4
  store i32 %41, i32* @errno, align 4
  store i32 -1, i32* %5, align 4
  br label %288

42:                                               ; preds = %36
  %43 = load i8*, i8** %17, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 2
  %45 = load i32*, i32** %12, align 8
  %46 = call i32 @encode_bitsring(i8** %6, i8* %44, i32** %10, i32** %11, i32* %45)
  store i32 %46, i32* %16, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = load i32, i32* %16, align 4
  store i32 %49, i32* @errno, align 4
  store i32 -1, i32* %5, align 4
  br label %288

50:                                               ; preds = %42
  store i32 0, i32* %15, align 4
  %51 = load i32*, i32** %11, align 8
  %52 = getelementptr inbounds i32, i32* %51, i32 1
  store i32* %52, i32** %11, align 8
  store i32* %51, i32** %10, align 8
  %53 = load i8*, i8** %6, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %6, align 8
  %55 = load i8, i8* %53, align 1
  %56 = sext i8 %55 to i32
  store i32 %56, i32* %13, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %50
  br label %244

59:                                               ; preds = %50
  %60 = load i32, i32* %13, align 4
  %61 = icmp ne i32 %60, 46
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = load i32, i32* @EINVAL, align 4
  store i32 %63, i32* @errno, align 4
  store i32 -1, i32* %5, align 4
  br label %288

64:                                               ; preds = %59
  br label %65

65:                                               ; preds = %64
  br label %24

66:                                               ; preds = %33
  %67 = load i8*, i8** @digits, align 8
  %68 = load i32, i32* %13, align 4
  %69 = call i8* @strchr(i8* %67, i32 %68)
  store i8* %69, i8** %17, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %130

71:                                               ; preds = %66
  %72 = load i8*, i8** %17, align 8
  %73 = load i8*, i8** @digits, align 8
  %74 = ptrtoint i8* %72 to i64
  %75 = ptrtoint i8* %73 to i64
  %76 = sub i64 %74, %75
  %77 = mul nsw i64 %76, 100
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %14, align 4
  %79 = load i8*, i8** %6, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %6, align 8
  %81 = load i8, i8* %79, align 1
  %82 = sext i8 %81 to i32
  store i32 %82, i32* %13, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %89, label %84

84:                                               ; preds = %71
  %85 = load i8*, i8** @digits, align 8
  %86 = load i32, i32* %13, align 4
  %87 = call i8* @strchr(i8* %85, i32 %86)
  store i8* %87, i8** %17, align 8
  %88 = icmp eq i8* %87, null
  br i1 %88, label %89, label %91

89:                                               ; preds = %84, %71
  %90 = load i32, i32* @EMSGSIZE, align 4
  store i32 %90, i32* @errno, align 4
  store i32 -1, i32* %5, align 4
  br label %288

91:                                               ; preds = %84
  %92 = load i8*, i8** %17, align 8
  %93 = load i8*, i8** @digits, align 8
  %94 = ptrtoint i8* %92 to i64
  %95 = ptrtoint i8* %93 to i64
  %96 = sub i64 %94, %95
  %97 = mul nsw i64 %96, 10
  %98 = load i32, i32* %14, align 4
  %99 = sext i32 %98 to i64
  %100 = add nsw i64 %99, %97
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %14, align 4
  %102 = load i8*, i8** %6, align 8
  %103 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %103, i8** %6, align 8
  %104 = load i8, i8* %102, align 1
  %105 = sext i8 %104 to i32
  store i32 %105, i32* %13, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %112, label %107

107:                                              ; preds = %91
  %108 = load i8*, i8** @digits, align 8
  %109 = load i32, i32* %13, align 4
  %110 = call i8* @strchr(i8* %108, i32 %109)
  store i8* %110, i8** %17, align 8
  %111 = icmp eq i8* %110, null
  br i1 %111, label %112, label %114

112:                                              ; preds = %107, %91
  %113 = load i32, i32* @EMSGSIZE, align 4
  store i32 %113, i32* @errno, align 4
  store i32 -1, i32* %5, align 4
  br label %288

114:                                              ; preds = %107
  %115 = load i8*, i8** %17, align 8
  %116 = load i8*, i8** @digits, align 8
  %117 = ptrtoint i8* %115 to i64
  %118 = ptrtoint i8* %116 to i64
  %119 = sub i64 %117, %118
  %120 = load i32, i32* %14, align 4
  %121 = sext i32 %120 to i64
  %122 = add nsw i64 %121, %119
  %123 = trunc i64 %122 to i32
  store i32 %123, i32* %14, align 4
  %124 = load i32, i32* %14, align 4
  %125 = icmp sgt i32 %124, 255
  br i1 %125, label %126, label %128

126:                                              ; preds = %114
  %127 = load i32, i32* @EMSGSIZE, align 4
  store i32 %127, i32* @errno, align 4
  store i32 -1, i32* %5, align 4
  br label %288

128:                                              ; preds = %114
  %129 = load i32, i32* %14, align 4
  store i32 %129, i32* %13, align 4
  br label %130

130:                                              ; preds = %128, %66
  br label %131

131:                                              ; preds = %130
  store i32 0, i32* %15, align 4
  br label %218

132:                                              ; preds = %30
  %133 = load i32, i32* %13, align 4
  %134 = icmp eq i32 %133, 92
  br i1 %134, label %135, label %136

135:                                              ; preds = %132
  store i32 1, i32* %15, align 4
  br label %24

136:                                              ; preds = %132
  %137 = load i32, i32* %13, align 4
  %138 = icmp eq i32 %137, 46
  br i1 %138, label %139, label %216

139:                                              ; preds = %136
  %140 = load i32*, i32** %11, align 8
  %141 = load i32*, i32** %10, align 8
  %142 = ptrtoint i32* %140 to i64
  %143 = ptrtoint i32* %141 to i64
  %144 = sub i64 %142, %143
  %145 = sdiv exact i64 %144, 4
  %146 = sub nsw i64 %145, 1
  %147 = trunc i64 %146 to i32
  store i32 %147, i32* %13, align 4
  %148 = load i32, i32* %13, align 4
  %149 = load i32, i32* @NS_CMPRSFLGS, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %139
  %153 = load i32, i32* @EMSGSIZE, align 4
  store i32 %153, i32* @errno, align 4
  store i32 -1, i32* %5, align 4
  br label %288

154:                                              ; preds = %139
  %155 = load i32*, i32** %10, align 8
  %156 = load i32*, i32** %12, align 8
  %157 = icmp uge i32* %155, %156
  br i1 %157, label %158, label %160

158:                                              ; preds = %154
  %159 = load i32, i32* @EMSGSIZE, align 4
  store i32 %159, i32* @errno, align 4
  store i32 -1, i32* %5, align 4
  br label %288

160:                                              ; preds = %154
  %161 = load i32, i32* %13, align 4
  %162 = load i32*, i32** %10, align 8
  store i32 %161, i32* %162, align 4
  %163 = load i8*, i8** %6, align 8
  %164 = load i8, i8* %163, align 1
  %165 = sext i8 %164 to i32
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %203

167:                                              ; preds = %160
  %168 = load i32, i32* %13, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %179

170:                                              ; preds = %167
  %171 = load i32*, i32** %11, align 8
  %172 = load i32*, i32** %12, align 8
  %173 = icmp uge i32* %171, %172
  br i1 %173, label %174, label %176

174:                                              ; preds = %170
  %175 = load i32, i32* @EMSGSIZE, align 4
  store i32 %175, i32* @errno, align 4
  store i32 -1, i32* %5, align 4
  br label %288

176:                                              ; preds = %170
  %177 = load i32*, i32** %11, align 8
  %178 = getelementptr inbounds i32, i32* %177, i32 1
  store i32* %178, i32** %11, align 8
  store i32 0, i32* %177, align 4
  br label %179

179:                                              ; preds = %176, %167
  %180 = load i32*, i32** %11, align 8
  %181 = load i32*, i32** %7, align 8
  %182 = ptrtoint i32* %180 to i64
  %183 = ptrtoint i32* %181 to i64
  %184 = sub i64 %182, %183
  %185 = sdiv exact i64 %184, 4
  %186 = load i32, i32* @MAXCDNAME, align 4
  %187 = sext i32 %186 to i64
  %188 = icmp sgt i64 %185, %187
  br i1 %188, label %189, label %191

189:                                              ; preds = %179
  %190 = load i32, i32* @EMSGSIZE, align 4
  store i32 %190, i32* @errno, align 4
  store i32 -1, i32* %5, align 4
  br label %288

191:                                              ; preds = %179
  %192 = load i64*, i64** %9, align 8
  %193 = icmp ne i64* %192, null
  br i1 %193, label %194, label %202

194:                                              ; preds = %191
  %195 = load i32*, i32** %11, align 8
  %196 = load i32*, i32** %7, align 8
  %197 = ptrtoint i32* %195 to i64
  %198 = ptrtoint i32* %196 to i64
  %199 = sub i64 %197, %198
  %200 = sdiv exact i64 %199, 4
  %201 = load i64*, i64** %9, align 8
  store i64 %200, i64* %201, align 8
  br label %202

202:                                              ; preds = %194, %191
  store i32 1, i32* %5, align 4
  br label %288

203:                                              ; preds = %160
  %204 = load i32, i32* %13, align 4
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %211, label %206

206:                                              ; preds = %203
  %207 = load i8*, i8** %6, align 8
  %208 = load i8, i8* %207, align 1
  %209 = sext i8 %208 to i32
  %210 = icmp eq i32 %209, 46
  br i1 %210, label %211, label %213

211:                                              ; preds = %206, %203
  %212 = load i32, i32* @EMSGSIZE, align 4
  store i32 %212, i32* @errno, align 4
  store i32 -1, i32* %5, align 4
  br label %288

213:                                              ; preds = %206
  %214 = load i32*, i32** %11, align 8
  %215 = getelementptr inbounds i32, i32* %214, i32 1
  store i32* %215, i32** %11, align 8
  store i32* %214, i32** %10, align 8
  br label %24

216:                                              ; preds = %136
  br label %217

217:                                              ; preds = %216
  br label %218

218:                                              ; preds = %217, %131
  %219 = load i32*, i32** %11, align 8
  %220 = load i32*, i32** %12, align 8
  %221 = icmp uge i32* %219, %220
  br i1 %221, label %222, label %224

222:                                              ; preds = %218
  %223 = load i32, i32* @EMSGSIZE, align 4
  store i32 %223, i32* @errno, align 4
  store i32 -1, i32* %5, align 4
  br label %288

224:                                              ; preds = %218
  %225 = load i32, i32* %13, align 4
  %226 = load i32*, i32** %11, align 8
  %227 = getelementptr inbounds i32, i32* %226, i32 1
  store i32* %227, i32** %11, align 8
  store i32 %225, i32* %226, align 4
  br label %24

228:                                              ; preds = %24
  %229 = load i32*, i32** %11, align 8
  %230 = load i32*, i32** %10, align 8
  %231 = ptrtoint i32* %229 to i64
  %232 = ptrtoint i32* %230 to i64
  %233 = sub i64 %231, %232
  %234 = sdiv exact i64 %233, 4
  %235 = sub nsw i64 %234, 1
  %236 = trunc i64 %235 to i32
  store i32 %236, i32* %13, align 4
  %237 = load i32, i32* %13, align 4
  %238 = load i32, i32* @NS_CMPRSFLGS, align 4
  %239 = and i32 %237, %238
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %243

241:                                              ; preds = %228
  %242 = load i32, i32* @EMSGSIZE, align 4
  store i32 %242, i32* @errno, align 4
  store i32 -1, i32* %5, align 4
  br label %288

243:                                              ; preds = %228
  br label %244

244:                                              ; preds = %243, %58
  %245 = load i32*, i32** %10, align 8
  %246 = load i32*, i32** %12, align 8
  %247 = icmp uge i32* %245, %246
  br i1 %247, label %248, label %250

248:                                              ; preds = %244
  %249 = load i32, i32* @EMSGSIZE, align 4
  store i32 %249, i32* @errno, align 4
  store i32 -1, i32* %5, align 4
  br label %288

250:                                              ; preds = %244
  %251 = load i32, i32* %13, align 4
  %252 = load i32*, i32** %10, align 8
  store i32 %251, i32* %252, align 4
  %253 = load i32, i32* %13, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %264

255:                                              ; preds = %250
  %256 = load i32*, i32** %11, align 8
  %257 = load i32*, i32** %12, align 8
  %258 = icmp uge i32* %256, %257
  br i1 %258, label %259, label %261

259:                                              ; preds = %255
  %260 = load i32, i32* @EMSGSIZE, align 4
  store i32 %260, i32* @errno, align 4
  store i32 -1, i32* %5, align 4
  br label %288

261:                                              ; preds = %255
  %262 = load i32*, i32** %11, align 8
  %263 = getelementptr inbounds i32, i32* %262, i32 1
  store i32* %263, i32** %11, align 8
  store i32 0, i32* %262, align 4
  br label %264

264:                                              ; preds = %261, %250
  %265 = load i32*, i32** %11, align 8
  %266 = load i32*, i32** %7, align 8
  %267 = ptrtoint i32* %265 to i64
  %268 = ptrtoint i32* %266 to i64
  %269 = sub i64 %267, %268
  %270 = sdiv exact i64 %269, 4
  %271 = load i32, i32* @MAXCDNAME, align 4
  %272 = sext i32 %271 to i64
  %273 = icmp sgt i64 %270, %272
  br i1 %273, label %274, label %276

274:                                              ; preds = %264
  %275 = load i32, i32* @EMSGSIZE, align 4
  store i32 %275, i32* @errno, align 4
  store i32 -1, i32* %5, align 4
  br label %288

276:                                              ; preds = %264
  %277 = load i64*, i64** %9, align 8
  %278 = icmp ne i64* %277, null
  br i1 %278, label %279, label %287

279:                                              ; preds = %276
  %280 = load i32*, i32** %11, align 8
  %281 = load i32*, i32** %7, align 8
  %282 = ptrtoint i32* %280 to i64
  %283 = ptrtoint i32* %281 to i64
  %284 = sub i64 %282, %283
  %285 = sdiv exact i64 %284, 4
  %286 = load i64*, i64** %9, align 8
  store i64 %285, i64* %286, align 8
  br label %287

287:                                              ; preds = %279, %276
  store i32 0, i32* %5, align 4
  br label %288

288:                                              ; preds = %287, %274, %259, %248, %241, %222, %211, %202, %189, %174, %158, %152, %126, %112, %89, %62, %48, %40
  %289 = load i32, i32* %5, align 4
  ret i32 %289
}

declare dso_local i8* @strchr(i8*, i32) #1

declare dso_local i32 @encode_bitsring(i8**, i8*, i32**, i32**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
