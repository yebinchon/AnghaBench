; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_parse.c_sldns_fget_token_l.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_parse.c_sldns_fget_token_l.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDNS_PARSE_NORMAL = common dso_local global i8* null, align 8
@EOF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sldns_fget_token_l(i32* %0, i8* %1, i8* %2, i64 %3, i32* %4) #0 {
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

36:                                               ; preds = %259, %172, %134, %129, %77, %60, %35
  %37 = load i32*, i32** %7, align 8
  %38 = call i32 @getc(i32* %37)
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* @EOF, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %260

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
  br label %303

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
  br label %279

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
  br i1 %139, label %140, label %176

140:                                              ; preds = %137
  %141 = load i32, i32* %14, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %176

143:                                              ; preds = %140
  %144 = load i8*, i8** %17, align 8
  %145 = load i8*, i8** %8, align 8
  %146 = icmp ugt i8* %144, %145
  br i1 %146, label %147, label %176

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
  %156 = load i64, i64* %10, align 8
  %157 = icmp ugt i64 %156, 0
  br i1 %157, label %158, label %172

158:                                              ; preds = %155
  %159 = load i64, i64* %18, align 8
  %160 = load i64, i64* %10, align 8
  %161 = icmp uge i64 %159, %160
  br i1 %161, label %170, label %162

162:                                              ; preds = %158
  %163 = load i8*, i8** %17, align 8
  %164 = load i8*, i8** %8, align 8
  %165 = ptrtoint i8* %163 to i64
  %166 = ptrtoint i8* %164 to i64
  %167 = sub i64 %165, %166
  %168 = load i64, i64* %10, align 8
  %169 = icmp uge i64 %167, %168
  br i1 %169, label %170, label %172

170:                                              ; preds = %162, %158
  %171 = load i8*, i8** %17, align 8
  store i8 0, i8* %171, align 1
  store i32 -1, i32* %6, align 4
  br label %303

172:                                              ; preds = %162, %155
  %173 = load i8*, i8** %17, align 8
  %174 = getelementptr inbounds i8, i8* %173, i32 1
  store i8* %174, i8** %17, align 8
  store i8 32, i8* %173, align 1
  %175 = load i32, i32* %12, align 4
  store i32 %175, i32* %13, align 4
  br label %36

176:                                              ; preds = %143, %140, %137
  %177 = load i8*, i8** %20, align 8
  store i8* %177, i8** %19, align 8
  br label %178

178:                                              ; preds = %210, %176
  %179 = load i8*, i8** %19, align 8
  %180 = load i8, i8* %179, align 1
  %181 = icmp ne i8 %180, 0
  br i1 %181, label %182, label %213

182:                                              ; preds = %178
  %183 = load i32, i32* %12, align 4
  %184 = load i8*, i8** %19, align 8
  %185 = load i8, i8* %184, align 1
  %186 = sext i8 %185 to i32
  %187 = icmp eq i32 %183, %186
  br i1 %187, label %188, label %209

188:                                              ; preds = %182
  %189 = load i64, i64* %18, align 8
  %190 = icmp ugt i64 %189, 0
  br i1 %190, label %191, label %209

191:                                              ; preds = %188
  %192 = load i32, i32* %13, align 4
  %193 = icmp ne i32 %192, 92
  br i1 %193, label %194, label %209

194:                                              ; preds = %191
  %195 = load i32, i32* %14, align 4
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %209

197:                                              ; preds = %194
  %198 = load i32, i32* %12, align 4
  %199 = icmp eq i32 %198, 10
  br i1 %199, label %200, label %208

200:                                              ; preds = %197
  %201 = load i32*, i32** %11, align 8
  %202 = icmp ne i32* %201, null
  br i1 %202, label %203, label %208

203:                                              ; preds = %200
  %204 = load i32*, i32** %11, align 8
  %205 = load i32, i32* %204, align 4
  %206 = add nsw i32 %205, 1
  %207 = load i32*, i32** %11, align 8
  store i32 %206, i32* %207, align 4
  br label %208

208:                                              ; preds = %203, %200, %197
  br label %279

209:                                              ; preds = %194, %191, %188, %182
  br label %210

210:                                              ; preds = %209
  %211 = load i8*, i8** %19, align 8
  %212 = getelementptr inbounds i8, i8* %211, i32 1
  store i8* %212, i8** %19, align 8
  br label %178

213:                                              ; preds = %178
  %214 = load i32, i32* %12, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %222

216:                                              ; preds = %213
  %217 = load i32, i32* %12, align 4
  %218 = icmp ne i32 %217, 10
  br i1 %218, label %219, label %222

219:                                              ; preds = %216
  %220 = load i64, i64* %18, align 8
  %221 = add i64 %220, 1
  store i64 %221, i64* %18, align 8
  br label %222

222:                                              ; preds = %219, %216, %213
  %223 = load i64, i64* %10, align 8
  %224 = icmp ugt i64 %223, 0
  br i1 %224, label %225, label %239

