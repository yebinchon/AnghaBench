; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_pkey.c_pkey_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_pkey.c_pkey_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FORMAT_PEM = common dso_local global i32 0, align 4
@pkey_options = common dso_local global i32 0, align 4
@bio_err = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [28 x i8] c"%s: Use -help for summary.\0A\00", align 1
@OPT_FMT_ANY = common dso_local global i32 0, align 4
@OPT_FMT_PEMDER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Error getting passwords\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"Public Key\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"Key is valid\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"Key is invalid\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"Detailed error: %s\0A\00", align 1
@FORMAT_ASN1 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [30 x i8] c"Bad format specified for key\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pkey_main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
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
  %31 = alloca i32*, align 8
  %32 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  store i8* null, i8** %12, align 8
  store i8* null, i8** %13, align 8
  store i8* null, i8** %14, align 8
  store i8* null, i8** %15, align 8
  %33 = load i32, i32* @FORMAT_PEM, align 4
  store i32 %33, i32* %18, align 4
  %34 = load i32, i32* @FORMAT_PEM, align 4
  store i32 %34, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  store i32 1, i32* %25, align 4
  store i32 0, i32* %26, align 4
  store i32 0, i32* %27, align 4
  store i32 0, i32* %28, align 4
  store i32 0, i32* %29, align 4
  %35 = load i32, i32* %3, align 4
  %36 = load i8**, i8*** %4, align 8
  %37 = load i32, i32* @pkey_options, align 4
  %38 = call i8* @opt_init(i32 %35, i8** %36, i32 %37)
  store i8* %38, i8** %16, align 8
  br label %39

39:                                               ; preds = %91, %2
  %40 = call i32 (...) @opt_next()
  store i32 %40, i32* %17, align 4
  %41 = icmp ne i32 %40, 144
  br i1 %41, label %42, label %92

42:                                               ; preds = %39
  %43 = load i32, i32* %17, align 4
  switch i32 %43, label %91 [
    i32 144, label %44
    i32 143, label %44
    i32 142, label %49
    i32 140, label %52
    i32 136, label %59
    i32 135, label %66
    i32 134, label %68
    i32 145, label %70
    i32 141, label %73
    i32 137, label %75
    i32 133, label %77
    i32 132, label %78
    i32 129, label %79
    i32 130, label %80
    i32 138, label %81
    i32 128, label %82
    i32 146, label %83
    i32 131, label %84
    i32 139, label %85
  ]

44:                                               ; preds = %42, %42
  br label %45

45:                                               ; preds = %96, %89, %64, %57, %44
  %46 = load i32*, i32** @bio_err, align 8
  %47 = load i8*, i8** %16, align 8
  %48 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %46, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %47)
  br label %290

49:                                               ; preds = %42
  %50 = load i32, i32* @pkey_options, align 4
  %51 = call i32 @opt_help(i32 %50)
  store i32 0, i32* %25, align 4
  br label %290

52:                                               ; preds = %42
  %53 = call i8* (...) @opt_arg()
  %54 = load i32, i32* @OPT_FMT_ANY, align 4
  %55 = call i32 @opt_format(i8* %53, i32 %54, i32* %18)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %52
  br label %45

58:                                               ; preds = %52
  br label %91

59:                                               ; preds = %42
  %60 = call i8* (...) @opt_arg()
  %61 = load i32, i32* @OPT_FMT_PEMDER, align 4
  %62 = call i32 @opt_format(i8* %60, i32 %61, i32* %19)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %59
  br label %45

65:                                               ; preds = %59
  br label %91

66:                                               ; preds = %42
  %67 = call i8* (...) @opt_arg()
  store i8* %67, i8** %14, align 8
  br label %91

68:                                               ; preds = %42
  %69 = call i8* (...) @opt_arg()
  store i8* %69, i8** %15, align 8
  br label %91

