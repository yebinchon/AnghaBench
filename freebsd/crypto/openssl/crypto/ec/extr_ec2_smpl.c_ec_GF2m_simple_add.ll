; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ec2_smpl.c_ec_GF2m_simple_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ec2_smpl.c_ec_GF2m_simple_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { %struct.TYPE_23__*, i32* }
%struct.TYPE_23__ = type { i32 (%struct.TYPE_25__*, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_25__*, i32*, i32*, i32*)*, i32 (%struct.TYPE_25__*, i32*, i32*, i32*, i32*)* }
%struct.TYPE_24__ = type { i32, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ec_GF2m_simple_add(%struct.TYPE_25__* %0, %struct.TYPE_24__* %1, %struct.TYPE_24__* %2, %struct.TYPE_24__* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_25__*, align 8
  %8 = alloca %struct.TYPE_24__*, align 8
  %9 = alloca %struct.TYPE_24__*, align 8
  %10 = alloca %struct.TYPE_24__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %7, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %8, align 8
  store %struct.TYPE_24__* %2, %struct.TYPE_24__** %9, align 8
  store %struct.TYPE_24__* %3, %struct.TYPE_24__** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* null, i32** %12, align 8
  store i32 0, i32* %21, align 4
  %22 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %23 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %24 = call i64 @EC_POINT_is_at_infinity(%struct.TYPE_25__* %22, %struct.TYPE_24__* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %5
  %27 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %28 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %29 = call i32 @EC_POINT_copy(%struct.TYPE_24__* %27, %struct.TYPE_24__* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  store i32 0, i32* %6, align 4
  br label %328

32:                                               ; preds = %26
  store i32 1, i32* %6, align 4
  br label %328

33:                                               ; preds = %5
  %34 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %35 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %36 = call i64 @EC_POINT_is_at_infinity(%struct.TYPE_25__* %34, %struct.TYPE_24__* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %33
  %39 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %40 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %41 = call i32 @EC_POINT_copy(%struct.TYPE_24__* %39, %struct.TYPE_24__* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %38
  store i32 0, i32* %6, align 4
  br label %328

44:                                               ; preds = %38
  store i32 1, i32* %6, align 4
  br label %328

45:                                               ; preds = %33
  %46 = load i32*, i32** %11, align 8
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = call i32* (...) @BN_CTX_new()
  store i32* %49, i32** %12, align 8
  store i32* %49, i32** %11, align 8
  %50 = load i32*, i32** %11, align 8
  %51 = icmp eq i32* %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  store i32 0, i32* %6, align 4
  br label %328

53:                                               ; preds = %48
  br label %54

54:                                               ; preds = %53, %45
  %55 = load i32*, i32** %11, align 8
  %56 = call i32 @BN_CTX_start(i32* %55)
  %57 = load i32*, i32** %11, align 8
  %58 = call i32* @BN_CTX_get(i32* %57)
  store i32* %58, i32** %13, align 8
  %59 = load i32*, i32** %11, align 8
  %60 = call i32* @BN_CTX_get(i32* %59)
  store i32* %60, i32** %14, align 8
  %61 = load i32*, i32** %11, align 8
  %62 = call i32* @BN_CTX_get(i32* %61)
  store i32* %62, i32** %15, align 8
  %63 = load i32*, i32** %11, align 8
  %64 = call i32* @BN_CTX_get(i32* %63)
  store i32* %64, i32** %16, align 8
  %65 = load i32*, i32** %11, align 8
  %66 = call i32* @BN_CTX_get(i32* %65)
  store i32* %66, i32** %17, align 8
  %67 = load i32*, i32** %11, align 8
  %68 = call i32* @BN_CTX_get(i32* %67)
  store i32* %68, i32** %18, align 8
  %69 = load i32*, i32** %11, align 8
  %70 = call i32* @BN_CTX_get(i32* %69)
  store i32* %70, i32** %19, align 8
  %71 = load i32*, i32** %11, align 8
  %72 = call i32* @BN_CTX_get(i32* %71)
  store i32* %72, i32** %20, align 8
  %73 = load i32*, i32** %20, align 8
  %74 = icmp eq i32* %73, null
  br i1 %74, label %75, label %76

75:                                               ; preds = %54
  br label %322

76:                                               ; preds = %54
  %77 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %98

81:                                               ; preds = %76
  %82 = load i32*, i32** %13, align 8
  %83 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @BN_copy(i32* %82, i32 %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %81
  br label %322

89:                                               ; preds = %81
  %90 = load i32*, i32** %14, align 8
  %91 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @BN_copy(i32* %90, i32 %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %89
  br label %322

97:                                               ; preds = %89
  br label %108

98:                                               ; preds = %76
  %99 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %100 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %101 = load i32*, i32** %13, align 8
  %102 = load i32*, i32** %14, align 8
  %103 = load i32*, i32** %11, align 8
  %104 = call i32 @EC_POINT_get_affine_coordinates(%struct.TYPE_25__* %99, %struct.TYPE_24__* %100, i32* %101, i32* %102, i32* %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %98
  br label %322

107:                                              ; preds = %98
  br label %108

108:                                              ; preds = %107, %97
  %109 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %130

113:                                              ; preds = %108
  %114 = load i32*, i32** %15, align 8
  %115 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %116 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @BN_copy(i32* %114, i32 %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %113
  br label %322

121:                                              ; preds = %113
  %122 = load i32*, i32** %16, align 8
  %123 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %124 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @BN_copy(i32* %122, i32 %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %129, label %128

128:                                              ; preds = %121
  br label %322

129:                                              ; preds = %121
  br label %140

130:                                              ; preds = %108
  %131 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %132 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %133 = load i32*, i32** %15, align 8
  %134 = load i32*, i32** %16, align 8
  %135 = load i32*, i32** %11, align 8
  %136 = call i32 @EC_POINT_get_affine_coordinates(%struct.TYPE_25__* %131, %struct.TYPE_24__* %132, i32* %133, i32* %134, i32* %135)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %139, label %138

138:                                              ; preds = %130
  br label %322

139:                                              ; preds = %130
  br label %140

140:                                              ; preds = %139, %129
  %141 = load i32*, i32** %13, align 8
  %142 = load i32*, i32** %15, align 8
  %143 = call i64 @BN_GF2m_cmp(i32* %141, i32* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %210

145:                                              ; preds = %140
  %146 = load i32*, i32** %20, align 8
  %147 = load i32*, i32** %13, align 8
  %148 = load i32*, i32** %15, align 8
  %149 = call i32 @BN_GF2m_add(i32* %146, i32* %147, i32* %148)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %152, label %151

151:                                              ; preds = %145
  br label %322

152:                                              ; preds = %145
  %153 = load i32*, i32** %19, align 8
  %154 = load i32*, i32** %14, align 8
  %155 = load i32*, i32** %16, align 8
  %156 = call i32 @BN_GF2m_add(i32* %153, i32* %154, i32* %155)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %159, label %158

158:                                              ; preds = %152
  br label %322

159:                                              ; preds = %152
  %160 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %161 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %160, i32 0, i32 0
  %162 = load %struct.TYPE_23__*, %struct.TYPE_23__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %162, i32 0, i32 2
  %164 = load i32 (%struct.TYPE_25__*, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_25__*, i32*, i32*, i32*, i32*)** %163, align 8
  %165 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %166 = load i32*, i32** %19, align 8
  %167 = load i32*, i32** %19, align 8
  %168 = load i32*, i32** %20, align 8
  %169 = load i32*, i32** %11, align 8
  %170 = call i32 %164(%struct.TYPE_25__* %165, i32* %166, i32* %167, i32* %168, i32* %169)
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %173, label %172

172:                                              ; preds = %159
  br label %322

173:                                              ; preds = %159
  %174 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %175 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %174, i32 0, i32 0
  %176 = load %struct.TYPE_23__*, %struct.TYPE_23__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %176, i32 0, i32 1
  %178 = load i32 (%struct.TYPE_25__*, i32*, i32*, i32*)*, i32 (%struct.TYPE_25__*, i32*, i32*, i32*)** %177, align 8
  %179 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %180 = load i32*, i32** %17, align 8
  %181 = load i32*, i32** %19, align 8
  %182 = load i32*, i32** %11, align 8
  %183 = call i32 %178(%struct.TYPE_25__* %179, i32* %180, i32* %181, i32* %182)
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %186, label %185

185:                                              ; preds = %173
  br label %322

186:                                              ; preds = %173
  %187 = load i32*, i32** %17, align 8
  %188 = load i32*, i32** %17, align 8
  %189 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %190 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %189, i32 0, i32 1
  %191 = load i32*, i32** %190, align 8
  %192 = call i32 @BN_GF2m_add(i32* %187, i32* %188, i32* %191)
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %195, label %194

194:                                              ; preds = %186
  br label %322

195:                                              ; preds = %186
  %196 = load i32*, i32** %17, align 8
  %197 = load i32*, i32** %17, align 8
  %198 = load i32*, i32** %19, align 8
  %199 = call i32 @BN_GF2m_add(i32* %196, i32* %197, i32* %198)
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %202, label %201

201:                                              ; preds = %195
  br label %322

202:                                              ; preds = %195
  %203 = load i32*, i32** %17, align 8
  %204 = load i32*, i32** %17, align 8
  %205 = load i32*, i32** %20, align 8
  %206 = call i32 @BN_GF2m_add(i32* %203, i32* %204, i32* %205)
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %209, label %208

208:                                              ; preds = %202
  br label %322

209:                                              ; preds = %202
  br label %277

210:                                              ; preds = %140
  %211 = load i32*, i32** %14, align 8
  %212 = load i32*, i32** %16, align 8
  %213 = call i64 @BN_GF2m_cmp(i32* %211, i32* %212)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %219, label %215

215:                                              ; preds = %210
  %216 = load i32*, i32** %15, align 8
  %217 = call i64 @BN_is_zero(i32* %216)
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %226

219:                                              ; preds = %215, %210
  %220 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %221 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %222 = call i32 @EC_POINT_set_to_infinity(%struct.TYPE_25__* %220, %struct.TYPE_24__* %221)
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %225, label %224

224:                                              ; preds = %219
  br label %322

225:                                              ; preds = %219
  store i32 1, i32* %21, align 4
  br label %322

226:                                              ; preds = %215
  %227 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %228 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %227, i32 0, i32 0
  %229 = load %struct.TYPE_23__*, %struct.TYPE_23__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %229, i32 0, i32 2
  %231 = load i32 (%struct.TYPE_25__*, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_25__*, i32*, i32*, i32*, i32*)** %230, align 8
  %232 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %233 = load i32*, i32** %19, align 8
  %234 = load i32*, i32** %16, align 8
  %235 = load i32*, i32** %15, align 8
  %236 = load i32*, i32** %11, align 8
  %237 = call i32 %231(%struct.TYPE_25__* %232, i32* %233, i32* %234, i32* %235, i32* %236)
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %240, label %239

239:                                              ; preds = %226
  br label %322

240:                                              ; preds = %226
  %241 = load i32*, i32** %19, align 8
  %242 = load i32*, i32** %19, align 8
  %243 = load i32*, i32** %15, align 8
  %244 = call i32 @BN_GF2m_add(i32* %241, i32* %242, i32* %243)
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %247, label %246

246:                                              ; preds = %240
  br label %322

247:                                              ; preds = %240
  %248 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %249 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %248, i32 0, i32 0
  %250 = load %struct.TYPE_23__*, %struct.TYPE_23__** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %250, i32 0, i32 1
  %252 = load i32 (%struct.TYPE_25__*, i32*, i32*, i32*)*, i32 (%struct.TYPE_25__*, i32*, i32*, i32*)** %251, align 8
  %253 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %254 = load i32*, i32** %17, align 8
  %255 = load i32*, i32** %19, align 8
  %256 = load i32*, i32** %11, align 8
  %257 = call i32 %252(%struct.TYPE_25__* %253, i32* %254, i32* %255, i32* %256)
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %260, label %259

259:                                              ; preds = %247
  br label %322

260:                                              ; preds = %247
  %261 = load i32*, i32** %17, align 8
  %262 = load i32*, i32** %17, align 8
  %263 = load i32*, i32** %19, align 8
  %264 = call i32 @BN_GF2m_add(i32* %261, i32* %262, i32* %263)
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %267, label %266

266:                                              ; preds = %260
  br label %322

267:                                              ; preds = %260
  %268 = load i32*, i32** %17, align 8
  %269 = load i32*, i32** %17, align 8
  %270 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %271 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %270, i32 0, i32 1
  %272 = load i32*, i32** %271, align 8
  %273 = call i32 @BN_GF2m_add(i32* %268, i32* %269, i32* %272)
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %276, label %275

275:                                              ; preds = %267
  br label %322

276:                                              ; preds = %267
  br label %277

277:                                              ; preds = %276, %209
  %278 = load i32*, i32** %18, align 8
  %279 = load i32*, i32** %15, align 8
  %280 = load i32*, i32** %17, align 8
  %281 = call i32 @BN_GF2m_add(i32* %278, i32* %279, i32* %280)
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %284, label %283

283:                                              ; preds = %277
  br label %322

284:                                              ; preds = %277
  %285 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %286 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %285, i32 0, i32 0
  %287 = load %struct.TYPE_23__*, %struct.TYPE_23__** %286, align 8
  %288 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %287, i32 0, i32 0
  %289 = load i32 (%struct.TYPE_25__*, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_25__*, i32*, i32*, i32*, i32*)** %288, align 8
  %290 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %291 = load i32*, i32** %18, align 8
  %292 = load i32*, i32** %18, align 8
  %293 = load i32*, i32** %19, align 8
  %294 = load i32*, i32** %11, align 8
  %295 = call i32 %289(%struct.TYPE_25__* %290, i32* %291, i32* %292, i32* %293, i32* %294)
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %298, label %297

297:                                              ; preds = %284
  br label %322

298:                                              ; preds = %284
  %299 = load i32*, i32** %18, align 8
  %300 = load i32*, i32** %18, align 8
  %301 = load i32*, i32** %17, align 8
  %302 = call i32 @BN_GF2m_add(i32* %299, i32* %300, i32* %301)
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %305, label %304

304:                                              ; preds = %298
  br label %322

305:                                              ; preds = %298
  %306 = load i32*, i32** %18, align 8
  %307 = load i32*, i32** %18, align 8
  %308 = load i32*, i32** %16, align 8
  %309 = call i32 @BN_GF2m_add(i32* %306, i32* %307, i32* %308)
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %312, label %311

311:                                              ; preds = %305
  br label %322

312:                                              ; preds = %305
  %313 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %314 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %315 = load i32*, i32** %17, align 8
  %316 = load i32*, i32** %18, align 8
  %317 = load i32*, i32** %11, align 8
  %318 = call i32 @EC_POINT_set_affine_coordinates(%struct.TYPE_25__* %313, %struct.TYPE_24__* %314, i32* %315, i32* %316, i32* %317)
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %321, label %320

320:                                              ; preds = %312
  br label %322

321:                                              ; preds = %312
  store i32 1, i32* %21, align 4
  br label %322

322:                                              ; preds = %321, %320, %311, %304, %297, %283, %275, %266, %259, %246, %239, %225, %224, %208, %201, %194, %185, %172, %158, %151, %138, %128, %120, %106, %96, %88, %75
  %323 = load i32*, i32** %11, align 8
  %324 = call i32 @BN_CTX_end(i32* %323)
  %325 = load i32*, i32** %12, align 8
  %326 = call i32 @BN_CTX_free(i32* %325)
  %327 = load i32, i32* %21, align 4
  store i32 %327, i32* %6, align 4
  br label %328

328:                                              ; preds = %322, %52, %44, %43, %32, %31
  %329 = load i32, i32* %6, align 4
  ret i32 %329
}

declare dso_local i64 @EC_POINT_is_at_infinity(%struct.TYPE_25__*, %struct.TYPE_24__*) #1

declare dso_local i32 @EC_POINT_copy(%struct.TYPE_24__*, %struct.TYPE_24__*) #1

declare dso_local i32* @BN_CTX_new(...) #1

declare dso_local i32 @BN_CTX_start(i32*) #1

declare dso_local i32* @BN_CTX_get(i32*) #1

declare dso_local i32 @BN_copy(i32*, i32) #1

declare dso_local i32 @EC_POINT_get_affine_coordinates(%struct.TYPE_25__*, %struct.TYPE_24__*, i32*, i32*, i32*) #1

declare dso_local i64 @BN_GF2m_cmp(i32*, i32*) #1

declare dso_local i32 @BN_GF2m_add(i32*, i32*, i32*) #1

declare dso_local i64 @BN_is_zero(i32*) #1

declare dso_local i32 @EC_POINT_set_to_infinity(%struct.TYPE_25__*, %struct.TYPE_24__*) #1

declare dso_local i32 @EC_POINT_set_affine_coordinates(%struct.TYPE_25__*, %struct.TYPE_24__*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_CTX_end(i32*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