225:                                              ; preds = %222
  %226 = load i64, i64* %18, align 8
  %227 = load i64, i64* %10, align 8
  %228 = icmp uge i64 %226, %227
  br i1 %228, label %237, label %229

229:                                              ; preds = %225
  %230 = load i8*, i8** %17, align 8
  %231 = load i8*, i8** %8, align 8
  %232 = ptrtoint i8* %230 to i64
  %233 = ptrtoint i8* %231 to i64
  %234 = sub i64 %232, %233
  %235 = load i64, i64* %10, align 8
  %236 = icmp uge i64 %234, %235
  br i1 %236, label %237, label %239

237:                                              ; preds = %229, %225
  %238 = load i8*, i8** %17, align 8
  store i8 0, i8* %238, align 1
  store i32 -1, i32* %6, align 4
  br label %303

239:                                              ; preds = %229, %222
  %240 = load i32, i32* %12, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %250

242:                                              ; preds = %239
  %243 = load i32, i32* %12, align 4
  %244 = icmp ne i32 %243, 10
  br i1 %244, label %245, label %250

245:                                              ; preds = %242
  %246 = load i32, i32* %12, align 4
  %247 = trunc i32 %246 to i8
  %248 = load i8*, i8** %17, align 8
  %249 = getelementptr inbounds i8, i8* %248, i32 1
  store i8* %249, i8** %17, align 8
  store i8 %247, i8* %248, align 1
  br label %250

250:                                              ; preds = %245, %242, %239
  %251 = load i32, i32* %12, align 4
  %252 = icmp eq i32 %251, 92
  br i1 %252, label %253, label %257

253:                                              ; preds = %250
  %254 = load i32, i32* %13, align 4
  %255 = icmp eq i32 %254, 92
  br i1 %255, label %256, label %257

256:                                              ; preds = %253
  store i32 0, i32* %13, align 4
  br label %259

257:                                              ; preds = %253, %250
  %258 = load i32, i32* %12, align 4
  store i32 %258, i32* %13, align 4
  br label %259

259:                                              ; preds = %257, %256
  br label %36

260:                                              ; preds = %36
  %261 = load i8*, i8** %17, align 8
  store i8 0, i8* %261, align 1
  %262 = load i32, i32* %12, align 4
  %263 = load i32, i32* @EOF, align 4
  %264 = icmp eq i32 %262, %263
  br i1 %264, label %265, label %268

265:                                              ; preds = %260
  %266 = load i64, i64* %18, align 8
  %267 = trunc i64 %266 to i32
  store i32 %267, i32* %6, align 4
  br label %303

268:                                              ; preds = %260
  %269 = load i64, i64* %18, align 8
  %270 = icmp eq i64 %269, 0
  br i1 %270, label %271, label %272

271:                                              ; preds = %268
  store i32 -1, i32* %6, align 4
  br label %303

272:                                              ; preds = %268
  %273 = load i32, i32* %14, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %276

275:                                              ; preds = %272
  store i32 -1, i32* %6, align 4
  br label %303

276:                                              ; preds = %272
  %277 = load i64, i64* %18, align 8
  %278 = trunc i64 %277 to i32
  store i32 %278, i32* %6, align 4
  br label %303

279:                                              ; preds = %208, %128
  %280 = load i8*, i8** %20, align 8
  %281 = load i8, i8* %280, align 1
  %282 = sext i8 %281 to i32
  %283 = icmp eq i32 %282, 34
  br i1 %283, label %284, label %290

284:                                              ; preds = %279
  %285 = load i32*, i32** %7, align 8
  %286 = load i8*, i8** %20, align 8
  %287 = getelementptr inbounds i8, i8* %286, i64 1
  %288 = load i32*, i32** %11, align 8
  %289 = call i32 @sldns_fskipcs_l(i32* %285, i8* %287, i32* %288)
  br label %295

290:                                              ; preds = %279
  %291 = load i32*, i32** %7, align 8
  %292 = load i8*, i8** %20, align 8
  %293 = load i32*, i32** %11, align 8
  %294 = call i32 @sldns_fskipcs_l(i32* %291, i8* %292, i32* %293)
  br label %295

295:                                              ; preds = %290, %284
  %296 = load i8*, i8** %17, align 8
  store i8 0, i8* %296, align 1
  %297 = load i32, i32* %14, align 4
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %300

299:                                              ; preds = %295
  store i32 -1, i32* %6, align 4
  br label %303

300:                                              ; preds = %295
  %301 = load i64, i64* %18, align 8
  %302 = trunc i64 %301 to i32
  store i32 %302, i32* %6, align 4
  br label %303

303:                                              ; preds = %300, %299, %276, %275, %271, %265, %237, %170, %82
  %304 = load i32, i32* %6, align 4
  ret i32 %304
}

declare dso_local i32 @getc(i32*) #1

declare dso_local i32 @sldns_fskipcs_l(i32*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
