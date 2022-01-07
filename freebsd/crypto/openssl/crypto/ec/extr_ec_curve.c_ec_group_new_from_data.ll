; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ec_curve.c_ec_group_new_from_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ec_curve.c_ec_group_new_from_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 (%struct.TYPE_19__*, i32*, i32*, i32*, i32*)* }
%struct.TYPE_18__ = type { i32, i32* (...)*, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32, i32, i64, i64 }

@EC_F_EC_GROUP_NEW_FROM_DATA = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@ERR_R_BN_LIB = common dso_local global i32 0, align 4
@ERR_R_EC_LIB = common dso_local global i32 0, align 4
@NID_X9_62_prime_field = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_19__* (%struct.TYPE_18__*)* @ec_group_new_from_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_19__* @ec_group_new_from_data(%struct.TYPE_18__* byval(%struct.TYPE_18__) align 8 %0) #0 {
  %2 = alloca %struct.TYPE_19__*, align 8
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_20__*, align 8
  %17 = alloca i8*, align 8
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %3, align 8
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  store i32 0, i32* %12, align 4
  %18 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %0, i32 0, i32 2
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %20 = icmp eq %struct.TYPE_20__* %19, null
  br i1 %20, label %21, label %33

21:                                               ; preds = %1
  %22 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %0, i32 0, i32 1
  %23 = load i32* (...)*, i32* (...)** %22, align 8
  %24 = icmp ne i32* (...)* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %0, i32 0, i32 1
  %27 = load i32* (...)*, i32* (...)** %26, align 8
  %28 = call i32* (...) %27()
  br label %30

29:                                               ; preds = %21
  br label %30

30:                                               ; preds = %29, %25
  %31 = phi i32* [ %28, %25 ], [ null, %29 ]
  %32 = call %struct.TYPE_19__* @EC_GROUP_new(i32* %31)
  store %struct.TYPE_19__* %32, %struct.TYPE_19__** %2, align 8
  br label %267

33:                                               ; preds = %1
  %34 = call i32* (...) @BN_CTX_new()
  store i32* %34, i32** %5, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load i32, i32* @EC_F_EC_GROUP_NEW_FROM_DATA, align 4
  %38 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %39 = call i32 @ECerr(i32 %37, i32 %38)
  br label %243

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %0, i32 0, i32 2
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %41, align 8
  store %struct.TYPE_20__* %42, %struct.TYPE_20__** %16, align 8
  %43 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %44 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %13, align 4
  %46 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %47 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %14, align 4
  %49 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %50 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %49, i64 1
  %51 = bitcast %struct.TYPE_20__* %50 to i8*
  store i8* %51, i8** %17, align 8
  %52 = load i32, i32* %13, align 4
  %53 = load i8*, i8** %17, align 8
  %54 = sext i32 %52 to i64
  %55 = getelementptr inbounds i8, i8* %53, i64 %54
  store i8* %55, i8** %17, align 8
  %56 = load i8*, i8** %17, align 8
  %57 = load i32, i32* %14, align 4
  %58 = mul nsw i32 0, %57
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %56, i64 %59
  %61 = load i32, i32* %14, align 4
  %62 = call i32* @BN_bin2bn(i8* %60, i32 %61, i32* null)
  store i32* %62, i32** %6, align 8
  %63 = icmp eq i32* %62, null
  br i1 %63, label %82, label %64

64:                                               ; preds = %40
  %65 = load i8*, i8** %17, align 8
  %66 = load i32, i32* %14, align 4
  %67 = mul nsw i32 1, %66
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %65, i64 %68
  %70 = load i32, i32* %14, align 4
  %71 = call i32* @BN_bin2bn(i8* %69, i32 %70, i32* null)
  store i32* %71, i32** %7, align 8
  %72 = icmp eq i32* %71, null
  br i1 %72, label %82, label %73

73:                                               ; preds = %64
  %74 = load i8*, i8** %17, align 8
  %75 = load i32, i32* %14, align 4
  %76 = mul nsw i32 2, %75
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %74, i64 %77
  %79 = load i32, i32* %14, align 4
  %80 = call i32* @BN_bin2bn(i8* %78, i32 %79, i32* null)
  store i32* %80, i32** %8, align 8
  %81 = icmp eq i32* %80, null
  br i1 %81, label %82, label %86

