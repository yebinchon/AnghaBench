; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_ssl_lib.c_ssl_set_masks.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_ssl_lib.c_ssl_set_masks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__*, %struct.TYPE_13__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32*, i64, i64 }
%struct.TYPE_13__ = type { %struct.TYPE_9__*, i64, i32*, i32* }
%struct.TYPE_9__ = type { i32 }

@SSL_PKEY_RSA = common dso_local global i64 0, align 8
@CERT_PKEY_VALID = common dso_local global i32 0, align 4
@SSL_PKEY_DSA_SIGN = common dso_local global i64 0, align 8
@SSL_PKEY_ECC = common dso_local global i64 0, align 8
@SSL_PKEY_GOST12_512 = common dso_local global i64 0, align 8
@SSL_kGOST = common dso_local global i64 0, align 8
@SSL_aGOST12 = common dso_local global i64 0, align 8
@SSL_PKEY_GOST12_256 = common dso_local global i64 0, align 8
@SSL_PKEY_GOST01 = common dso_local global i64 0, align 8
@SSL_aGOST01 = common dso_local global i64 0, align 8
@SSL_kRSA = common dso_local global i64 0, align 8
@SSL_kDHE = common dso_local global i64 0, align 8
@SSL_PKEY_RSA_PSS_SIGN = common dso_local global i64 0, align 8
@CERT_PKEY_EXPLICIT_SIGN = common dso_local global i32 0, align 4
@TLS1_2_VERSION = common dso_local global i64 0, align 8
@SSL_aRSA = common dso_local global i64 0, align 8
@SSL_aDSS = common dso_local global i64 0, align 8
@SSL_aNULL = common dso_local global i64 0, align 8
@X509v3_KU_DIGITAL_SIGNATURE = common dso_local global i32 0, align 4
@CERT_PKEY_SIGN = common dso_local global i32 0, align 4
@SSL_aECDSA = common dso_local global i64 0, align 8
@SSL_PKEY_ED25519 = common dso_local global i64 0, align 8
@SSL_PKEY_ED448 = common dso_local global i64 0, align 8
@SSL_kECDHE = common dso_local global i64 0, align 8
@SSL_kPSK = common dso_local global i64 0, align 8
@SSL_aPSK = common dso_local global i64 0, align 8
@SSL_kRSAPSK = common dso_local global i64 0, align 8
@SSL_kDHEPSK = common dso_local global i64 0, align 8
@SSL_kECDHEPSK = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ssl_set_masks(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  store %struct.TYPE_13__* %16, %struct.TYPE_13__** %3, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %4, align 8
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %24 = icmp eq %struct.TYPE_13__* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %1
  br label %289

26:                                               ; preds = %1
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 3
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %41, label %31

31:                                               ; preds = %26
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %31
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br label %41

41:                                               ; preds = %36, %31, %26
  %42 = phi i1 [ true, %31 ], [ true, %26 ], [ %40, %36 ]
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %7, align 4
  %44 = load i32*, i32** %4, align 8
  %45 = load i64, i64* @SSL_PKEY_RSA, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @CERT_PKEY_VALID, align 4
  %49 = and i32 %47, %48
  store i32 %49, i32* %5, align 4
  %50 = load i32*, i32** %4, align 8
  %51 = load i64, i64* @SSL_PKEY_RSA, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @CERT_PKEY_VALID, align 4
  %55 = and i32 %53, %54
  store i32 %55, i32* %6, align 4
  %56 = load i32*, i32** %4, align 8
  %57 = load i64, i64* @SSL_PKEY_DSA_SIGN, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @CERT_PKEY_VALID, align 4
  %61 = and i32 %59, %60
  store i32 %61, i32* %8, align 4
  %62 = load i32*, i32** %4, align 8
  %63 = load i64, i64* @SSL_PKEY_ECC, align 8
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @CERT_PKEY_VALID, align 4
  %67 = and i32 %65, %66
  store i32 %67, i32* %11, align 4
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %69 = load i64, i64* @SSL_PKEY_GOST12_512, align 8
  %70 = call i64 @ssl_has_cert(%struct.TYPE_12__* %68, i64 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %41
  %73 = load i64, i64* @SSL_kGOST, align 8
  %74 = load i64, i64* %9, align 8
  %75 = or i64 %74, %73
  store i64 %75, i64* %9, align 8
  %76 = load i64, i64* @SSL_aGOST12, align 8
  %77 = load i64, i64* %10, align 8
  %78 = or i64 %77, %76
  store i64 %78, i64* %10, align 8
  br label %79

79:                                               ; preds = %72, %41
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %81 = load i64, i64* @SSL_PKEY_GOST12_256, align 8
  %82 = call i64 @ssl_has_cert(%struct.TYPE_12__* %80, i64 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %79
  %85 = load i64, i64* @SSL_kGOST, align 8
  %86 = load i64, i64* %9, align 8
  %87 = or i64 %86, %85
  store i64 %87, i64* %9, align 8
  %88 = load i64, i64* @SSL_aGOST12, align 8
  %89 = load i64, i64* %10, align 8
  %90 = or i64 %89, %88
  store i64 %90, i64* %10, align 8
  br label %91

91:                                               ; preds = %84, %79
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %93 = load i64, i64* @SSL_PKEY_GOST01, align 8
  %94 = call i64 @ssl_has_cert(%struct.TYPE_12__* %92, i64 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %91
  %97 = load i64, i64* @SSL_kGOST, align 8
  %98 = load i64, i64* %9, align 8
  %99 = or i64 %98, %97
  store i64 %99, i64* %9, align 8
  %100 = load i64, i64* @SSL_aGOST01, align 8
  %101 = load i64, i64* %10, align 8
  %102 = or i64 %101, %100
  store i64 %102, i64* %10, align 8
  br label %103

103:                                              ; preds = %96, %91
  %104 = load i32, i32* %5, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %103
  %107 = load i64, i64* @SSL_kRSA, align 8
  %108 = load i64, i64* %9, align 8
  %109 = or i64 %108, %107
  store i64 %109, i64* %9, align 8
  br label %110

110:                                              ; preds = %106, %103
  %111 = load i32, i32* %7, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %110
  %114 = load i64, i64* @SSL_kDHE, align 8
  %115 = load i64, i64* %9, align 8
  %116 = or i64 %115, %114
  store i64 %116, i64* %9, align 8
  br label %117

117:                                              ; preds = %113, %110
  %118 = load i32, i32* %5, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %141, label %120

120:                                              ; preds = %117
  %121 = load i32, i32* %6, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %141, label %123

123:                                              ; preds = %120
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %125 = load i64, i64* @SSL_PKEY_RSA_PSS_SIGN, align 8
  %126 = call i64 @ssl_has_cert(%struct.TYPE_12__* %124, i64 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %145

128:                                              ; preds = %123
  %129 = load i32*, i32** %4, align 8
  %130 = load i64, i64* @SSL_PKEY_RSA_PSS_SIGN, align 8
  %131 = getelementptr inbounds i32, i32* %129, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @CERT_PKEY_EXPLICIT_SIGN, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %145

136:                                              ; preds = %128
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %138 = call i64 @TLS1_get_version(%struct.TYPE_12__* %137)
  %139 = load i64, i64* @TLS1_2_VERSION, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %145

141:                                              ; preds = %136, %120, %117
  %142 = load i64, i64* @SSL_aRSA, align 8
  %143 = load i64, i64* %10, align 8
  %144 = or i64 %143, %142
  store i64 %144, i64* %10, align 8
  br label %145

145:                                              ; preds = %141, %136, %128, %123
  %146 = load i32, i32* %8, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %145
  %149 = load i64, i64* @SSL_aDSS, align 8
  %150 = load i64, i64* %10, align 8
  %151 = or i64 %150, %149
  store i64 %151, i64* %10, align 8
  br label %152

152:                                              ; preds = %148, %145
  %153 = load i64, i64* @SSL_aNULL, align 8
  %154 = load i64, i64* %10, align 8
  %155 = or i64 %154, %153
  store i64 %155, i64* %10, align 8
  %156 = load i32, i32* %11, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %186

158:                                              ; preds = %152
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 0
  %161 = load %struct.TYPE_9__*, %struct.TYPE_9__** %160, align 8
  %162 = load i64, i64* @SSL_PKEY_ECC, align 8
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @X509_get_key_usage(i32 %165)
  store i32 %166, i32* %13, align 4
  %167 = load i32, i32* %13, align 4
  %168 = load i32, i32* @X509v3_KU_DIGITAL_SIGNATURE, align 4
  %169 = and i32 %167, %168
  store i32 %169, i32* %12, align 4
  %170 = load i32*, i32** %4, align 8
  %171 = load i64, i64* @SSL_PKEY_ECC, align 8
  %172 = getelementptr inbounds i32, i32* %170, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* @CERT_PKEY_SIGN, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %178, label %177

177:                                              ; preds = %158
  store i32 0, i32* %12, align 4
  br label %178

178:                                              ; preds = %177, %158
  %179 = load i32, i32* %12, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %185

181:                                              ; preds = %178
  %182 = load i64, i64* @SSL_aECDSA, align 8
  %183 = load i64, i64* %10, align 8
  %184 = or i64 %183, %182
  store i64 %184, i64* %10, align 8
  br label %185

185:                                              ; preds = %181, %178
  br label %186

186:                                              ; preds = %185, %152
  %187 = load i64, i64* %10, align 8
  %188 = load i64, i64* @SSL_aECDSA, align 8
  %189 = and i64 %187, %188
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %213, label %191

191:                                              ; preds = %186
  %192 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %193 = load i64, i64* @SSL_PKEY_ED25519, align 8
  %194 = call i64 @ssl_has_cert(%struct.TYPE_12__* %192, i64 %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %213

196:                                              ; preds = %191
  %197 = load i32*, i32** %4, align 8
  %198 = load i64, i64* @SSL_PKEY_ED25519, align 8
  %199 = getelementptr inbounds i32, i32* %197, i64 %198
  %200 = load i32, i32* %199, align 4
  %201 = load i32, i32* @CERT_PKEY_EXPLICIT_SIGN, align 4
  %202 = and i32 %200, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %213

204:                                              ; preds = %196
  %205 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %206 = call i64 @TLS1_get_version(%struct.TYPE_12__* %205)
  %207 = load i64, i64* @TLS1_2_VERSION, align 8
  %208 = icmp eq i64 %206, %207
  br i1 %208, label %209, label %213

209:                                              ; preds = %204
  %210 = load i64, i64* @SSL_aECDSA, align 8
  %211 = load i64, i64* %10, align 8
  %212 = or i64 %211, %210
  store i64 %212, i64* %10, align 8
  br label %213

213:                                              ; preds = %209, %204, %196, %191, %186
  %214 = load i64, i64* %10, align 8
  %215 = load i64, i64* @SSL_aECDSA, align 8
  %216 = and i64 %214, %215
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %240, label %218

218:                                              ; preds = %213
  %219 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %220 = load i64, i64* @SSL_PKEY_ED448, align 8
  %221 = call i64 @ssl_has_cert(%struct.TYPE_12__* %219, i64 %220)
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %240

223:                                              ; preds = %218
  %224 = load i32*, i32** %4, align 8
  %225 = load i64, i64* @SSL_PKEY_ED448, align 8
  %226 = getelementptr inbounds i32, i32* %224, i64 %225
  %227 = load i32, i32* %226, align 4
  %228 = load i32, i32* @CERT_PKEY_EXPLICIT_SIGN, align 4
  %229 = and i32 %227, %228
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %240

231:                                              ; preds = %223
  %232 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %233 = call i64 @TLS1_get_version(%struct.TYPE_12__* %232)
  %234 = load i64, i64* @TLS1_2_VERSION, align 8
  %235 = icmp eq i64 %233, %234
  br i1 %235, label %236, label %240

236:                                              ; preds = %231
  %237 = load i64, i64* @SSL_aECDSA, align 8
  %238 = load i64, i64* %10, align 8
  %239 = or i64 %238, %237
  store i64 %239, i64* %10, align 8
  br label %240

240:                                              ; preds = %236, %231, %223, %218, %213
  %241 = load i64, i64* @SSL_kECDHE, align 8
  %242 = load i64, i64* %9, align 8
  %243 = or i64 %242, %241
  store i64 %243, i64* %9, align 8
  %244 = load i64, i64* @SSL_kPSK, align 8
  %245 = load i64, i64* %9, align 8
  %246 = or i64 %245, %244
  store i64 %246, i64* %9, align 8
  %247 = load i64, i64* @SSL_aPSK, align 8
  %248 = load i64, i64* %10, align 8
  %249 = or i64 %248, %247
  store i64 %249, i64* %10, align 8
  %250 = load i64, i64* %9, align 8
  %251 = load i64, i64* @SSL_kRSA, align 8
  %252 = and i64 %250, %251
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %258

254:                                              ; preds = %240
  %255 = load i64, i64* @SSL_kRSAPSK, align 8
  %256 = load i64, i64* %9, align 8
  %257 = or i64 %256, %255
  store i64 %257, i64* %9, align 8
  br label %258

258:                                              ; preds = %254, %240
  %259 = load i64, i64* %9, align 8
  %260 = load i64, i64* @SSL_kDHE, align 8
  %261 = and i64 %259, %260
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %263, label %267

263:                                              ; preds = %258
  %264 = load i64, i64* @SSL_kDHEPSK, align 8
  %265 = load i64, i64* %9, align 8
  %266 = or i64 %265, %264
  store i64 %266, i64* %9, align 8
  br label %267

267:                                              ; preds = %263, %258
  %268 = load i64, i64* %9, align 8
  %269 = load i64, i64* @SSL_kECDHE, align 8
  %270 = and i64 %268, %269
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %276

272:                                              ; preds = %267
  %273 = load i64, i64* @SSL_kECDHEPSK, align 8
  %274 = load i64, i64* %9, align 8
  %275 = or i64 %274, %273
  store i64 %275, i64* %9, align 8
  br label %276

276:                                              ; preds = %272, %267
  %277 = load i64, i64* %9, align 8
  %278 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %279 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %278, i32 0, i32 0
  %280 = load %struct.TYPE_11__*, %struct.TYPE_11__** %279, align 8
  %281 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %280, i32 0, i32 0
  %282 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %281, i32 0, i32 1
  store i64 %277, i64* %282, align 8
  %283 = load i64, i64* %10, align 8
  %284 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %285 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %284, i32 0, i32 0
  %286 = load %struct.TYPE_11__*, %struct.TYPE_11__** %285, align 8
  %287 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %286, i32 0, i32 0
  %288 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %287, i32 0, i32 2
  store i64 %283, i64* %288, align 8
  br label %289

289:                                              ; preds = %276, %25
  ret void
}

declare dso_local i64 @ssl_has_cert(%struct.TYPE_12__*, i64) #1

declare dso_local i64 @TLS1_get_version(%struct.TYPE_12__*) #1

declare dso_local i32 @X509_get_key_usage(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
