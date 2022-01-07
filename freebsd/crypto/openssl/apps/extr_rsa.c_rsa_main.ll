; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_rsa.c_rsa_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_rsa.c_rsa_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FORMAT_PEM = common dso_local global i32 0, align 4
@rsa_options = common dso_local global i32 0, align 4
@bio_err = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [28 x i8] c"%s: Use -help for summary.\0A\00", align 1
@OPT_FMT_ANY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Error getting passwords\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Only private keys can be checked\0A\00", align 1
@FORMAT_PEMRSA = common dso_local global i32 0, align 4
@FORMAT_ASN1 = common dso_local global i32 0, align 4
@FORMAT_ASN1RSA = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"Public Key\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"Private Key\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"Modulus=\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"RSA key ok\0A\00", align 1
@ERR_LIB_RSA = common dso_local global i64 0, align 8
@RSA_F_RSA_CHECK_KEY_EX = common dso_local global i64 0, align 8
@ERR_R_MALLOC_FAILURE = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [19 x i8] c"RSA key error: %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"writing RSA key\0A\00", align 1
@FORMAT_MSBLOB = common dso_local global i32 0, align 4
@FORMAT_PVK = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [43 x i8] c"PVK form impossible with public key input\0A\00", align 1
@.str.11 = private unnamed_addr constant [41 x i8] c"bad output format specified for outfile\0A\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"unable to write key\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rsa_main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
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
  %29 = alloca i32*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32*, align 8
  %32 = alloca i32, align 4
  %33 = alloca i64, align 8
  %34 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %12, align 8
  store i8* null, i8** %13, align 8
  store i8* null, i8** %14, align 8
  store i8* null, i8** %15, align 8
  store i32 0, i32* %17, align 4
  %35 = load i32, i32* @FORMAT_PEM, align 4
  store i32 %35, i32* %18, align 4
  %36 = load i32, i32* @FORMAT_PEM, align 4
  store i32 %36, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  store i32 0, i32* %25, align 4
  store i32 1, i32* %26, align 4
  store i32 2, i32* %27, align 4
  %37 = load i32, i32* %3, align 4
  %38 = load i8**, i8*** %4, align 8
  %39 = load i32, i32* @rsa_options, align 4
  %40 = call i8* @opt_init(i32 %37, i8** %38, i32 %39)
  store i8* %40, i8** %11, align 8
  br label %41

41:                                               ; preds = %96, %2
  %42 = call i32 (...) @opt_next()
  store i32 %42, i32* %28, align 4
  %43 = icmp ne i32 %42, 146
  br i1 %43, label %44, label %97

44:                                               ; preds = %41
  %45 = load i32, i32* %28, align 4
  switch i32 %45, label %96 [
    i32 146, label %46
    i32 145, label %46
    i32 144, label %51
    i32 142, label %54
    i32 143, label %61
    i32 138, label %63
    i32 139, label %70
    i32 137, label %72
    i32 136, label %74
    i32 147, label %76
    i32 135, label %79
    i32 134, label %80
    i32 130, label %81
    i32 129, label %82
    i32 132, label %83
    i32 131, label %83
    i32 133, label %83
    i32 140, label %86
    i32 128, label %87
    i32 141, label %88
    i32 149, label %89
    i32 148, label %90
  ]

46:                                               ; preds = %44, %44
  br label %47

47:                                               ; preds = %101, %94, %68, %59, %46
  %48 = load i32*, i32** @bio_err, align 8
  %49 = load i8*, i8** %11, align 8
  %50 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %48, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %49)
  br label %417

51:                                               ; preds = %44
  %52 = load i32, i32* @rsa_options, align 4
  %53 = call i32 @opt_help(i32 %52)
  store i32 0, i32* %26, align 4
  br label %417

54:                                               ; preds = %44
  %55 = call i8* (...) @opt_arg()
  %56 = load i32, i32* @OPT_FMT_ANY, align 4
  %57 = call i32 @opt_format(i8* %55, i32 %56, i32* %18)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %54
  br label %47

