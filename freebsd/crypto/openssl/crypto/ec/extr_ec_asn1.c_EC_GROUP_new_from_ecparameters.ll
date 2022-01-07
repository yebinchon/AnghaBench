; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ec_asn1.c_EC_GROUP_new_from_ecparameters.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ec_asn1.c_EC_GROUP_new_from_ecparameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { i32, i32* }
%struct.TYPE_30__ = type { i32*, i32*, %struct.TYPE_32__*, %struct.TYPE_35__*, %struct.TYPE_37__* }
%struct.TYPE_32__ = type { i32*, i32 }
%struct.TYPE_35__ = type { %struct.TYPE_31__*, %struct.TYPE_34__*, %struct.TYPE_33__* }
%struct.TYPE_31__ = type { i32, i32 }
%struct.TYPE_34__ = type { i32, i32 }
%struct.TYPE_33__ = type { i32, i32 }
%struct.TYPE_37__ = type { %struct.TYPE_36__, i32 }
%struct.TYPE_36__ = type { i32*, %struct.TYPE_28__*, i32 }
%struct.TYPE_28__ = type { i64, %struct.TYPE_38__, i32 }
%struct.TYPE_38__ = type { %struct.TYPE_39__*, i32 }
%struct.TYPE_39__ = type { i64, i64, i64 }

@NID_undef = common dso_local global i32 0, align 4
@EC_F_EC_GROUP_NEW_FROM_ECPARAMETERS = common dso_local global i32 0, align 4
@EC_R_ASN1_ERROR = common dso_local global i32 0, align 4
@ERR_R_BN_LIB = common dso_local global i32 0, align 4
@NID_X9_62_characteristic_two_field = common dso_local global i32 0, align 4
@OPENSSL_ECC_MAX_FIELD_BITS = common dso_local global i64 0, align 8
@EC_R_FIELD_TOO_LARGE = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@NID_X9_62_tpBasis = common dso_local global i32 0, align 4
@EC_R_INVALID_TRINOMIAL_BASIS = common dso_local global i32 0, align 4
@NID_X9_62_ppBasis = common dso_local global i32 0, align 4
@EC_R_INVALID_PENTANOMIAL_BASIS = common dso_local global i32 0, align 4
@NID_X9_62_onBasis = common dso_local global i32 0, align 4
@EC_R_NOT_IMPLEMENTED = common dso_local global i32 0, align 4
@NID_X9_62_prime_field = common dso_local global i32 0, align 4
@ERR_R_ASN1_LIB = common dso_local global i32 0, align 4
@EC_R_INVALID_FIELD = common dso_local global i32 0, align 4
@ERR_R_EC_LIB = common dso_local global i32 0, align 4
@EC_R_INVALID_GROUP_ORDER = common dso_local global i32 0, align 4
@NID_wap_wsg_idm_ecid_wtls12 = common dso_local global i32 0, align 4
@NID_secp224r1 = common dso_local global i32 0, align 4
@OPENSSL_EC_EXPLICIT_CURVE = common dso_local global i32 0, align 4
@EC_R_GF2M_NOT_SUPPORTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_29__* @EC_GROUP_new_from_ecparameters(%struct.TYPE_30__* %0) #0 {
  %2 = alloca %struct.TYPE_30__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_29__*, align 8
  %6 = alloca %struct.TYPE_29__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_28__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_39__*, align 8
  %17 = alloca %struct.TYPE_29__*, align 8
  store %struct.TYPE_30__* %0, %struct.TYPE_30__** %2, align 8
  store i32 0, i32* %3, align 4
  store %struct.TYPE_29__* null, %struct.TYPE_29__** %5, align 8
  store %struct.TYPE_29__* null, %struct.TYPE_29__** %6, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  store i32* null, i32** %10, align 8
  %18 = load i32, i32* @NID_undef, align 4
  store i32 %18, i32* %12, align 4
  store i32* null, i32** %13, align 8
  %19 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %19, i32 0, i32 4
  %21 = load %struct.TYPE_37__*, %struct.TYPE_37__** %20, align 8
  %22 = icmp ne %struct.TYPE_37__* %21, null
  br i1 %22, label %23, label %38

23:                                               ; preds = %1
  %24 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %24, i32 0, i32 4
  %26 = load %struct.TYPE_37__*, %struct.TYPE_37__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %23
  %31 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %31, i32 0, i32 4
  %33 = load %struct.TYPE_37__*, %struct.TYPE_37__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %30, %23, %1
  %39 = load i32, i32* @EC_F_EC_GROUP_NEW_FROM_ECPARAMETERS, align 4
  %40 = load i32, i32* @EC_R_ASN1_ERROR, align 4
  %41 = call i32 @ECerr(i32 %39, i32 %40)
  br label %625

42:                                               ; preds = %30
  %43 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %43, i32 0, i32 3
  %45 = load %struct.TYPE_35__*, %struct.TYPE_35__** %44, align 8
  %46 = icmp ne %struct.TYPE_35__* %45, null
  br i1 %46, label %47, label %79

47:                                               ; preds = %42
  %48 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %48, i32 0, i32 3
  %50 = load %struct.TYPE_35__*, %struct.TYPE_35__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %50, i32 0, i32 2
  %52 = load %struct.TYPE_33__*, %struct.TYPE_33__** %51, align 8
  %53 = icmp ne %struct.TYPE_33__* %52, null
  br i1 %53, label %54, label %79