70:                                               ; preds = %42
  %71 = call i8* (...) @opt_arg()
  %72 = call i32* @setup_engine(i8* %71, i32 0)
  store i32* %72, i32** %7, align 8
  br label %91

73:                                               ; preds = %42
  %74 = call i8* (...) @opt_arg()
  store i8* %74, i8** %10, align 8
  br label %91

75:                                               ; preds = %42
  %76 = call i8* (...) @opt_arg()
  store i8* %76, i8** %11, align 8
  br label %91

77:                                               ; preds = %42
  store i32 1, i32* %22, align 4
  store i32 1, i32* %21, align 4
  store i32 1, i32* %20, align 4
  br label %91

78:                                               ; preds = %42
  store i32 1, i32* %21, align 4
  br label %91

79:                                               ; preds = %42
  store i32 1, i32* %23, align 4
  store i32 1, i32* %22, align 4
  br label %91

80:                                               ; preds = %42
  store i32 1, i32* %23, align 4
  br label %91

81:                                               ; preds = %42
  store i32 1, i32* %24, align 4
  br label %91

82:                                               ; preds = %42
  store i32 1, i32* %27, align 4
  br label %91

83:                                               ; preds = %42
  store i32 1, i32* %28, align 4
  br label %91

84:                                               ; preds = %42
  store i32 1, i32* %29, align 4
  br label %91

85:                                               ; preds = %42
  %86 = call i32 (...) @opt_unknown()
  %87 = call i32 @opt_cipher(i32 %86, i32** %9)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %85
  br label %45

90:                                               ; preds = %85
  br label %91

91:                                               ; preds = %90, %42, %84, %83, %82, %81, %80, %79, %78, %77, %75, %73, %70, %68, %66, %65, %58
  br label %39

92:                                               ; preds = %39
  %93 = call i32 (...) @opt_num_rest()
  store i32 %93, i32* %3, align 4
  %94 = load i32, i32* %3, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %92
  br label %45

97:                                               ; preds = %92
  %98 = load i32, i32* %24, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %104, label %100

100:                                              ; preds = %97
  %101 = load i32, i32* %21, align 4
  %102 = icmp ne i32 %101, 0
  %103 = xor i1 %102, true
  br label %104

104:                                              ; preds = %100, %97
  %105 = phi i1 [ false, %97 ], [ %103, %100 ]
  %106 = zext i1 %105 to i64
  %107 = select i1 %105, i32 1, i32 0
  store i32 %107, i32* %26, align 4
  %108 = load i32, i32* %23, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %104
  %111 = load i32, i32* %22, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %114, label %113

113:                                              ; preds = %110
  store i32 1, i32* %26, align 4
  br label %114

114:                                              ; preds = %113, %110, %104
  %115 = load i8*, i8** %14, align 8
  %116 = load i8*, i8** %15, align 8
  %117 = call i32 @app_passwd(i8* %115, i8* %116, i8** %12, i8** %13)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %122, label %119

119:                                              ; preds = %114
  %120 = load i32*, i32** @bio_err, align 8
  %121 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %120, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %290

122:                                              ; preds = %114
  %123 = load i8*, i8** %11, align 8
  %124 = load i32, i32* %19, align 4
  %125 = load i32, i32* %26, align 4
  %126 = call i32* @bio_open_owner(i8* %123, i32 %124, i32 %125)
  store i32* %126, i32** %6, align 8
  %127 = load i32*, i32** %6, align 8
  %128 = icmp eq i32* %127, null
  br i1 %128, label %129, label %130

129:                                              ; preds = %122
  br label %290

130:                                              ; preds = %122
  %131 = load i32, i32* %20, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %139