60:                                               ; preds = %54
  br label %96

61:                                               ; preds = %44
  %62 = call i8* (...) @opt_arg()
  store i8* %62, i8** %9, align 8
  br label %96

63:                                               ; preds = %44
  %64 = call i8* (...) @opt_arg()
  %65 = load i32, i32* @OPT_FMT_ANY, align 4
  %66 = call i32 @opt_format(i8* %64, i32 %65, i32* %19)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %63
  br label %47

69:                                               ; preds = %63
  br label %96

70:                                               ; preds = %44
  %71 = call i8* (...) @opt_arg()
  store i8* %71, i8** %10, align 8
  br label %96

72:                                               ; preds = %44
  %73 = call i8* (...) @opt_arg()
  store i8* %73, i8** %14, align 8
  br label %96

74:                                               ; preds = %44
  %75 = call i8* (...) @opt_arg()
  store i8* %75, i8** %15, align 8
  br label %96

76:                                               ; preds = %44
  %77 = call i8* (...) @opt_arg()
  %78 = call i32* @setup_engine(i8* %77, i32 0)
  store i32* %78, i32** %5, align 8
  br label %96

79:                                               ; preds = %44
  store i32 1, i32* %24, align 4
  br label %96

80:                                               ; preds = %44
  store i32 1, i32* %25, align 4
  br label %96

81:                                               ; preds = %44
  store i32 2, i32* %24, align 4
  br label %96

82:                                               ; preds = %44
  store i32 2, i32* %25, align 4
  br label %96

83:                                               ; preds = %44, %44, %44
  %84 = load i32, i32* %28, align 4
  %85 = sub nsw i32 %84, 133
  store i32 %85, i32* %27, align 4
  br label %96

86:                                               ; preds = %44
  store i32 1, i32* %22, align 4
  br label %96

87:                                               ; preds = %44
  store i32 1, i32* %20, align 4
  br label %96

88:                                               ; preds = %44
  store i32 1, i32* %23, align 4
  br label %96

89:                                               ; preds = %44
  store i32 1, i32* %21, align 4
  br label %96

90:                                               ; preds = %44
  %91 = call i32 (...) @opt_unknown()
  %92 = call i32 @opt_cipher(i32 %91, i32** %8)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %90
  br label %47

95:                                               ; preds = %90
  br label %96

96:                                               ; preds = %44, %95, %89, %88, %87, %86, %83, %82, %81, %80, %79, %76, %74, %72, %70, %69, %61, %60
  br label %41

97:                                               ; preds = %41
  %98 = call i32 (...) @opt_num_rest()
  store i32 %98, i32* %3, align 4
  %99 = load i32, i32* %3, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %97
  br label %47

102:                                              ; preds = %97
  %103 = load i32, i32* %20, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %102
  %106 = load i32, i32* %24, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %117

108:                                              ; preds = %105, %102
  %109 = load i32, i32* %25, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %115, label %111

111:                                              ; preds = %108
  %112 = load i32, i32* %22, align 4
  %113 = icmp ne i32 %112, 0
  %114 = xor i1 %113, true
  br label %115

115:                                              ; preds = %111, %108
  %116 = phi i1 [ false, %108 ], [ %114, %111 ]
  br label %117

117:                                              ; preds = %115, %105
  %118 = phi i1 [ true, %105 ], [ %116, %115 ]
  %119 = zext i1 %118 to i64
  %120 = select i1 %118, i32 1, i32 0
  store i32 %120, i32* %17, align 4
  %121 = load i8*, i8** %14, align 8
  %122 = load i8*, i8** %15, align 8
  %123 = call i32 @app_passwd(i8* %121, i8* %122, i8** %12, i8** %13)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %128, label %125

125:                                              ; preds = %117
  %126 = load i32*, i32** @bio_err, align 8
  %127 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %126, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %417