54:                                               ; preds = %47
  %55 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %55, i32 0, i32 3
  %57 = load %struct.TYPE_35__*, %struct.TYPE_35__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %57, i32 0, i32 2
  %59 = load %struct.TYPE_33__*, %struct.TYPE_33__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %79

63:                                               ; preds = %54
  %64 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %64, i32 0, i32 3
  %66 = load %struct.TYPE_35__*, %struct.TYPE_35__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_34__*, %struct.TYPE_34__** %67, align 8
  %69 = icmp ne %struct.TYPE_34__* %68, null
  br i1 %69, label %70, label %79

70:                                               ; preds = %63
  %71 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %71, i32 0, i32 3
  %73 = load %struct.TYPE_35__*, %struct.TYPE_35__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_34__*, %struct.TYPE_34__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %70, %63, %54, %47, %42
  %80 = load i32, i32* @EC_F_EC_GROUP_NEW_FROM_ECPARAMETERS, align 4
  %81 = load i32, i32* @EC_R_ASN1_ERROR, align 4
  %82 = call i32 @ECerr(i32 %80, i32 %81)
  br label %625

83:                                               ; preds = %70
  %84 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %84, i32 0, i32 3
  %86 = load %struct.TYPE_35__*, %struct.TYPE_35__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %86, i32 0, i32 2
  %88 = load %struct.TYPE_33__*, %struct.TYPE_33__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %91, i32 0, i32 3
  %93 = load %struct.TYPE_35__*, %struct.TYPE_35__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %93, i32 0, i32 2
  %95 = load %struct.TYPE_33__*, %struct.TYPE_33__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32* @BN_bin2bn(i32 %90, i32 %97, i32* null)
  store i32* %98, i32** %8, align 8
  %99 = load i32*, i32** %8, align 8
  %100 = icmp eq i32* %99, null
  br i1 %100, label %101, label %105

101:                                              ; preds = %83
  %102 = load i32, i32* @EC_F_EC_GROUP_NEW_FROM_ECPARAMETERS, align 4
  %103 = load i32, i32* @ERR_R_BN_LIB, align 4
  %104 = call i32 @ECerr(i32 %102, i32 %103)
  br label %625

105:                                              ; preds = %83
  %106 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %107 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %106, i32 0, i32 3
  %108 = load %struct.TYPE_35__*, %struct.TYPE_35__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %108, i32 0, i32 1
  %110 = load %struct.TYPE_34__*, %struct.TYPE_34__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %114 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %113, i32 0, i32 3
  %115 = load %struct.TYPE_35__*, %struct.TYPE_35__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %115, i32 0, i32 1
  %117 = load %struct.TYPE_34__*, %struct.TYPE_34__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32* @BN_bin2bn(i32 %112, i32 %119, i32* null)
  store i32* %120, i32** %9, align 8
  %121 = load i32*, i32** %9, align 8
  %122 = icmp eq i32* %121, null
  br i1 %122, label %123, label %127

123:                                              ; preds = %105
  %124 = load i32, i32* @EC_F_EC_GROUP_NEW_FROM_ECPARAMETERS, align 4
  %125 = load i32, i32* @ERR_R_BN_LIB, align 4
  %126 = call i32 @ECerr(i32 %124, i32 %125)
  br label %625

127:                                              ; preds = %105
  %128 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %129 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %128, i32 0, i32 4
  %130 = load %struct.TYPE_37__*, %struct.TYPE_37__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @OBJ_obj2nid(i32 %132)
  store i32 %133, i32* %4, align 4
  %134 = load i32, i32* %4, align 4
  %135 = load i32, i32* @NID_X9_62_characteristic_two_field, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %137, label %327

137:                                              ; preds = %127
  %138 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %139 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %138, i32 0, i32 4
  %140 = load %struct.TYPE_37__*, %struct.TYPE_37__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %141, i32 0, i32 1
  %143 = load %struct.TYPE_28__*, %struct.TYPE_28__** %142, align 8
  store %struct.TYPE_28__* %143, %struct.TYPE_28__** %14, align 8
  %144 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %145 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  store i64 %146, i64* %11, align 8
  %147 = load i64, i64* %11, align 8
  %148 = load i64, i64* @OPENSSL_ECC_MAX_FIELD_BITS, align 8
  %149 = icmp sgt i64 %147, %148
  br i1 %149, label %150, label %154

150:                                              ; preds = %137
  %151 = load i32, i32* @EC_F_EC_GROUP_NEW_FROM_ECPARAMETERS, align 4
  %152 = load i32, i32* @EC_R_FIELD_TOO_LARGE, align 4
  %153 = call i32 @ECerr(i32 %151, i32 %152)
  br label %625

154:                                              ; preds = %137
  %155 = call i32* (...) @BN_new()
  store i32* %155, i32** %7, align 8
  %156 = icmp eq i32* %155, null
  br i1 %156, label %157, label %161

157:                                              ; preds = %154
  %158 = load i32, i32* @EC_F_EC_GROUP_NEW_FROM_ECPARAMETERS, align 4
  %159 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %160 = call i32 @ECerr(i32 %158, i32 %159)
  br label %625

