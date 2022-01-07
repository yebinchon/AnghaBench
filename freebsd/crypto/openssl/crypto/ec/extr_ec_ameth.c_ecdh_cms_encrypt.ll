; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ec_ameth.c_ecdh_cms_encrypt.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ec_ameth.c_ecdh_cms_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32* }
%struct.TYPE_20__ = type { i32*, i32* }
%struct.TYPE_22__ = type { i32 }

@NID_undef = common dso_local global i64 0, align 8
@ASN1_STRING_FLAG_BITS_LEFT = common dso_local global i32 0, align 4
@NID_X9_62_id_ecPublicKey = common dso_local global i32 0, align 4
@V_ASN1_UNDEF = common dso_local global i32 0, align 4
@NID_dh_std_kdf = common dso_local global i32 0, align 4
@NID_dh_cofactor_kdf = common dso_local global i32 0, align 4
@EVP_PKEY_ECDH_KDF_NONE = common dso_local global i32 0, align 4
@EVP_PKEY_ECDH_KDF_X9_63 = common dso_local global i32 0, align 4
@V_ASN1_SEQUENCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @ecdh_cms_encrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecdh_cms_encrypt(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_22__*, align 8
  %12 = alloca %struct.TYPE_22__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %9, align 8
  store i8* null, i8** %14, align 8
  store i32 0, i32* %16, align 4
  %24 = load i32*, i32** %3, align 8
  %25 = call i32* @CMS_RecipientInfo_get0_pkey_ctx(i32* %24)
  store i32* %25, i32** %4, align 8
  %26 = load i32*, i32** %4, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %252

29:                                               ; preds = %1
  %30 = load i32*, i32** %4, align 8
  %31 = call %struct.TYPE_21__* @EVP_PKEY_CTX_get0_pkey(i32* %30)
  store %struct.TYPE_21__* %31, %struct.TYPE_21__** %5, align 8
  %32 = load i32*, i32** %3, align 8
  %33 = call i32 @CMS_RecipientInfo_kari_get0_orig_id(i32* %32, %struct.TYPE_20__** %8, %struct.TYPE_22__** %11, i32* null, i32* null, i32* null)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %29
  br label %246

36:                                               ; preds = %29
  %37 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %38 = call i32 @X509_ALGOR_get0(i32** %10, i32* null, i32* null, %struct.TYPE_20__* %37)
  %39 = load i32*, i32** %10, align 8
  %40 = load i64, i64* @NID_undef, align 8
  %41 = trunc i64 %40 to i32
  %42 = call i32* @OBJ_nid2obj(i32 %41)
  %43 = icmp eq i32* %39, %42
  br i1 %43, label %44, label %89

44:                                               ; preds = %36
  %45 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  store i32* %48, i32** %22, align 8
  %49 = load i32*, i32** %22, align 8
  %50 = call i32 @i2o_ECPublicKey(i32* %49, i8** null)
  store i32 %50, i32* %15, align 4
  %51 = load i32, i32* %15, align 4
  %52 = icmp sle i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %44
  br label %246

54:                                               ; preds = %44
  %55 = load i32, i32* %15, align 4
  %56 = call i8* @OPENSSL_malloc(i32 %55)
  store i8* %56, i8** %14, align 8
  %57 = load i8*, i8** %14, align 8
  %58 = icmp eq i8* %57, null
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  br label %246

60:                                               ; preds = %54
  %61 = load i8*, i8** %14, align 8
  store i8* %61, i8** %23, align 8
  %62 = load i32*, i32** %22, align 8
  %63 = call i32 @i2o_ECPublicKey(i32* %62, i8** %23)
  store i32 %63, i32* %15, align 4
  %64 = load i32, i32* %15, align 4
  %65 = icmp sle i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  br label %246

67:                                               ; preds = %60
  %68 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %69 = load i8*, i8** %14, align 8
  %70 = load i32, i32* %15, align 4
  %71 = call i32 @ASN1_STRING_set0(%struct.TYPE_22__* %68, i8* %69, i32 %70)
  %72 = load i32, i32* @ASN1_STRING_FLAG_BITS_LEFT, align 4
  %73 = or i32 %72, 7
  %74 = xor i32 %73, -1
  %75 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %76 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %77, %74
  store i32 %78, i32* %76, align 4
  %79 = load i32, i32* @ASN1_STRING_FLAG_BITS_LEFT, align 4
  %80 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %81 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %82, %79
  store i32 %83, i32* %81, align 4
  store i8* null, i8** %14, align 8
  %84 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %85 = load i32, i32* @NID_X9_62_id_ecPublicKey, align 4
  %86 = call i32* @OBJ_nid2obj(i32 %85)
  %87 = load i32, i32* @V_ASN1_UNDEF, align 4
  %88 = call i32 @X509_ALGOR_set0(%struct.TYPE_20__* %84, i32* %86, i32 %87, %struct.TYPE_22__* null)
  br label %89

89:                                               ; preds = %67, %36
  %90 = load i32*, i32** %4, align 8
  %91 = call i32 @EVP_PKEY_CTX_get_ecdh_kdf_type(i32* %90)
  store i32 %91, i32* %18, align 4
  %92 = load i32, i32* %18, align 4
  %93 = icmp sle i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %89
  br label %246

95:                                               ; preds = %89
  %96 = load i32*, i32** %4, align 8
  %97 = call i32 @EVP_PKEY_CTX_get_ecdh_kdf_md(i32* %96, i32** %21)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %95
  br label %246

100:                                              ; preds = %95
  %101 = load i32*, i32** %4, align 8
  %102 = call i32 @EVP_PKEY_CTX_get_ecdh_cofactor_mode(i32* %101)
  store i32 %102, i32* %17, align 4
  %103 = load i32, i32* %17, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %100
  br label %246

106:                                              ; preds = %100
  %107 = load i32, i32* %17, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %106
  %110 = load i32, i32* @NID_dh_std_kdf, align 4
  store i32 %110, i32* %17, align 4
  br label %117

111:                                              ; preds = %106
  %112 = load i32, i32* %17, align 4
  %113 = icmp eq i32 %112, 1
  br i1 %113, label %114, label %116

114:                                              ; preds = %111
  %115 = load i32, i32* @NID_dh_cofactor_kdf, align 4
  store i32 %115, i32* %17, align 4
  br label %116

116:                                              ; preds = %114, %111
  br label %117

117:                                              ; preds = %116, %109
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %18, align 4
  %120 = load i32, i32* @EVP_PKEY_ECDH_KDF_NONE, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %130

122:                                              ; preds = %118
  %123 = load i32, i32* @EVP_PKEY_ECDH_KDF_X9_63, align 4
  store i32 %123, i32* %18, align 4
  %124 = load i32*, i32** %4, align 8
  %125 = load i32, i32* %18, align 4
  %126 = call i64 @EVP_PKEY_CTX_set_ecdh_kdf_type(i32* %124, i32 %125)
  %127 = icmp sle i64 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %122
  br label %246

129:                                              ; preds = %122
  br label %131

130:                                              ; preds = %118
  br label %246

131:                                              ; preds = %129
  %132 = load i32*, i32** %21, align 8
  %133 = icmp eq i32* %132, null
  br i1 %133, label %134, label %142

134:                                              ; preds = %131
  %135 = call i32* (...) @EVP_sha1()
  store i32* %135, i32** %21, align 8
  %136 = load i32*, i32** %4, align 8
  %137 = load i32*, i32** %21, align 8
  %138 = call i64 @EVP_PKEY_CTX_set_ecdh_kdf_md(i32* %136, i32* %137)
  %139 = icmp sle i64 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %134
  br label %246

141:                                              ; preds = %134
  br label %142

142:                                              ; preds = %141, %131
  %143 = load i32*, i32** %3, align 8
  %144 = call i32 @CMS_RecipientInfo_kari_get0_alg(i32* %143, %struct.TYPE_20__** %8, i32** %13)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %147, label %146

146:                                              ; preds = %142
  br label %246

147:                                              ; preds = %142
  %148 = load i32*, i32** %21, align 8
  %149 = call i32 @EVP_MD_type(i32* %148)
  %150 = load i32, i32* %17, align 4
  %151 = call i32 @OBJ_find_sigid_by_algs(i32* %19, i32 %149, i32 %150)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %154, label %153

153:                                              ; preds = %147
  br label %246

154:                                              ; preds = %147
  %155 = load i32*, i32** %3, align 8
  %156 = call i32* @CMS_RecipientInfo_kari_get0_ctx(i32* %155)
  store i32* %156, i32** %6, align 8
  %157 = load i32*, i32** %6, align 8
  %158 = call i32 @EVP_CIPHER_CTX_type(i32* %157)
  store i32 %158, i32* %20, align 4
  %159 = load i32*, i32** %6, align 8
  %160 = call i32 @EVP_CIPHER_CTX_key_length(i32* %159)
  store i32 %160, i32* %7, align 4
  %161 = call %struct.TYPE_20__* (...) @X509_ALGOR_new()
  store %struct.TYPE_20__* %161, %struct.TYPE_20__** %9, align 8
  %162 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %163 = icmp eq %struct.TYPE_20__* %162, null
  br i1 %163, label %164, label %165

164:                                              ; preds = %154
  br label %246

165:                                              ; preds = %154
  %166 = load i32, i32* %20, align 4
  %167 = call i32* @OBJ_nid2obj(i32 %166)
  %168 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %169 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %168, i32 0, i32 1
  store i32* %167, i32** %169, align 8
  %170 = call i32* (...) @ASN1_TYPE_new()
  %171 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %172 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %171, i32 0, i32 0
  store i32* %170, i32** %172, align 8
  %173 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %174 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %173, i32 0, i32 0
  %175 = load i32*, i32** %174, align 8
  %176 = icmp eq i32* %175, null
  br i1 %176, label %177, label %178

177:                                              ; preds = %165
  br label %246

178:                                              ; preds = %165
  %179 = load i32*, i32** %6, align 8
  %180 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %181 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %180, i32 0, i32 0
  %182 = load i32*, i32** %181, align 8
  %183 = call i64 @EVP_CIPHER_param_to_asn1(i32* %179, i32* %182)
  %184 = icmp sle i64 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %178
  br label %246

186:                                              ; preds = %178
  %187 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %188 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %187, i32 0, i32 0
  %189 = load i32*, i32** %188, align 8
  %190 = call i64 @ASN1_TYPE_get(i32* %189)
  %191 = load i64, i64* @NID_undef, align 8
  %192 = icmp eq i64 %190, %191
  br i1 %192, label %193, label %200

193:                                              ; preds = %186
  %194 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %195 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %194, i32 0, i32 0
  %196 = load i32*, i32** %195, align 8
  %197 = call i32 @ASN1_TYPE_free(i32* %196)
  %198 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %199 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %198, i32 0, i32 0
  store i32* null, i32** %199, align 8
  br label %200

200:                                              ; preds = %193, %186
  %201 = load i32*, i32** %4, align 8
  %202 = load i32, i32* %7, align 4
  %203 = call i64 @EVP_PKEY_CTX_set_ecdh_kdf_outlen(i32* %201, i32 %202)
  %204 = icmp sle i64 %203, 0
  br i1 %204, label %205, label %206

205:                                              ; preds = %200
  br label %246

206:                                              ; preds = %200
  %207 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %208 = load i32*, i32** %13, align 8
  %209 = load i32, i32* %7, align 4
  %210 = call i32 @CMS_SharedInfo_encode(i8** %14, %struct.TYPE_20__* %207, i32* %208, i32 %209)
  store i32 %210, i32* %15, align 4
  %211 = load i32, i32* %15, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %214, label %213

213:                                              ; preds = %206
  br label %246

214:                                              ; preds = %206
  %215 = load i32*, i32** %4, align 8
  %216 = load i8*, i8** %14, align 8
  %217 = load i32, i32* %15, align 4
  %218 = call i64 @EVP_PKEY_CTX_set0_ecdh_kdf_ukm(i32* %215, i8* %216, i32 %217)
  %219 = icmp sle i64 %218, 0
  br i1 %219, label %220, label %221

220:                                              ; preds = %214
  br label %246

221:                                              ; preds = %214
  store i8* null, i8** %14, align 8
  %222 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %223 = call i32 @i2d_X509_ALGOR(%struct.TYPE_20__* %222, i8** %14)
  store i32 %223, i32* %15, align 4
  %224 = load i8*, i8** %14, align 8
  %225 = icmp ne i8* %224, null
  br i1 %225, label %226, label %229

226:                                              ; preds = %221
  %227 = load i32, i32* %15, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %230, label %229

229:                                              ; preds = %226, %221
  br label %246

230:                                              ; preds = %226
  %231 = call %struct.TYPE_22__* (...) @ASN1_STRING_new()
  store %struct.TYPE_22__* %231, %struct.TYPE_22__** %12, align 8
  %232 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %233 = icmp eq %struct.TYPE_22__* %232, null
  br i1 %233, label %234, label %235

234:                                              ; preds = %230
  br label %246

235:                                              ; preds = %230
  %236 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %237 = load i8*, i8** %14, align 8
  %238 = load i32, i32* %15, align 4
  %239 = call i32 @ASN1_STRING_set0(%struct.TYPE_22__* %236, i8* %237, i32 %238)
  store i8* null, i8** %14, align 8
  %240 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %241 = load i32, i32* %19, align 4
  %242 = call i32* @OBJ_nid2obj(i32 %241)
  %243 = load i32, i32* @V_ASN1_SEQUENCE, align 4
  %244 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %245 = call i32 @X509_ALGOR_set0(%struct.TYPE_20__* %240, i32* %242, i32 %243, %struct.TYPE_22__* %244)
  store i32 1, i32* %16, align 4
  br label %246

246:                                              ; preds = %235, %234, %229, %220, %213, %205, %185, %177, %164, %153, %146, %140, %130, %128, %105, %99, %94, %66, %59, %53, %35
  %247 = load i8*, i8** %14, align 8
  %248 = call i32 @OPENSSL_free(i8* %247)
  %249 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %250 = call i32 @X509_ALGOR_free(%struct.TYPE_20__* %249)
  %251 = load i32, i32* %16, align 4
  store i32 %251, i32* %2, align 4
  br label %252

252:                                              ; preds = %246, %28
  %253 = load i32, i32* %2, align 4
  ret i32 %253
}