128:                                              ; preds = %117
  %129 = load i32, i32* %21, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %128
  %132 = load i32, i32* %24, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %131
  %135 = load i32*, i32** @bio_err, align 8
  %136 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %135, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %417

137:                                              ; preds = %131, %128
  %138 = load i32, i32* %24, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %165

140:                                              ; preds = %137
  store i32 -1, i32* %30, align 4
  %141 = load i32, i32* %24, align 4
  %142 = icmp eq i32 %141, 2
  br i1 %142, label %143, label %157

143:                                              ; preds = %140
  %144 = load i32, i32* %18, align 4
  %145 = load i32, i32* @FORMAT_PEM, align 4
  %146 = icmp eq i32 %144, %145
  br i1 %146, label %147, label %149

147:                                              ; preds = %143
  %148 = load i32, i32* @FORMAT_PEMRSA, align 4
  store i32 %148, i32* %30, align 4
  br label %156

149:                                              ; preds = %143
  %150 = load i32, i32* %18, align 4
  %151 = load i32, i32* @FORMAT_ASN1, align 4
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %153, label %155

153:                                              ; preds = %149
  %154 = load i32, i32* @FORMAT_ASN1RSA, align 4
  store i32 %154, i32* %30, align 4
  br label %155

155:                                              ; preds = %153, %149
  br label %156

156:                                              ; preds = %155, %147
  br label %159

157:                                              ; preds = %140
  %158 = load i32, i32* %18, align 4
  store i32 %158, i32* %30, align 4
  br label %159