161:                                              ; preds = %154
  %162 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %163 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @OBJ_obj2nid(i32 %164)
  store i32 %165, i32* %4, align 4
  %166 = load i32, i32* %4, align 4
  %167 = load i32, i32* @NID_X9_62_tpBasis, align 4
  %168 = icmp eq i32 %166, %167
  br i1 %168, label %169, label %219

169:                                              ; preds = %161
  %170 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %171 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %179, label %175

175:                                              ; preds = %169
  %176 = load i32, i32* @EC_F_EC_GROUP_NEW_FROM_ECPARAMETERS, align 4
  %177 = load i32, i32* @EC_R_ASN1_ERROR, align 4
  %178 = call i32 @ECerr(i32 %176, i32 %177)
  br label %625

179:                                              ; preds = %169
  %180 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %181 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 8
  %184 = call i64 @ASN1_INTEGER_get(i32 %183)
  store i64 %184, i64* %15, align 8
  %185 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %186 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* %15, align 8
  %189 = icmp sgt i64 %187, %188
  br i1 %189, label %190, label %193

190:                                              ; preds = %179
  %191 = load i64, i64* %15, align 8
  %192 = icmp sgt i64 %191, 0
  br i1 %192, label %197, label %193

193:                                              ; preds = %190, %179
  %194 = load i32, i32* @EC_F_EC_GROUP_NEW_FROM_ECPARAMETERS, align 4
  %195 = load i32, i32* @EC_R_INVALID_TRINOMIAL_BASIS, align 4
  %196 = call i32 @ECerr(i32 %194, i32 %195)
  br label %625

197:                                              ; preds = %190
  %198 = load i32*, i32** %7, align 8
  %199 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %200 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = trunc i64 %201 to i32
  %203 = call i32 @BN_set_bit(i32* %198, i32 %202)
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %206, label %205

205:                                              ; preds = %197
  br label %625

206:                                              ; preds = %197
  %207 = load i32*, i32** %7, align 8
  %208 = load i64, i64* %15, align 8
  %209 = trunc i64 %208 to i32
  %210 = call i32 @BN_set_bit(i32* %207, i32 %209)
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %213, label %212

212:                                              ; preds = %206
  br label %625

213:                                              ; preds = %206
  %214 = load i32*, i32** %7, align 8
  %215 = call i32 @BN_set_bit(i32* %214, i32 0)
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %218, label %217

217:                                              ; preds = %213
  br label %625

218:                                              ; preds = %213
  br label %322

219:                                              ; preds = %161
  %220 = load i32, i32* %4, align 4
  %221 = load i32, i32* @NID_X9_62_ppBasis, align 4
  %222 = icmp eq i32 %220, %221
  br i1 %222, label %223, label %309

223:                                              ; preds = %219
  %224 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %225 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %224, i32 0, i32 1
  %226 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %225, i32 0, i32 0
  %227 = load %struct.TYPE_39__*, %struct.TYPE_39__** %226, align 8
  store %struct.TYPE_39__* %227, %struct.TYPE_39__** %16, align 8
  %228 = load %struct.TYPE_39__*, %struct.TYPE_39__** %16, align 8
  %229 = icmp ne %struct.TYPE_39__* %228, null
  br i1 %229, label %234, label %230

230:                                              ; preds = %223
  %231 = load i32, i32* @EC_F_EC_GROUP_NEW_FROM_ECPARAMETERS, align 4
  %232 = load i32, i32* @EC_R_ASN1_ERROR, align 4
  %233 = call i32 @ECerr(i32 %231, i32 %232)
  br label %625

234:                                              ; preds = %223
  %235 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %236 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %235, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = load %struct.TYPE_39__*, %struct.TYPE_39__** %16, align 8
  %239 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %238, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  %241 = icmp sgt i64 %237, %240
  br i1 %241, label %242, label %263

242:                                              ; preds = %234
  %243 = load %struct.TYPE_39__*, %struct.TYPE_39__** %16, align 8
  %244 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %243, i32 0, i32 0
  %245 = load i64, i64* %244, align 8
  %246 = load %struct.TYPE_39__*, %struct.TYPE_39__** %16, align 8
  %247 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %246, i32 0, i32 1
  %248 = load i64, i64* %247, align 8
  %249 = icmp sgt i64 %245, %248
  br i1 %249, label %250, label %263

250:                                              ; preds = %242
  %251 = load %struct.TYPE_39__*, %struct.TYPE_39__** %16, align 8
  %252 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %251, i32 0, i32 1
  %253 = load i64, i64* %252, align 8
  %254 = load %struct.TYPE_39__*, %struct.TYPE_39__** %16, align 8
  %255 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %254, i32 0, i32 2
  %256 = load i64, i64* %255, align 8
  %257 = icmp sgt i64 %253, %256
  br i1 %257, label %258, label %263

258:                                              ; preds = %250
  %259 = load %struct.TYPE_39__*, %struct.TYPE_39__** %16, align 8
  %260 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %259, i32 0, i32 2
  %261 = load i64, i64* %260, align 8
  %262 = icmp sgt i64 %261, 0
  br i1 %262, label %267, label %263

263:                                              ; preds = %258, %250, %242, %234
  %264 = load i32, i32* @EC_F_EC_GROUP_NEW_FROM_ECPARAMETERS, align 4
  %265 = load i32, i32* @EC_R_INVALID_PENTANOMIAL_BASIS, align 4
  %266 = call i32 @ECerr(i32 %264, i32 %265)
  br label %625