declare dso_local i32* @CMS_RecipientInfo_get0_pkey_ctx(i32*) #1

declare dso_local %struct.TYPE_21__* @EVP_PKEY_CTX_get0_pkey(i32*) #1

declare dso_local i32 @CMS_RecipientInfo_kari_get0_orig_id(i32*, %struct.TYPE_20__**, %struct.TYPE_22__**, i32*, i32*, i32*) #1

declare dso_local i32 @X509_ALGOR_get0(i32**, i32*, i32*, %struct.TYPE_20__*) #1

declare dso_local i32* @OBJ_nid2obj(i32) #1

declare dso_local i32 @i2o_ECPublicKey(i32*, i8**) #1

declare dso_local i8* @OPENSSL_malloc(i32) #1

declare dso_local i32 @ASN1_STRING_set0(%struct.TYPE_22__*, i8*, i32) #1

declare dso_local i32 @X509_ALGOR_set0(%struct.TYPE_20__*, i32*, i32, %struct.TYPE_22__*) #1

declare dso_local i32 @EVP_PKEY_CTX_get_ecdh_kdf_type(i32*) #1

declare dso_local i32 @EVP_PKEY_CTX_get_ecdh_kdf_md(i32*, i32**) #1

declare dso_local i32 @EVP_PKEY_CTX_get_ecdh_cofactor_mode(i32*) #1

