; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_pkcs8.c_pkcs8_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_pkcs8.c_pkcs8_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@APP_PASS_LEN = common dso_local global i32 0, align 4
@PKCS12_DEFAULT_ITER = common dso_local global i32 0, align 4
@FORMAT_PEM = common dso_local global i32 0, align 4
@pkcs8_options = common dso_local global i32 0, align 4
@bio_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"%s: Use -help for summary.\0A\00", align 1
@OPT_FMT_PEMDER = common dso_local global i32 0, align 4
@NID_undef = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"%s: Unknown PBE algorithm %s\0A\00", align 1
@EVP_PBE_TYPE_PRF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"%s: Unknown PRF algorithm %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Error getting passwords\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"Error converting key\0A\00", align 1
@FORMAT_ASN1 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [30 x i8] c"Bad format specified for key\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"Error setting PBE algorithm\0A\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"Enter Encryption Password:\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"Error encrypting key\0A\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"Error reading key\0A\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"Enter Password:\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"Can't read Password\0A\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"Error decrypting key\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pkcs8_main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
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
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  %34 = alloca i64, align 8
  %35 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  store i8* null, i8** %12, align 8
  store i8* null, i8** %13, align 8
  store i8* null, i8** %14, align 8
  store i8* null, i8** %15, align 8
  %36 = load i32, i32* @APP_PASS_LEN, align 4
  %37 = zext i32 %36 to i64
  %38 = call i8* @llvm.stacksave()
  store i8* %38, i8** %17, align 8
  %39 = alloca i8, i64 %37, align 16
  store i64 %37, i64* %18, align 8
  store i8* null, i8** %19, align 8
  store i8* null, i8** %20, align 8
  store i8* null, i8** %21, align 8
  store i32 0, i32* %23, align 4
  store i32 1, i32* %24, align 4
  %40 = load i32, i32* @PKCS12_DEFAULT_ITER, align 4
  store i32 %40, i32* %25, align 4
  %41 = load i32, i32* @FORMAT_PEM, align 4
  store i32 %41, i32* %26, align 4
  %42 = load i32, i32* @FORMAT_PEM, align 4
  store i32 %42, i32* %27, align 4
  store i32 0, i32* %28, align 4
  store i32 -1, i32* %29, align 4
  store i32 0, i32* %30, align 4
  store i32 0, i32* %31, align 4
  store i64 0, i64* %32, align 8
  store i64 0, i64* %33, align 8
  store i64 0, i64* %34, align 8
  %43 = load i32, i32* %3, align 4
  %44 = load i8**, i8*** %4, align 8
  %45 = load i32, i32* @pkcs8_options, align 4
  %46 = call i8* @opt_init(i32 %43, i8** %44, i32 %45)
  store i8* %46, i8** %16, align 8
  br label %47

47:                                               ; preds = %170, %2
  %48 = call i32 (...) @opt_next()
  store i32 %48, i32* %22, align 4
  %49 = icmp ne i32 %48, 149
  br i1 %49, label %50, label %171

50:                                               ; preds = %47
  %51 = load i32, i32* %22, align 4
  switch i32 %51, label %170 [
    i32 149, label %52
    i32 148, label %52
    i32 147, label %57
    i32 145, label %60
    i32 146, label %67
    i32 140, label %69
    i32 141, label %76
    i32 132, label %78
    i32 142, label %79
    i32 143, label %80
    i32 137, label %81
    i32 131, label %87
    i32 129, label %88
    i32 130, label %94
    i32 128, label %106
    i32 144, label %124
    i32 139, label %130
    i32 138, label %132
    i32 150, label %134
    i32 136, label %137
    i32 135, label %143
    i32 133, label %152
    i32 134, label %161
  ]

52:                                               ; preds = %50, %50
  br label %53

53:                                               ; preds = %175, %168, %159, %150, %128, %113, %100, %92, %74, %65, %52
  %54 = load i32, i32* @bio_err, align 4
  %55 = load i8*, i8** %16, align 8
  %56 = call i32 (i32, i8*, ...) @BIO_printf(i32 %54, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %55)
  br label %460