267:                                              ; preds = %258
  %268 = load i32*, i32** %7, align 8
  %269 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %270 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %269, i32 0, i32 0
  %271 = load i64, i64* %270, align 8
  %272 = trunc i64 %271 to i32
  %273 = call i32 @BN_set_bit(i32* %268, i32 %272)
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %276, label %275

275:                                              ; preds = %267
  br label %625

276:                                              ; preds = %267
  %277 = load i32*, i32** %7, align 8
  %278 = load %struct.TYPE_39__*, %struct.TYPE_39__** %16, align 8
  %279 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %278, i32 0, i32 2
  %280 = load i64, i64* %279, align 8
  %281 = trunc i64 %280 to i32
  %282 = call i32 @BN_set_bit(i32* %277, i32 %281)
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %285, label %284

284:                                              ; preds = %276
  br label %625

285:                                              ; preds = %276
  %286 = load i32*, i32** %7, align 8
  %287 = load %struct.TYPE_39__*, %struct.TYPE_39__** %16, align 8
  %288 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %287, i32 0, i32 1
  %289 = load i64, i64* %288, align 8
  %290 = trunc i64 %289 to i32
  %291 = call i32 @BN_set_bit(i32* %286, i32 %290)
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %294, label %293

293:                                              ; preds = %285
  br label %625

294:                                              ; preds = %285
  %295 = load i32*, i32** %7, align 8
  %296 = load %struct.TYPE_39__*, %struct.TYPE_39__** %16, align 8
  %297 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %296, i32 0, i32 0
  %298 = load i64, i64* %297, align 8
  %299 = trunc i64 %298 to i32
  %300 = call i32 @BN_set_bit(i32* %295, i32 %299)
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %303, label %302

302:                                              ; preds = %294
  br label %625

303:                                              ; preds = %294
  %304 = load i32*, i32** %7, align 8
  %305 = call i32 @BN_set_bit(i32* %304, i32 0)
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %308, label %307

307:                                              ; preds = %303
  br label %625

308:                                              ; preds = %303
  br label %321

309:                                              ; preds = %219
  %310 = load i32, i32* %4, align 4
  %311 = load i32, i32* @NID_X9_62_onBasis, align 4
  %312 = icmp eq i32 %310, %311
  br i1 %312, label %313, label %317

313:                                              ; preds = %309
  %314 = load i32, i32* @EC_F_EC_GROUP_NEW_FROM_ECPARAMETERS, align 4
  %315 = load i32, i32* @EC_R_NOT_IMPLEMENTED, align 4
  %316 = call i32 @ECerr(i32 %314, i32 %315)
  br label %625

317:                                              ; preds = %309
  %318 = load i32, i32* @EC_F_EC_GROUP_NEW_FROM_ECPARAMETERS, align 4
  %319 = load i32, i32* @EC_R_ASN1_ERROR, align 4
  %320 = call i32 @ECerr(i32 %318, i32 %319)
  br label %625

321:                                              ; preds = %308
  br label %322

322:                                              ; preds = %321, %218
  %323 = load i32*, i32** %7, align 8
  %324 = load i32*, i32** %8, align 8
  %325 = load i32*, i32** %9, align 8
  %326 = call %struct.TYPE_29__* @EC_GROUP_new_curve_GF2m(i32* %323, i32* %324, i32* %325, i32* null)
  store %struct.TYPE_29__* %326, %struct.TYPE_29__** %5, align 8
  br label %390

327:                                              ; preds = %127
  %328 = load i32, i32* %4, align 4
  %329 = load i32, i32* @NID_X9_62_prime_field, align 4
  %330 = icmp eq i32 %328, %329
  br i1 %330, label %331, label %385

331:                                              ; preds = %327
  %332 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %333 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %332, i32 0, i32 4
  %334 = load %struct.TYPE_37__*, %struct.TYPE_37__** %333, align 8
  %335 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %334, i32 0, i32 0
  %336 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %335, i32 0, i32 0
  %337 = load i32*, i32** %336, align 8
  %338 = icmp ne i32* %337, null
  br i1 %338, label %343, label %339

339:                                              ; preds = %331
  %340 = load i32, i32* @EC_F_EC_GROUP_NEW_FROM_ECPARAMETERS, align 4
  %341 = load i32, i32* @EC_R_ASN1_ERROR, align 4
  %342 = call i32 @ECerr(i32 %340, i32 %341)
  br label %625

343:                                              ; preds = %331
  %344 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %345 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %344, i32 0, i32 4
  %346 = load %struct.TYPE_37__*, %struct.TYPE_37__** %345, align 8
  %347 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %346, i32 0, i32 0
  %348 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %347, i32 0, i32 0
  %349 = load i32*, i32** %348, align 8
  %350 = call i32* @ASN1_INTEGER_to_BN(i32* %349, i32* null)
  store i32* %350, i32** %7, align 8
  %351 = load i32*, i32** %7, align 8
  %352 = icmp eq i32* %351, null
  br i1 %352, label %353, label %357

353:                                              ; preds = %343
  %354 = load i32, i32* @EC_F_EC_GROUP_NEW_FROM_ECPARAMETERS, align 4
  %355 = load i32, i32* @ERR_R_ASN1_LIB, align 4
  %356 = call i32 @ECerr(i32 %354, i32 %355)
  br label %625

