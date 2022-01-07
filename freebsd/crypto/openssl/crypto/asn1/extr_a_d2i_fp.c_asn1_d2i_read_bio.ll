; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/asn1/extr_a_d2i_fp.c_asn1_d2i_read_bio.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/asn1/extr_a_d2i_fp.c_asn1_d2i_read_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32* }

@HEADER_SIZE = common dso_local global i64 0, align 8
@ASN1_F_ASN1_D2I_READ_BIO = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i64 0, align 8
@ASN1_R_NOT_ENOUGH_DATA = common dso_local global i64 0, align 8
@ASN1_R_TOO_LONG = common dso_local global i64 0, align 8
@UINT32_MAX = common dso_local global i64 0, align 8
@ASN1_R_HEADER_TOO_LONG = common dso_local global i64 0, align 8
@V_ASN1_EOC = common dso_local global i32 0, align 4
@ASN1_CHUNK_INITIAL_SIZE = common dso_local global i64 0, align 8
@INT_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @asn1_d2i_read_bio(i32* %0, %struct.TYPE_6__** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_6__**, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_6__** %1, %struct.TYPE_6__*** %5, align 8
  %21 = load i64, i64* @HEADER_SIZE, align 8
  store i64 %21, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  %22 = call %struct.TYPE_6__* (...) @BUF_MEM_new()
  store %struct.TYPE_6__* %22, %struct.TYPE_6__** %6, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %24 = icmp eq %struct.TYPE_6__* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %2
  %26 = load i32, i32* @ASN1_F_ASN1_D2I_READ_BIO, align 4
  %27 = load i64, i64* @ERR_R_MALLOC_FAILURE, align 8
  %28 = call i32 @ASN1err(i32 %26, i64 %27)
  store i32 -1, i32* %3, align 4
  br label %299

29:                                               ; preds = %2
  %30 = call i32 (...) @ERR_clear_error()
  br label %31

31:                                               ; preds = %282, %29
  %32 = load i64, i64* %9, align 8
  %33 = load i64, i64* %12, align 8
  %34 = load i64, i64* %11, align 8
  %35 = sub i64 %33, %34
  %36 = icmp uge i64 %32, %35
  br i1 %36, label %37, label %99

37:                                               ; preds = %31
  %38 = load i64, i64* %12, align 8
  %39 = load i64, i64* %11, align 8
  %40 = sub i64 %38, %39
  %41 = load i64, i64* %9, align 8
  %42 = sub i64 %41, %40
  store i64 %42, i64* %9, align 8
  %43 = load i64, i64* %12, align 8
  %44 = load i64, i64* %9, align 8
  %45 = add i64 %43, %44
  %46 = load i64, i64* %12, align 8
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %55, label %48

48:                                               ; preds = %37
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %50 = load i64, i64* %12, align 8
  %51 = load i64, i64* %9, align 8
  %52 = add i64 %50, %51
  %53 = call i32 @BUF_MEM_grow_clean(%struct.TYPE_6__* %49, i64 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %48, %37
  %56 = load i32, i32* @ASN1_F_ASN1_D2I_READ_BIO, align 4
  %57 = load i64, i64* @ERR_R_MALLOC_FAILURE, align 8
  %58 = call i32 @ASN1err(i32 %56, i64 %57)
  br label %296

59:                                               ; preds = %48
  %60 = load i32*, i32** %4, align 8
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load i64, i64* %12, align 8
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  %66 = load i64, i64* %9, align 8
  %67 = call i32 @BIO_read(i32* %60, i32* %65, i64 %66)
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %59
  %71 = load i64, i64* %12, align 8
  %72 = load i64, i64* %11, align 8
  %73 = sub i64 %71, %72
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %70
  %76 = load i32, i32* @ASN1_F_ASN1_D2I_READ_BIO, align 4
  %77 = load i64, i64* @ASN1_R_NOT_ENOUGH_DATA, align 8
  %78 = call i32 @ASN1err(i32 %76, i64 %77)
  br label %296

79:                                               ; preds = %70, %59
  %80 = load i32, i32* %8, align 4
  %81 = icmp sgt i32 %80, 0
  br i1 %81, label %82, label %98

82:                                               ; preds = %79
  %83 = load i64, i64* %12, align 8
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = add i64 %83, %85
  %87 = load i64, i64* %12, align 8
  %88 = icmp ult i64 %86, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %82
  %90 = load i32, i32* @ASN1_F_ASN1_D2I_READ_BIO, align 4
  %91 = load i64, i64* @ASN1_R_TOO_LONG, align 8
  %92 = call i32 @ASN1err(i32 %90, i64 %91)
  br label %296

93:                                               ; preds = %82
  %94 = load i32, i32* %8, align 4
  %95 = sext i32 %94 to i64
  %96 = load i64, i64* %12, align 8
  %97 = add i64 %96, %95
  store i64 %97, i64* %12, align 8
  br label %98

98:                                               ; preds = %93, %79
  br label %99

99:                                               ; preds = %98, %31
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = load i64, i64* %11, align 8
  %104 = getelementptr inbounds i32, i32* %102, i64 %103
  %105 = bitcast i32* %104 to i8*
  store i8* %105, i8** %7, align 8
  %106 = load i8*, i8** %7, align 8
  store i8* %106, i8** %13, align 8
  %107 = load i64, i64* %12, align 8
  %108 = load i64, i64* %11, align 8
  %109 = sub i64 %107, %108
  %110 = call i32 @ASN1_get_object(i8** %13, i64* %14, i32* %16, i32* %17, i64 %109)
  store i32 %110, i32* %15, align 4
  %111 = load i32, i32* %15, align 4
  %112 = and i32 %111, 128
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %124

114:                                              ; preds = %99
  %115 = call i32 (...) @ERR_peek_error()
  %116 = call i64 @ERR_GET_REASON(i32 %115)
  store i64 %116, i64* %18, align 8
  %117 = load i64, i64* %18, align 8
  %118 = load i64, i64* @ASN1_R_TOO_LONG, align 8
  %119 = icmp ne i64 %117, %118
  br i1 %119, label %120, label %121

120:                                              ; preds = %114
  br label %296

121:                                              ; preds = %114
  %122 = call i32 (...) @ERR_clear_error()
  br label %123

123:                                              ; preds = %121
  br label %124

124:                                              ; preds = %123, %99
  %125 = load i8*, i8** %13, align 8
  %126 = load i8*, i8** %7, align 8
  %127 = ptrtoint i8* %125 to i64
  %128 = ptrtoint i8* %126 to i64
  %129 = sub i64 %127, %128
  %130 = trunc i64 %129 to i32
  store i32 %130, i32* %8, align 4
  %131 = load i32, i32* %8, align 4
  %132 = sext i32 %131 to i64
  %133 = load i64, i64* %11, align 8
  %134 = add i64 %133, %132
  store i64 %134, i64* %11, align 8
  %135 = load i32, i32* %15, align 4
  %136 = and i32 %135, 1
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %150

138:                                              ; preds = %124
  %139 = load i64, i64* %10, align 8
  %140 = load i64, i64* @UINT32_MAX, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %146

142:                                              ; preds = %138
  %143 = load i32, i32* @ASN1_F_ASN1_D2I_READ_BIO, align 4
  %144 = load i64, i64* @ASN1_R_HEADER_TOO_LONG, align 8
  %145 = call i32 @ASN1err(i32 %143, i64 %144)
  br label %296

146:                                              ; preds = %138
  %147 = load i64, i64* %10, align 8
  %148 = add nsw i64 %147, 1
  store i64 %148, i64* %10, align 8
  %149 = load i64, i64* @HEADER_SIZE, align 8
  store i64 %149, i64* %9, align 8
  br label %282

150:                                              ; preds = %124
  %151 = load i64, i64* %10, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %169

153:                                              ; preds = %150
  %154 = load i64, i64* %14, align 8
  %155 = icmp eq i64 %154, 0
  br i1 %155, label %156, label %169

156:                                              ; preds = %153
  %157 = load i32, i32* %16, align 4
  %158 = load i32, i32* @V_ASN1_EOC, align 4
  %159 = icmp eq i32 %157, %158
  br i1 %159, label %160, label %169

160:                                              ; preds = %156
  %161 = load i64, i64* %10, align 8
  %162 = add nsw i64 %161, -1
  store i64 %162, i64* %10, align 8
  %163 = load i64, i64* %10, align 8
  %164 = icmp eq i64 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %160
  br label %283

166:                                              ; preds = %160
  %167 = load i64, i64* @HEADER_SIZE, align 8
  store i64 %167, i64* %9, align 8
  br label %168

168:                                              ; preds = %166
  br label %281

169:                                              ; preds = %156, %153, %150
  %170 = load i64, i64* %14, align 8
  store i64 %170, i64* %9, align 8
  %171 = load i64, i64* %9, align 8
  %172 = load i64, i64* %12, align 8
  %173 = load i64, i64* %11, align 8
  %174 = sub i64 %172, %173
  %175 = icmp ugt i64 %171, %174
  br i1 %175, label %176, label %261

176:                                              ; preds = %169
  %177 = load i64, i64* @ASN1_CHUNK_INITIAL_SIZE, align 8
  store i64 %177, i64* %19, align 8
  %178 = load i64, i64* %12, align 8
  %179 = load i64, i64* %11, align 8
  %180 = sub i64 %178, %179
  %181 = load i64, i64* %9, align 8
  %182 = sub i64 %181, %180
  store i64 %182, i64* %9, align 8
  %183 = load i64, i64* %9, align 8
  %184 = load i64, i64* @INT_MAX, align 8
  %185 = icmp ugt i64 %183, %184
  br i1 %185, label %192, label %186

186:                                              ; preds = %176
  %187 = load i64, i64* %12, align 8
  %188 = load i64, i64* %9, align 8
  %189 = add i64 %187, %188
  %190 = load i64, i64* %12, align 8
  %191 = icmp ult i64 %189, %190
  br i1 %191, label %192, label %196

192:                                              ; preds = %186, %176
  %193 = load i32, i32* @ASN1_F_ASN1_D2I_READ_BIO, align 4
  %194 = load i64, i64* @ASN1_R_TOO_LONG, align 8
  %195 = call i32 @ASN1err(i32 %193, i64 %194)
  br label %296

196:                                              ; preds = %186
  br label %197

197:                                              ; preds = %259, %196
  %198 = load i64, i64* %9, align 8
  %199 = icmp ugt i64 %198, 0
  br i1 %199, label %200, label %260

200:                                              ; preds = %197
  %201 = load i64, i64* %9, align 8
  %202 = load i64, i64* %19, align 8
  %203 = icmp ugt i64 %201, %202
  br i1 %203, label %204, label %206

204:                                              ; preds = %200
  %205 = load i64, i64* %19, align 8
  br label %208

206:                                              ; preds = %200
  %207 = load i64, i64* %9, align 8
  br label %208

208:                                              ; preds = %206, %204
  %209 = phi i64 [ %205, %204 ], [ %207, %206 ]
  store i64 %209, i64* %20, align 8
  %210 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %211 = load i64, i64* %12, align 8
  %212 = load i64, i64* %20, align 8
  %213 = add i64 %211, %212
  %214 = call i32 @BUF_MEM_grow_clean(%struct.TYPE_6__* %210, i64 %213)
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %220, label %216

216:                                              ; preds = %208
  %217 = load i32, i32* @ASN1_F_ASN1_D2I_READ_BIO, align 4
  %218 = load i64, i64* @ERR_R_MALLOC_FAILURE, align 8
  %219 = call i32 @ASN1err(i32 %217, i64 %218)
  br label %296

220:                                              ; preds = %208
  %221 = load i64, i64* %20, align 8
  %222 = load i64, i64* %9, align 8
  %223 = sub i64 %222, %221
  store i64 %223, i64* %9, align 8
  br label %224

224:                                              ; preds = %242, %220
  %225 = load i64, i64* %20, align 8
  %226 = icmp ugt i64 %225, 0
  br i1 %226, label %227, label %251

227:                                              ; preds = %224
  %228 = load i32*, i32** %4, align 8
  %229 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %230 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %229, i32 0, i32 0
  %231 = load i32*, i32** %230, align 8
  %232 = load i64, i64* %12, align 8
  %233 = getelementptr inbounds i32, i32* %231, i64 %232
  %234 = load i64, i64* %20, align 8
  %235 = call i32 @BIO_read(i32* %228, i32* %233, i64 %234)
  store i32 %235, i32* %8, align 4
  %236 = load i32, i32* %8, align 4
  %237 = icmp sle i32 %236, 0
  br i1 %237, label %238, label %242

238:                                              ; preds = %227
  %239 = load i32, i32* @ASN1_F_ASN1_D2I_READ_BIO, align 4
  %240 = load i64, i64* @ASN1_R_NOT_ENOUGH_DATA, align 8
  %241 = call i32 @ASN1err(i32 %239, i64 %240)
  br label %296

242:                                              ; preds = %227
  %243 = load i32, i32* %8, align 4
  %244 = sext i32 %243 to i64
  %245 = load i64, i64* %12, align 8
  %246 = add i64 %245, %244
  store i64 %246, i64* %12, align 8
  %247 = load i32, i32* %8, align 4
  %248 = sext i32 %247 to i64
  %249 = load i64, i64* %20, align 8
  %250 = sub i64 %249, %248
  store i64 %250, i64* %20, align 8
  br label %224

251:                                              ; preds = %224
  %252 = load i64, i64* %19, align 8
  %253 = load i64, i64* @INT_MAX, align 8
  %254 = udiv i64 %253, 2
  %255 = icmp ult i64 %252, %254
  br i1 %255, label %256, label %259

256:                                              ; preds = %251
  %257 = load i64, i64* %19, align 8
  %258 = mul i64 %257, 2
  store i64 %258, i64* %19, align 8
  br label %259

259:                                              ; preds = %256, %251
  br label %197

260:                                              ; preds = %197
  br label %261

261:                                              ; preds = %260, %169
  %262 = load i64, i64* %11, align 8
  %263 = load i64, i64* %14, align 8
  %264 = add i64 %262, %263
  %265 = load i64, i64* %11, align 8
  %266 = icmp ult i64 %264, %265
  br i1 %266, label %267, label %271

267:                                              ; preds = %261
  %268 = load i32, i32* @ASN1_F_ASN1_D2I_READ_BIO, align 4
  %269 = load i64, i64* @ASN1_R_TOO_LONG, align 8
  %270 = call i32 @ASN1err(i32 %268, i64 %269)
  br label %296

271:                                              ; preds = %261
  %272 = load i64, i64* %14, align 8
  %273 = load i64, i64* %11, align 8
  %274 = add i64 %273, %272
  store i64 %274, i64* %11, align 8
  %275 = load i64, i64* %10, align 8
  %276 = icmp eq i64 %275, 0
  br i1 %276, label %277, label %278

277:                                              ; preds = %271
  br label %283

278:                                              ; preds = %271
  %279 = load i64, i64* @HEADER_SIZE, align 8
  store i64 %279, i64* %9, align 8
  br label %280

280:                                              ; preds = %278
  br label %281

281:                                              ; preds = %280, %168
  br label %282

282:                                              ; preds = %281, %146
  br label %31

283:                                              ; preds = %277, %165
  %284 = load i64, i64* %11, align 8
  %285 = load i64, i64* @INT_MAX, align 8
  %286 = icmp ugt i64 %284, %285
  br i1 %286, label %287, label %291

287:                                              ; preds = %283
  %288 = load i32, i32* @ASN1_F_ASN1_D2I_READ_BIO, align 4
  %289 = load i64, i64* @ASN1_R_TOO_LONG, align 8
  %290 = call i32 @ASN1err(i32 %288, i64 %289)
  br label %296

291:                                              ; preds = %283
  %292 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %293 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  store %struct.TYPE_6__* %292, %struct.TYPE_6__** %293, align 8
  %294 = load i64, i64* %11, align 8
  %295 = trunc i64 %294 to i32
  store i32 %295, i32* %3, align 4
  br label %299

296:                                              ; preds = %287, %267, %238, %216, %192, %142, %120, %89, %75, %55
  %297 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %298 = call i32 @BUF_MEM_free(%struct.TYPE_6__* %297)
  store i32 -1, i32* %3, align 4
  br label %299

299:                                              ; preds = %296, %291, %25
  %300 = load i32, i32* %3, align 4
  ret i32 %300
}

declare dso_local %struct.TYPE_6__* @BUF_MEM_new(...) #1

declare dso_local i32 @ASN1err(i32, i64) #1

declare dso_local i32 @ERR_clear_error(...) #1

declare dso_local i32 @BUF_MEM_grow_clean(%struct.TYPE_6__*, i64) #1

declare dso_local i32 @BIO_read(i32*, i32*, i64) #1

declare dso_local i32 @ASN1_get_object(i8**, i64*, i32*, i32*, i64) #1

declare dso_local i64 @ERR_GET_REASON(i32) #1

declare dso_local i32 @ERR_peek_error(...) #1

declare dso_local i32 @BUF_MEM_free(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
