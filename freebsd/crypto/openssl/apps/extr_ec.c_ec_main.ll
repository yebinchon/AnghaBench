; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_ec.c_ec_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_ec.c_ec_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@POINT_CONVERSION_UNCOMPRESSED = common dso_local global i32 0, align 4
@OPENSSL_EC_NAMED_CURVE = common dso_local global i32 0, align 4
@FORMAT_PEM = common dso_local global i32 0, align 4
@ec_options = common dso_local global i32 0, align 4
@bio_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"%s: Use -help for summary.\0A\00", align 1
@OPT_FMT_ANY = common dso_local global i32 0, align 4
@OPT_FMT_PEMDER = common dso_local global i32 0, align 4
@conv_forms = common dso_local global i32 0, align 4
@param_enc = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Error getting passwords\0A\00", align 1
@FORMAT_ENGINE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"read EC key\0A\00", align 1
@FORMAT_ASN1 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"Public Key\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"Private Key\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"unable to load Key\0A\00", align 1
@EC_PKEY_NO_PUBKEY = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [15 x i8] c"EC Key valid.\0A\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"EC Key Invalid!\0A\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"writing EC key\0A\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"unable to write private key\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ec_main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  store i32* null, i32** %10, align 8
  %36 = load i32, i32* @POINT_CONVERSION_UNCOMPRESSED, align 4
  store i32 %36, i32* %11, align 4
  store i8* null, i8** %12, align 8
  store i8* null, i8** %13, align 8
  store i8* null, i8** %15, align 8
  store i8* null, i8** %16, align 8
  store i8* null, i8** %17, align 8
  store i8* null, i8** %18, align 8
  %37 = load i32, i32* @OPENSSL_EC_NAMED_CURVE, align 4
  store i32 %37, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  %38 = load i32, i32* @FORMAT_PEM, align 4
  store i32 %38, i32* %23, align 4
  %39 = load i32, i32* @FORMAT_PEM, align 4
  store i32 %39, i32* %24, align 4
  store i32 0, i32* %25, align 4
  store i32 0, i32* %26, align 4
  store i32 0, i32* %27, align 4
  store i32 0, i32* %28, align 4
  store i32 0, i32* %29, align 4
  store i32 1, i32* %31, align 4
  store i32 0, i32* %32, align 4
  store i32 0, i32* %33, align 4
  store i32 0, i32* %34, align 4
  %40 = load i32, i32* %3, align 4
  %41 = load i8**, i8*** %4, align 8
  %42 = load i32, i32* @ec_options, align 4
  %43 = call i8* @opt_init(i32 %40, i8** %41, i32 %42)
  store i8* %43, i8** %14, align 8
  br label %44

44:                                               ; preds = %111, %2
  %45 = call i32 (...) @opt_next()
  store i32 %45, i32* %19, align 4
  %46 = icmp ne i32 %45, 143
  br i1 %46, label %47, label %112

47:                                               ; preds = %44
  %48 = load i32, i32* %19, align 4
  switch i32 %48, label %111 [
    i32 143, label %49
    i32 142, label %49
    i32 141, label %54
    i32 139, label %57
    i32 140, label %64
    i32 135, label %66
    i32 136, label %73
    i32 138, label %75
    i32 128, label %76
    i32 133, label %77
    i32 130, label %78
    i32 129, label %79
    i32 132, label %80
    i32 131, label %82
    i32 144, label %84
    i32 146, label %87
    i32 145, label %93
    i32 134, label %101
    i32 137, label %109
    i32 147, label %110
  ]

49:                                               ; preds = %47, %47
  br label %50

50:                                               ; preds = %116, %106, %98, %91, %71, %62, %49
  %51 = load i32, i32* @bio_err, align 4
  %52 = load i8*, i8** %14, align 8
  %53 = call i32 (i32, i8*, ...) @BIO_printf(i32 %51, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %52)
  br label %362

54:                                               ; preds = %47
  %55 = load i32, i32* @ec_options, align 4
  %56 = call i32 @opt_help(i32 %55)
  store i32 0, i32* %31, align 4
  br label %362