357:                                              ; preds = %343
  %358 = load i32*, i32** %7, align 8
  %359 = call i64 @BN_is_negative(i32* %358)
  %360 = icmp ne i64 %359, 0
  br i1 %360, label %365, label %361

361:                                              ; preds = %357
  %362 = load i32*, i32** %7, align 8
  %363 = call i64 @BN_is_zero(i32* %362)
  %364 = icmp ne i64 %363, 0
  br i1 %364, label %365, label %369

365:                                              ; preds = %361, %357
  %366 = load i32, i32* @EC_F_EC_GROUP_NEW_FROM_ECPARAMETERS, align 4
  %367 = load i32, i32* @EC_R_INVALID_FIELD, align 4
  %368 = call i32 @ECerr(i32 %366, i32 %367)
  br label %625

369:                                              ; preds = %361
  %370 = load i32*, i32** %7, align 8
  %371 = call i32 @BN_num_bits(i32* %370)
  %372 = sext i32 %371 to i64
  store i64 %372, i64* %11, align 8
  %373 = load i64, i64* %11, align 8
  %374 = load i64, i64* @OPENSSL_ECC_MAX_FIELD_BITS, align 8
  %375 = icmp sgt i64 %373, %374
  br i1 %375, label %376, label %380

376:                                              ; preds = %369
  %377 = load i32, i32* @EC_F_EC_GROUP_NEW_FROM_ECPARAMETERS, align 4
  %378 = load i32, i32* @EC_R_FIELD_TOO_LARGE, align 4
  %379 = call i32 @ECerr(i32 %377, i32 %378)
  br label %625

380:                                              ; preds = %369
  %381 = load i32*, i32** %7, align 8
  %382 = load i32*, i32** %8, align 8
  %383 = load i32*, i32** %9, align 8
  %384 = call %struct.TYPE_29__* @EC_GROUP_new_curve_GFp(i32* %381, i32* %382, i32* %383, i32* null)
  store %struct.TYPE_29__* %384, %struct.TYPE_29__** %5, align 8
  br label %389

385:                                              ; preds = %327
  %386 = load i32, i32* @EC_F_EC_GROUP_NEW_FROM_ECPARAMETERS, align 4
  %387 = load i32, i32* @EC_R_INVALID_FIELD, align 4
  %388 = call i32 @ECerr(i32 %386, i32 %387)
  br label %625

389:                                              ; preds = %380
  br label %390

390:                                              ; preds = %389, %322
  %391 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %392 = icmp eq %struct.TYPE_29__* %391, null
  br i1 %392, label %393, label %397

393:                                              ; preds = %390
  %394 = load i32, i32* @EC_F_EC_GROUP_NEW_FROM_ECPARAMETERS, align 4
  %395 = load i32, i32* @ERR_R_EC_LIB, align 4
  %396 = call i32 @ECerr(i32 %394, i32 %395)
  br label %625

397:                                              ; preds = %390
  %398 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %399 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %398, i32 0, i32 3
  %400 = load %struct.TYPE_35__*, %struct.TYPE_35__** %399, align 8
  %401 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %400, i32 0, i32 0
  %402 = load %struct.TYPE_31__*, %struct.TYPE_31__** %401, align 8
  %403 = icmp ne %struct.TYPE_31__* %402, null
  br i1 %403, label %404, label %452

404:                                              ; preds = %397
  %405 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %406 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %405, i32 0, i32 1
  %407 = load i32*, i32** %406, align 8
  %408 = call i32 @OPENSSL_free(i32* %407)
  %409 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %410 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %409, i32 0, i32 3
  %411 = load %struct.TYPE_35__*, %struct.TYPE_35__** %410, align 8
  %412 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %411, i32 0, i32 0
  %413 = load %struct.TYPE_31__*, %struct.TYPE_31__** %412, align 8
  %414 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %413, i32 0, i32 0
  %415 = load i32, i32* %414, align 4
  %416 = call i32* @OPENSSL_malloc(i32 %415)
  %417 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %418 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %417, i32 0, i32 1
  store i32* %416, i32** %418, align 8
  %419 = icmp eq i32* %416, null
  br i1 %419, label %420, label %424

420:                                              ; preds = %404
  %421 = load i32, i32* @EC_F_EC_GROUP_NEW_FROM_ECPARAMETERS, align 4
  %422 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %423 = call i32 @ECerr(i32 %421, i32 %422)
  br label %625

424:                                              ; preds = %404
  %425 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %426 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %425, i32 0, i32 1
  %427 = load i32*, i32** %426, align 8
  %428 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %429 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %428, i32 0, i32 3
  %430 = load %struct.TYPE_35__*, %struct.TYPE_35__** %429, align 8
  %431 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %430, i32 0, i32 0
  %432 = load %struct.TYPE_31__*, %struct.TYPE_31__** %431, align 8
  %433 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %432, i32 0, i32 1
  %434 = load i32, i32* %433, align 4
  %435 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %436 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %435, i32 0, i32 3
  %437 = load %struct.TYPE_35__*, %struct.TYPE_35__** %436, align 8
  %438 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %437, i32 0, i32 0
  %439 = load %struct.TYPE_31__*, %struct.TYPE_31__** %438, align 8
  %440 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %439, i32 0, i32 0
  %441 = load i32, i32* %440, align 4
  %442 = call i32 @memcpy(i32* %427, i32 %434, i32 %441)
  %443 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %444 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %443, i32 0, i32 3
  %445 = load %struct.TYPE_35__*, %struct.TYPE_35__** %444, align 8
  %446 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %445, i32 0, i32 0
  %447 = load %struct.TYPE_31__*, %struct.TYPE_31__** %446, align 8
  %448 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %447, i32 0, i32 0
  %449 = load i32, i32* %448, align 4
  %450 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %451 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %450, i32 0, i32 0
  store i32 %449, i32* %451, align 8
  br label %452