133:                                              ; preds = %130
  %134 = load i8*, i8** %10, align 8
  %135 = load i32, i32* %18, align 4
  %136 = load i8*, i8** %12, align 8
  %137 = load i32*, i32** %7, align 8
  %138 = call i32* @load_pubkey(i8* %134, i32 %135, i32 1, i8* %136, i32* %137, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  store i32* %138, i32** %8, align 8
  br label %145

139:                                              ; preds = %130
  %140 = load i8*, i8** %10, align 8
  %141 = load i32, i32* %18, align 4
  %142 = load i8*, i8** %12, align 8
  %143 = load i32*, i32** %7, align 8
  %144 = call i32* @load_key(i8* %140, i32 %141, i32 1, i8* %142, i32* %143, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  store i32* %144, i32** %8, align 8
  br label %145

145:                                              ; preds = %139, %133
  %146 = load i32*, i32** %8, align 8
  %147 = icmp eq i32* %146, null
  br i1 %147, label %148, label %149

148:                                              ; preds = %145
  br label %290

149:                                              ; preds = %145
  %150 = load i32, i32* %28, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %155, label %152

152:                                              ; preds = %149
  %153 = load i32, i32* %29, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %195

155:                                              ; preds = %152, %149
  %156 = load i32*, i32** %8, align 8
  %157 = load i32*, i32** %7, align 8
  %158 = call i32* @EVP_PKEY_CTX_new(i32* %156, i32* %157)
  store i32* %158, i32** %31, align 8
  %159 = load i32*, i32** %31, align 8
  %160 = icmp eq i32* %159, null
  br i1 %160, label %161, label %164

161:                                              ; preds = %155
  %162 = load i32*, i32** @bio_err, align 8
  %163 = call i32 @ERR_print_errors(i32* %162)
  br label %290

164:                                              ; preds = %155
  %165 = load i32, i32* %28, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %164
  %168 = load i32*, i32** %31, align 8
  %169 = call i32 @EVP_PKEY_check(i32* %168)
  store i32 %169, i32* %30, align 4
  br label %173

170:                                              ; preds = %164
  %171 = load i32*, i32** %31, align 8
  %172 = call i32 @EVP_PKEY_public_check(i32* %171)
  store i32 %172, i32* %30, align 4
  br label %173

173:                                              ; preds = %170, %167
  %174 = load i32, i32* %30, align 4
  %175 = icmp eq i32 %174, 1
  br i1 %175, label %176, label %179

176:                                              ; preds = %173
  %177 = load i32*, i32** %6, align 8
  %178 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %177, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  br label %192

179:                                              ; preds = %173
  %180 = load i32*, i32** %6, align 8
  %181 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %180, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  br label %182

182:                                              ; preds = %185, %179
  %183 = call i64 (...) @ERR_peek_error()
  store i64 %183, i64* %32, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %191

185:                                              ; preds = %182
  %186 = load i32*, i32** %6, align 8
  %187 = load i64, i64* %32, align 8
  %188 = call i32 @ERR_reason_error_string(i64 %187)
  %189 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %186, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 %188)
  %190 = call i32 (...) @ERR_get_error()
  br label %182

191:                                              ; preds = %182
  br label %192

192:                                              ; preds = %191, %176
  %193 = load i32*, i32** %31, align 8
  %194 = call i32 @EVP_PKEY_CTX_free(i32* %193)
  br label %195

195:                                              ; preds = %192, %152
  %196 = load i32, i32* %24, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %266, label %198

198:                                              ; preds = %195
  %199 = load i32, i32* %19, align 4
  %200 = load i32, i32* @FORMAT_PEM, align 4
  %201 = icmp eq i32 %199, %200
  br i1 %201, label %202, label %237

202:                                              ; preds = %198
  %203 = load i32, i32* %21, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %212

205:                                              ; preds = %202
  %206 = load i32*, i32** %6, align 8
  %207 = load i32*, i32** %8, align 8
  %208 = call i32 @PEM_write_bio_PUBKEY(i32* %206, i32* %207)
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %211, label %210

210:                                              ; preds = %205
  br label %290

211:                                              ; preds = %205
  br label %236

212:                                              ; preds = %202
  %213 = load i32, i32* %26, align 4
  %214 = call i32 @assert(i32 %213)
  %215 = load i32, i32* %27, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %226

217:                                              ; preds = %212
  %218 = load i32*, i32** %6, align 8
  %219 = load i32*, i32** %8, align 8
  %220 = load i32*, i32** %9, align 8
  %221 = load i8*, i8** %13, align 8
  %222 = call i32 @PEM_write_bio_PrivateKey_traditional(i32* %218, i32* %219, i32* %220, i32* null, i32 0, i32* null, i8* %221)
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %225, label %224

224:                                              ; preds = %217
  br label %290

225:                                              ; preds = %217
  br label %235

226:                                              ; preds = %212
  %227 = load i32*, i32** %6, align 8
  %228 = load i32*, i32** %8, align 8
  %229 = load i32*, i32** %9, align 8
  %230 = load i8*, i8** %13, align 8
  %231 = call i32 @PEM_write_bio_PrivateKey(i32* %227, i32* %228, i32* %229, i32* null, i32 0, i32* null, i8* %230)
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %234, label %233

233:                                              ; preds = %226
  br label %290

234:                                              ; preds = %226
  br label %235

235:                                              ; preds = %234, %225
  br label %236

236:                                              ; preds = %235, %211
  br label %265

237:                                              ; preds = %198
  %238 = load i32, i32* %19, align 4
  %239 = load i32, i32* @FORMAT_ASN1, align 4
  %240 = icmp eq i32 %238, %239
  br i1 %240, label %241, label %261

241:                                              ; preds = %237
  %242 = load i32, i32* %21, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %251

244:                                              ; preds = %241
  %245 = load i32*, i32** %6, align 8
  %246 = load i32*, i32** %8, align 8
  %247 = call i32 @i2d_PUBKEY_bio(i32* %245, i32* %246)
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %250, label %249

249:                                              ; preds = %244
  br label %290

250:                                              ; preds = %244
  br label %260

251:                                              ; preds = %241
  %252 = load i32, i32* %26, align 4
  %253 = call i32 @assert(i32 %252)
  %254 = load i32*, i32** %6, align 8
  %255 = load i32*, i32** %8, align 8
  %256 = call i32 @i2d_PrivateKey_bio(i32* %254, i32* %255)
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %259, label %258

258:                                              ; preds = %251
  br label %290

259:                                              ; preds = %251
  br label %260

260:                                              ; preds = %259, %250
  br label %264

261:                                              ; preds = %237
  %262 = load i32*, i32** @bio_err, align 8
  %263 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %262, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  br label %290

264:                                              ; preds = %260
  br label %265

265:                                              ; preds = %264, %236
  br label %266

266:                                              ; preds = %265, %195
  %267 = load i32, i32* %23, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %289

269:                                              ; preds = %266
  %270 = load i32, i32* %22, align 4
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %279

272:                                              ; preds = %269
  %273 = load i32*, i32** %6, align 8
  %274 = load i32*, i32** %8, align 8
  %275 = call i64 @EVP_PKEY_print_public(i32* %273, i32* %274, i32 0, i32* null)
  %276 = icmp sle i64 %275, 0
  br i1 %276, label %277, label %278

277:                                              ; preds = %272
  br label %290

278:                                              ; preds = %272
  br label %288

279:                                              ; preds = %269
  %280 = load i32, i32* %26, align 4
  %281 = call i32 @assert(i32 %280)
  %282 = load i32*, i32** %6, align 8
  %283 = load i32*, i32** %8, align 8
  %284 = call i64 @EVP_PKEY_print_private(i32* %282, i32* %283, i32 0, i32* null)
  %285 = icmp sle i64 %284, 0
  br i1 %285, label %286, label %287

286:                                              ; preds = %279
  br label %290

287:                                              ; preds = %279
  br label %288

288:                                              ; preds = %287, %278
  br label %289

289:                                              ; preds = %288, %266
  store i32 0, i32* %25, align 4
  br label %290

290:                                              ; preds = %289, %286, %277, %261, %258, %249, %233, %224, %210, %161, %148, %129, %119, %49, %45
  %291 = load i32, i32* %25, align 4
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %296

293:                                              ; preds = %290
  %294 = load i32*, i32** @bio_err, align 8
  %295 = call i32 @ERR_print_errors(i32* %294)
  br label %296

296:                                              ; preds = %293, %290
  %297 = load i32*, i32** %8, align 8
  %298 = call i32 @EVP_PKEY_free(i32* %297)
  %299 = load i32*, i32** %7, align 8
  %300 = call i32 @release_engine(i32* %299)
  %301 = load i32*, i32** %6, align 8
  %302 = call i32 @BIO_free_all(i32* %301)
  %303 = load i32*, i32** %5, align 8
  %304 = call i32 @BIO_free(i32* %303)
  %305 = load i8*, i8** %12, align 8
  %306 = call i32 @OPENSSL_free(i8* %305)
  %307 = load i8*, i8** %13, align 8
  %308 = call i32 @OPENSSL_free(i8* %307)
  %309 = load i32, i32* %25, align 4
  ret i32 %309
}