declare dso_local i64 @EVP_PKEY_CTX_set_ecdh_kdf_type(i32*, i32) #1

declare dso_local i32* @EVP_sha1(...) #1

declare dso_local i64 @EVP_PKEY_CTX_set_ecdh_kdf_md(i32*, i32*) #1

declare dso_local i32 @CMS_RecipientInfo_kari_get0_alg(i32*, %struct.TYPE_20__**, i32**) #1

declare dso_local i32 @OBJ_find_sigid_by_algs(i32*, i32, i32) #1

declare dso_local i32 @EVP_MD_type(i32*) #1

declare dso_local i32* @CMS_RecipientInfo_kari_get0_ctx(i32*) #1

declare dso_local i32 @EVP_CIPHER_CTX_type(i32*) #1

declare dso_local i32 @EVP_CIPHER_CTX_key_length(i32*) #1

declare dso_local %struct.TYPE_20__* @X509_ALGOR_new(...) #1

declare dso_local i32* @ASN1_TYPE_new(...) #1

declare dso_local i64 @EVP_CIPHER_param_to_asn1(i32*, i32*) #1

declare dso_local i64 @ASN1_TYPE_get(i32*) #1

declare dso_local i32 @ASN1_TYPE_free(i32*) #1

declare dso_local i64 @EVP_PKEY_CTX_set_ecdh_kdf_outlen(i32*, i32) #1

declare dso_local i32 @CMS_SharedInfo_encode(i8**, %struct.TYPE_20__*, i32*, i32) #1

declare dso_local i64 @EVP_PKEY_CTX_set0_ecdh_kdf_ukm(i32*, i8*, i32) #1

declare dso_local i32 @i2d_X509_ALGOR(%struct.TYPE_20__*, i8**) #1

declare dso_local %struct.TYPE_22__* @ASN1_STRING_new(...) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i32 @X509_ALGOR_free(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
