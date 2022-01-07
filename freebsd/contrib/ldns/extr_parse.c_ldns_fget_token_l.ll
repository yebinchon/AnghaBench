; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_parse.c_ldns_fget_token_l.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_parse.c_ldns_fget_token_l.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDNS_PARSE_NORMAL = common dso_local global i8* null, align 8
@EOF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ldns_fget_token_l(i32* %0, i8* %1, i8* %2, i64 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %5
  %24 = load i8*, i8** @LDNS_PARSE_NORMAL, align 8
  store i8* %24, i8** %20, align 8
  br label %27

25:                                               ; preds = %5
  %26 = load i8*, i8** %9, align 8
  store i8* %26, i8** %20, align 8
  br label %27

27:                                               ; preds = %25, %23
  store i32 0, i32* %14, align 4
  store i64 0, i64* %18, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %13, align 4
  %28 = load i8*, i8** %8, align 8
  store i8* %28, i8** %17, align 8
  %29 = load i8*, i8** %20, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 0
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 34
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  store i32 1, i32* %16, align 4
  br label %35

35:                                               ; preds = %34, %27
  br label %36

36:                                               ; preds = %242, %155, %134, %129, %77, %60, %35
  %37 = load i32*, i32** %7, align 8
  %38 = call i32 @getc(i32* %37)
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* @EOF, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %243

41:                                               ; preds = %36
  %42 = load i32, i32* %12, align 4
  %43 = icmp eq i32 %42, 13
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  store i32 32, i32* %12, align 4
  br label %45

45:                                               ; preds = %44, %41
  %46 = load i32, i32* %12, align 4
  %47 = icmp eq i32 %46, 40
  br i1 %47, label %48, label %62

48:                                               ; preds = %45
  %49 = load i32, i32* %13, align 4
  %50 = icmp ne i32 %49, 92
  br i1 %50, label %51, label %62

51:                                               ; preds = %48
  %52 = load i32, i32* %16, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %62, label %54

54:                                               ; preds = %51
  %55 = load i32, i32* %15, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load i32, i32* %14, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %14, align 4
  br label %60

60:                                               ; preds = %57, %54
  %61 = load i32, i32* %12, align 4
  store i32 %61, i32* %13, align 4
  br label %36

62:                                               ; preds = %51, %48, %45
  %63 = load i32, i32* %12, align 4
  %64 = icmp eq i32 %63, 41
  br i1 %64, label %65, label %79

65:                                               ; preds = %62
  %66 = load i32, i32* %13, align 4
  %67 = icmp ne i32 %66, 92
  br i1 %67, label %68, label %79

68:                                               ; preds = %65
  %69 = load i32, i32* %16, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %79, label %71

71:                                               ; preds = %68
  %72 = load i32, i32* %15, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load i32, i32* %14, align 4
  %76 = add nsw i32 %75, -1
  store i32 %76, i32* %14, align 4
  br label %77

77:                                               ; preds = %74, %71
  %78 = load i32, i32* %12, align 4
  store i32 %78, i32* %13, align 4
  br label %36

79:                                               ; preds = %68, %65, %62
  %80 = load i32, i32* %14, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  %83 = load i8*, i8** %17, align 8
  store i8 0, i8* %83, align 1
  store i32 0, i32* %6, align 4
  br label %286

84:                                               ; preds = %79
  %85 = load i32, i32* %12, align 4
  %86 = icmp eq i32 %85, 59
  br i1 %86, label %87, label %95

87:                                               ; preds = %84
  %88 = load i32, i32* %16, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %87
  %91 = load i32, i32* %13, align 4
  %92 = icmp ne i32 %91, 92
  br i1 %92, label %93, label %94

93:                                               ; preds = %90
  store i32 1, i32* %15, align 4
  br label %94

94:                                               ; preds = %93, %90
  br label %95

95:                                               ; preds = %94, %87, %84
  %96 = load i32, i32* %12, align 4
  %97 = icmp eq i32 %96, 34
  br i1 %97, label %98, label %107

98:                                               ; preds = %95
  %99 = load i32, i32* %15, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %98
  %102 = load i32, i32* %13, align 4
  %103 = icmp ne i32 %102, 92
  br i1 %103, label %104, label %107

104:                                              ; preds = %101
  %105 = load i32, i32* %16, align 4
  %106 = sub nsw i32 1, %105
  store i32 %106, i32* %16, align 4
  br label %107

107:                                              ; preds = %104, %101, %98, %95
  %108 = load i32, i32* %12, align 4
  %109 = icmp eq i32 %108, 10
  br i1 %109, label %110, label %131

110:                                              ; preds = %107
  %111 = load i32, i32* %15, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %131

113:                                              ; preds = %110
  store i32 0, i32* %15, align 4
  %114 = load i8*, i8** %17, align 8
  store i8 32, i8* %114, align 1
  %115 = load i32*, i32** %11, align 8
  %116 = icmp ne i32* %115, null
  br i1 %116, label %117, label %122

117:                                              ; preds = %113
  %118 = load i32*, i32** %11, align 8
  %119 = load i32, i32* %118, align 4
  %120 = add nsw i32 %119, 1
  %121 = load i32*, i32** %11, align 8
  store i32 %120, i32* %121, align 4
  br label %122

122:                                              ; preds = %117, %113
  %123 = load i32, i32* %14, align 4
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %122
  %126 = load i64, i64* %18, align 8
  %127 = icmp ugt i64 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %125
  br label %262

129:                                              ; preds = %125, %122
  %130 = load i32, i32* %12, align 4
  store i32 %130, i32* %13, align 4
  br label %36

131:                                              ; preds = %110, %107
  %132 = load i32, i32* %15, align 4
  %133 = icmp eq i32 %132, 1
  br i1 %133, label %134, label %137

134:                                              ; preds = %131
  %135 = load i8*, i8** %17, align 8
  store i8 32, i8* %135, align 1
  %136 = load i32, i32* %12, align 4
  store i32 %136, i32* %13, align 4
  br label %36

137:                                              ; preds = %131
  %138 = load i32, i32* %12, align 4
  %139 = icmp eq i32 %138, 10
  br i1 %139, label %140, label %159

140:                                              ; preds = %137
  %141 = load i32, i32* %14, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %159

143:                                              ; preds = %140
  %144 = load i8*, i8** %17, align 8
  %145 = load i8*, i8** %8, align 8
  %146 = icmp ugt i8* %144, %145
  br i1 %146, label %147, label %159

147:                                              ; preds = %143
  %148 = load i32*, i32** %11, align 8
  %149 = icmp ne i32* %148, null
  br i1 %149, label %150, label %155

150:                                              ; preds = %147
  %151 = load i32*, i32** %11, align 8
  %152 = load i32, i32* %151, align 4
  %153 = add nsw i32 %152, 1
  %154 = load i32*, i32** %11, align 8
  store i32 %153, i32* %154, align 4
  br label %155

155:                                              ; preds = %150, %147
  %156 = load i8*, i8** %17, align 8
  %157 = getelementptr inbounds i8, i8* %156, i32 1
  store i8* %157, i8** %17, align 8
  store i8 32, i8* %156, align 1
  %158 = load i32, i32* %12, align 4
  store i32 %158, i32* %13, align 4
  br label %36

159:                                              ; preds = %143, %140, %137
  %160 = load i8*, i8** %20, align 8
  store i8* %160, i8** %19, align 8
  br label %161

161:                                              ; preds = %193, %159
  %162 = load i8*, i8** %19, align 8
  %163 = load i8, i8* %162, align 1
  %164 = icmp ne i8 %163, 0
  br i1 %164, label %165, label %196

165:                                              ; preds = %161
  %166 = load i32, i32* %12, align 4
  %167 = load i8*, i8** %19, align 8
  %168 = load i8, i8* %167, align 1
  %169 = sext i8 %168 to i32
  %170 = icmp eq i32 %166, %169
  br i1 %170, label %171, label %192

171:                                              ; preds = %165
  %172 = load i64, i64* %18, align 8
  %173 = icmp ugt i64 %172, 0
  br i1 %173, label %174, label %192

174:                                              ; preds = %171
  %175 = load i32, i32* %13, align 4
  %176 = icmp ne i32 %175, 92
  br i1 %176, label %177, label %192

177:                                              ; preds = %174
  %178 = load i32, i32* %14, align 4
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %192

180:                                              ; preds = %177
  %181 = load i32, i32* %12, align 4
  %182 = icmp eq i32 %181, 10
  br i1 %182, label %183, label %191

183:                                              ; preds = %180
  %184 = load i32*, i32** %11, align 8
  %185 = icmp ne i32* %184, null
  br i1 %185, label %186, label %191

186:                                              ; preds = %183
  %187 = load i32*, i32** %11, align 8
  %188 = load i32, i32* %187, align 4
  %189 = add nsw i32 %188, 1
  %190 = load i32*, i32** %11, align 8
  store i32 %189, i32* %190, align 4
  br label %191

191:                                              ; preds = %186, %183, %180
  br label %262

192:                                              ; preds = %177, %174, %171, %165
  br label %193

193:                                              ; preds = %192
  %194 = load i8*, i8** %19, align 8
  %195 = getelementptr inbounds i8, i8* %194, i32 1
  store i8* %195, i8** %19, align 8
  br label %161

196:                                              ; preds = %161
  %197 = load i32, i32* %12, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %205

199:                                              ; preds = %196
  %200 = load i32, i32* %12, align 4
  %201 = icmp ne i32 %200, 10
  br i1 %201, label %202, label %205

202:                                              ; preds = %199
  %203 = load i64, i64* %18, align 8
  %204 = add i64 %203, 1
  store i64 %204, i64* %18, align 8
  br label %205

205:                                              ; preds = %202, %199, %196
  %206 = load i64, i64* %10, align 8
  %207 = icmp ugt i64 %206, 0
  br i1 %207, label %208, label %222

208:                                              ; preds = %205
  %209 = load i64, i64* %18, align 8
  %210 = load i64, i64* %10, align 8
  %211 = icmp uge i64 %209, %210
  br i1 %211, label %220, label %212

212:                                              ; preds = %208
  %213 = load i8*, i8** %17, align 8
  %214 = load i8*, i8** %8, align 8
  %215 = ptrtoint i8* %213 to i64
  %216 = ptrtoint i8* %214 to i64
  %217 = sub i64 %215, %216
  %218 = load i64, i64* %10, align 8
  %219 = icmp uge i64 %217, %218
  br i1 %219, label %220, label %222

220:                                              ; preds = %212, %208
  %221 = load i8*, i8** %17, align 8
  store i8 0, i8* %221, align 1
  store i32 -1, i32* %6, align 4
  br label %286

222:                                              ; preds = %212, %205
  %223 = load i32, i32* %12, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %233

225:                                              ; preds = %222
  %226 = load i32, i32* %12, align 4
  %227 = icmp ne i32 %226, 10
  br i1 %227, label %228, label %233

228:                                              ; preds = %225
  %229 = load i32, i32* %12, align 4
  %230 = trunc i32 %229 to i8
  %231 = load i8*, i8** %17, align 8
  %232 = getelementptr inbounds i8, i8* %231, i32 1
  store i8* %232, i8** %17, align 8
  store i8 %230, i8* %231, align 1
  br label %233

233:                                              ; preds = %228, %225, %222
  %234 = load i32, i32* %12, align 4
  %235 = icmp eq i32 %234, 92
  br i1 %235, label %236, label %240

236:                                              ; preds = %233
  %237 = load i32, i32* %13, align 4
  %238 = icmp eq i32 %237, 92
  br i1 %238, label %239, label %240

239:                                              ; preds = %236
  store i32 0, i32* %13, align 4
  br label %242

240:                                              ; preds = %236, %233
  %241 = load i32, i32* %12, align 4
  store i32 %241, i32* %13, align 4
  br label %242

242:                                              ; preds = %240, %239
  br label %36

243:                                              ; preds = %36
  %244 = load i8*, i8** %17, align 8
  store i8 0, i8* %244, align 1
  %245 = load i32, i32* %12, align 4
  %246 = load i32, i32* @EOF, align 4
  %247 = icmp eq i32 %245, %246
  br i1 %247, label %248, label %251

248:                                              ; preds = %243
  %249 = load i64, i64* %18, align 8
  %250 = trunc i64 %249 to i32
  store i32 %250, i32* %6, align 4
  br label %286

251:                                              ; preds = %243
  %252 = load i64, i64* %18, align 8
  %253 = icmp eq i64 %252, 0
  br i1 %253, label %254, label %255

254:                                              ; preds = %251
  store i32 -1, i32* %6, align 4
  br label %286

255:                                              ; preds = %251
  %256 = load i32, i32* %14, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %259

258:                                              ; preds = %255
  store i32 -1, i32* %6, align 4
  br label %286

259:                                              ; preds = %255
  %260 = load i64, i64* %18, align 8
  %261 = trunc i64 %260 to i32
  store i32 %261, i32* %6, align 4
  br label %286

262:                                              ; preds = %191, %128
  %263 = load i8*, i8** %20, align 8
  %264 = load i8, i8* %263, align 1
  %265 = sext i8 %264 to i32
  %266 = icmp eq i32 %265, 34
  br i1 %266, label %267, label %273

267:                                              ; preds = %262
  %268 = load i32*, i32** %7, align 8
  %269 = load i8*, i8** %20, align 8
  %270 = getelementptr inbounds i8, i8* %269, i64 1
  %271 = load i32*, i32** %11, align 8
  %272 = call i32 @ldns_fskipcs_l(i32* %268, i8* %270, i32* %271)
  br label %278

273:                                              ; preds = %262
  %274 = load i32*, i32** %7, align 8
  %275 = load i8*, i8** %20, align 8
  %276 = load i32*, i32** %11, align 8
  %277 = call i32 @ldns_fskipcs_l(i32* %274, i8* %275, i32* %276)
  br label %278

278:                                              ; preds = %273, %267
  %279 = load i8*, i8** %17, align 8
  store i8 0, i8* %279, align 1
  %280 = load i32, i32* %14, align 4
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %283

282:                                              ; preds = %278
  store i32 -1, i32* %6, align 4
  br label %286

283:                                              ; preds = %278
  %284 = load i64, i64* %18, align 8
  %285 = trunc i64 %284 to i32
  store i32 %285, i32* %6, align 4
  br label %286

286:                                              ; preds = %283, %282, %259, %258, %254, %248, %220, %82
  %287 = load i32, i32* %6, align 4
  ret i32 %287
}

declare dso_local i32 @getc(i32*) #1

declare dso_local i32 @ldns_fskipcs_l(i32*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
