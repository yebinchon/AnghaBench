; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_octeon-feature.h_old_octeon_has_feature.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_octeon-feature.h_old_octeon_has_feature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__, i8* }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_5__, i8* }
%struct.TYPE_5__ = type { i32 }

@OCTEON_CN3XXX = common dso_local global i32 0, align 4
@OCTEON_CN30XX = common dso_local global i32 0, align 4
@OCTEON_CN50XX = common dso_local global i32 0, align 4
@OCTEON_CN52XX = common dso_local global i32 0, align 4
@OCTEON_CN6XXX = common dso_local global i32 0, align 4
@OCTEON_CNF7XXX = common dso_local global i32 0, align 4
@CVMX_MIO_FUS_DAT2 = common dso_local global i32 0, align 4
@CVMX_RNM_CTL_STATUS = common dso_local global i32 0, align 4
@OCTEON_CN56XX = common dso_local global i32 0, align 4
@OCTEON_CN63XX = common dso_local global i32 0, align 4
@OCTEON_CN66XX = common dso_local global i32 0, align 4
@OCTEON_CN68XX = common dso_local global i32 0, align 4
@OCTEON_CN38XX = common dso_local global i32 0, align 4
@OCTEON_CN58XX = common dso_local global i32 0, align 4
@OCTEON_CN56XX_PASS1_X = common dso_local global i32 0, align 4
@OCTEON_CN52XX_PASS1_X = common dso_local global i32 0, align 4
@OCTEON_CN31XX = common dso_local global i32 0, align 4
@OCTEON_CN3020 = common dso_local global i32 0, align 4
@OCTEON_CN68XX_PASS2_X = common dso_local global i32 0, align 4
@OCTEON_CN61XX = common dso_local global i32 0, align 4
@OCTEON_CNF71XX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @old_octeon_has_feature to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @old_octeon_has_feature(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__, align 8
  %5 = alloca %struct.TYPE_7__, align 8
  %6 = alloca %struct.TYPE_8__, align 8
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  switch i32 %7, label %398 [
    i32 132, label %8
    i32 128, label %14
    i32 150, label %32
    i32 146, label %72
    i32 135, label %102
    i32 131, label %121
    i32 144, label %132
    i32 143, label %135
    i32 142, label %158
    i32 130, label %173
    i32 140, label %185
    i32 133, label %200
    i32 129, label %215
    i32 137, label %227
    i32 149, label %255
    i32 145, label %278
    i32 148, label %288
    i32 141, label %302
    i32 136, label %318
    i32 134, label %329
    i32 151, label %332
    i32 152, label %335
    i32 138, label %338
    i32 147, label %357
    i32 153, label %372
    i32 139, label %387
  ]

8:                                                ; preds = %1
  %9 = load i32, i32* @OCTEON_CN3XXX, align 4
  %10 = call i32 @OCTEON_IS_MODEL(i32 %9)
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  store i32 %13, i32* %2, align 4
  br label %400

14:                                               ; preds = %1
  %15 = load i32, i32* @OCTEON_CN30XX, align 4
  %16 = call i32 @OCTEON_IS_MODEL(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %14
  %19 = load i32, i32* @OCTEON_CN50XX, align 4
  %20 = call i32 @OCTEON_IS_MODEL(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* @OCTEON_CN52XX, align 4
  %24 = call i32 @OCTEON_IS_MODEL(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22, %18, %14
  store i32 0, i32* %2, align 4
  br label %400

27:                                               ; preds = %22
  %28 = call i32 @cvmx_fuse_read(i32 121)
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %2, align 4
  br label %400

32:                                               ; preds = %1
  %33 = load i32, i32* @OCTEON_CN6XXX, align 4
  %34 = call i32 @OCTEON_IS_MODEL(i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = load i32, i32* @OCTEON_CNF7XXX, align 4
  %38 = call i32 @OCTEON_IS_MODEL(i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %67

40:                                               ; preds = %36, %32
  %41 = load i32, i32* @CVMX_MIO_FUS_DAT2, align 4
  %42 = call i8* @cvmx_read_csr(i32 %41)
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 1
  store i8* %42, i8** %43, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %40
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48, %40
  store i32 0, i32* %2, align 4
  br label %400

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %54
  store i32 1, i32* %2, align 4
  br label %400

60:                                               ; preds = %54
  %61 = load i32, i32* @CVMX_RNM_CTL_STATUS, align 4
  %62 = call i8* @cvmx_read_csr(i32 %61)
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 1
  store i8* %62, i8** %63, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  store i32 %66, i32* %2, align 4
  br label %400

67:                                               ; preds = %36
  %68 = call i32 @cvmx_fuse_read(i32 90)
  %69 = icmp ne i32 %68, 0
  %70 = xor i1 %69, true
  %71 = zext i1 %70 to i32
  store i32 %71, i32* %2, align 4
  br label %400

72:                                               ; preds = %1
  %73 = load i32, i32* @OCTEON_CN6XXX, align 4
  %74 = call i32 @OCTEON_IS_MODEL(i32 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %72
  %77 = load i32, i32* @OCTEON_CNF7XXX, align 4
  %78 = call i32 @OCTEON_IS_MODEL(i32 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %101

80:                                               ; preds = %76, %72
  %81 = load i32, i32* @CVMX_MIO_FUS_DAT2, align 4
  %82 = call i8* @cvmx_read_csr(i32 %81)
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 1
  store i8* %82, i8** %83, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %98, label %88

88:                                               ; preds = %80
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %98, label %93

93:                                               ; preds = %88
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp ne i32 %96, 0
  br label %98

98:                                               ; preds = %93, %88, %80
  %99 = phi i1 [ false, %88 ], [ false, %80 ], [ %97, %93 ]
  %100 = zext i1 %99 to i32
  store i32 %100, i32* %2, align 4
  br label %400

101:                                              ; preds = %76
  store i32 0, i32* %2, align 4
  br label %400

102:                                              ; preds = %1
  %103 = load i32, i32* @OCTEON_CN56XX, align 4
  %104 = call i32 @OCTEON_IS_MODEL(i32 %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %118, label %106

106:                                              ; preds = %102
  %107 = load i32, i32* @OCTEON_CN52XX, align 4
  %108 = call i32 @OCTEON_IS_MODEL(i32 %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %118, label %110

110:                                              ; preds = %106
  %111 = load i32, i32* @OCTEON_CN6XXX, align 4
  %112 = call i32 @OCTEON_IS_MODEL(i32 %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %118, label %114

114:                                              ; preds = %110
  %115 = load i32, i32* @OCTEON_CNF7XXX, align 4
  %116 = call i32 @OCTEON_IS_MODEL(i32 %115)
  %117 = icmp ne i32 %116, 0
  br label %118

118:                                              ; preds = %114, %110, %106, %102
  %119 = phi i1 [ true, %110 ], [ true, %106 ], [ true, %102 ], [ %117, %114 ]
  %120 = zext i1 %119 to i32
  store i32 %120, i32* %2, align 4
  br label %400

121:                                              ; preds = %1
  %122 = load i32, i32* @OCTEON_CN63XX, align 4
  %123 = call i32 @OCTEON_IS_MODEL(i32 %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %129, label %125

125:                                              ; preds = %121
  %126 = load i32, i32* @OCTEON_CN66XX, align 4
  %127 = call i32 @OCTEON_IS_MODEL(i32 %126)
  %128 = icmp ne i32 %127, 0
  br label %129

129:                                              ; preds = %125, %121
  %130 = phi i1 [ true, %121 ], [ %128, %125 ]
  %131 = zext i1 %130 to i32
  store i32 %131, i32* %2, align 4
  br label %400

132:                                              ; preds = %1
  %133 = load i32, i32* @OCTEON_CN68XX, align 4
  %134 = call i32 @OCTEON_IS_MODEL(i32 %133)
  store i32 %134, i32* %2, align 4
  br label %400

135:                                              ; preds = %1
  %136 = load i32, i32* @OCTEON_CN38XX, align 4
  %137 = call i32 @OCTEON_IS_MODEL(i32 %136)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %155, label %139

139:                                              ; preds = %135
  %140 = load i32, i32* @OCTEON_CN58XX, align 4
  %141 = call i32 @OCTEON_IS_MODEL(i32 %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %155, label %143

143:                                              ; preds = %139
  %144 = load i32, i32* @OCTEON_CN56XX, align 4
  %145 = call i32 @OCTEON_IS_MODEL(i32 %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %155, label %147

147:                                              ; preds = %143
  %148 = load i32, i32* @OCTEON_CN6XXX, align 4
  %149 = call i32 @OCTEON_IS_MODEL(i32 %148)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %155, label %151

151:                                              ; preds = %147
  %152 = load i32, i32* @OCTEON_CNF7XXX, align 4
  %153 = call i32 @OCTEON_IS_MODEL(i32 %152)
  %154 = icmp ne i32 %153, 0
  br label %155

155:                                              ; preds = %151, %147, %143, %139, %135
  %156 = phi i1 [ true, %147 ], [ true, %143 ], [ true, %139 ], [ true, %135 ], [ %154, %151 ]
  %157 = zext i1 %156 to i32
  store i32 %157, i32* %2, align 4
  br label %400

158:                                              ; preds = %1
  %159 = load i32, i32* @OCTEON_CN38XX, align 4
  %160 = call i32 @OCTEON_IS_MODEL(i32 %159)
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %170, label %162

162:                                              ; preds = %158
  %163 = load i32, i32* @OCTEON_CN58XX, align 4
  %164 = call i32 @OCTEON_IS_MODEL(i32 %163)
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %170, label %166

166:                                              ; preds = %162
  %167 = load i32, i32* @OCTEON_CN56XX, align 4
  %168 = call i32 @OCTEON_IS_MODEL(i32 %167)
  %169 = icmp ne i32 %168, 0
  br label %170

170:                                              ; preds = %166, %162, %158
  %171 = phi i1 [ true, %162 ], [ true, %158 ], [ %169, %166 ]
  %172 = zext i1 %171 to i32
  store i32 %172, i32* %2, align 4
  br label %400

173:                                              ; preds = %1
  %174 = load i32, i32* @OCTEON_CN30XX, align 4
  %175 = call i32 @OCTEON_IS_MODEL(i32 %174)
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %181, label %177

177:                                              ; preds = %173
  %178 = load i32, i32* @OCTEON_CN50XX, align 4
  %179 = call i32 @OCTEON_IS_MODEL(i32 %178)
  %180 = icmp ne i32 %179, 0
  br label %181

181:                                              ; preds = %177, %173
  %182 = phi i1 [ true, %173 ], [ %180, %177 ]
  %183 = xor i1 %182, true
  %184 = zext i1 %183 to i32
  store i32 %184, i32* %2, align 4
  br label %400

185:                                              ; preds = %1
  %186 = load i32, i32* @OCTEON_CN56XX, align 4
  %187 = call i32 @OCTEON_IS_MODEL(i32 %186)
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %197, label %189

189:                                              ; preds = %185
  %190 = load i32, i32* @OCTEON_CN52XX, align 4
  %191 = call i32 @OCTEON_IS_MODEL(i32 %190)
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %197, label %193

193:                                              ; preds = %189
  %194 = load i32, i32* @OCTEON_CN6XXX, align 4
  %195 = call i32 @OCTEON_IS_MODEL(i32 %194)
  %196 = icmp ne i32 %195, 0
  br label %197

197:                                              ; preds = %193, %189, %185
  %198 = phi i1 [ true, %189 ], [ true, %185 ], [ %196, %193 ]
  %199 = zext i1 %198 to i32
  store i32 %199, i32* %2, align 4
  br label %400

200:                                              ; preds = %1
  %201 = load i32, i32* @OCTEON_CN56XX, align 4
  %202 = call i32 @OCTEON_IS_MODEL(i32 %201)
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %212, label %204

204:                                              ; preds = %200
  %205 = load i32, i32* @OCTEON_CN52XX, align 4
  %206 = call i32 @OCTEON_IS_MODEL(i32 %205)
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %212, label %208

208:                                              ; preds = %204
  %209 = load i32, i32* @OCTEON_CN6XXX, align 4
  %210 = call i32 @OCTEON_IS_MODEL(i32 %209)
  %211 = icmp ne i32 %210, 0
  br label %212

212:                                              ; preds = %208, %204, %200
  %213 = phi i1 [ true, %204 ], [ true, %200 ], [ %211, %208 ]
  %214 = zext i1 %213 to i32
  store i32 %214, i32* %2, align 4
  br label %400

215:                                              ; preds = %1
  %216 = load i32, i32* @OCTEON_CN38XX, align 4
  %217 = call i32 @OCTEON_IS_MODEL(i32 %216)
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %223, label %219

219:                                              ; preds = %215
  %220 = load i32, i32* @OCTEON_CN58XX, align 4
  %221 = call i32 @OCTEON_IS_MODEL(i32 %220)
  %222 = icmp ne i32 %221, 0
  br label %223

223:                                              ; preds = %219, %215
  %224 = phi i1 [ true, %215 ], [ %222, %219 ]
  %225 = xor i1 %224, true
  %226 = zext i1 %225 to i32
  store i32 %226, i32* %2, align 4
  br label %400

227:                                              ; preds = %1
  %228 = load i32, i32* @OCTEON_CN56XX, align 4
  %229 = call i32 @OCTEON_IS_MODEL(i32 %228)
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %243, label %231

231:                                              ; preds = %227
  %232 = load i32, i32* @OCTEON_CN52XX, align 4
  %233 = call i32 @OCTEON_IS_MODEL(i32 %232)
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %243, label %235

235:                                              ; preds = %231
  %236 = load i32, i32* @OCTEON_CN6XXX, align 4
  %237 = call i32 @OCTEON_IS_MODEL(i32 %236)
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %243, label %239

239:                                              ; preds = %235
  %240 = load i32, i32* @OCTEON_CNF7XXX, align 4
  %241 = call i32 @OCTEON_IS_MODEL(i32 %240)
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %252

243:                                              ; preds = %239, %235, %231, %227
  %244 = load i32, i32* @OCTEON_CN56XX_PASS1_X, align 4
  %245 = call i32 @OCTEON_IS_MODEL(i32 %244)
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %252, label %247

247:                                              ; preds = %243
  %248 = load i32, i32* @OCTEON_CN52XX_PASS1_X, align 4
  %249 = call i32 @OCTEON_IS_MODEL(i32 %248)
  %250 = icmp ne i32 %249, 0
  %251 = xor i1 %250, true
  br label %252

252:                                              ; preds = %247, %243, %239
  %253 = phi i1 [ false, %243 ], [ false, %239 ], [ %251, %247 ]
  %254 = zext i1 %253 to i32
  store i32 %254, i32* %2, align 4
  br label %400

255:                                              ; preds = %1
  %256 = load i32, i32* @OCTEON_CN38XX, align 4
  %257 = call i32 @OCTEON_IS_MODEL(i32 %256)
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %268, label %259

259:                                              ; preds = %255
  %260 = load i32, i32* @OCTEON_CN31XX, align 4
  %261 = call i32 @OCTEON_IS_MODEL(i32 %260)
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %268, label %263

263:                                              ; preds = %259
  %264 = load i32, i32* @OCTEON_CN58XX, align 4
  %265 = call i32 @OCTEON_IS_MODEL(i32 %264)
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %268, label %267

267:                                              ; preds = %263
  store i32 0, i32* %2, align 4
  br label %400

268:                                              ; preds = %263, %259, %255
  %269 = load i32, i32* @OCTEON_CN3020, align 4
  %270 = call i32 @OCTEON_IS_MODEL(i32 %269)
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %273

272:                                              ; preds = %268
  store i32 0, i32* %2, align 4
  br label %400

273:                                              ; preds = %268
  %274 = call i32 @cvmx_fuse_read(i32 120)
  %275 = icmp ne i32 %274, 0
  %276 = xor i1 %275, true
  %277 = zext i1 %276 to i32
  store i32 %277, i32* %2, align 4
  br label %400

278:                                              ; preds = %1
  %279 = load i32, i32* @OCTEON_CN6XXX, align 4
  %280 = call i32 @OCTEON_IS_MODEL(i32 %279)
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %283, label %282

282:                                              ; preds = %278
  store i32 0, i32* %2, align 4
  br label %400

283:                                              ; preds = %278
  %284 = call i32 @cvmx_fuse_read(i32 90)
  %285 = icmp ne i32 %284, 0
  %286 = xor i1 %285, true
  %287 = zext i1 %286 to i32
  store i32 %287, i32* %2, align 4
  br label %400

288:                                              ; preds = %1
  %289 = load i32, i32* @OCTEON_CN63XX, align 4
  %290 = call i32 @OCTEON_IS_MODEL(i32 %289)
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %297, label %292

292:                                              ; preds = %288
  %293 = load i32, i32* @OCTEON_CN66XX, align 4
  %294 = call i32 @OCTEON_IS_MODEL(i32 %293)
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %297, label %296

296:                                              ; preds = %292
  store i32 0, i32* %2, align 4
  br label %400

297:                                              ; preds = %292, %288
  %298 = call i32 @cvmx_fuse_read(i32 90)
  %299 = icmp ne i32 %298, 0
  %300 = xor i1 %299, true
  %301 = zext i1 %300 to i32
  store i32 %301, i32* %2, align 4
  br label %400

302:                                              ; preds = %1
  %303 = load i32, i32* @OCTEON_CN3XXX, align 4
  %304 = call i32 @OCTEON_IS_MODEL(i32 %303)
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %314, label %306

306:                                              ; preds = %302
  %307 = load i32, i32* @OCTEON_CN58XX, align 4
  %308 = call i32 @OCTEON_IS_MODEL(i32 %307)
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %314, label %310

310:                                              ; preds = %306
  %311 = load i32, i32* @OCTEON_CN50XX, align 4
  %312 = call i32 @OCTEON_IS_MODEL(i32 %311)
  %313 = icmp ne i32 %312, 0
  br label %314

314:                                              ; preds = %310, %306, %302
  %315 = phi i1 [ true, %306 ], [ true, %302 ], [ %313, %310 ]
  %316 = xor i1 %315, true
  %317 = zext i1 %316 to i32
  store i32 %317, i32* %2, align 4
  br label %400

318:                                              ; preds = %1
  %319 = load i32, i32* @OCTEON_CN56XX, align 4
  %320 = call i32 @OCTEON_IS_MODEL(i32 %319)
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %326, label %322

322:                                              ; preds = %318
  %323 = load i32, i32* @OCTEON_CN52XX, align 4
  %324 = call i32 @OCTEON_IS_MODEL(i32 %323)
  %325 = icmp ne i32 %324, 0
  br label %326

326:                                              ; preds = %322, %318
  %327 = phi i1 [ true, %318 ], [ %325, %322 ]
  %328 = zext i1 %327 to i32
  store i32 %328, i32* %2, align 4
  br label %400

329:                                              ; preds = %1
  %330 = load i32, i32* @OCTEON_CN68XX, align 4
  %331 = call i32 @OCTEON_IS_MODEL(i32 %330)
  store i32 %331, i32* %2, align 4
  br label %400

332:                                              ; preds = %1
  %333 = load i32, i32* @OCTEON_CN68XX, align 4
  %334 = call i32 @OCTEON_IS_MODEL(i32 %333)
  store i32 %334, i32* %2, align 4
  br label %400

335:                                              ; preds = %1
  %336 = load i32, i32* @OCTEON_CN68XX, align 4
  %337 = call i32 @OCTEON_IS_MODEL(i32 %336)
  store i32 %337, i32* %2, align 4
  br label %400

338:                                              ; preds = %1
  %339 = load i32, i32* @OCTEON_CN52XX, align 4
  %340 = call i32 @OCTEON_IS_MODEL(i32 %339)
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %354, label %342

342:                                              ; preds = %338
  %343 = load i32, i32* @OCTEON_CN63XX, align 4
  %344 = call i32 @OCTEON_IS_MODEL(i32 %343)
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %354, label %346

346:                                              ; preds = %342
  %347 = load i32, i32* @OCTEON_CN66XX, align 4
  %348 = call i32 @OCTEON_IS_MODEL(i32 %347)
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %354, label %350

350:                                              ; preds = %346
  %351 = load i32, i32* @OCTEON_CN68XX, align 4
  %352 = call i32 @OCTEON_IS_MODEL(i32 %351)
  %353 = icmp ne i32 %352, 0
  br label %354

354:                                              ; preds = %350, %346, %342, %338
  %355 = phi i1 [ true, %346 ], [ true, %342 ], [ true, %338 ], [ %353, %350 ]
  %356 = zext i1 %355 to i32
  store i32 %356, i32* %2, align 4
  br label %400

357:                                              ; preds = %1
  %358 = load i32, i32* @OCTEON_CN68XX_PASS2_X, align 4
  %359 = call i32 @OCTEON_IS_MODEL(i32 %358)
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %369, label %361

361:                                              ; preds = %357
  %362 = load i32, i32* @OCTEON_CN61XX, align 4
  %363 = call i32 @OCTEON_IS_MODEL(i32 %362)
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %369, label %365

365:                                              ; preds = %361
  %366 = load i32, i32* @OCTEON_CNF71XX, align 4
  %367 = call i32 @OCTEON_IS_MODEL(i32 %366)
  %368 = icmp ne i32 %367, 0
  br label %369

369:                                              ; preds = %365, %361, %357
  %370 = phi i1 [ true, %361 ], [ true, %357 ], [ %368, %365 ]
  %371 = zext i1 %370 to i32
  store i32 %371, i32* %2, align 4
  br label %400

372:                                              ; preds = %1
  %373 = load i32, i32* @OCTEON_CN68XX_PASS2_X, align 4
  %374 = call i32 @OCTEON_IS_MODEL(i32 %373)
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %384, label %376

376:                                              ; preds = %372
  %377 = load i32, i32* @OCTEON_CN61XX, align 4
  %378 = call i32 @OCTEON_IS_MODEL(i32 %377)
  %379 = icmp ne i32 %378, 0
  br i1 %379, label %384, label %380

380:                                              ; preds = %376
  %381 = load i32, i32* @OCTEON_CNF71XX, align 4
  %382 = call i32 @OCTEON_IS_MODEL(i32 %381)
  %383 = icmp ne i32 %382, 0
  br label %384

384:                                              ; preds = %380, %376, %372
  %385 = phi i1 [ true, %376 ], [ true, %372 ], [ %383, %380 ]
  %386 = zext i1 %385 to i32
  store i32 %386, i32* %2, align 4
  br label %400

387:                                              ; preds = %1
  %388 = load i32, i32* @OCTEON_CN61XX, align 4
  %389 = call i32 @OCTEON_IS_MODEL(i32 %388)
  %390 = icmp ne i32 %389, 0
  br i1 %390, label %395, label %391

391:                                              ; preds = %387
  %392 = load i32, i32* @OCTEON_CNF71XX, align 4
  %393 = call i32 @OCTEON_IS_MODEL(i32 %392)
  %394 = icmp ne i32 %393, 0
  br label %395

395:                                              ; preds = %391, %387
  %396 = phi i1 [ true, %387 ], [ %394, %391 ]
  %397 = zext i1 %396 to i32
  store i32 %397, i32* %2, align 4
  br label %400

398:                                              ; preds = %1
  br label %399

399:                                              ; preds = %398
  store i32 0, i32* %2, align 4
  br label %400

400:                                              ; preds = %399, %395, %384, %369, %354, %335, %332, %329, %326, %314, %297, %296, %283, %282, %273, %272, %267, %252, %223, %212, %197, %181, %170, %155, %132, %129, %118, %101, %98, %67, %60, %59, %53, %27, %26, %8
  %401 = load i32, i32* %2, align 4
  ret i32 %401
}

declare dso_local i32 @OCTEON_IS_MODEL(i32) #1

declare dso_local i32 @cvmx_fuse_read(i32) #1

declare dso_local i8* @cvmx_read_csr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