159:                                              ; preds = %157, %156
  %160 = load i8*, i8** %9, align 8
  %161 = load i32, i32* %30, align 4
  %162 = load i8*, i8** %12, align 8
  %163 = load i32*, i32** %5, align 8
  %164 = call i32* @load_pubkey(i8* %160, i32 %161, i32 1, i8* %162, i32* %163, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  store i32* %164, i32** %29, align 8
  br label %171

165:                                              ; preds = %137
  %166 = load i8*, i8** %9, align 8
  %167 = load i32, i32* %18, align 4
  %168 = load i8*, i8** %12, align 8
  %169 = load i32*, i32** %5, align 8
  %170 = call i32* @load_key(i8* %166, i32 %167, i32 1, i8* %168, i32* %169, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  store i32* %170, i32** %29, align 8
  br label %171

171:                                              ; preds = %165, %159
  %172 = load i32*, i32** %29, align 8
  %173 = icmp ne i32* %172, null
  br i1 %173, label %174, label %177

174:                                              ; preds = %171
  %175 = load i32*, i32** %29, align 8
  %176 = call i32* @EVP_PKEY_get1_RSA(i32* %175)
  store i32* %176, i32** %7, align 8
  br label %177

177:                                              ; preds = %174, %171
  %178 = load i32*, i32** %29, align 8
  %179 = call i32 @EVP_PKEY_free(i32* %178)
  %180 = load i32*, i32** %7, align 8
  %181 = icmp eq i32* %180, null
  br i1 %181, label %182, label %185

182:                                              ; preds = %177
  %183 = load i32*, i32** @bio_err, align 8
  %184 = call i32 @ERR_print_errors(i32* %183)
  br label %417

185:                                              ; preds = %177
  %186 = load i8*, i8** %10, align 8
  %187 = load i32, i32* %19, align 4
  %188 = load i32, i32* %17, align 4
  %189 = call i32* @bio_open_owner(i8* %186, i32 %187, i32 %188)
  store i32* %189, i32** %6, align 8
  %190 = load i32*, i32** %6, align 8
  %191 = icmp eq i32* %190, null
  br i1 %191, label %192, label %193

192:                                              ; preds = %185
  br label %417

193:                                              ; preds = %185
  %194 = load i32, i32* %20, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %216

196:                                              ; preds = %193
  %197 = load i32, i32* %24, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %202, label %199

199:                                              ; preds = %196
  %200 = load i32, i32* %17, align 4
  %201 = icmp ne i32 %200, 0
  br label %202

202:                                              ; preds = %199, %196
  %203 = phi i1 [ true, %196 ], [ %201, %199 ]
  %204 = zext i1 %203 to i32
  %205 = call i32 @assert(i32 %204)
  %206 = load i32*, i32** %6, align 8
  %207 = load i32*, i32** %7, align 8
  %208 = call i32 @RSA_print(i32* %206, i32* %207, i32 0)
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %215, label %210

210:                                              ; preds = %202
  %211 = load i8*, i8** %10, align 8
  %212 = call i32 @perror(i8* %211)
  %213 = load i32*, i32** @bio_err, align 8
  %214 = call i32 @ERR_print_errors(i32* %213)
  br label %417

215:                                              ; preds = %202
  br label %216

216:                                              ; preds = %215, %193
  %217 = load i32, i32* %23, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %229

219:                                              ; preds = %216
  %220 = load i32*, i32** %7, align 8
  %221 = call i32 @RSA_get0_key(i32* %220, i32** %31, i32* null, i32* null)
  %222 = load i32*, i32** %6, align 8
  %223 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %222, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %224 = load i32*, i32** %6, align 8
  %225 = load i32*, i32** %31, align 8
  %226 = call i32 @BN_print(i32* %224, i32* %225)
  %227 = load i32*, i32** %6, align 8
  %228 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %227, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %229

229:                                              ; preds = %219, %216
  %230 = load i32, i32* %21, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %280

232:                                              ; preds = %229
  %233 = load i32*, i32** %7, align 8
  %234 = call i32 @RSA_check_key_ex(i32* %233, i32* null)
  store i32 %234, i32* %32, align 4
  %235 = load i32, i32* %32, align 4
  %236 = icmp eq i32 %235, 1
  br i1 %236, label %237, label %240

237:                                              ; preds = %232
  %238 = load i32*, i32** %6, align 8
  %239 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %238, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  br label %279

240:                                              ; preds = %232
  %241 = load i32, i32* %32, align 4
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %243, label %271

243:                                              ; preds = %240
  br label %244

244:                                              ; preds = %264, %243
  %245 = call i64 (...) @ERR_peek_error()
  store i64 %245, i64* %33, align 8
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %262

247:                                              ; preds = %244
  %248 = load i64, i64* %33, align 8
  %249 = call i64 @ERR_GET_LIB(i64 %248)
  %250 = load i64, i64* @ERR_LIB_RSA, align 8
  %251 = icmp eq i64 %249, %250
  br i1 %251, label %252, label %262

252:                                              ; preds = %247
  %253 = load i64, i64* %33, align 8
  %254 = call i64 @ERR_GET_FUNC(i64 %253)
  %255 = load i64, i64* @RSA_F_RSA_CHECK_KEY_EX, align 8
  %256 = icmp eq i64 %254, %255
  br i1 %256, label %257, label %262

257:                                              ; preds = %252
  %258 = load i64, i64* %33, align 8
  %259 = call i64 @ERR_GET_REASON(i64 %258)
  %260 = load i64, i64* @ERR_R_MALLOC_FAILURE, align 8
  %261 = icmp ne i64 %259, %260
  br label %262

262:                                              ; preds = %257, %252, %247, %244
  %263 = phi i1 [ false, %252 ], [ false, %247 ], [ false, %244 ], [ %261, %257 ]
  br i1 %263, label %264, label %270

264:                                              ; preds = %262
  %265 = load i32*, i32** %6, align 8
  %266 = load i64, i64* %33, align 8
  %267 = call i32 @ERR_reason_error_string(i64 %266)
  %268 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %265, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i32 %267)
  %269 = call i32 (...) @ERR_get_error()
  br label %244

270:                                              ; preds = %262
  br label %278

271:                                              ; preds = %240
  %272 = load i32, i32* %32, align 4
  %273 = icmp eq i32 %272, -1
  br i1 %273, label %274, label %277

274:                                              ; preds = %271
  %275 = load i32*, i32** @bio_err, align 8
  %276 = call i32 @ERR_print_errors(i32* %275)
  br label %417

277:                                              ; preds = %271
  br label %278

278:                                              ; preds = %277, %270
  br label %279

279:                                              ; preds = %278, %237
  br label %280

280:                                              ; preds = %279, %229
  %281 = load i32, i32* %22, align 4
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %284

283:                                              ; preds = %280
  store i32 0, i32* %26, align 4
  br label %417

284:                                              ; preds = %280
  %285 = load i32*, i32** @bio_err, align 8
  %286 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %285, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0))
  %287 = load i32, i32* %19, align 4
  %288 = load i32, i32* @FORMAT_ASN1, align 4
  %289 = icmp eq i32 %287, %288
  br i1 %289, label %290, label %315

