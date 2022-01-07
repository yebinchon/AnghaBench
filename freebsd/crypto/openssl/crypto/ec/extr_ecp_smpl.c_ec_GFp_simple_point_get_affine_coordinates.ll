; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ecp_smpl.c_ec_GFp_simple_point_get_affine_coordinates.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ecp_smpl.c_ec_GFp_simple_point_get_affine_coordinates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_16__*, i32 }
%struct.TYPE_16__ = type { i64, i32 (%struct.TYPE_18__*, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_18__*, i32*, i32*, i32*)*, i32 (%struct.TYPE_18__*, i32*, i32*, i32*)*, i32 (%struct.TYPE_18__*, i32*, i32*, i32*)* }
%struct.TYPE_17__ = type { i32*, i32*, i32* }

@EC_F_EC_GFP_SIMPLE_POINT_GET_AFFINE_COORDINATES = common dso_local global i32 0, align 4
@EC_R_POINT_AT_INFINITY = common dso_local global i32 0, align 4
@ERR_R_BN_LIB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ec_GFp_simple_point_get_affine_coordinates(%struct.TYPE_18__* %0, %struct.TYPE_17__* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %7, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* null, i32** %12, align 8
  store i32 0, i32* %18, align 4
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %21 = call i64 @EC_POINT_is_at_infinity(%struct.TYPE_18__* %19, %struct.TYPE_17__* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %5
  %24 = load i32, i32* @EC_F_EC_GFP_SIMPLE_POINT_GET_AFFINE_COORDINATES, align 4
  %25 = load i32, i32* @EC_R_POINT_AT_INFINITY, align 4
  %26 = call i32 @ECerr(i32 %24, i32 %25)
  store i32 0, i32* %6, align 4
  br label %284

27:                                               ; preds = %5
  %28 = load i32*, i32** %11, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %27
  %31 = call i32* (...) @BN_CTX_new()
  store i32* %31, i32** %12, align 8
  store i32* %31, i32** %11, align 8
  %32 = load i32*, i32** %11, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  store i32 0, i32* %6, align 4
  br label %284

35:                                               ; preds = %30
  br label %36

36:                                               ; preds = %35, %27
  %37 = load i32*, i32** %11, align 8
  %38 = call i32 @BN_CTX_start(i32* %37)
  %39 = load i32*, i32** %11, align 8
  %40 = call i32* @BN_CTX_get(i32* %39)
  store i32* %40, i32** %13, align 8
  %41 = load i32*, i32** %11, align 8
  %42 = call i32* @BN_CTX_get(i32* %41)
  store i32* %42, i32** %14, align 8
  %43 = load i32*, i32** %11, align 8
  %44 = call i32* @BN_CTX_get(i32* %43)
  store i32* %44, i32** %15, align 8
  %45 = load i32*, i32** %11, align 8
  %46 = call i32* @BN_CTX_get(i32* %45)
  store i32* %46, i32** %16, align 8
  %47 = load i32*, i32** %16, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %36
  br label %278

50:                                               ; preds = %36
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 4
  %55 = load i32 (%struct.TYPE_18__*, i32*, i32*, i32*)*, i32 (%struct.TYPE_18__*, i32*, i32*, i32*)** %54, align 8
  %56 = icmp ne i32 (%struct.TYPE_18__*, i32*, i32*, i32*)* %55, null
  br i1 %56, label %57, label %74

57:                                               ; preds = %50
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 4
  %62 = load i32 (%struct.TYPE_18__*, i32*, i32*, i32*)*, i32 (%struct.TYPE_18__*, i32*, i32*, i32*)** %61, align 8
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %64 = load i32*, i32** %13, align 8
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 2
  %67 = load i32*, i32** %66, align 8
  %68 = load i32*, i32** %11, align 8
  %69 = call i32 %62(%struct.TYPE_18__* %63, i32* %64, i32* %67, i32* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %57
  br label %278

72:                                               ; preds = %57
  %73 = load i32*, i32** %13, align 8
  store i32* %73, i32** %17, align 8
  br label %78

74:                                               ; preds = %50
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 2
  %77 = load i32*, i32** %76, align 8
  store i32* %77, i32** %17, align 8
  br label %78

78:                                               ; preds = %74, %72
  %79 = load i32*, i32** %17, align 8
  %80 = call i64 @BN_is_one(i32* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %154

82:                                               ; preds = %78
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 4
  %87 = load i32 (%struct.TYPE_18__*, i32*, i32*, i32*)*, i32 (%struct.TYPE_18__*, i32*, i32*, i32*)** %86, align 8
  %88 = icmp ne i32 (%struct.TYPE_18__*, i32*, i32*, i32*)* %87, null
  br i1 %88, label %89, label %128

89:                                               ; preds = %82
  %90 = load i32*, i32** %9, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %92, label %108

92:                                               ; preds = %89
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 4
  %97 = load i32 (%struct.TYPE_18__*, i32*, i32*, i32*)*, i32 (%struct.TYPE_18__*, i32*, i32*, i32*)** %96, align 8
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %99 = load i32*, i32** %9, align 8
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = load i32*, i32** %11, align 8
  %104 = call i32 %97(%struct.TYPE_18__* %98, i32* %99, i32* %102, i32* %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %92
  br label %278

107:                                              ; preds = %92
  br label %108

108:                                              ; preds = %107, %89
  %109 = load i32*, i32** %10, align 8
  %110 = icmp ne i32* %109, null
  br i1 %110, label %111, label %127

111:                                              ; preds = %108
  %112 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 4
  %116 = load i32 (%struct.TYPE_18__*, i32*, i32*, i32*)*, i32 (%struct.TYPE_18__*, i32*, i32*, i32*)** %115, align 8
  %117 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %118 = load i32*, i32** %10, align 8
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = load i32*, i32** %11, align 8
  %123 = call i32 %116(%struct.TYPE_18__* %117, i32* %118, i32* %121, i32* %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %126, label %125

125:                                              ; preds = %111
  br label %278

126:                                              ; preds = %111
  br label %127

127:                                              ; preds = %126, %108
  br label %153

128:                                              ; preds = %82
  %129 = load i32*, i32** %9, align 8
  %130 = icmp ne i32* %129, null
  br i1 %130, label %131, label %140

131:                                              ; preds = %128
  %132 = load i32*, i32** %9, align 8
  %133 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %133, i32 0, i32 1
  %135 = load i32*, i32** %134, align 8
  %136 = call i32 @BN_copy(i32* %132, i32* %135)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %139, label %138

138:                                              ; preds = %131
  br label %278

139:                                              ; preds = %131
  br label %140

140:                                              ; preds = %139, %128
  %141 = load i32*, i32** %10, align 8
  %142 = icmp ne i32* %141, null
  br i1 %142, label %143, label %152

143:                                              ; preds = %140
  %144 = load i32*, i32** %10, align 8
  %145 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %146 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %145, i32 0, i32 0
  %147 = load i32*, i32** %146, align 8
  %148 = call i32 @BN_copy(i32* %144, i32* %147)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %151, label %150

150:                                              ; preds = %143
  br label %278

151:                                              ; preds = %143
  br label %152

152:                                              ; preds = %151, %140
  br label %153

153:                                              ; preds = %152, %127
  br label %277

154:                                              ; preds = %78
  %155 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %155, i32 0, i32 0
  %157 = load %struct.TYPE_16__*, %struct.TYPE_16__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %157, i32 0, i32 3
  %159 = load i32 (%struct.TYPE_18__*, i32*, i32*, i32*)*, i32 (%struct.TYPE_18__*, i32*, i32*, i32*)** %158, align 8
  %160 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %161 = load i32*, i32** %14, align 8
  %162 = load i32*, i32** %17, align 8
  %163 = load i32*, i32** %11, align 8
  %164 = call i32 %159(%struct.TYPE_18__* %160, i32* %161, i32* %162, i32* %163)
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %170, label %166

166:                                              ; preds = %154
  %167 = load i32, i32* @EC_F_EC_GFP_SIMPLE_POINT_GET_AFFINE_COORDINATES, align 4
  %168 = load i32, i32* @ERR_R_BN_LIB, align 4
  %169 = call i32 @ECerr(i32 %167, i32 %168)
  br label %278

170:                                              ; preds = %154
  %171 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %172 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %171, i32 0, i32 0
  %173 = load %struct.TYPE_16__*, %struct.TYPE_16__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = icmp eq i64 %175, 0
  br i1 %176, label %177, label %191

177:                                              ; preds = %170
  %178 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %179 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %178, i32 0, i32 0
  %180 = load %struct.TYPE_16__*, %struct.TYPE_16__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %180, i32 0, i32 2
  %182 = load i32 (%struct.TYPE_18__*, i32*, i32*, i32*)*, i32 (%struct.TYPE_18__*, i32*, i32*, i32*)** %181, align 8
  %183 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %184 = load i32*, i32** %15, align 8
  %185 = load i32*, i32** %14, align 8
  %186 = load i32*, i32** %11, align 8
  %187 = call i32 %182(%struct.TYPE_18__* %183, i32* %184, i32* %185, i32* %186)
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %190, label %189

189:                                              ; preds = %177
  br label %278

190:                                              ; preds = %177
  br label %202

191:                                              ; preds = %170
  %192 = load i32*, i32** %15, align 8
  %193 = load i32*, i32** %14, align 8
  %194 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %195 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 8
  %197 = load i32*, i32** %11, align 8
  %198 = call i32 @BN_mod_sqr(i32* %192, i32* %193, i32 %196, i32* %197)
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %201, label %200

200:                                              ; preds = %191
  br label %278

201:                                              ; preds = %191
  br label %202

202:                                              ; preds = %201, %190
  %203 = load i32*, i32** %9, align 8
  %204 = icmp ne i32* %203, null
  br i1 %204, label %205, label %222

205:                                              ; preds = %202
  %206 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %207 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %206, i32 0, i32 0
  %208 = load %struct.TYPE_16__*, %struct.TYPE_16__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %208, i32 0, i32 1
  %210 = load i32 (%struct.TYPE_18__*, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_18__*, i32*, i32*, i32*, i32*)** %209, align 8
  %211 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %212 = load i32*, i32** %9, align 8
  %213 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %214 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %213, i32 0, i32 1
  %215 = load i32*, i32** %214, align 8
  %216 = load i32*, i32** %15, align 8
  %217 = load i32*, i32** %11, align 8
  %218 = call i32 %210(%struct.TYPE_18__* %211, i32* %212, i32* %215, i32* %216, i32* %217)
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %221, label %220

220:                                              ; preds = %205
  br label %278

221:                                              ; preds = %205
  br label %222

222:                                              ; preds = %221, %202
  %223 = load i32*, i32** %10, align 8
  %224 = icmp ne i32* %223, null
  br i1 %224, label %225, label %276

225:                                              ; preds = %222
  %226 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %227 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %226, i32 0, i32 0
  %228 = load %struct.TYPE_16__*, %struct.TYPE_16__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %228, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = icmp eq i64 %230, 0
  br i1 %231, label %232, label %247

232:                                              ; preds = %225
  %233 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %234 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %233, i32 0, i32 0
  %235 = load %struct.TYPE_16__*, %struct.TYPE_16__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %235, i32 0, i32 1
  %237 = load i32 (%struct.TYPE_18__*, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_18__*, i32*, i32*, i32*, i32*)** %236, align 8
  %238 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %239 = load i32*, i32** %16, align 8
  %240 = load i32*, i32** %15, align 8
  %241 = load i32*, i32** %14, align 8
  %242 = load i32*, i32** %11, align 8
  %243 = call i32 %237(%struct.TYPE_18__* %238, i32* %239, i32* %240, i32* %241, i32* %242)
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %246, label %245

245:                                              ; preds = %232
  br label %278

246:                                              ; preds = %232
  br label %259

247:                                              ; preds = %225
  %248 = load i32*, i32** %16, align 8
  %249 = load i32*, i32** %15, align 8
  %250 = load i32*, i32** %14, align 8
  %251 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %252 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 8
  %254 = load i32*, i32** %11, align 8
  %255 = call i32 @BN_mod_mul(i32* %248, i32* %249, i32* %250, i32 %253, i32* %254)
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %258, label %257

257:                                              ; preds = %247
  br label %278

258:                                              ; preds = %247
  br label %259

259:                                              ; preds = %258, %246
  %260 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %261 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %260, i32 0, i32 0
  %262 = load %struct.TYPE_16__*, %struct.TYPE_16__** %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %262, i32 0, i32 1
  %264 = load i32 (%struct.TYPE_18__*, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_18__*, i32*, i32*, i32*, i32*)** %263, align 8
  %265 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %266 = load i32*, i32** %10, align 8
  %267 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %268 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %267, i32 0, i32 0
  %269 = load i32*, i32** %268, align 8
  %270 = load i32*, i32** %16, align 8
  %271 = load i32*, i32** %11, align 8
  %272 = call i32 %264(%struct.TYPE_18__* %265, i32* %266, i32* %269, i32* %270, i32* %271)
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %275, label %274

274:                                              ; preds = %259
  br label %278

275:                                              ; preds = %259
  br label %276

276:                                              ; preds = %275, %222
  br label %277

277:                                              ; preds = %276, %153
  store i32 1, i32* %18, align 4
  br label %278

278:                                              ; preds = %277, %274, %257, %245, %220, %200, %189, %166, %150, %138, %125, %106, %71, %49
  %279 = load i32*, i32** %11, align 8
  %280 = call i32 @BN_CTX_end(i32* %279)
  %281 = load i32*, i32** %12, align 8
  %282 = call i32 @BN_CTX_free(i32* %281)
  %283 = load i32, i32* %18, align 4
  store i32 %283, i32* %6, align 4
  br label %284

284:                                              ; preds = %278, %34, %23
  %285 = load i32, i32* %6, align 4
  ret i32 %285
}

declare dso_local i64 @EC_POINT_is_at_infinity(%struct.TYPE_18__*, %struct.TYPE_17__*) #1

declare dso_local i32 @ECerr(i32, i32) #1

declare dso_local i32* @BN_CTX_new(...) #1

declare dso_local i32 @BN_CTX_start(i32*) #1

declare dso_local i32* @BN_CTX_get(i32*) #1

declare dso_local i64 @BN_is_one(i32*) #1

declare dso_local i32 @BN_copy(i32*, i32*) #1

declare dso_local i32 @BN_mod_sqr(i32*, i32*, i32, i32*) #1

declare dso_local i32 @BN_mod_mul(i32*, i32*, i32*, i32, i32*) #1

declare dso_local i32 @BN_CTX_end(i32*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
