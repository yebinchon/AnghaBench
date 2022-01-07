; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_parse.c_sldns_bget_token_par.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_parse.c_sldns_bget_token_par.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDNS_PARSE_NORMAL = common dso_local global i8* null, align 8
@EOF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sldns_bget_token_par(i32* %0, i8* %1, i8* %2, i64 %3, i32* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32* %4, i32** %12, align 8
  store i8* %5, i8** %13, align 8
  %23 = load i8*, i8** %10, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %6
  %26 = load i8*, i8** @LDNS_PARSE_NORMAL, align 8
  store i8* %26, i8** %22, align 8
  br label %29

27:                                               ; preds = %6
  %28 = load i8*, i8** %10, align 8
  store i8* %28, i8** %22, align 8
  br label %29

29:                                               ; preds = %27, %25
  %30 = load i32*, i32** %12, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i32*, i32** %12, align 8
  %34 = load i32, i32* %33, align 4
  br label %36

35:                                               ; preds = %29
  br label %36

36:                                               ; preds = %35, %32
  %37 = phi i32 [ %34, %32 ], [ 0, %35 ]
  store i32 %37, i32* %16, align 4
  store i64 0, i64* %20, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %38 = load i8*, i8** %9, align 8
  store i8* %38, i8** %19, align 8
  store i32 0, i32* %15, align 4
  %39 = load i8*, i8** %22, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 0
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 34
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  store i32 1, i32* %18, align 4
  br label %45

45:                                               ; preds = %44, %36
  br label %46

46:                                               ; preds = %250, %189, %167, %143, %137, %101, %77, %45
  %47 = load i32*, i32** %8, align 8
  %48 = call i32 @sldns_bgetc(i32* %47)
  store i32 %48, i32* %14, align 4
  %49 = load i32, i32* @EOF, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %251

51:                                               ; preds = %46
  %52 = load i32, i32* %14, align 4
  %53 = icmp eq i32 %52, 13
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  store i32 32, i32* %14, align 4
  br label %55

55:                                               ; preds = %54, %51
  %56 = load i32, i32* %14, align 4
  %57 = icmp eq i32 %56, 40
  br i1 %57, label %58, label %79

58:                                               ; preds = %55
  %59 = load i32, i32* %15, align 4
  %60 = icmp ne i32 %59, 92
  br i1 %60, label %61, label %79

61:                                               ; preds = %58
  %62 = load i32, i32* %18, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %79, label %64

64:                                               ; preds = %61
  %65 = load i32, i32* %17, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %64
  %68 = load i32*, i32** %12, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %74

70:                                               ; preds = %67
  %71 = load i32*, i32** %12, align 8
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 4
  br label %74

74:                                               ; preds = %70, %67
  %75 = load i32, i32* %16, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %16, align 4
  br label %77

77:                                               ; preds = %74, %64
  %78 = load i32, i32* %14, align 4
  store i32 %78, i32* %15, align 4
  br label %46

79:                                               ; preds = %61, %58, %55
  %80 = load i32, i32* %14, align 4
  %81 = icmp eq i32 %80, 41
  br i1 %81, label %82, label %103

82:                                               ; preds = %79
  %83 = load i32, i32* %15, align 4
  %84 = icmp ne i32 %83, 92
  br i1 %84, label %85, label %103

85:                                               ; preds = %82
  %86 = load i32, i32* %18, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %103, label %88

88:                                               ; preds = %85
  %89 = load i32, i32* %17, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %101

91:                                               ; preds = %88
  %92 = load i32*, i32** %12, align 8
  %93 = icmp ne i32* %92, null
  br i1 %93, label %94, label %98

94:                                               ; preds = %91
  %95 = load i32*, i32** %12, align 8
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 %96, -1
  store i32 %97, i32* %95, align 4
  br label %98

98:                                               ; preds = %94, %91
  %99 = load i32, i32* %16, align 4
  %100 = add nsw i32 %99, -1
  store i32 %100, i32* %16, align 4
  br label %101

101:                                              ; preds = %98, %88
  %102 = load i32, i32* %14, align 4
  store i32 %102, i32* %15, align 4
  br label %46

103:                                              ; preds = %85, %82, %79
  %104 = load i32, i32* %16, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %103
  %107 = load i8*, i8** %19, align 8
  store i8 0, i8* %107, align 1
  store i32 0, i32* %7, align 4
  br label %291

108:                                              ; preds = %103
  %109 = load i32, i32* %14, align 4
  %110 = icmp eq i32 %109, 59
  br i1 %110, label %111, label %119

111:                                              ; preds = %108
  %112 = load i32, i32* %18, align 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %111
  %115 = load i32, i32* %15, align 4
  %116 = icmp ne i32 %115, 92
  br i1 %116, label %117, label %118

117:                                              ; preds = %114
  store i32 1, i32* %17, align 4
  br label %118

118:                                              ; preds = %117, %114
  br label %119

119:                                              ; preds = %118, %111, %108
  %120 = load i32, i32* %14, align 4
  %121 = icmp eq i32 %120, 34
  br i1 %121, label %122, label %131

122:                                              ; preds = %119
  %123 = load i32, i32* %17, align 4
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %122
  %126 = load i32, i32* %15, align 4
  %127 = icmp ne i32 %126, 92
  br i1 %127, label %128, label %131

128:                                              ; preds = %125
  %129 = load i32, i32* %18, align 4
  %130 = sub nsw i32 1, %129
  store i32 %130, i32* %18, align 4
  br label %131

131:                                              ; preds = %128, %125, %122, %119
  %132 = load i32, i32* %14, align 4
  %133 = icmp eq i32 %132, 10
  br i1 %133, label %134, label %140

134:                                              ; preds = %131
  %135 = load i32, i32* %17, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %134
  store i32 0, i32* %17, align 4
  %138 = load i8*, i8** %19, align 8
  store i8 32, i8* %138, align 1
  %139 = load i32, i32* %14, align 4
  store i32 %139, i32* %15, align 4
  br label %46

140:                                              ; preds = %134, %131
  %141 = load i32, i32* %17, align 4
  %142 = icmp eq i32 %141, 1
  br i1 %142, label %143, label %146

143:                                              ; preds = %140
  %144 = load i8*, i8** %19, align 8
  store i8 32, i8* %144, align 1
  %145 = load i32, i32* %14, align 4
  store i32 %145, i32* %15, align 4
  br label %46

146:                                              ; preds = %140
  %147 = load i32, i32* %14, align 4
  %148 = icmp eq i32 %147, 10
  br i1 %148, label %149, label %169

149:                                              ; preds = %146
  %150 = load i32, i32* %16, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %169

152:                                              ; preds = %149
  %153 = load i8*, i8** %13, align 8
  %154 = icmp ne i8* %153, null
  br i1 %154, label %155, label %164

155:                                              ; preds = %152
  %156 = load i8*, i8** %13, align 8
  %157 = load i32, i32* %14, align 4
  %158 = call i64 @strchr(i8* %156, i32 %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %167, label %160

160:                                              ; preds = %155
  %161 = load i8*, i8** %13, align 8
  %162 = call i64 @strchr(i8* %161, i32 32)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %167, label %164

164:                                              ; preds = %160, %152
  %165 = load i8*, i8** %19, align 8
  %166 = getelementptr inbounds i8, i8* %165, i32 1
  store i8* %166, i8** %19, align 8
  store i8 32, i8* %165, align 1
  br label %167

167:                                              ; preds = %164, %160, %155
  %168 = load i32, i32* %14, align 4
  store i32 %168, i32* %15, align 4
  br label %46

169:                                              ; preds = %149, %146
  %170 = load i8*, i8** %13, align 8
  %171 = icmp ne i8* %170, null
  br i1 %171, label %172, label %192

172:                                              ; preds = %169
  %173 = load i64, i64* %20, align 8
  %174 = icmp eq i64 %173, 0
  br i1 %174, label %175, label %192

175:                                              ; preds = %172
  %176 = load i32, i32* %17, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %192, label %178

178:                                              ; preds = %175
  %179 = load i32, i32* %18, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %192, label %181

181:                                              ; preds = %178
  %182 = load i32, i32* %15, align 4
  %183 = icmp ne i32 %182, 92
  br i1 %183, label %184, label %192

184:                                              ; preds = %181
  %185 = load i8*, i8** %13, align 8
  %186 = load i32, i32* %14, align 4
  %187 = call i64 @strchr(i8* %185, i32 %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %191

189:                                              ; preds = %184
  %190 = load i32, i32* %14, align 4
  store i32 %190, i32* %15, align 4
  br label %46

191:                                              ; preds = %184
  br label %192

192:                                              ; preds = %191, %181, %178, %175, %172, %169
  %193 = load i8*, i8** %22, align 8
  store i8* %193, i8** %21, align 8
  br label %194

194:                                              ; preds = %215, %192
  %195 = load i8*, i8** %21, align 8
  %196 = load i8, i8* %195, align 1
  %197 = icmp ne i8 %196, 0
  br i1 %197, label %198, label %218

198:                                              ; preds = %194
  %199 = load i32, i32* %14, align 4
  %200 = load i8*, i8** %21, align 8
  %201 = load i8, i8* %200, align 1
  %202 = sext i8 %201 to i32
  %203 = icmp eq i32 %199, %202
  br i1 %203, label %204, label %214

204:                                              ; preds = %198
  %205 = load i32, i32* %15, align 4
  %206 = icmp ne i32 %205, 92
  br i1 %206, label %207, label %214

207:                                              ; preds = %204
  %208 = load i32, i32* %16, align 4
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %213, label %210

210:                                              ; preds = %207
  %211 = load i32*, i32** %12, align 8
  %212 = icmp ne i32* %211, null
  br i1 %212, label %213, label %214

213:                                              ; preds = %210, %207
  br label %266

214:                                              ; preds = %210, %204, %198
  br label %215

215:                                              ; preds = %214
  %216 = load i8*, i8** %21, align 8
  %217 = getelementptr inbounds i8, i8* %216, i32 1
  store i8* %217, i8** %21, align 8
  br label %194

218:                                              ; preds = %194
  %219 = load i64, i64* %20, align 8
  %220 = add i64 %219, 1
  store i64 %220, i64* %20, align 8
  %221 = load i64, i64* %11, align 8
  %222 = icmp ugt i64 %221, 0
  br i1 %222, label %223, label %237

223:                                              ; preds = %218
  %224 = load i64, i64* %20, align 8
  %225 = load i64, i64* %11, align 8
  %226 = icmp uge i64 %224, %225
  br i1 %226, label %235, label %227

227:                                              ; preds = %223
  %228 = load i8*, i8** %19, align 8
  %229 = load i8*, i8** %9, align 8
  %230 = ptrtoint i8* %228 to i64
  %231 = ptrtoint i8* %229 to i64
  %232 = sub i64 %230, %231
  %233 = load i64, i64* %11, align 8
  %234 = icmp uge i64 %232, %233
  br i1 %234, label %235, label %237

235:                                              ; preds = %227, %223
  %236 = load i8*, i8** %19, align 8
  store i8 0, i8* %236, align 1
  store i32 -1, i32* %7, align 4
  br label %291

237:                                              ; preds = %227, %218
  %238 = load i32, i32* %14, align 4
  %239 = trunc i32 %238 to i8
  %240 = load i8*, i8** %19, align 8
  %241 = getelementptr inbounds i8, i8* %240, i32 1
  store i8* %241, i8** %19, align 8
  store i8 %239, i8* %240, align 1
  %242 = load i32, i32* %14, align 4
  %243 = icmp eq i32 %242, 92
  br i1 %243, label %244, label %248

244:                                              ; preds = %237
  %245 = load i32, i32* %15, align 4
  %246 = icmp eq i32 %245, 92
  br i1 %246, label %247, label %248

247:                                              ; preds = %244
  store i32 0, i32* %15, align 4
  br label %250

248:                                              ; preds = %244, %237
  %249 = load i32, i32* %14, align 4
  store i32 %249, i32* %15, align 4
  br label %250

250:                                              ; preds = %248, %247
  br label %46

251:                                              ; preds = %46
  %252 = load i8*, i8** %19, align 8
  store i8 0, i8* %252, align 1
  %253 = load i64, i64* %20, align 8
  %254 = icmp eq i64 %253, 0
  br i1 %254, label %255, label %256

255:                                              ; preds = %251
  store i32 -1, i32* %7, align 4
  br label %291

256:                                              ; preds = %251
  %257 = load i32*, i32** %12, align 8
  %258 = icmp ne i32* %257, null
  br i1 %258, label %263, label %259

259:                                              ; preds = %256
  %260 = load i32, i32* %16, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %263

262:                                              ; preds = %259
  store i32 -1, i32* %7, align 4
  br label %291

263:                                              ; preds = %259, %256
  %264 = load i64, i64* %20, align 8
  %265 = trunc i64 %264 to i32
  store i32 %265, i32* %7, align 4
  br label %291

266:                                              ; preds = %213
  %267 = load i8*, i8** %22, align 8
  %268 = load i8, i8* %267, align 1
  %269 = sext i8 %268 to i32
  %270 = icmp eq i32 %269, 34
  br i1 %270, label %271, label %276

271:                                              ; preds = %266
  %272 = load i32*, i32** %8, align 8
  %273 = load i8*, i8** %22, align 8
  %274 = getelementptr inbounds i8, i8* %273, i64 1
  %275 = call i32 @sldns_bskipcs(i32* %272, i8* %274)
  br label %280

276:                                              ; preds = %266
  %277 = load i32*, i32** %8, align 8
  %278 = load i8*, i8** %22, align 8
  %279 = call i32 @sldns_bskipcs(i32* %277, i8* %278)
  br label %280

280:                                              ; preds = %276, %271
  %281 = load i8*, i8** %19, align 8
  store i8 0, i8* %281, align 1
  %282 = load i32*, i32** %12, align 8
  %283 = icmp ne i32* %282, null
  br i1 %283, label %288, label %284

284:                                              ; preds = %280
  %285 = load i32, i32* %16, align 4
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %288

287:                                              ; preds = %284
  store i32 -1, i32* %7, align 4
  br label %291

288:                                              ; preds = %284, %280
  %289 = load i64, i64* %20, align 8
  %290 = trunc i64 %289 to i32
  store i32 %290, i32* %7, align 4
  br label %291

291:                                              ; preds = %288, %287, %263, %262, %255, %235, %106
  %292 = load i32, i32* %7, align 4
  ret i32 %292
}

declare dso_local i32 @sldns_bgetc(i32*) #1

declare dso_local i64 @strchr(i8*, i32) #1

declare dso_local i32 @sldns_bskipcs(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