290:                                              ; preds = %284
  %291 = load i32, i32* %25, align 4
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %296, label %293

293:                                              ; preds = %290
  %294 = load i32, i32* %24, align 4
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %308

296:                                              ; preds = %293, %290
  %297 = load i32, i32* %25, align 4
  %298 = icmp eq i32 %297, 2
  br i1 %298, label %299, label %303

299:                                              ; preds = %296
  %300 = load i32*, i32** %6, align 8
  %301 = load i32*, i32** %7, align 8
  %302 = call i32 @i2d_RSAPublicKey_bio(i32* %300, i32* %301)
  store i32 %302, i32* %16, align 4
  br label %307

303:                                              ; preds = %296
  %304 = load i32*, i32** %6, align 8
  %305 = load i32*, i32** %7, align 8
  %306 = call i32 @i2d_RSA_PUBKEY_bio(i32* %304, i32* %305)
  store i32 %306, i32* %16, align 4
  br label %307

307:                                              ; preds = %303, %299
  br label %314

308:                                              ; preds = %293
  %309 = load i32, i32* %17, align 4
  %310 = call i32 @assert(i32 %309)
  %311 = load i32*, i32** %6, align 8
  %312 = load i32*, i32** %7, align 8
  %313 = call i32 @i2d_RSAPrivateKey_bio(i32* %311, i32* %312)
  store i32 %313, i32* %16, align 4
  br label %314

314:                                              ; preds = %308, %307
  br label %407

315:                                              ; preds = %284
  %316 = load i32, i32* %19, align 4
  %317 = load i32, i32* @FORMAT_PEM, align 4
  %318 = icmp eq i32 %316, %317
  br i1 %318, label %319, label %346

319:                                              ; preds = %315
  %320 = load i32, i32* %25, align 4
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %325, label %322

322:                                              ; preds = %319
  %323 = load i32, i32* %24, align 4
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %337

325:                                              ; preds = %322, %319
  %326 = load i32, i32* %25, align 4
  %327 = icmp eq i32 %326, 2
  br i1 %327, label %328, label %332

328:                                              ; preds = %325
  %329 = load i32*, i32** %6, align 8
  %330 = load i32*, i32** %7, align 8
  %331 = call i32 @PEM_write_bio_RSAPublicKey(i32* %329, i32* %330)
  store i32 %331, i32* %16, align 4
  br label %336

332:                                              ; preds = %325
  %333 = load i32*, i32** %6, align 8
  %334 = load i32*, i32** %7, align 8
  %335 = call i32 @PEM_write_bio_RSA_PUBKEY(i32* %333, i32* %334)
  store i32 %335, i32* %16, align 4
  br label %336

336:                                              ; preds = %332, %328
  br label %345