452:                                              ; preds = %424, %397
  %453 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %454 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %453, i32 0, i32 1
  %455 = load i32*, i32** %454, align 8
  %456 = icmp ne i32* %455, null
  br i1 %456, label %457, label %469

457:                                              ; preds = %452
  %458 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %459 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %458, i32 0, i32 2
  %460 = load %struct.TYPE_32__*, %struct.TYPE_32__** %459, align 8
  %461 = icmp ne %struct.TYPE_32__* %460, null
  br i1 %461, label %462, label %469

462:                                              ; preds = %457
  %463 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %464 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %463, i32 0, i32 2
  %465 = load %struct.TYPE_32__*, %struct.TYPE_32__** %464, align 8
  %466 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %465, i32 0, i32 0
  %467 = load i32*, i32** %466, align 8
  %468 = icmp ne i32* %467, null
  br i1 %468, label %473, label %469

469:                                              ; preds = %462, %457, %452
  %470 = load i32, i32* @EC_F_EC_GROUP_NEW_FROM_ECPARAMETERS, align 4
  %471 = load i32, i32* @EC_R_ASN1_ERROR, align 4
  %472 = call i32 @ECerr(i32 %470, i32 %471)
  br label %625

473:                                              ; preds = %462
  %474 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %475 = call i32* @EC_POINT_new(%struct.TYPE_29__* %474)
  store i32* %475, i32** %10, align 8
  %476 = icmp eq i32* %475, null
  br i1 %476, label %477, label %478

477:                                              ; preds = %473
  br label %625

478:                                              ; preds = %473
  %479 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %480 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %481 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %480, i32 0, i32 2
  %482 = load %struct.TYPE_32__*, %struct.TYPE_32__** %481, align 8
  %483 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %482, i32 0, i32 0
  %484 = load i32*, i32** %483, align 8
  %485 = getelementptr inbounds i32, i32* %484, i64 0
  %486 = load i32, i32* %485, align 4
  %487 = and i32 %486, -2
  %488 = call i32 @EC_GROUP_set_point_conversion_form(%struct.TYPE_29__* %479, i32 %487)
  %489 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %490 = load i32*, i32** %10, align 8
  %491 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %492 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %491, i32 0, i32 2
  %493 = load %struct.TYPE_32__*, %struct.TYPE_32__** %492, align 8
  %494 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %493, i32 0, i32 0
  %495 = load i32*, i32** %494, align 8
  %496 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %497 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %496, i32 0, i32 2
  %498 = load %struct.TYPE_32__*, %struct.TYPE_32__** %497, align 8
  %499 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %498, i32 0, i32 1
  %500 = load i32, i32* %499, align 8
  %501 = call i32 @EC_POINT_oct2point(%struct.TYPE_29__* %489, i32* %490, i32* %495, i32 %500, i32* null)
  %502 = icmp ne i32 %501, 0
  br i1 %502, label %507, label %503

503:                                              ; preds = %478
  %504 = load i32, i32* @EC_F_EC_GROUP_NEW_FROM_ECPARAMETERS, align 4
  %505 = load i32, i32* @ERR_R_EC_LIB, align 4
  %506 = call i32 @ECerr(i32 %504, i32 %505)
  br label %625

507:                                              ; preds = %478
  %508 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %509 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %508, i32 0, i32 1
  %510 = load i32*, i32** %509, align 8
  %511 = load i32*, i32** %8, align 8
  %512 = call i32* @ASN1_INTEGER_to_BN(i32* %510, i32* %511)
  store i32* %512, i32** %8, align 8
  %513 = icmp eq i32* %512, null
  br i1 %513, label %514, label %518

514:                                              ; preds = %507
  %515 = load i32, i32* @EC_F_EC_GROUP_NEW_FROM_ECPARAMETERS, align 4
  %516 = load i32, i32* @ERR_R_ASN1_LIB, align 4
  %517 = call i32 @ECerr(i32 %515, i32 %516)
  br label %625

518:                                              ; preds = %507
  %519 = load i32*, i32** %8, align 8
  %520 = call i64 @BN_is_negative(i32* %519)
  %521 = icmp ne i64 %520, 0
  br i1 %521, label %526, label %522

522:                                              ; preds = %518
  %523 = load i32*, i32** %8, align 8
  %524 = call i64 @BN_is_zero(i32* %523)
  %525 = icmp ne i64 %524, 0
  br i1 %525, label %526, label %530

526:                                              ; preds = %522, %518
  %527 = load i32, i32* @EC_F_EC_GROUP_NEW_FROM_ECPARAMETERS, align 4
  %528 = load i32, i32* @EC_R_INVALID_GROUP_ORDER, align 4
  %529 = call i32 @ECerr(i32 %527, i32 %528)
  br label %625