57:                                               ; preds = %50
  %58 = load i32, i32* @pkcs8_options, align 4
  %59 = call i32 @opt_help(i32 %58)
  store i32 0, i32* %24, align 4
  br label %460

60:                                               ; preds = %50
  %61 = call i8* (...) @opt_arg()
  %62 = load i32, i32* @OPT_FMT_PEMDER, align 4
  %63 = call i32 @opt_format(i8* %61, i32 %62, i32* %26)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %60
  br label %53

66:                                               ; preds = %60
  br label %170

67:                                               ; preds = %50
  %68 = call i8* (...) @opt_arg()
  store i8* %68, i8** %12, align 8
  br label %170

69:                                               ; preds = %50
  %70 = call i8* (...) @opt_arg()
  %71 = load i32, i32* @OPT_FMT_PEMDER, align 4
  %72 = call i32 @opt_format(i8* %70, i32 %71, i32* %27)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %69
  br label %53

75:                                               ; preds = %69
  br label %170

76:                                               ; preds = %50
  %77 = call i8* (...) @opt_arg()
  store i8* %77, i8** %13, align 8
  br label %170

78:                                               ; preds = %50
  store i32 1, i32* %28, align 4
  br label %170

79:                                               ; preds = %50
  store i32 1, i32* %25, align 4
  br label %170

80:                                               ; preds = %50
  store i32 1, i32* %23, align 4
  br label %170