337:                                              ; preds = %322
  %338 = load i32, i32* %17, align 4
  %339 = call i32 @assert(i32 %338)
  %340 = load i32*, i32** %6, align 8
  %341 = load i32*, i32** %7, align 8
  %342 = load i32*, i32** %8, align 8
  %343 = load i8*, i8** %13, align 8
  %344 = call i32 @PEM_write_bio_RSAPrivateKey(i32* %340, i32* %341, i32* %342, i32* null, i32 0, i32* null, i8* %343)
  store i32 %344, i32* %16, align 4
  br label %345

345:                                              ; preds = %337, %336
  br label %406

346:                                              ; preds = %315
  %347 = load i32, i32* %19, align 4
  %348 = load i32, i32* @FORMAT_MSBLOB, align 4
  %349 = icmp eq i32 %347, %348
  br i1 %349, label %354, label %350

350:                                              ; preds = %346
  %351 = load i32, i32* %19, align 4
  %352 = load i32, i32* @FORMAT_PVK, align 4
  %353 = icmp eq i32 %351, %352
  br i1 %353, label %354, label %402

354:                                              ; preds = %350, %346
  %355 = call i32* (...) @EVP_PKEY_new()
  store i32* %355, i32** %34, align 8
  %356 = load i32*, i32** %34, align 8
  %357 = icmp eq i32* %356, null
  br i1 %357, label %358, label %359

358:                                              ; preds = %354
  br label %417

359:                                              ; preds = %354
  %360 = load i32*, i32** %34, align 8
  %361 = load i32*, i32** %7, align 8
  %362 = call i32 @EVP_PKEY_set1_RSA(i32* %360, i32* %361)
  %363 = load i32, i32* %19, align 4
  %364 = load i32, i32* @FORMAT_PVK, align 4
  %365 = icmp eq i32 %363, %364
  br i1 %365, label %366, label %382

366:                                              ; preds = %359
  %367 = load i32, i32* %24, align 4
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %369, label %374

369:                                              ; preds = %366
  %370 = load i32*, i32** @bio_err, align 8
  %371 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %370, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.10, i64 0, i64 0))
  %372 = load i32*, i32** %34, align 8
  %373 = call i32 @EVP_PKEY_free(i32* %372)
  br label %417

374:                                              ; preds = %366
  %375 = load i32, i32* %17, align 4
  %376 = call i32 @assert(i32 %375)
  %377 = load i32*, i32** %6, align 8
  %378 = load i32*, i32** %34, align 8
  %379 = load i32, i32* %27, align 4
  %380 = load i8*, i8** %13, align 8
  %381 = call i32 @i2b_PVK_bio(i32* %377, i32* %378, i32 %379, i32 0, i8* %380)
  store i32 %381, i32* %16, align 4
  br label %399

382:                                              ; preds = %359
  %383 = load i32, i32* %24, align 4
  %384 = icmp ne i32 %383, 0
  br i1 %384, label %388, label %385

385:                                              ; preds = %382
  %386 = load i32, i32* %25, align 4
  %387 = icmp ne i32 %386, 0
  br i1 %387, label %388, label %392

388:                                              ; preds = %385, %382
  %389 = load i32*, i32** %6, align 8
  %390 = load i32*, i32** %34, align 8
  %391 = call i32 @i2b_PublicKey_bio(i32* %389, i32* %390)
  store i32 %391, i32* %16, align 4
  br label %398

392:                                              ; preds = %385
  %393 = load i32, i32* %17, align 4
  %394 = call i32 @assert(i32 %393)
  %395 = load i32*, i32** %6, align 8
  %396 = load i32*, i32** %34, align 8
  %397 = call i32 @i2b_PrivateKey_bio(i32* %395, i32* %396)
  store i32 %397, i32* %16, align 4
  br label %398

398:                                              ; preds = %392, %388
  br label %399

399:                                              ; preds = %398, %374
  %400 = load i32*, i32** %34, align 8
  %401 = call i32 @EVP_PKEY_free(i32* %400)
  br label %405

402:                                              ; preds = %350
  %403 = load i32*, i32** @bio_err, align 8
  %404 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %403, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.11, i64 0, i64 0))
  br label %417