530:                                              ; preds = %522
  %531 = load i32*, i32** %8, align 8
  %532 = call i32 @BN_num_bits(i32* %531)
  %533 = load i64, i64* %11, align 8
  %534 = trunc i64 %533 to i32
  %535 = add nsw i32 %534, 1
  %536 = icmp sgt i32 %532, %535
  br i1 %536, label %537, label %541

537:                                              ; preds = %530
  %538 = load i32, i32* @EC_F_EC_GROUP_NEW_FROM_ECPARAMETERS, align 4
  %539 = load i32, i32* @EC_R_INVALID_GROUP_ORDER, align 4
  %540 = call i32 @ECerr(i32 %538, i32 %539)
  br label %625

541:                                              ; preds = %530
  %542 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %543 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %542, i32 0, i32 0
  %544 = load i32*, i32** %543, align 8
  %545 = icmp eq i32* %544, null
  br i1 %545, label %546, label %549

546:                                              ; preds = %541
  %547 = load i32*, i32** %9, align 8
  %548 = call i32 @BN_free(i32* %547)
  store i32* null, i32** %9, align 8
  br label %561

549:                                              ; preds = %541
  %550 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %551 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %550, i32 0, i32 0
  %552 = load i32*, i32** %551, align 8
  %553 = load i32*, i32** %9, align 8
  %554 = call i32* @ASN1_INTEGER_to_BN(i32* %552, i32* %553)
  store i32* %554, i32** %9, align 8
  %555 = icmp eq i32* %554, null
  br i1 %555, label %556, label %560

556:                                              ; preds = %549
  %557 = load i32, i32* @EC_F_EC_GROUP_NEW_FROM_ECPARAMETERS, align 4
  %558 = load i32, i32* @ERR_R_ASN1_LIB, align 4
  %559 = call i32 @ECerr(i32 %557, i32 %558)
  br label %625

560:                                              ; preds = %549
  br label %561

561:                                              ; preds = %560, %546
  %562 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %563 = load i32*, i32** %10, align 8
  %564 = load i32*, i32** %8, align 8
  %565 = load i32*, i32** %9, align 8
  %566 = call i32 @EC_GROUP_set_generator(%struct.TYPE_29__* %562, i32* %563, i32* %564, i32* %565)
  %567 = icmp ne i32 %566, 0
  br i1 %567, label %572, label %568

568:                                              ; preds = %561
  %569 = load i32, i32* @EC_F_EC_GROUP_NEW_FROM_ECPARAMETERS, align 4
  %570 = load i32, i32* @ERR_R_EC_LIB, align 4
  %571 = call i32 @ECerr(i32 %569, i32 %570)
  br label %625

572:                                              ; preds = %561
  %573 = call i32* (...) @BN_CTX_new()
  store i32* %573, i32** %13, align 8
  %574 = icmp eq i32* %573, null
  br i1 %574, label %575, label %579

575:                                              ; preds = %572
  %576 = load i32, i32* @EC_F_EC_GROUP_NEW_FROM_ECPARAMETERS, align 4
  %577 = load i32, i32* @ERR_R_BN_LIB, align 4
  %578 = call i32 @ECerr(i32 %576, i32 %577)
  br label %625

579:                                              ; preds = %572
  %580 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %581 = call %struct.TYPE_29__* @EC_GROUP_dup(%struct.TYPE_29__* %580)
  store %struct.TYPE_29__* %581, %struct.TYPE_29__** %6, align 8
  %582 = icmp eq %struct.TYPE_29__* %581, null
  br i1 %582, label %593, label %583

583:                                              ; preds = %579
  %584 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %585 = call i32 @EC_GROUP_set_seed(%struct.TYPE_29__* %584, i32* null, i32 0)
  %586 = icmp ne i32 %585, 1
  br i1 %586, label %593, label %587

587:                                              ; preds = %583
  %588 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %589 = load i32*, i32** %10, align 8
  %590 = load i32*, i32** %8, align 8
  %591 = call i32 @EC_GROUP_set_generator(%struct.TYPE_29__* %588, i32* %589, i32* %590, i32* null)
  %592 = icmp ne i32 %591, 0
  br i1 %592, label %597, label %593

593:                                              ; preds = %587, %583, %579
  %594 = load i32, i32* @EC_F_EC_GROUP_NEW_FROM_ECPARAMETERS, align 4
  %595 = load i32, i32* @ERR_R_EC_LIB, align 4
  %596 = call i32 @ECerr(i32 %594, i32 %595)
  br label %625

597:                                              ; preds = %587
  %598 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %599 = load i32*, i32** %13, align 8
  %600 = call i32 @ec_curve_nid_from_params(%struct.TYPE_29__* %598, i32* %599)
  store i32 %600, i32* %12, align 4
  %601 = load i32, i32* @NID_undef, align 4
  %602 = icmp ne i32 %600, %601
  br i1 %602, label %603, label %624

603:                                              ; preds = %597
  store %struct.TYPE_29__* null, %struct.TYPE_29__** %17, align 8
  %604 = load i32, i32* %12, align 4
  %605 = load i32, i32* @NID_wap_wsg_idm_ecid_wtls12, align 4
  %606 = icmp eq i32 %604, %605
  br i1 %606, label %607, label %609