57:                                               ; preds = %47
  %58 = call i8* (...) @opt_arg()
  %59 = load i32, i32* @OPT_FMT_ANY, align 4
  %60 = call i32 @opt_format(i8* %58, i32 %59, i32* %23)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %57
  br label %50

63:                                               ; preds = %57
  br label %111

64:                                               ; preds = %47
  %65 = call i8* (...) @opt_arg()
  store i8* %65, i8** %12, align 8
  br label %111

66:                                               ; preds = %47
  %67 = call i8* (...) @opt_arg()
  %68 = load i32, i32* @OPT_FMT_PEMDER, align 4
  %69 = call i32 @opt_format(i8* %67, i32 %68, i32* %24)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %66
  br label %50

72:                                               ; preds = %66
  br label %111

73:                                               ; preds = %47
  %74 = call i8* (...) @opt_arg()
  store i8* %74, i8** %13, align 8
  br label %111

75:                                               ; preds = %47
  store i32 1, i32* %26, align 4
  br label %111

76:                                               ; preds = %47
  store i32 1, i32* %25, align 4
  br label %111

77:                                               ; preds = %47
  store i32 1, i32* %29, align 4
  br label %111

78:                                               ; preds = %47
  store i32 1, i32* %27, align 4
  br label %111

79:                                               ; preds = %47
  store i32 1, i32* %28, align 4
  br label %111

80:                                               ; preds = %47
  %81 = call i8* (...) @opt_arg()
  store i8* %81, i8** %17, align 8
  br label %111

82:                                               ; preds = %47
  %83 = call i8* (...) @opt_arg()
  store i8* %83, i8** %18, align 8
  br label %111

84:                                               ; preds = %47
  %85 = call i8* (...) @opt_arg()
  %86 = call i32* @setup_engine(i8* %85, i32 0)
  store i32* %86, i32** %7, align 8
  br label %111

87:                                               ; preds = %47
  %88 = call i32 (...) @opt_unknown()
  %89 = call i32 @opt_cipher(i32 %88, i32** %10)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %87
  br label %50

92:                                               ; preds = %87
  br label %111

93:                                               ; preds = %47
  %94 = call i8* (...) @opt_arg()
  %95 = load i32, i32* @conv_forms, align 4
  %96 = call i32 @opt_pair(i8* %94, i32 %95, i32* %30)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %93
  br label %50

99:                                               ; preds = %93
  store i32 1, i32* %21, align 4
  %100 = load i32, i32* %30, align 4
  store i32 %100, i32* %11, align 4
  br label %111

101:                                              ; preds = %47
  %102 = call i8* (...) @opt_arg()
  %103 = load i32, i32* @param_enc, align 4
  %104 = call i32 @opt_pair(i8* %102, i32 %103, i32* %30)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %101
  br label %50

107:                                              ; preds = %101
  store i32 1, i32* %22, align 4
  %108 = load i32, i32* %30, align 4
  store i32 %108, i32* %20, align 4
  br label %111

109:                                              ; preds = %47
  store i32 1, i32* %33, align 4
  br label %111

110:                                              ; preds = %47
  store i32 1, i32* %34, align 4
  br label %111

111:                                              ; preds = %47, %110, %109, %107, %99, %92, %84, %82, %80, %79, %78, %77, %76, %75, %73, %72, %64, %63
  br label %44

112:                                              ; preds = %44
  %113 = call i32 (...) @opt_num_rest()
  store i32 %113, i32* %3, align 4
  %114 = load i32, i32* %3, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %112
  br label %50

117:                                              ; preds = %112
  %118 = load i32, i32* %29, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %126, label %120

120:                                              ; preds = %117
  %121 = load i32, i32* %27, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %126, label %123

123:                                              ; preds = %120
  %124 = load i32, i32* %28, align 4
  %125 = icmp ne i32 %124, 0
  br label %126

126:                                              ; preds = %123, %120, %117
  %127 = phi i1 [ true, %120 ], [ true, %117 ], [ %125, %123 ]
  %128 = zext i1 %127 to i64
  %129 = select i1 %127, i32 0, i32 1
  store i32 %129, i32* %32, align 4
  %130 = load i32, i32* %25, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %126
  %133 = load i32, i32* %27, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %136, label %135

135:                                              ; preds = %132
  store i32 1, i32* %32, align 4
  br label %136