declare dso_local i8* @opt_init(i32, i8**, i32) #1

declare dso_local i32 @opt_next(...) #1

declare dso_local i32 @BIO_printf(i32*, i8*, ...) #1

declare dso_local i32 @opt_help(i32) #1

declare dso_local i32 @opt_format(i8*, i32, i32*) #1

declare dso_local i8* @opt_arg(...) #1

declare dso_local i32* @setup_engine(i8*, i32) #1

declare dso_local i32 @opt_cipher(i32, i32**) #1

declare dso_local i32 @opt_unknown(...) #1

declare dso_local i32 @opt_num_rest(...) #1

declare dso_local i32 @app_passwd(i8*, i8*, i8**, i8**) #1

declare dso_local i32* @bio_open_owner(i8*, i32, i32) #1

declare dso_local i32* @load_pubkey(i8*, i32, i32, i8*, i32*, i8*) #1

declare dso_local i32* @load_key(i8*, i32, i32, i8*, i32*, i8*) #1

declare dso_local i32* @EVP_PKEY_CTX_new(i32*, i32*) #1

declare dso_local i32 @ERR_print_errors(i32*) #1

declare dso_local i32 @EVP_PKEY_check(i32*) #1

declare dso_local i32 @EVP_PKEY_public_check(i32*) #1

declare dso_local i64 @ERR_peek_error(...) #1

declare dso_local i32 @ERR_reason_error_string(i64) #1

declare dso_local i32 @ERR_get_error(...) #1

declare dso_local i32 @EVP_PKEY_CTX_free(i32*) #1

declare dso_local i32 @PEM_write_bio_PUBKEY(i32*, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @PEM_write_bio_PrivateKey_traditional(i32*, i32*, i32*, i32*, i32, i32*, i8*) #1

declare dso_local i32 @PEM_write_bio_PrivateKey(i32*, i32*, i32*, i32*, i32, i32*, i8*) #1

declare dso_local i32 @i2d_PUBKEY_bio(i32*, i32*) #1

declare dso_local i32 @i2d_PrivateKey_bio(i32*, i32*) #1

declare dso_local i64 @EVP_PKEY_print_public(i32*, i32*, i32, i32*) #1

declare dso_local i64 @EVP_PKEY_print_private(i32*, i32*, i32, i32*) #1

declare dso_local i32 @EVP_PKEY_free(i32*) #1

declare dso_local i32 @release_engine(i32*) #1

declare dso_local i32 @BIO_free_all(i32*) #1

declare dso_local i32 @BIO_free(i32*) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