607:                                              ; preds = %603
  %608 = load i32, i32* @NID_secp224r1, align 4
  store i32 %608, i32* %12, align 4
  br label %609

609:                                              ; preds = %607, %603
  %610 = load i32, i32* %12, align 4
  %611 = call %struct.TYPE_29__* @EC_GROUP_new_by_curve_name(i32 %610)
  store %struct.TYPE_29__* %611, %struct.TYPE_29__** %17, align 8
  %612 = icmp eq %struct.TYPE_29__* %611, null
  br i1 %612, label %613, label %617

613:                                              ; preds = %609
  %614 = load i32, i32* @EC_F_EC_GROUP_NEW_FROM_ECPARAMETERS, align 4
  %615 = load i32, i32* @ERR_R_EC_LIB, align 4
  %616 = call i32 @ECerr(i32 %614, i32 %615)
  br label %625

617:                                              ; preds = %609
  %618 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %619 = call i32 @EC_GROUP_free(%struct.TYPE_29__* %618)
  %620 = load %struct.TYPE_29__*, %struct.TYPE_29__** %17, align 8
  store %struct.TYPE_29__* %620, %struct.TYPE_29__** %5, align 8
  %621 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %622 = load i32, i32* @OPENSSL_EC_EXPLICIT_CURVE, align 4
  %623 = call i32 @EC_GROUP_set_asn1_flag(%struct.TYPE_29__* %621, i32 %622)
  br label %624

624:                                              ; preds = %617, %597
  store i32 1, i32* %3, align 4
  br label %625

625:                                              ; preds = %624, %613, %593, %575, %568, %556, %537, %526, %514, %503, %477, %469, %420, %393, %385, %376, %365, %353, %339, %317, %313, %307, %302, %293, %284, %275, %263, %230, %217, %212, %205, %193, %175, %157, %150, %123, %101, %79, %38
  %626 = load i32, i32* %3, align 4
  %627 = icmp ne i32 %626, 0
  br i1 %627, label %631, label %628

628:                                              ; preds = %625
  %629 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %630 = call i32 @EC_GROUP_free(%struct.TYPE_29__* %629)
  store %struct.TYPE_29__* null, %struct.TYPE_29__** %5, align 8
  br label %631

631:                                              ; preds = %628, %625
  %632 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %633 = call i32 @EC_GROUP_free(%struct.TYPE_29__* %632)
  %634 = load i32*, i32** %7, align 8
  %635 = call i32 @BN_free(i32* %634)
  %636 = load i32*, i32** %8, align 8
  %637 = call i32 @BN_free(i32* %636)
  %638 = load i32*, i32** %9, align 8
  %639 = call i32 @BN_free(i32* %638)
  %640 = load i32*, i32** %10, align 8
  %641 = call i32 @EC_POINT_free(i32* %640)
  %642 = load i32*, i32** %13, align 8
  %643 = call i32 @BN_CTX_free(i32* %642)
  %644 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  ret %struct.TYPE_29__* %644
}

declare dso_local i32 @ECerr(i32, i32) #1

declare dso_local i32* @BN_bin2bn(i32, i32, i32*) #1

declare dso_local i32 @OBJ_obj2nid(i32) #1

declare dso_local i32* @BN_new(...) #1

declare dso_local i64 @ASN1_INTEGER_get(i32) #1

declare dso_local i32 @BN_set_bit(i32*, i32) #1

declare dso_local %struct.TYPE_29__* @EC_GROUP_new_curve_GF2m(i32*, i32*, i32*, i32*) #1

declare dso_local i32* @ASN1_INTEGER_to_BN(i32*, i32*) #1

declare dso_local i64 @BN_is_negative(i32*) #1

declare dso_local i64 @BN_is_zero(i32*) #1

declare dso_local i32 @BN_num_bits(i32*) #1

declare dso_local %struct.TYPE_29__* @EC_GROUP_new_curve_GFp(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @OPENSSL_free(i32*) #1

declare dso_local i32* @OPENSSL_malloc(i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32* @EC_POINT_new(%struct.TYPE_29__*) #1

declare dso_local i32 @EC_GROUP_set_point_conversion_form(%struct.TYPE_29__*, i32) #1

declare dso_local i32 @EC_POINT_oct2point(%struct.TYPE_29__*, i32*, i32*, i32, i32*) #1

declare dso_local i32 @BN_free(i32*) #1

declare dso_local i32 @EC_GROUP_set_generator(%struct.TYPE_29__*, i32*, i32*, i32*) #1

declare dso_local i32* @BN_CTX_new(...) #1

declare dso_local %struct.TYPE_29__* @EC_GROUP_dup(%struct.TYPE_29__*) #1

declare dso_local i32 @EC_GROUP_set_seed(%struct.TYPE_29__*, i32*, i32) #1

declare dso_local i32 @ec_curve_nid_from_params(%struct.TYPE_29__*, i32*) #1

declare dso_local %struct.TYPE_29__* @EC_GROUP_new_by_curve_name(i32) #1

declare dso_local i32 @EC_GROUP_free(%struct.TYPE_29__*) #1

declare dso_local i32 @EC_GROUP_set_asn1_flag(%struct.TYPE_29__*, i32) #1

declare dso_local i32 @EC_POINT_free(i32*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
