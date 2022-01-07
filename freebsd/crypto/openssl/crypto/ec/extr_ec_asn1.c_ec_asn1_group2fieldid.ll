; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ec_asn1.c_ec_asn1_group2fieldid.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ec_asn1.c_ec_asn1_group2fieldid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__, i32* }
%struct.TYPE_8__ = type { %struct.TYPE_11__*, i32*, i32 }
%struct.TYPE_11__ = type { i64, %struct.TYPE_9__, i32* }
%struct.TYPE_9__ = type { i32*, %struct.TYPE_12__*, i32* }
%struct.TYPE_12__ = type { i64, i64, i64 }

@EC_F_EC_ASN1_GROUP2FIELDID = common dso_local global i32 0, align 4
@ERR_R_OBJ_LIB = common dso_local global i32 0, align 4
@NID_X9_62_prime_field = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@ERR_R_EC_LIB = common dso_local global i32 0, align 4
@ERR_R_ASN1_LIB = common dso_local global i32 0, align 4
@NID_X9_62_characteristic_two_field = common dso_local global i32 0, align 4
@NID_X9_62_tpBasis = common dso_local global i32 0, align 4
@NID_X9_62_ppBasis = common dso_local global i32 0, align 4
@EC_R_UNSUPPORTED_FIELD = common dso_local global i32 0, align 4
@EC_R_GF2M_NOT_SUPPORTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_10__*)* @ec_asn1_group2fieldid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ec_asn1_group2fieldid(i32* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  store i32 0, i32* %6, align 4
  store i32* null, i32** %8, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %19 = icmp eq %struct.TYPE_10__* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %17, %2
  store i32 0, i32* %3, align 4
  br label %232

21:                                               ; preds = %17
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @ASN1_OBJECT_free(i32* %24)
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @ASN1_TYPE_free(i32 %29)
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @EC_GROUP_method_of(i32* %31)
  %33 = call i32 @EC_METHOD_get_field_type(i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i8* @OBJ_nid2obj(i32 %34)
  %36 = bitcast i8* %35 to i32*
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 1
  store i32* %36, i32** %38, align 8
  %39 = icmp eq i32* %36, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %21
  %41 = load i32, i32* @EC_F_EC_ASN1_GROUP2FIELDID, align 4
  %42 = load i32, i32* @ERR_R_OBJ_LIB, align 4
  %43 = call i32 @ECerr(i32 %41, i32 %42)
  br label %228

44:                                               ; preds = %21
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @NID_X9_62_prime_field, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %80

48:                                               ; preds = %44
  %49 = call i32* (...) @BN_new()
  store i32* %49, i32** %8, align 8
  %50 = icmp eq i32* %49, null
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load i32, i32* @EC_F_EC_ASN1_GROUP2FIELDID, align 4
  %53 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %54 = call i32 @ECerr(i32 %52, i32 %53)
  br label %228

55:                                               ; preds = %48
  %56 = load i32*, i32** %4, align 8
  %57 = load i32*, i32** %8, align 8
  %58 = call i32 @EC_GROUP_get_curve(i32* %56, i32* %57, i32* null, i32* null, i32* null)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %55
  %61 = load i32, i32* @EC_F_EC_ASN1_GROUP2FIELDID, align 4
  %62 = load i32, i32* @ERR_R_EC_LIB, align 4
  %63 = call i32 @ECerr(i32 %61, i32 %62)
  br label %228

64:                                               ; preds = %55
  %65 = load i32*, i32** %8, align 8
  %66 = call i32* @BN_to_ASN1_INTEGER(i32* %65, i32* null)
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 1
  store i32* %66, i32** %69, align 8
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = icmp eq i32* %73, null
  br i1 %74, label %75, label %79

75:                                               ; preds = %64
  %76 = load i32, i32* @EC_F_EC_ASN1_GROUP2FIELDID, align 4
  %77 = load i32, i32* @ERR_R_ASN1_LIB, align 4
  %78 = call i32 @ECerr(i32 %76, i32 %77)
  br label %228

79:                                               ; preds = %64
  br label %227

80:                                               ; preds = %44
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* @NID_X9_62_characteristic_two_field, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %222

84:                                               ; preds = %80
  %85 = call %struct.TYPE_11__* (...) @X9_62_CHARACTERISTIC_TWO_new()
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  store %struct.TYPE_11__* %85, %struct.TYPE_11__** %88, align 8
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %91, align 8
  store %struct.TYPE_11__* %92, %struct.TYPE_11__** %10, align 8
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %94 = icmp eq %struct.TYPE_11__* %93, null
  br i1 %94, label %95, label %99

95:                                               ; preds = %84
  %96 = load i32, i32* @EC_F_EC_ASN1_GROUP2FIELDID, align 4
  %97 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %98 = call i32 @ECerr(i32 %96, i32 %97)
  br label %228

99:                                               ; preds = %84
  %100 = load i32*, i32** %4, align 8
  %101 = call i64 @EC_GROUP_get_degree(i32* %100)
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 0
  store i64 %101, i64* %103, align 8
  %104 = load i32*, i32** %4, align 8
  %105 = call i32 @EC_GROUP_get_basis_type(i32* %104)
  store i32 %105, i32* %9, align 4
  %106 = load i32, i32* %9, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %99
  %109 = load i32, i32* @EC_F_EC_ASN1_GROUP2FIELDID, align 4
  %110 = load i32, i32* @ERR_R_EC_LIB, align 4
  %111 = call i32 @ECerr(i32 %109, i32 %110)
  br label %228

112:                                              ; preds = %99
  %113 = load i32, i32* %9, align 4
  %114 = call i8* @OBJ_nid2obj(i32 %113)
  %115 = bitcast i8* %114 to i32*
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 2
  store i32* %115, i32** %117, align 8
  %118 = icmp eq i32* %115, null
  br i1 %118, label %119, label %123

119:                                              ; preds = %112
  %120 = load i32, i32* @EC_F_EC_ASN1_GROUP2FIELDID, align 4
  %121 = load i32, i32* @ERR_R_OBJ_LIB, align 4
  %122 = call i32 @ECerr(i32 %120, i32 %121)
  br label %228

123:                                              ; preds = %112
  %124 = load i32, i32* %9, align 4
  %125 = load i32, i32* @NID_X9_62_tpBasis, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %160

127:                                              ; preds = %123
  %128 = load i32*, i32** %4, align 8
  %129 = call i32 @EC_GROUP_get_trinomial_basis(i32* %128, i32* %11)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %132, label %131

131:                                              ; preds = %127
  br label %228

132:                                              ; preds = %127
  %133 = call i32* (...) @ASN1_INTEGER_new()
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 2
  store i32* %133, i32** %136, align 8
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 2
  %140 = load i32*, i32** %139, align 8
  %141 = icmp eq i32* %140, null
  br i1 %141, label %142, label %146

142:                                              ; preds = %132
  %143 = load i32, i32* @EC_F_EC_ASN1_GROUP2FIELDID, align 4
  %144 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %145 = call i32 @ECerr(i32 %143, i32 %144)
  br label %228

146:                                              ; preds = %132
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 2
  %150 = load i32*, i32** %149, align 8
  %151 = load i32, i32* %11, align 4
  %152 = zext i32 %151 to i64
  %153 = call i32 @ASN1_INTEGER_set(i32* %150, i64 %152)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %159, label %155

155:                                              ; preds = %146
  %156 = load i32, i32* @EC_F_EC_ASN1_GROUP2FIELDID, align 4
  %157 = load i32, i32* @ERR_R_ASN1_LIB, align 4
  %158 = call i32 @ECerr(i32 %156, i32 %157)
  br label %228

159:                                              ; preds = %146
  br label %221

160:                                              ; preds = %123
  %161 = load i32, i32* %9, align 4
  %162 = load i32, i32* @NID_X9_62_ppBasis, align 4
  %163 = icmp eq i32 %161, %162
  br i1 %163, label %164, label %205

164:                                              ; preds = %160
  %165 = load i32*, i32** %4, align 8
  %166 = call i32 @EC_GROUP_get_pentanomial_basis(i32* %165, i32* %12, i32* %13, i32* %14)
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %169, label %168

168:                                              ; preds = %164
  br label %228

169:                                              ; preds = %164
  %170 = call %struct.TYPE_12__* (...) @X9_62_PENTANOMIAL_new()
  %171 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i32 0, i32 1
  store %struct.TYPE_12__* %170, %struct.TYPE_12__** %173, align 8
  %174 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %175 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i32 0, i32 1
  %177 = load %struct.TYPE_12__*, %struct.TYPE_12__** %176, align 8
  %178 = icmp eq %struct.TYPE_12__* %177, null
  br i1 %178, label %179, label %183

179:                                              ; preds = %169
  %180 = load i32, i32* @EC_F_EC_ASN1_GROUP2FIELDID, align 4
  %181 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %182 = call i32 @ECerr(i32 %180, i32 %181)
  br label %228

183:                                              ; preds = %169
  %184 = load i32, i32* %12, align 4
  %185 = zext i32 %184 to i64
  %186 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %187 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %187, i32 0, i32 1
  %189 = load %struct.TYPE_12__*, %struct.TYPE_12__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %189, i32 0, i32 0
  store i64 %185, i64* %190, align 8
  %191 = load i32, i32* %13, align 4
  %192 = zext i32 %191 to i64
  %193 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %194 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %194, i32 0, i32 1
  %196 = load %struct.TYPE_12__*, %struct.TYPE_12__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %196, i32 0, i32 1
  store i64 %192, i64* %197, align 8
  %198 = load i32, i32* %14, align 4
  %199 = zext i32 %198 to i64
  %200 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %201 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %200, i32 0, i32 1
  %202 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %201, i32 0, i32 1
  %203 = load %struct.TYPE_12__*, %struct.TYPE_12__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %203, i32 0, i32 2
  store i64 %199, i64* %204, align 8
  br label %220

205:                                              ; preds = %160
  %206 = call i32* (...) @ASN1_NULL_new()
  %207 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %208 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %207, i32 0, i32 1
  %209 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %208, i32 0, i32 0
  store i32* %206, i32** %209, align 8
  %210 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %211 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %210, i32 0, i32 1
  %212 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %211, i32 0, i32 0
  %213 = load i32*, i32** %212, align 8
  %214 = icmp eq i32* %213, null
  br i1 %214, label %215, label %219

215:                                              ; preds = %205
  %216 = load i32, i32* @EC_F_EC_ASN1_GROUP2FIELDID, align 4
  %217 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %218 = call i32 @ECerr(i32 %216, i32 %217)
  br label %228

219:                                              ; preds = %205
  br label %220

220:                                              ; preds = %219, %183
  br label %221

221:                                              ; preds = %220, %159
  br label %226

222:                                              ; preds = %80
  %223 = load i32, i32* @EC_F_EC_ASN1_GROUP2FIELDID, align 4
  %224 = load i32, i32* @EC_R_UNSUPPORTED_FIELD, align 4
  %225 = call i32 @ECerr(i32 %223, i32 %224)
  br label %228

226:                                              ; preds = %221
  br label %227

227:                                              ; preds = %226, %79
  store i32 1, i32* %6, align 4
  br label %228

228:                                              ; preds = %227, %222, %215, %179, %168, %155, %142, %131, %119, %108, %95, %75, %60, %51, %40
  %229 = load i32*, i32** %8, align 8
  %230 = call i32 @BN_free(i32* %229)
  %231 = load i32, i32* %6, align 4
  store i32 %231, i32* %3, align 4
  br label %232

232:                                              ; preds = %228, %20
  %233 = load i32, i32* %3, align 4
  ret i32 %233
}

declare dso_local i32 @ASN1_OBJECT_free(i32*) #1

declare dso_local i32 @ASN1_TYPE_free(i32) #1

declare dso_local i32 @EC_METHOD_get_field_type(i32) #1

declare dso_local i32 @EC_GROUP_method_of(i32*) #1

declare dso_local i8* @OBJ_nid2obj(i32) #1

declare dso_local i32 @ECerr(i32, i32) #1

declare dso_local i32* @BN_new(...) #1

declare dso_local i32 @EC_GROUP_get_curve(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32* @BN_to_ASN1_INTEGER(i32*, i32*) #1

declare dso_local %struct.TYPE_11__* @X9_62_CHARACTERISTIC_TWO_new(...) #1

declare dso_local i64 @EC_GROUP_get_degree(i32*) #1

declare dso_local i32 @EC_GROUP_get_basis_type(i32*) #1

declare dso_local i32 @EC_GROUP_get_trinomial_basis(i32*, i32*) #1

declare dso_local i32* @ASN1_INTEGER_new(...) #1

declare dso_local i32 @ASN1_INTEGER_set(i32*, i64) #1

declare dso_local i32 @EC_GROUP_get_pentanomial_basis(i32*, i32*, i32*, i32*) #1

declare dso_local %struct.TYPE_12__* @X9_62_PENTANOMIAL_new(...) #1

declare dso_local i32* @ASN1_NULL_new(...) #1

declare dso_local i32 @BN_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