81:                                               ; preds = %50
  %82 = load i32, i32* %22, align 4
  %83 = call i32 @opt_rand(i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %81
  br label %460

86:                                               ; preds = %81
  br label %170

87:                                               ; preds = %50
  store i32 1, i32* %31, align 4
  br label %170

88:                                               ; preds = %50
  %89 = call i8* (...) @opt_arg()
  %90 = call i32 @opt_cipher(i8* %89, i32** %11)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %88
  br label %53

93:                                               ; preds = %88
  br label %170

94:                                               ; preds = %50
  %95 = call i8* (...) @opt_arg()
  %96 = call i32 @OBJ_txt2nid(i8* %95)
  store i32 %96, i32* %29, align 4
  %97 = load i32, i32* %29, align 4
  %98 = load i32, i32* @NID_undef, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %105

100:                                              ; preds = %94
  %101 = load i32, i32* @bio_err, align 4
  %102 = load i8*, i8** %16, align 8
  %103 = call i8* (...) @opt_arg()
  %104 = call i32 (i32, i8*, ...) @BIO_printf(i32 %101, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %102, i8* %103)
  br label %53

105:                                              ; preds = %94
  br label %170

106:                                              ; preds = %50
  %107 = call i8* (...) @opt_arg()
  %108 = call i32 @OBJ_txt2nid(i8* %107)
  store i32 %108, i32* %29, align 4
  %109 = load i32, i32* @EVP_PBE_TYPE_PRF, align 4
  %110 = load i32, i32* %29, align 4
  %111 = call i32 @EVP_PBE_find(i32 %109, i32 %110, i32* null, i32* null, i32 0)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %118, label %113

113:                                              ; preds = %106
  %114 = load i32, i32* @bio_err, align 4
  %115 = load i8*, i8** %16, align 8
  %116 = call i8* (...) @opt_arg()
  %117 = call i32 (i32, i8*, ...) @BIO_printf(i32 %114, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* %115, i8* %116)
  br label %53

118:                                              ; preds = %106
  %119 = load i32*, i32** %11, align 8
  %120 = icmp eq i32* %119, null
  br i1 %120, label %121, label %123

121:                                              ; preds = %118
  %122 = call i32* (...) @EVP_aes_256_cbc()
  store i32* %122, i32** %11, align 8
  br label %123

123:                                              ; preds = %121, %118
  br label %170

124:                                              ; preds = %50
  %125 = call i8* (...) @opt_arg()
  %126 = call i32 @opt_int(i8* %125, i32* %25)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %129, label %128

128:                                              ; preds = %124
  br label %53

129:                                              ; preds = %124
  br label %170

130:                                              ; preds = %50
  %131 = call i8* (...) @opt_arg()
  store i8* %131, i8** %14, align 8
  br label %170

132:                                              ; preds = %50
  %133 = call i8* (...) @opt_arg()
  store i8* %133, i8** %15, align 8
  br label %170

134:                                              ; preds = %50
  %135 = call i8* (...) @opt_arg()
  %136 = call i32* @setup_engine(i8* %135, i32 0)
  store i32* %136, i32** %7, align 8
  br label %170

137:                                              ; preds = %50
  store i64 16384, i64* %32, align 8
  store i64 8, i64* %33, align 8
  store i64 1, i64* %34, align 8
  %138 = load i32*, i32** %11, align 8
  %139 = icmp eq i32* %138, null
  br i1 %139, label %140, label %142

140:                                              ; preds = %137
  %141 = call i32* (...) @EVP_aes_256_cbc()
  store i32* %141, i32** %11, align 8
  br label %142

142:                                              ; preds = %140, %137
  br label %170

143:                                              ; preds = %50
  %144 = call i8* (...) @opt_arg()
  %145 = call i32 @opt_long(i8* %144, i64* %32)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %143
  %148 = load i64, i64* %32, align 8
  %149 = icmp sle i64 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %147, %143
  br label %53

151:                                              ; preds = %147
  br label %170

152:                                              ; preds = %50
  %153 = call i8* (...) @opt_arg()
  %154 = call i32 @opt_long(i8* %153, i64* %33)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %152
  %157 = load i64, i64* %33, align 8
  %158 = icmp sle i64 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %156, %152
  br label %53

160:                                              ; preds = %156
  br label %170

161:                                              ; preds = %50
  %162 = call i8* (...) @opt_arg()
  %163 = call i32 @opt_long(i8* %162, i64* %34)
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %161
  %166 = load i64, i64* %34, align 8
  %167 = icmp sle i64 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %165, %161
  br label %53

169:                                              ; preds = %165
  br label %170

170:                                              ; preds = %50, %169, %160, %151, %142, %134, %132, %130, %129, %123, %105, %93, %87, %86, %80, %79, %78, %76, %75, %67, %66
  br label %47

171:                                              ; preds = %47
  %172 = call i32 (...) @opt_num_rest()
  store i32 %172, i32* %3, align 4
  %173 = load i32, i32* %3, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %171
  br label %53

176:                                              ; preds = %171
  store i32 1, i32* %30, align 4
  %177 = load i8*, i8** %14, align 8
  %178 = load i8*, i8** %15, align 8
  %179 = call i32 @app_passwd(i8* %177, i8* %178, i8** %19, i8** %20)
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %184, label %181

181:                                              ; preds = %176
  %182 = load i32, i32* @bio_err, align 4
  %183 = call i32 (i32, i8*, ...) @BIO_printf(i32 %182, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %460

184:                                              ; preds = %176
  %185 = load i32, i32* %29, align 4
  %186 = icmp eq i32 %185, -1
  br i1 %186, label %187, label %192

187:                                              ; preds = %184
  %188 = load i32*, i32** %11, align 8
  %189 = icmp eq i32* %188, null
  br i1 %189, label %190, label %192

190:                                              ; preds = %187
  %191 = call i32* (...) @EVP_aes_256_cbc()
  store i32* %191, i32** %11, align 8
  br label %192

192:                                              ; preds = %190, %187, %184
  %193 = load i8*, i8** %12, align 8
  %194 = load i32, i32* %26, align 4
  %195 = call i32* @bio_open_default(i8* %193, i8 signext 114, i32 %194)
  store i32* %195, i32** %5, align 8
  %196 = load i32*, i32** %5, align 8
  %197 = icmp eq i32* %196, null
  br i1 %197, label %198, label %199

198:                                              ; preds = %192
  br label %460

199:                                              ; preds = %192
  %200 = load i8*, i8** %13, align 8
  %201 = load i32, i32* %27, align 4
  %202 = load i32, i32* %30, align 4
  %203 = call i32* @bio_open_owner(i8* %200, i32 %201, i32 %202)
  store i32* %203, i32** %6, align 8
  %204 = load i32*, i32** %6, align 8
  %205 = icmp eq i32* %204, null
  br i1 %205, label %206, label %207

206:                                              ; preds = %199
  br label %460

207:                                              ; preds = %199
  %208 = load i32, i32* %28, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %343

210:                                              ; preds = %207
  %211 = load i8*, i8** %12, align 8
  %212 = load i32, i32* %26, align 4
  %213 = load i8*, i8** %19, align 8
  %214 = load i32*, i32** %7, align 8
  %215 = call i32* @load_key(i8* %211, i32 %212, i32 1, i8* %213, i32* %214, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  store i32* %215, i32** %8, align 8
  %216 = load i32*, i32** %8, align 8
  %217 = icmp eq i32* %216, null
  br i1 %217, label %218, label %219

218:                                              ; preds = %210
  br label %460

219:                                              ; preds = %210
  %220 = load i32*, i32** %8, align 8
  %221 = call i32* @EVP_PKEY2PKCS8(i32* %220)
  store i32* %221, i32** %9, align 8
  %222 = icmp eq i32* %221, null
  br i1 %222, label %223, label %228

223:                                              ; preds = %219
  %224 = load i32, i32* @bio_err, align 4
  %225 = call i32 (i32, i8*, ...) @BIO_printf(i32 %224, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  %226 = load i32, i32* @bio_err, align 4
  %227 = call i32 @ERR_print_errors(i32 %226)
  br label %460

228:                                              ; preds = %219
  %229 = load i32, i32* %23, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %254

231:                                              ; preds = %228
  %232 = load i32, i32* %30, align 4
  %233 = call i32 @assert(i32 %232)
  %234 = load i32, i32* %27, align 4
  %235 = load i32, i32* @FORMAT_PEM, align 4
  %236 = icmp eq i32 %234, %235
  br i1 %236, label %237, label %241

237:                                              ; preds = %231
  %238 = load i32*, i32** %6, align 8
  %239 = load i32*, i32** %9, align 8
  %240 = call i32 @PEM_write_bio_PKCS8_PRIV_KEY_INFO(i32* %238, i32* %239)
  br label %253

241:                                              ; preds = %231
  %242 = load i32, i32* %27, align 4
  %243 = load i32, i32* @FORMAT_ASN1, align 4
  %244 = icmp eq i32 %242, %243
  br i1 %244, label %245, label %249

245:                                              ; preds = %241
  %246 = load i32*, i32** %6, align 8
  %247 = load i32*, i32** %9, align 8
  %248 = call i32 @i2d_PKCS8_PRIV_KEY_INFO_bio(i32* %246, i32* %247)
  br label %252

249:                                              ; preds = %241
  %250 = load i32, i32* @bio_err, align 4
  %251 = call i32 (i32, i8*, ...) @BIO_printf(i32 %250, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  br label %460

252:                                              ; preds = %245
  br label %253

253:                                              ; preds = %252, %237
  br label %342

254:                                              ; preds = %228
  %255 = load i32*, i32** %11, align 8
  %256 = icmp ne i32* %255, null
  br i1 %256, label %257, label %278

257:                                              ; preds = %254
  %258 = load i64, i64* %32, align 8
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %272

260:                                              ; preds = %257
  %261 = load i64, i64* %33, align 8
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %263, label %272

263:                                              ; preds = %260
  %264 = load i64, i64* %34, align 8
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %272

266:                                              ; preds = %263
  %267 = load i32*, i32** %11, align 8
  %268 = load i64, i64* %32, align 8
  %269 = load i64, i64* %33, align 8
  %270 = load i64, i64* %34, align 8
  %271 = call i32* @PKCS5_pbe2_set_scrypt(i32* %267, i32* null, i32 0, i32* null, i64 %268, i64 %269, i64 %270)
  store i32* %271, i32** %35, align 8
  br label %277

272:                                              ; preds = %263, %260, %257
  %273 = load i32*, i32** %11, align 8
  %274 = load i32, i32* %25, align 4
  %275 = load i32, i32* %29, align 4
  %276 = call i32* @PKCS5_pbe2_set_iv(i32* %273, i32 %274, i32* null, i32 0, i32* null, i32 %275)
  store i32* %276, i32** %35, align 8
  br label %277

277:                                              ; preds = %272, %266
  br label %282

278:                                              ; preds = %254
  %279 = load i32, i32* %29, align 4
  %280 = load i32, i32* %25, align 4
  %281 = call i32* @PKCS5_pbe_set(i32 %279, i32 %280, i32* null, i32 0)
  store i32* %281, i32** %35, align 8
  br label %282

282:                                              ; preds = %278, %277
  %283 = load i32*, i32** %35, align 8
  %284 = icmp eq i32* %283, null
  br i1 %284, label %285, label %290

285:                                              ; preds = %282
  %286 = load i32, i32* @bio_err, align 4
  %287 = call i32 (i32, i8*, ...) @BIO_printf(i32 %286, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  %288 = load i32, i32* @bio_err, align 4
  %289 = call i32 @ERR_print_errors(i32 %288)
  br label %460

290:                                              ; preds = %282
  %291 = load i8*, i8** %20, align 8
  %292 = icmp ne i8* %291, null
  br i1 %292, label %293, label %295

293:                                              ; preds = %290
  %294 = load i8*, i8** %20, align 8
  store i8* %294, i8** %21, align 8
  br label %303

295:                                              ; preds = %290
  store i8* %39, i8** %21, align 8
  %296 = trunc i64 %37 to i32
  %297 = call i64 @EVP_read_pw_string(i8* %39, i32 %296, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i32 1)
  %298 = icmp ne i64 %297, 0
  br i1 %298, label %299, label %302

299:                                              ; preds = %295
  %300 = load i32*, i32** %35, align 8
  %301 = call i32 @X509_ALGOR_free(i32* %300)
  br label %460

302:                                              ; preds = %295
  br label %303

303:                                              ; preds = %302, %293
  %304 = load i8*, i8** %21, align 8
  %305 = load i8*, i8** %21, align 8
  %306 = call i32 @strlen(i8* %305)
  %307 = load i32*, i32** %9, align 8
  %308 = load i32*, i32** %35, align 8
  %309 = call i32* @PKCS8_set0_pbe(i8* %304, i32 %306, i32* %307, i32* %308)
  store i32* %309, i32** %10, align 8
  %310 = load i32*, i32** %10, align 8
  %311 = icmp eq i32* %310, null
  br i1 %311, label %312, label %319

312:                                              ; preds = %303
  %313 = load i32*, i32** %35, align 8
  %314 = call i32 @X509_ALGOR_free(i32* %313)
  %315 = load i32, i32* @bio_err, align 4
  %316 = call i32 (i32, i8*, ...) @BIO_printf(i32 %315, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0))
  %317 = load i32, i32* @bio_err, align 4
  %318 = call i32 @ERR_print_errors(i32 %317)
  br label %460

319:                                              ; preds = %303
  %320 = load i32, i32* %30, align 4
  %321 = call i32 @assert(i32 %320)
  %322 = load i32, i32* %27, align 4
  %323 = load i32, i32* @FORMAT_PEM, align 4
  %324 = icmp eq i32 %322, %323
  br i1 %324, label %325, label %329

325:                                              ; preds = %319
  %326 = load i32*, i32** %6, align 8
  %327 = load i32*, i32** %10, align 8
  %328 = call i32 @PEM_write_bio_PKCS8(i32* %326, i32* %327)
  br label %341

329:                                              ; preds = %319
  %330 = load i32, i32* %27, align 4
  %331 = load i32, i32* @FORMAT_ASN1, align 4
  %332 = icmp eq i32 %330, %331
  br i1 %332, label %333, label %337

333:                                              ; preds = %329
  %334 = load i32*, i32** %6, align 8
  %335 = load i32*, i32** %10, align 8
  %336 = call i32 @i2d_PKCS8_bio(i32* %334, i32* %335)
  br label %340

337:                                              ; preds = %329
  %338 = load i32, i32* @bio_err, align 4
  %339 = call i32 (i32, i8*, ...) @BIO_printf(i32 %338, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  br label %460

340:                                              ; preds = %333
  br label %341

341:                                              ; preds = %340, %325
  br label %342

342:                                              ; preds = %341, %253
  store i32 0, i32* %24, align 4
  br label %460

343:                                              ; preds = %207
  %344 = load i32, i32* %23, align 4
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %346, label %365

346:                                              ; preds = %343
  %347 = load i32, i32* %26, align 4
  %348 = load i32, i32* @FORMAT_PEM, align 4
  %349 = icmp eq i32 %347, %348
  br i1 %349, label %350, label %353

350:                                              ; preds = %346
  %351 = load i32*, i32** %5, align 8
  %352 = call i32* @PEM_read_bio_PKCS8_PRIV_KEY_INFO(i32* %351, i32* null, i32* null, i32* null)
  store i32* %352, i32** %9, align 8
  br label %364

353:                                              ; preds = %346
  %354 = load i32, i32* %26, align 4
  %355 = load i32, i32* @FORMAT_ASN1, align 4
  %356 = icmp eq i32 %354, %355
  br i1 %356, label %357, label %360

357:                                              ; preds = %353
  %358 = load i32*, i32** %5, align 8
  %359 = call i32* @d2i_PKCS8_PRIV_KEY_INFO_bio(i32* %358, i32* null)
  store i32* %359, i32** %9, align 8
  br label %363

360:                                              ; preds = %353
  %361 = load i32, i32* @bio_err, align 4
  %362 = call i32 (i32, i8*, ...) @BIO_printf(i32 %361, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  br label %460

363:                                              ; preds = %357
  br label %364

364:                                              ; preds = %363, %350
  br label %410

365:                                              ; preds = %343
  %366 = load i32, i32* %26, align 4
  %367 = load i32, i32* @FORMAT_PEM, align 4
  %368 = icmp eq i32 %366, %367
  br i1 %368, label %369, label %372

369:                                              ; preds = %365
  %370 = load i32*, i32** %5, align 8
  %371 = call i32* @PEM_read_bio_PKCS8(i32* %370, i32* null, i32* null, i32* null)
  store i32* %371, i32** %10, align 8
  br label %383

372:                                              ; preds = %365
  %373 = load i32, i32* %26, align 4
  %374 = load i32, i32* @FORMAT_ASN1, align 4
  %375 = icmp eq i32 %373, %374
  br i1 %375, label %376, label %379

376:                                              ; preds = %372
  %377 = load i32*, i32** %5, align 8
  %378 = call i32* @d2i_PKCS8_bio(i32* %377, i32* null)
  store i32* %378, i32** %10, align 8
  br label %382

379:                                              ; preds = %372
  %380 = load i32, i32* @bio_err, align 4
  %381 = call i32 (i32, i8*, ...) @BIO_printf(i32 %380, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  br label %460

382:                                              ; preds = %376
  br label %383

383:                                              ; preds = %382, %369
  %384 = load i32*, i32** %10, align 8
  %385 = icmp eq i32* %384, null
  br i1 %385, label %386, label %391

386:                                              ; preds = %383
  %387 = load i32, i32* @bio_err, align 4
  %388 = call i32 (i32, i8*, ...) @BIO_printf(i32 %387, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0))
  %389 = load i32, i32* @bio_err, align 4
  %390 = call i32 @ERR_print_errors(i32 %389)
  br label %460

391:                                              ; preds = %383
  %392 = load i8*, i8** %19, align 8
  %393 = icmp ne i8* %392, null
  br i1 %393, label %394, label %396

394:                                              ; preds = %391
  %395 = load i8*, i8** %19, align 8
  store i8* %395, i8** %21, align 8
  br label %404

396:                                              ; preds = %391
  store i8* %39, i8** %21, align 8
  %397 = trunc i64 %37 to i32
  %398 = call i64 @EVP_read_pw_string(i8* %39, i32 %397, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 0)
  %399 = icmp ne i64 %398, 0
  br i1 %399, label %400, label %403

400:                                              ; preds = %396
  %401 = load i32, i32* @bio_err, align 4
  %402 = call i32 (i32, i8*, ...) @BIO_printf(i32 %401, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0))
  br label %460

403:                                              ; preds = %396
  br label %404

404:                                              ; preds = %403, %394
  %405 = load i32*, i32** %10, align 8
  %406 = load i8*, i8** %21, align 8
  %407 = load i8*, i8** %21, align 8
  %408 = call i32 @strlen(i8* %407)
  %409 = call i32* @PKCS8_decrypt(i32* %405, i8* %406, i32 %408)
  store i32* %409, i32** %9, align 8
  br label %410

410:                                              ; preds = %404, %364
  %411 = load i32*, i32** %9, align 8
  %412 = icmp eq i32* %411, null
  br i1 %412, label %413, label %418

413:                                              ; preds = %410
  %414 = load i32, i32* @bio_err, align 4
  %415 = call i32 (i32, i8*, ...) @BIO_printf(i32 %414, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0))
  %416 = load i32, i32* @bio_err, align 4
  %417 = call i32 @ERR_print_errors(i32 %416)
  br label %460

418:                                              ; preds = %410
  %419 = load i32*, i32** %9, align 8
  %420 = call i32* @EVP_PKCS82PKEY(i32* %419)
  store i32* %420, i32** %8, align 8
  %421 = icmp eq i32* %420, null
  br i1 %421, label %422, label %427

422:                                              ; preds = %418
  %423 = load i32, i32* @bio_err, align 4
  %424 = call i32 (i32, i8*, ...) @BIO_printf(i32 %423, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  %425 = load i32, i32* @bio_err, align 4
  %426 = call i32 @ERR_print_errors(i32 %425)
  br label %460

427:                                              ; preds = %418
  %428 = load i32, i32* %30, align 4
  %429 = call i32 @assert(i32 %428)
  %430 = load i32, i32* %27, align 4
  %431 = load i32, i32* @FORMAT_PEM, align 4
  %432 = icmp eq i32 %430, %431
  br i1 %432, label %433, label %447

433:                                              ; preds = %427
  %434 = load i32, i32* %31, align 4
  %435 = icmp ne i32 %434, 0
  br i1 %435, label %436, label %441

436:                                              ; preds = %433
  %437 = load i32*, i32** %6, align 8
  %438 = load i32*, i32** %8, align 8
  %439 = load i8*, i8** %20, align 8
  %440 = call i32 @PEM_write_bio_PrivateKey_traditional(i32* %437, i32* %438, i32* null, i32* null, i32 0, i32* null, i8* %439)
  br label %446

441:                                              ; preds = %433
  %442 = load i32*, i32** %6, align 8
  %443 = load i32*, i32** %8, align 8
  %444 = load i8*, i8** %20, align 8
  %445 = call i32 @PEM_write_bio_PrivateKey(i32* %442, i32* %443, i32* null, i32* null, i32 0, i32* null, i8* %444)
  br label %446

446:                                              ; preds = %441, %436
  br label %459

447:                                              ; preds = %427
  %448 = load i32, i32* %27, align 4
  %449 = load i32, i32* @FORMAT_ASN1, align 4
  %450 = icmp eq i32 %448, %449
  br i1 %450, label %451, label %455

451:                                              ; preds = %447
  %452 = load i32*, i32** %6, align 8
  %453 = load i32*, i32** %8, align 8
  %454 = call i32 @i2d_PrivateKey_bio(i32* %452, i32* %453)
  br label %458

455:                                              ; preds = %447
  %456 = load i32, i32* @bio_err, align 4
  %457 = call i32 (i32, i8*, ...) @BIO_printf(i32 %456, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  br label %460

458:                                              ; preds = %451
  br label %459

459:                                              ; preds = %458, %446
  store i32 0, i32* %24, align 4
  br label %460

460:                                              ; preds = %459, %455, %422, %413, %400, %386, %379, %360, %342, %337, %312, %299, %285, %249, %223, %218, %206, %198, %181, %85, %57, %53
  %461 = load i32*, i32** %10, align 8
  %462 = call i32 @X509_SIG_free(i32* %461)
  %463 = load i32*, i32** %9, align 8
  %464 = call i32 @PKCS8_PRIV_KEY_INFO_free(i32* %463)
  %465 = load i32*, i32** %8, align 8
  %466 = call i32 @EVP_PKEY_free(i32* %465)
  %467 = load i32*, i32** %7, align 8
  %468 = call i32 @release_engine(i32* %467)
  %469 = load i32*, i32** %6, align 8
  %470 = call i32 @BIO_free_all(i32* %469)
  %471 = load i32*, i32** %5, align 8
  %472 = call i32 @BIO_free(i32* %471)
  %473 = load i8*, i8** %19, align 8
  %474 = call i32 @OPENSSL_free(i8* %473)
  %475 = load i8*, i8** %20, align 8
  %476 = call i32 @OPENSSL_free(i8* %475)
  %477 = load i32, i32* %24, align 4
  %478 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %478)
  ret i32 %477
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @opt_init(i32, i8**, i32) #2

declare dso_local i32 @opt_next(...) #2

declare dso_local i32 @BIO_printf(i32, i8*, ...) #2

declare dso_local i32 @opt_help(i32) #2

declare dso_local i32 @opt_format(i8*, i32, i32*) #2

declare dso_local i8* @opt_arg(...) #2

declare dso_local i32 @opt_rand(i32) #2

declare dso_local i32 @opt_cipher(i8*, i32**) #2

declare dso_local i32 @OBJ_txt2nid(i8*) #2

declare dso_local i32 @EVP_PBE_find(i32, i32, i32*, i32*, i32) #2

declare dso_local i32* @EVP_aes_256_cbc(...) #2

declare dso_local i32 @opt_int(i8*, i32*) #2

declare dso_local i32* @setup_engine(i8*, i32) #2

declare dso_local i32 @opt_long(i8*, i64*) #2

declare dso_local i32 @opt_num_rest(...) #2

declare dso_local i32 @app_passwd(i8*, i8*, i8**, i8**) #2

declare dso_local i32* @bio_open_default(i8*, i8 signext, i32) #2

declare dso_local i32* @bio_open_owner(i8*, i32, i32) #2

declare dso_local i32* @load_key(i8*, i32, i32, i8*, i32*, i8*) #2

declare dso_local i32* @EVP_PKEY2PKCS8(i32*) #2

declare dso_local i32 @ERR_print_errors(i32) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @PEM_write_bio_PKCS8_PRIV_KEY_INFO(i32*, i32*) #2

declare dso_local i32 @i2d_PKCS8_PRIV_KEY_INFO_bio(i32*, i32*) #2

declare dso_local i32* @PKCS5_pbe2_set_scrypt(i32*, i32*, i32, i32*, i64, i64, i64) #2

declare dso_local i32* @PKCS5_pbe2_set_iv(i32*, i32, i32*, i32, i32*, i32) #2

declare dso_local i32* @PKCS5_pbe_set(i32, i32, i32*, i32) #2

declare dso_local i64 @EVP_read_pw_string(i8*, i32, i8*, i32) #2

declare dso_local i32 @X509_ALGOR_free(i32*) #2

declare dso_local i32* @PKCS8_set0_pbe(i8*, i32, i32*, i32*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @PEM_write_bio_PKCS8(i32*, i32*) #2

declare dso_local i32 @i2d_PKCS8_bio(i32*, i32*) #2

declare dso_local i32* @PEM_read_bio_PKCS8_PRIV_KEY_INFO(i32*, i32*, i32*, i32*) #2

declare dso_local i32* @d2i_PKCS8_PRIV_KEY_INFO_bio(i32*, i32*) #2

declare dso_local i32* @PEM_read_bio_PKCS8(i32*, i32*, i32*, i32*) #2

declare dso_local i32* @d2i_PKCS8_bio(i32*, i32*) #2

declare dso_local i32* @PKCS8_decrypt(i32*, i8*, i32) #2

declare dso_local i32* @EVP_PKCS82PKEY(i32*) #2

declare dso_local i32 @PEM_write_bio_PrivateKey_traditional(i32*, i32*, i32*, i32*, i32, i32*, i8*) #2

declare dso_local i32 @PEM_write_bio_PrivateKey(i32*, i32*, i32*, i32*, i32, i32*, i8*) #2

declare dso_local i32 @i2d_PrivateKey_bio(i32*, i32*) #2

declare dso_local i32 @X509_SIG_free(i32*) #2

declare dso_local i32 @PKCS8_PRIV_KEY_INFO_free(i32*) #2

declare dso_local i32 @EVP_PKEY_free(i32*) #2

declare dso_local i32 @release_engine(i32*) #2

declare dso_local i32 @BIO_free_all(i32*) #2

declare dso_local i32 @BIO_free(i32*) #2

declare dso_local i32 @OPENSSL_free(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