82:                                               ; preds = %73, %64, %40
  %83 = load i32, i32* @EC_F_EC_GROUP_NEW_FROM_DATA, align 4
  %84 = load i32, i32* @ERR_R_BN_LIB, align 4
  %85 = call i32 @ECerr(i32 %83, i32 %84)
  br label %243

86:                                               ; preds = %73
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %0, i32 0, i32 1
  %88 = load i32* (...)*, i32* (...)** %87, align 8
  %89 = icmp ne i32* (...)* %88, null
  br i1 %89, label %90, label %115

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %0, i32 0, i32 1
  %92 = load i32* (...)*, i32* (...)** %91, align 8
  %93 = call i32* (...) %92()
  store i32* %93, i32** %15, align 8
  %94 = load i32*, i32** %15, align 8
  %95 = call %struct.TYPE_19__* @EC_GROUP_new(i32* %94)
  store %struct.TYPE_19__* %95, %struct.TYPE_19__** %3, align 8
  %96 = icmp eq %struct.TYPE_19__* %95, null
  br i1 %96, label %110, label %97

97:                                               ; preds = %90
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %100, i32 0, i32 0
  %102 = load i32 (%struct.TYPE_19__*, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_19__*, i32*, i32*, i32*, i32*)** %101, align 8
  %103 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %104 = load i32*, i32** %6, align 8
  %105 = load i32*, i32** %7, align 8
  %106 = load i32*, i32** %8, align 8
  %107 = load i32*, i32** %5, align 8
  %108 = call i32 %102(%struct.TYPE_19__* %103, i32* %104, i32* %105, i32* %106, i32* %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %114, label %110

110:                                              ; preds = %97, %90
  %111 = load i32, i32* @EC_F_EC_GROUP_NEW_FROM_DATA, align 4
  %112 = load i32, i32* @ERR_R_EC_LIB, align 4
  %113 = call i32 @ECerr(i32 %111, i32 %112)
  br label %243

114:                                              ; preds = %97
  br label %146

115:                                              ; preds = %86
  %116 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %117 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @NID_X9_62_prime_field, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %133

121:                                              ; preds = %115
  %122 = load i32*, i32** %6, align 8
  %123 = load i32*, i32** %7, align 8
  %124 = load i32*, i32** %8, align 8
  %125 = load i32*, i32** %5, align 8
  %126 = call %struct.TYPE_19__* @EC_GROUP_new_curve_GFp(i32* %122, i32* %123, i32* %124, i32* %125)
  store %struct.TYPE_19__* %126, %struct.TYPE_19__** %3, align 8
  %127 = icmp eq %struct.TYPE_19__* %126, null
  br i1 %127, label %128, label %132

128:                                              ; preds = %121
  %129 = load i32, i32* @EC_F_EC_GROUP_NEW_FROM_DATA, align 4
  %130 = load i32, i32* @ERR_R_EC_LIB, align 4
  %131 = call i32 @ECerr(i32 %129, i32 %130)
  br label %243

132:                                              ; preds = %121
  br label %145

133:                                              ; preds = %115
  %134 = load i32*, i32** %6, align 8
  %135 = load i32*, i32** %7, align 8
  %136 = load i32*, i32** %8, align 8
  %137 = load i32*, i32** %5, align 8
  %138 = call %struct.TYPE_19__* @EC_GROUP_new_curve_GF2m(i32* %134, i32* %135, i32* %136, i32* %137)
  store %struct.TYPE_19__* %138, %struct.TYPE_19__** %3, align 8
  %139 = icmp eq %struct.TYPE_19__* %138, null
  br i1 %139, label %140, label %144

140:                                              ; preds = %133
  %141 = load i32, i32* @EC_F_EC_GROUP_NEW_FROM_DATA, align 4
  %142 = load i32, i32* @ERR_R_EC_LIB, align 4
  %143 = call i32 @ECerr(i32 %141, i32 %142)
  br label %243

144:                                              ; preds = %133
  br label %145

145:                                              ; preds = %144, %132
  br label %146

146:                                              ; preds = %145, %114
  %147 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %0, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @EC_GROUP_set_curve_name(%struct.TYPE_19__* %147, i32 %149)
  %151 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %152 = call i32* @EC_POINT_new(%struct.TYPE_19__* %151)
  store i32* %152, i32** %4, align 8
  %153 = icmp eq i32* %152, null
  br i1 %153, label %154, label %158

154:                                              ; preds = %146
  %155 = load i32, i32* @EC_F_EC_GROUP_NEW_FROM_DATA, align 4
  %156 = load i32, i32* @ERR_R_EC_LIB, align 4
  %157 = call i32 @ECerr(i32 %155, i32 %156)
  br label %243

158:                                              ; preds = %146
  %159 = load i8*, i8** %17, align 8
  %160 = load i32, i32* %14, align 4
  %161 = mul nsw i32 3, %160
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i8, i8* %159, i64 %162
  %164 = load i32, i32* %14, align 4
  %165 = call i32* @BN_bin2bn(i8* %163, i32 %164, i32* null)
  store i32* %165, i32** %9, align 8
  %166 = icmp eq i32* %165, null
  br i1 %166, label %176, label %167

167:                                              ; preds = %158
  %168 = load i8*, i8** %17, align 8
  %169 = load i32, i32* %14, align 4
  %170 = mul nsw i32 4, %169
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i8, i8* %168, i64 %171
  %173 = load i32, i32* %14, align 4
  %174 = call i32* @BN_bin2bn(i8* %172, i32 %173, i32* null)
  store i32* %174, i32** %10, align 8
  %175 = icmp eq i32* %174, null
  br i1 %175, label %176, label %180

176:                                              ; preds = %167, %158
  %177 = load i32, i32* @EC_F_EC_GROUP_NEW_FROM_DATA, align 4
  %178 = load i32, i32* @ERR_R_BN_LIB, align 4
  %179 = call i32 @ECerr(i32 %177, i32 %178)
  br label %243

180:                                              ; preds = %167
  %181 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %182 = load i32*, i32** %4, align 8
  %183 = load i32*, i32** %9, align 8
  %184 = load i32*, i32** %10, align 8
  %185 = load i32*, i32** %5, align 8
  %186 = call i32 @EC_POINT_set_affine_coordinates(%struct.TYPE_19__* %181, i32* %182, i32* %183, i32* %184, i32* %185)
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %192, label %188

188:                                              ; preds = %180
  %189 = load i32, i32* @EC_F_EC_GROUP_NEW_FROM_DATA, align 4
  %190 = load i32, i32* @ERR_R_EC_LIB, align 4
  %191 = call i32 @ECerr(i32 %189, i32 %190)
  br label %243

192:                                              ; preds = %180
  %193 = load i8*, i8** %17, align 8
  %194 = load i32, i32* %14, align 4
  %195 = mul nsw i32 5, %194
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i8, i8* %193, i64 %196
  %198 = load i32, i32* %14, align 4
  %199 = call i32* @BN_bin2bn(i8* %197, i32 %198, i32* null)
  store i32* %199, i32** %11, align 8
  %200 = icmp eq i32* %199, null
  br i1 %200, label %209, label %201

201:                                              ; preds = %192
  %202 = load i32*, i32** %9, align 8
  %203 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %204 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %203, i32 0, i32 3
  %205 = load i64, i64* %204, align 8
  %206 = trunc i64 %205 to i32
  %207 = call i32 @BN_set_word(i32* %202, i32 %206)
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %213, label %209

209:                                              ; preds = %201, %192
  %210 = load i32, i32* @EC_F_EC_GROUP_NEW_FROM_DATA, align 4
  %211 = load i32, i32* @ERR_R_BN_LIB, align 4
  %212 = call i32 @ECerr(i32 %210, i32 %211)
  br label %243

213:                                              ; preds = %201
  %214 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %215 = load i32*, i32** %4, align 8
  %216 = load i32*, i32** %11, align 8
  %217 = load i32*, i32** %9, align 8
  %218 = call i32 @EC_GROUP_set_generator(%struct.TYPE_19__* %214, i32* %215, i32* %216, i32* %217)
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %224, label %220

220:                                              ; preds = %213
  %221 = load i32, i32* @EC_F_EC_GROUP_NEW_FROM_DATA, align 4
  %222 = load i32, i32* @ERR_R_EC_LIB, align 4
  %223 = call i32 @ECerr(i32 %221, i32 %222)
  br label %243

224:                                              ; preds = %213
  %225 = load i32, i32* %13, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %242

227:                                              ; preds = %224
  %228 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %229 = load i8*, i8** %17, align 8
  %230 = load i32, i32* %13, align 4
  %231 = sext i32 %230 to i64
  %232 = sub i64 0, %231
  %233 = getelementptr inbounds i8, i8* %229, i64 %232
  %234 = load i32, i32* %13, align 4
  %235 = call i32 @EC_GROUP_set_seed(%struct.TYPE_19__* %228, i8* %233, i32 %234)
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %241, label %237

237:                                              ; preds = %227
  %238 = load i32, i32* @EC_F_EC_GROUP_NEW_FROM_DATA, align 4
  %239 = load i32, i32* @ERR_R_EC_LIB, align 4
  %240 = call i32 @ECerr(i32 %238, i32 %239)
  br label %243

241:                                              ; preds = %227
  br label %242

242:                                              ; preds = %241, %224
  store i32 1, i32* %12, align 4
  br label %243

243:                                              ; preds = %242, %237, %220, %209, %188, %176, %154, %140, %128, %110, %82, %36
  %244 = load i32, i32* %12, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %249, label %246

246:                                              ; preds = %243
  %247 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %248 = call i32 @EC_GROUP_free(%struct.TYPE_19__* %247)
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %3, align 8
  br label %249

249:                                              ; preds = %246, %243
  %250 = load i32*, i32** %4, align 8
  %251 = call i32 @EC_POINT_free(i32* %250)
  %252 = load i32*, i32** %5, align 8
  %253 = call i32 @BN_CTX_free(i32* %252)
  %254 = load i32*, i32** %6, align 8
  %255 = call i32 @BN_free(i32* %254)
  %256 = load i32*, i32** %7, align 8
  %257 = call i32 @BN_free(i32* %256)
  %258 = load i32*, i32** %8, align 8
  %259 = call i32 @BN_free(i32* %258)
  %260 = load i32*, i32** %11, align 8
  %261 = call i32 @BN_free(i32* %260)
  %262 = load i32*, i32** %9, align 8
  %263 = call i32 @BN_free(i32* %262)
  %264 = load i32*, i32** %10, align 8
  %265 = call i32 @BN_free(i32* %264)
  %266 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  store %struct.TYPE_19__* %266, %struct.TYPE_19__** %2, align 8
  br label %267

267:                                              ; preds = %249, %30
  %268 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  ret %struct.TYPE_19__* %268
}

declare dso_local %struct.TYPE_19__* @EC_GROUP_new(i32*) #1

declare dso_local i32* @BN_CTX_new(...) #1

declare dso_local i32 @ECerr(i32, i32) #1

declare dso_local i32* @BN_bin2bn(i8*, i32, i32*) #1

declare dso_local %struct.TYPE_19__* @EC_GROUP_new_curve_GFp(i32*, i32*, i32*, i32*) #1

declare dso_local %struct.TYPE_19__* @EC_GROUP_new_curve_GF2m(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @EC_GROUP_set_curve_name(%struct.TYPE_19__*, i32) #1

declare dso_local i32* @EC_POINT_new(%struct.TYPE_19__*) #1

declare dso_local i32 @EC_POINT_set_affine_coordinates(%struct.TYPE_19__*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_set_word(i32*, i32) #1

declare dso_local i32 @EC_GROUP_set_generator(%struct.TYPE_19__*, i32*, i32*, i32*) #1

declare dso_local i32 @EC_GROUP_set_seed(%struct.TYPE_19__*, i8*, i32) #1

declare dso_local i32 @EC_GROUP_free(%struct.TYPE_19__*) #1

declare dso_local i32 @EC_POINT_free(i32*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

declare dso_local i32 @BN_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