405:                                              ; preds = %399
  br label %406

406:                                              ; preds = %405, %345
  br label %407

407:                                              ; preds = %406, %314
  %408 = load i32, i32* %16, align 4
  %409 = icmp sle i32 %408, 0
  br i1 %409, label %410, label %415

410:                                              ; preds = %407
  %411 = load i32*, i32** @bio_err, align 8
  %412 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %411, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0))
  %413 = load i32*, i32** @bio_err, align 8
  %414 = call i32 @ERR_print_errors(i32* %413)
  br label %416

415:                                              ; preds = %407
  store i32 0, i32* %26, align 4
  br label %416

416:                                              ; preds = %415, %410
  br label %417

417:                                              ; preds = %416, %402, %369, %358, %283, %274, %210, %192, %182, %134, %125, %51, %47
  %418 = load i32*, i32** %5, align 8
  %419 = call i32 @release_engine(i32* %418)
  %420 = load i32*, i32** %6, align 8
  %421 = call i32 @BIO_free_all(i32* %420)
  %422 = load i32*, i32** %7, align 8
  %423 = call i32 @RSA_free(i32* %422)
  %424 = load i8*, i8** %12, align 8
  %425 = call i32 @OPENSSL_free(i8* %424)
  %426 = load i8*, i8** %13, align 8
  %427 = call i32 @OPENSSL_free(i8* %426)
  %428 = load i32, i32* %26, align 4
  ret i32 %428
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

declare dso_local i32* @load_pubkey(i8*, i32, i32, i8*, i32*, i8*) #1

declare dso_local i32* @load_key(i8*, i32, i32, i8*, i32*, i8*) #1

declare dso_local i32* @EVP_PKEY_get1_RSA(i32*) #1

declare dso_local i32 @EVP_PKEY_free(i32*) #1

declare dso_local i32 @ERR_print_errors(i32*) #1

declare dso_local i32* @bio_open_owner(i8*, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @RSA_print(i32*, i32*, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @RSA_get0_key(i32*, i32**, i32*, i32*) #1

declare dso_local i32 @BN_print(i32*, i32*) #1

declare dso_local i32 @RSA_check_key_ex(i32*, i32*) #1

declare dso_local i64 @ERR_peek_error(...) #1

declare dso_local i64 @ERR_GET_LIB(i64) #1

declare dso_local i64 @ERR_GET_FUNC(i64) #1

declare dso_local i64 @ERR_GET_REASON(i64) #1

declare dso_local i32 @ERR_reason_error_string(i64) #1

declare dso_local i32 @ERR_get_error(...) #1

declare dso_local i32 @i2d_RSAPublicKey_bio(i32*, i32*) #1

declare dso_local i32 @i2d_RSA_PUBKEY_bio(i32*, i32*) #1

declare dso_local i32 @i2d_RSAPrivateKey_bio(i32*, i32*) #1

declare dso_local i32 @PEM_write_bio_RSAPublicKey(i32*, i32*) #1

declare dso_local i32 @PEM_write_bio_RSA_PUBKEY(i32*, i32*) #1

declare dso_local i32 @PEM_write_bio_RSAPrivateKey(i32*, i32*, i32*, i32*, i32, i32*, i8*) #1

declare dso_local i32* @EVP_PKEY_new(...) #1

declare dso_local i32 @EVP_PKEY_set1_RSA(i32*, i32*) #1

declare dso_local i32 @i2b_PVK_bio(i32*, i32*, i32, i32, i8*) #1

declare dso_local i32 @i2b_PublicKey_bio(i32*, i32*) #1

declare dso_local i32 @i2b_PrivateKey_bio(i32*, i32*) #1

declare dso_local i32 @release_engine(i32*) #1

declare dso_local i32 @BIO_free_all(i32*) #1

declare dso_local i32 @RSA_free(i32*) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