136:                                              ; preds = %135, %132, %126
  %137 = load i8*, i8** %17, align 8
  %138 = load i8*, i8** %18, align 8
  %139 = call i32 @app_passwd(i8* %137, i8* %138, i8** %15, i8** %16)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %144, label %141

141:                                              ; preds = %136
  %142 = load i32, i32* @bio_err, align 4
  %143 = call i32 (i32, i8*, ...) @BIO_printf(i32 %142, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %362

144:                                              ; preds = %136
  %145 = load i32, i32* %23, align 4
  %146 = load i32, i32* @FORMAT_ENGINE, align 4
  %147 = icmp ne i32 %145, %146
  br i1 %147, label %148, label %156

148:                                              ; preds = %144
  %149 = load i8*, i8** %12, align 8
  %150 = load i32, i32* %23, align 4
  %151 = call i32* @bio_open_default(i8* %149, i8 signext 114, i32 %150)
  store i32* %151, i32** %5, align 8
  %152 = load i32*, i32** %5, align 8
  %153 = icmp eq i32* %152, null
  br i1 %153, label %154, label %155

154:                                              ; preds = %148
  br label %362

155:                                              ; preds = %148
  br label %156

156:                                              ; preds = %155, %144
  %157 = load i32, i32* @bio_err, align 4
  %158 = call i32 (i32, i8*, ...) @BIO_printf(i32 %157, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %159 = load i32, i32* %23, align 4
  %160 = load i32, i32* @FORMAT_ASN1, align 4
  %161 = icmp eq i32 %159, %160
  br i1 %161, label %162, label %172

162:                                              ; preds = %156
  %163 = load i32, i32* %27, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %162
  %166 = load i32*, i32** %5, align 8
  %167 = call i32* @d2i_EC_PUBKEY_bio(i32* %166, i32* null)
  store i32* %167, i32** %8, align 8
  br label %171

168:                                              ; preds = %162
  %169 = load i32*, i32** %5, align 8
  %170 = call i32* @d2i_ECPrivateKey_bio(i32* %169, i32* null)
  store i32* %170, i32** %8, align 8
  br label %171

171:                                              ; preds = %168, %165
  br label %212

172:                                              ; preds = %156
  %173 = load i32, i32* %23, align 4
  %174 = load i32, i32* @FORMAT_ENGINE, align 4
  %175 = icmp eq i32 %173, %174
  br i1 %175, label %176, label %200

176:                                              ; preds = %172
  %177 = load i32, i32* %27, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %185

179:                                              ; preds = %176
  %180 = load i8*, i8** %12, align 8
  %181 = load i32, i32* %23, align 4
  %182 = load i8*, i8** %15, align 8
  %183 = load i32*, i32** %7, align 8
  %184 = call i32* @load_pubkey(i8* %180, i32 %181, i32 1, i8* %182, i32* %183, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  store i32* %184, i32** %35, align 8
  br label %191

185:                                              ; preds = %176
  %186 = load i8*, i8** %12, align 8
  %187 = load i32, i32* %23, align 4
  %188 = load i8*, i8** %15, align 8
  %189 = load i32*, i32** %7, align 8
  %190 = call i32* @load_key(i8* %186, i32 %187, i32 1, i8* %188, i32* %189, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  store i32* %190, i32** %35, align 8
  br label %191

191:                                              ; preds = %185, %179
  %192 = load i32*, i32** %35, align 8
  %193 = icmp ne i32* %192, null
  br i1 %193, label %194, label %199

194:                                              ; preds = %191
  %195 = load i32*, i32** %35, align 8
  %196 = call i32* @EVP_PKEY_get1_EC_KEY(i32* %195)
  store i32* %196, i32** %8, align 8
  %197 = load i32*, i32** %35, align 8
  %198 = call i32 @EVP_PKEY_free(i32* %197)
  br label %199

199:                                              ; preds = %194, %191
  br label %211

200:                                              ; preds = %172
  %201 = load i32, i32* %27, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %206

203:                                              ; preds = %200
  %204 = load i32*, i32** %5, align 8
  %205 = call i32* @PEM_read_bio_EC_PUBKEY(i32* %204, i32* null, i32* null, i32* null)
  store i32* %205, i32** %8, align 8
  br label %210

206:                                              ; preds = %200
  %207 = load i32*, i32** %5, align 8
  %208 = load i8*, i8** %15, align 8
  %209 = call i32* @PEM_read_bio_ECPrivateKey(i32* %207, i32* null, i32* null, i8* %208)
  store i32* %209, i32** %8, align 8
  br label %210

210:                                              ; preds = %206, %203
  br label %211

211:                                              ; preds = %210, %199
  br label %212

212:                                              ; preds = %211, %171
  %213 = load i32*, i32** %8, align 8
  %214 = icmp eq i32* %213, null
  br i1 %214, label %215, label %220

215:                                              ; preds = %212
  %216 = load i32, i32* @bio_err, align 4
  %217 = call i32 (i32, i8*, ...) @BIO_printf(i32 %216, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %218 = load i32, i32* @bio_err, align 4
  %219 = call i32 @ERR_print_errors(i32 %218)
  br label %362

220:                                              ; preds = %212
  %221 = load i8*, i8** %13, align 8
  %222 = load i32, i32* %24, align 4
  %223 = load i32, i32* %32, align 4
  %224 = call i32* @bio_open_owner(i8* %221, i32 %222, i32 %223)
  store i32* %224, i32** %6, align 8
  %225 = load i32*, i32** %6, align 8
  %226 = icmp eq i32* %225, null
  br i1 %226, label %227, label %228

227:                                              ; preds = %220
  br label %362

228:                                              ; preds = %220
  %229 = load i32*, i32** %8, align 8
  %230 = call i32* @EC_KEY_get0_group(i32* %229)
  store i32* %230, i32** %9, align 8
  %231 = load i32, i32* %21, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %237

233:                                              ; preds = %228
  %234 = load i32*, i32** %8, align 8
  %235 = load i32, i32* %11, align 4
  %236 = call i32 @EC_KEY_set_conv_form(i32* %234, i32 %235)
  br label %237

237:                                              ; preds = %233, %228
  %238 = load i32, i32* %22, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %244

240:                                              ; preds = %237
  %241 = load i32*, i32** %8, align 8
  %242 = load i32, i32* %20, align 4
  %243 = call i32 @EC_KEY_set_asn1_flag(i32* %241, i32 %242)
  br label %244

244:                                              ; preds = %240, %237
  %245 = load i32, i32* %33, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %251

247:                                              ; preds = %244
  %248 = load i32*, i32** %8, align 8
  %249 = load i32, i32* @EC_PKEY_NO_PUBKEY, align 4
  %250 = call i32 @EC_KEY_set_enc_flags(i32* %248, i32 %249)
  br label %251

251:                                              ; preds = %247, %244
  %252 = load i32, i32* %25, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %274

254:                                              ; preds = %251
  %255 = load i32, i32* %27, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %260, label %257

257:                                              ; preds = %254
  %258 = load i32, i32* %32, align 4
  %259 = icmp ne i32 %258, 0
  br label %260

260:                                              ; preds = %257, %254
  %261 = phi i1 [ true, %254 ], [ %259, %257 ]
  %262 = zext i1 %261 to i32
  %263 = call i32 @assert(i32 %262)
  %264 = load i32*, i32** %6, align 8
  %265 = load i32*, i32** %8, align 8
  %266 = call i32 @EC_KEY_print(i32* %264, i32* %265, i32 0)
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %273, label %268

268:                                              ; preds = %260
  %269 = load i8*, i8** %13, align 8
  %270 = call i32 @perror(i8* %269)
  %271 = load i32, i32* @bio_err, align 4
  %272 = call i32 @ERR_print_errors(i32 %271)
  br label %362

273:                                              ; preds = %260
  br label %274

274:                                              ; preds = %273, %251
  %275 = load i32, i32* %34, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %290

277:                                              ; preds = %274
  %278 = load i32*, i32** %8, align 8
  %279 = call i32 @EC_KEY_check_key(i32* %278)
  %280 = icmp eq i32 %279, 1
  br i1 %280, label %281, label %284

281:                                              ; preds = %277
  %282 = load i32, i32* @bio_err, align 4
  %283 = call i32 (i32, i8*, ...) @BIO_printf(i32 %282, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  br label %289

284:                                              ; preds = %277
  %285 = load i32, i32* @bio_err, align 4
  %286 = call i32 (i32, i8*, ...) @BIO_printf(i32 %285, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  %287 = load i32, i32* @bio_err, align 4
  %288 = call i32 @ERR_print_errors(i32 %287)
  br label %289

289:                                              ; preds = %284, %281
  br label %290

290:                                              ; preds = %289, %274
  %291 = load i32, i32* %26, align 4
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %294

293:                                              ; preds = %290
  store i32 0, i32* %31, align 4
  br label %362

294:                                              ; preds = %290
  %295 = load i32, i32* @bio_err, align 4
  %296 = call i32 (i32, i8*, ...) @BIO_printf(i32 %295, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0))
  %297 = load i32, i32* %24, align 4
  %298 = load i32, i32* @FORMAT_ASN1, align 4
  %299 = icmp eq i32 %297, %298
  br i1 %299, label %300, label %325

300:                                              ; preds = %294
  %301 = load i32, i32* %29, align 4
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %307

303:                                              ; preds = %300
  %304 = load i32*, i32** %6, align 8
  %305 = load i32*, i32** %9, align 8
  %306 = call i32 @i2d_ECPKParameters_bio(i32* %304, i32* %305)
  store i32 %306, i32* %30, align 4
  br label %324

307:                                              ; preds = %300
  %308 = load i32, i32* %27, align 4
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %313, label %310

310:                                              ; preds = %307
  %311 = load i32, i32* %28, align 4
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %317

313:                                              ; preds = %310, %307
  %314 = load i32*, i32** %6, align 8
  %315 = load i32*, i32** %8, align 8
  %316 = call i32 @i2d_EC_PUBKEY_bio(i32* %314, i32* %315)
  store i32 %316, i32* %30, align 4
  br label %323

317:                                              ; preds = %310
  %318 = load i32, i32* %32, align 4
  %319 = call i32 @assert(i32 %318)
  %320 = load i32*, i32** %6, align 8
  %321 = load i32*, i32** %8, align 8
  %322 = call i32 @i2d_ECPrivateKey_bio(i32* %320, i32* %321)
  store i32 %322, i32* %30, align 4
  br label %323

323:                                              ; preds = %317, %313
  br label %324

324:                                              ; preds = %323, %303
  br label %352

325:                                              ; preds = %294
  %326 = load i32, i32* %29, align 4
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %332

328:                                              ; preds = %325
  %329 = load i32*, i32** %6, align 8
  %330 = load i32*, i32** %9, align 8
  %331 = call i32 @PEM_write_bio_ECPKParameters(i32* %329, i32* %330)
  store i32 %331, i32* %30, align 4
  br label %351

332:                                              ; preds = %325
  %333 = load i32, i32* %27, align 4
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %338, label %335

335:                                              ; preds = %332
  %336 = load i32, i32* %28, align 4
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %338, label %342

338:                                              ; preds = %335, %332
  %339 = load i32*, i32** %6, align 8
  %340 = load i32*, i32** %8, align 8
  %341 = call i32 @PEM_write_bio_EC_PUBKEY(i32* %339, i32* %340)
  store i32 %341, i32* %30, align 4
  br label %350

342:                                              ; preds = %335
  %343 = load i32, i32* %32, align 4
  %344 = call i32 @assert(i32 %343)
  %345 = load i32*, i32** %6, align 8
  %346 = load i32*, i32** %8, align 8
  %347 = load i32*, i32** %10, align 8
  %348 = load i8*, i8** %16, align 8
  %349 = call i32 @PEM_write_bio_ECPrivateKey(i32* %345, i32* %346, i32* %347, i32* null, i32 0, i32* null, i8* %348)
  store i32 %349, i32* %30, align 4
  br label %350

350:                                              ; preds = %342, %338
  br label %351

351:                                              ; preds = %350, %328
  br label %352

352:                                              ; preds = %351, %324
  %353 = load i32, i32* %30, align 4
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %360, label %355

355:                                              ; preds = %352
  %356 = load i32, i32* @bio_err, align 4
  %357 = call i32 (i32, i8*, ...) @BIO_printf(i32 %356, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0))
  %358 = load i32, i32* @bio_err, align 4
  %359 = call i32 @ERR_print_errors(i32 %358)
  br label %361

360:                                              ; preds = %352
  store i32 0, i32* %31, align 4
  br label %361

361:                                              ; preds = %360, %355
  br label %362

362:                                              ; preds = %361, %293, %268, %227, %215, %154, %141, %54, %50
  %363 = load i32*, i32** %5, align 8
  %364 = call i32 @BIO_free(i32* %363)
  %365 = load i32*, i32** %6, align 8
  %366 = call i32 @BIO_free_all(i32* %365)
  %367 = load i32*, i32** %8, align 8
  %368 = call i32 @EC_KEY_free(i32* %367)
  %369 = load i32*, i32** %7, align 8
  %370 = call i32 @release_engine(i32* %369)
  %371 = load i8*, i8** %15, align 8
  %372 = call i32 @OPENSSL_free(i8* %371)
  %373 = load i8*, i8** %16, align 8
  %374 = call i32 @OPENSSL_free(i8* %373)
  %375 = load i32, i32* %31, align 4
  ret i32 %375
}

declare dso_local i8* @opt_init(i32, i8**, i32) #1

declare dso_local i32 @opt_next(...) #1

declare dso_local i32 @BIO_printf(i32, i8*, ...) #1

declare dso_local i32 @opt_help(i32) #1

declare dso_local i32 @opt_format(i8*, i32, i32*) #1

declare dso_local i8* @opt_arg(...) #1

declare dso_local i32* @setup_engine(i8*, i32) #1

declare dso_local i32 @opt_cipher(i32, i32**) #1

declare dso_local i32 @opt_unknown(...) #1

declare dso_local i32 @opt_pair(i8*, i32, i32*) #1

declare dso_local i32 @opt_num_rest(...) #1

declare dso_local i32 @app_passwd(i8*, i8*, i8**, i8**) #1

declare dso_local i32* @bio_open_default(i8*, i8 signext, i32) #1

declare dso_local i32* @d2i_EC_PUBKEY_bio(i32*, i32*) #1

declare dso_local i32* @d2i_ECPrivateKey_bio(i32*, i32*) #1

declare dso_local i32* @load_pubkey(i8*, i32, i32, i8*, i32*, i8*) #1

declare dso_local i32* @load_key(i8*, i32, i32, i8*, i32*, i8*) #1

declare dso_local i32* @EVP_PKEY_get1_EC_KEY(i32*) #1

declare dso_local i32 @EVP_PKEY_free(i32*) #1

declare dso_local i32* @PEM_read_bio_EC_PUBKEY(i32*, i32*, i32*, i32*) #1

declare dso_local i32* @PEM_read_bio_ECPrivateKey(i32*, i32*, i32*, i8*) #1

declare dso_local i32 @ERR_print_errors(i32) #1

declare dso_local i32* @bio_open_owner(i8*, i32, i32) #1

declare dso_local i32* @EC_KEY_get0_group(i32*) #1

declare dso_local i32 @EC_KEY_set_conv_form(i32*, i32) #1

declare dso_local i32 @EC_KEY_set_asn1_flag(i32*, i32) #1

declare dso_local i32 @EC_KEY_set_enc_flags(i32*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @EC_KEY_print(i32*, i32*, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @EC_KEY_check_key(i32*) #1

declare dso_local i32 @i2d_ECPKParameters_bio(i32*, i32*) #1

declare dso_local i32 @i2d_EC_PUBKEY_bio(i32*, i32*) #1

declare dso_local i32 @i2d_ECPrivateKey_bio(i32*, i32*) #1

declare dso_local i32 @PEM_write_bio_ECPKParameters(i32*, i32*) #1

declare dso_local i32 @PEM_write_bio_EC_PUBKEY(i32*, i32*) #1

declare dso_local i32 @PEM_write_bio_ECPrivateKey(i32*, i32*, i32*, i32*, i32, i32*, i8*) #1

declare dso_local i32 @BIO_free(i32*) #1

declare dso_local i32 @BIO_free_all(i32*) #1

declare dso_local i32 @EC_KEY_free(i32*) #1

declare dso_local i32 @release_engine(i32*) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
