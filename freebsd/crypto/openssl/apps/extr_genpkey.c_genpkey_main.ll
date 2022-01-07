; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_genpkey.c_genpkey_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_genpkey.c_genpkey_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FORMAT_PEM = common dso_local global i32 0, align 4
@genpkey_options = common dso_local global i32 0, align 4
@bio_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"%s: Use -help for summary.\0A\00", align 1
@OPT_FMT_PEMDER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"%s: No keytype specified.\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"%s: Error setting %s parameter:\0A\00", align 1
@EVP_CIPH_GCM_MODE = common dso_local global i32 0, align 4
@EVP_CIPH_CCM_MODE = common dso_local global i32 0, align 4
@EVP_CIPH_XTS_MODE = common dso_local global i32 0, align 4
@EVP_CIPH_OCB_MODE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"%s: cipher mode not supported\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"Error getting password\0A\00", align 1
@genpkey_cb = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"Error generating parameters\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"Error generating key\0A\00", align 1
@FORMAT_ASN1 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [30 x i8] c"Bad format specified for key\0A\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"Error writing key\0A\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"Error printing key\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @genpkey_main(i32 %0, i8** %1) #0 {
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
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
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
  store i32* null, i32** %14, align 8
  %22 = load i32, i32* @FORMAT_PEM, align 4
  store i32 %22, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 1, i32* %18, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %23 = load i32, i32* %3, align 4
  %24 = load i8**, i8*** %4, align 8
  %25 = load i32, i32* @genpkey_options, align 4
  %26 = call i8* @opt_init(i32 %23, i8** %24, i32 %25)
  store i8* %26, i8** %13, align 8
  br label %27

27:                                               ; preds = %132, %2
  %28 = call i32 (...) @opt_next()
  store i32 %28, i32* %15, align 4
  %29 = icmp ne i32 %28, 137
  br i1 %29, label %30, label %133

30:                                               ; preds = %27
  %31 = load i32, i32* %15, align 4
  switch i32 %31, label %132 [
    i32 137, label %32
    i32 136, label %32
    i32 134, label %37
    i32 132, label %40
    i32 133, label %47
    i32 130, label %49
    i32 138, label %51
    i32 131, label %54
    i32 140, label %65
    i32 129, label %73
    i32 135, label %93
    i32 128, label %98
    i32 139, label %99
  ]

32:                                               ; preds = %30, %30
  br label %33

33:                                               ; preds = %145, %137, %106, %96, %76, %57, %45, %32
  %34 = load i32, i32* @bio_err, align 4
  %35 = load i8*, i8** %13, align 8
  %36 = call i32 (i32, i8*, ...) @BIO_printf(i32 %34, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %35)
  br label %256

37:                                               ; preds = %30
  store i32 0, i32* %18, align 4
  %38 = load i32, i32* @genpkey_options, align 4
  %39 = call i32 @opt_help(i32 %38)
  br label %256

40:                                               ; preds = %30
  %41 = call i8* (...) @opt_arg()
  %42 = load i32, i32* @OPT_FMT_PEMDER, align 4
  %43 = call i32 @opt_format(i8* %41, i32 %42, i32* %16)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %40
  br label %33

46:                                               ; preds = %40
  br label %132

47:                                               ; preds = %30
  %48 = call i8* (...) @opt_arg()
  store i8* %48, i8** %10, align 8
  br label %132

49:                                               ; preds = %30
  %50 = call i8* (...) @opt_arg()
  store i8* %50, i8** %11, align 8
  br label %132

51:                                               ; preds = %30
  %52 = call i8* (...) @opt_arg()
  %53 = call i32* @setup_engine(i8* %52, i32 0)
  store i32* %53, i32** %7, align 8
  br label %132

54:                                               ; preds = %30
  %55 = load i32, i32* %20, align 4
  %56 = icmp eq i32 %55, 1
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  br label %33

58:                                               ; preds = %54
  %59 = call i8* (...) @opt_arg()
  %60 = load i32*, i32** %7, align 8
  %61 = call i32 @init_keygen_file(i32** %9, i8* %59, i32* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %58
  br label %256

64:                                               ; preds = %58
  br label %132

65:                                               ; preds = %30
  %66 = call i8* (...) @opt_arg()
  %67 = load i32*, i32** %7, align 8
  %68 = load i32, i32* %20, align 4
  %69 = call i32 @init_gen_str(i32** %9, i8* %66, i32* %67, i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %65
  br label %256

72:                                               ; preds = %65
  br label %132

73:                                               ; preds = %30
  %74 = load i32*, i32** %9, align 8
  %75 = icmp eq i32* %74, null
  br i1 %75, label %76, label %80

76:                                               ; preds = %73
  %77 = load i32, i32* @bio_err, align 4
  %78 = load i8*, i8** %13, align 8
  %79 = call i32 (i32, i8*, ...) @BIO_printf(i32 %77, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %78)
  br label %33

80:                                               ; preds = %73
  %81 = load i32*, i32** %9, align 8
  %82 = call i8* (...) @opt_arg()
  %83 = call i32 @pkey_ctrl_string(i32* %81, i8* %82)
  %84 = icmp sle i32 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %80
  %86 = load i32, i32* @bio_err, align 4
  %87 = load i8*, i8** %13, align 8
  %88 = call i8* (...) @opt_arg()
  %89 = call i32 (i32, i8*, ...) @BIO_printf(i32 %86, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8* %87, i8* %88)
  %90 = load i32, i32* @bio_err, align 4
  %91 = call i32 @ERR_print_errors(i32 %90)
  br label %256

92:                                               ; preds = %80
  br label %132

93:                                               ; preds = %30
  %94 = load i32*, i32** %9, align 8
  %95 = icmp ne i32* %94, null
  br i1 %95, label %96, label %97

96:                                               ; preds = %93
  br label %33

97:                                               ; preds = %93
  store i32 1, i32* %20, align 4
  br label %132

98:                                               ; preds = %30
  store i32 1, i32* %17, align 4
  br label %132

99:                                               ; preds = %30
  %100 = call i32 (...) @opt_unknown()
  %101 = call i32 @opt_cipher(i32 %100, i32** %14)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %99
  %104 = load i32, i32* %20, align 4
  %105 = icmp eq i32 %104, 1
  br i1 %105, label %106, label %107

106:                                              ; preds = %103, %99
  br label %33

107:                                              ; preds = %103
  %108 = load i32*, i32** %14, align 8
  %109 = call i32 @EVP_CIPHER_mode(i32* %108)
  %110 = load i32, i32* @EVP_CIPH_GCM_MODE, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %127, label %112

112:                                              ; preds = %107
  %113 = load i32*, i32** %14, align 8
  %114 = call i32 @EVP_CIPHER_mode(i32* %113)
  %115 = load i32, i32* @EVP_CIPH_CCM_MODE, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %127, label %117

117:                                              ; preds = %112
  %118 = load i32*, i32** %14, align 8
  %119 = call i32 @EVP_CIPHER_mode(i32* %118)
  %120 = load i32, i32* @EVP_CIPH_XTS_MODE, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %127, label %122

122:                                              ; preds = %117
  %123 = load i32*, i32** %14, align 8
  %124 = call i32 @EVP_CIPHER_mode(i32* %123)
  %125 = load i32, i32* @EVP_CIPH_OCB_MODE, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %131

127:                                              ; preds = %122, %117, %112, %107
  %128 = load i32, i32* @bio_err, align 4
  %129 = load i8*, i8** %13, align 8
  %130 = call i32 (i32, i8*, ...) @BIO_printf(i32 %128, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8* %129)
  br label %256

131:                                              ; preds = %122
  br label %132

132:                                              ; preds = %131, %30, %98, %97, %92, %72, %64, %51, %49, %47, %46
  br label %27

133:                                              ; preds = %27
  %134 = call i32 (...) @opt_num_rest()
  store i32 %134, i32* %3, align 4
  %135 = load i32, i32* %3, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %133
  br label %33

138:                                              ; preds = %133
  %139 = load i32, i32* %20, align 4
  %140 = icmp ne i32 %139, 0
  %141 = zext i1 %140 to i64
  %142 = select i1 %140, i32 0, i32 1
  store i32 %142, i32* %21, align 4
  %143 = load i32*, i32** %9, align 8
  %144 = icmp eq i32* %143, null
  br i1 %144, label %145, label %146

145:                                              ; preds = %138
  br label %33

146:                                              ; preds = %138
  %147 = load i8*, i8** %11, align 8
  %148 = call i32 @app_passwd(i8* %147, i32* null, i8** %12, i32* null)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %153, label %150

150:                                              ; preds = %146
  %151 = load i32, i32* @bio_err, align 4
  %152 = call i32 @BIO_puts(i32 %151, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  br label %256

153:                                              ; preds = %146
  %154 = load i8*, i8** %10, align 8
  %155 = load i32, i32* %16, align 4
  %156 = load i32, i32* %21, align 4
  %157 = call i32* @bio_open_owner(i8* %154, i32 %155, i32 %156)
  store i32* %157, i32** %6, align 8
  %158 = load i32*, i32** %6, align 8
  %159 = icmp eq i32* %158, null
  br i1 %159, label %160, label %161

160:                                              ; preds = %153
  br label %256

161:                                              ; preds = %153
  %162 = load i32*, i32** %9, align 8
  %163 = load i32, i32* @genpkey_cb, align 4
  %164 = call i32 @EVP_PKEY_CTX_set_cb(i32* %162, i32 %163)
  %165 = load i32*, i32** %9, align 8
  %166 = load i32, i32* @bio_err, align 4
  %167 = call i32 @EVP_PKEY_CTX_set_app_data(i32* %165, i32 %166)
  %168 = load i32, i32* %20, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %180

170:                                              ; preds = %161
  %171 = load i32*, i32** %9, align 8
  %172 = call i64 @EVP_PKEY_paramgen(i32* %171, i32** %8)
  %173 = icmp sle i64 %172, 0
  br i1 %173, label %174, label %179

174:                                              ; preds = %170
  %175 = load i32, i32* @bio_err, align 4
  %176 = call i32 @BIO_puts(i32 %175, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %177 = load i32, i32* @bio_err, align 4
  %178 = call i32 @ERR_print_errors(i32 %177)
  br label %256

179:                                              ; preds = %170
  br label %190

180:                                              ; preds = %161
  %181 = load i32*, i32** %9, align 8
  %182 = call i64 @EVP_PKEY_keygen(i32* %181, i32** %8)
  %183 = icmp sle i64 %182, 0
  br i1 %183, label %184, label %189

184:                                              ; preds = %180
  %185 = load i32, i32* @bio_err, align 4
  %186 = call i32 @BIO_puts(i32 %185, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  %187 = load i32, i32* @bio_err, align 4
  %188 = call i32 @ERR_print_errors(i32 %187)
  br label %256

189:                                              ; preds = %180
  br label %190

190:                                              ; preds = %189, %179
  %191 = load i32, i32* %20, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %197

193:                                              ; preds = %190
  %194 = load i32*, i32** %6, align 8
  %195 = load i32*, i32** %8, align 8
  %196 = call i32 @PEM_write_bio_Parameters(i32* %194, i32* %195)
  store i32 %196, i32* %19, align 4
  br label %224

197:                                              ; preds = %190
  %198 = load i32, i32* %16, align 4
  %199 = load i32, i32* @FORMAT_PEM, align 4
  %200 = icmp eq i32 %198, %199
  br i1 %200, label %201, label %209

201:                                              ; preds = %197
  %202 = load i32, i32* %21, align 4
  %203 = call i32 @assert(i32 %202)
  %204 = load i32*, i32** %6, align 8
  %205 = load i32*, i32** %8, align 8
  %206 = load i32*, i32** %14, align 8
  %207 = load i8*, i8** %12, align 8
  %208 = call i32 @PEM_write_bio_PrivateKey(i32* %204, i32* %205, i32* %206, i32* null, i32 0, i32* null, i8* %207)
  store i32 %208, i32* %19, align 4
  br label %223

209:                                              ; preds = %197
  %210 = load i32, i32* %16, align 4
  %211 = load i32, i32* @FORMAT_ASN1, align 4
  %212 = icmp eq i32 %210, %211
  br i1 %212, label %213, label %219

213:                                              ; preds = %209
  %214 = load i32, i32* %21, align 4
  %215 = call i32 @assert(i32 %214)
  %216 = load i32*, i32** %6, align 8
  %217 = load i32*, i32** %8, align 8
  %218 = call i32 @i2d_PrivateKey_bio(i32* %216, i32* %217)
  store i32 %218, i32* %19, align 4
  br label %222

219:                                              ; preds = %209
  %220 = load i32, i32* @bio_err, align 4
  %221 = call i32 (i32, i8*, ...) @BIO_printf(i32 %220, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  br label %256

222:                                              ; preds = %213
  br label %223

223:                                              ; preds = %222, %201
  br label %224

224:                                              ; preds = %223, %193
  %225 = load i32, i32* %19, align 4
  %226 = icmp sle i32 %225, 0
  br i1 %226, label %227, label %232

227:                                              ; preds = %224
  %228 = load i32, i32* @bio_err, align 4
  %229 = call i32 @BIO_puts(i32 %228, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  %230 = load i32, i32* @bio_err, align 4
  %231 = call i32 @ERR_print_errors(i32 %230)
  br label %232

232:                                              ; preds = %227, %224
  %233 = load i32, i32* %17, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %255

235:                                              ; preds = %232
  %236 = load i32, i32* %20, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %242

238:                                              ; preds = %235
  %239 = load i32*, i32** %6, align 8
  %240 = load i32*, i32** %8, align 8
  %241 = call i32 @EVP_PKEY_print_params(i32* %239, i32* %240, i32 0, i32* null)
  store i32 %241, i32* %19, align 4
  br label %246

242:                                              ; preds = %235
  %243 = load i32*, i32** %6, align 8
  %244 = load i32*, i32** %8, align 8
  %245 = call i32 @EVP_PKEY_print_private(i32* %243, i32* %244, i32 0, i32* null)
  store i32 %245, i32* %19, align 4
  br label %246

246:                                              ; preds = %242, %238
  %247 = load i32, i32* %19, align 4
  %248 = icmp sle i32 %247, 0
  br i1 %248, label %249, label %254

249:                                              ; preds = %246
  %250 = load i32, i32* @bio_err, align 4
  %251 = call i32 @BIO_puts(i32 %250, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0))
  %252 = load i32, i32* @bio_err, align 4
  %253 = call i32 @ERR_print_errors(i32 %252)
  br label %254

254:                                              ; preds = %249, %246
  br label %255

255:                                              ; preds = %254, %232
  store i32 0, i32* %18, align 4
  br label %256

256:                                              ; preds = %255, %219, %184, %174, %160, %150, %127, %85, %71, %63, %37, %33
  %257 = load i32*, i32** %8, align 8
  %258 = call i32 @EVP_PKEY_free(i32* %257)
  %259 = load i32*, i32** %9, align 8
  %260 = call i32 @EVP_PKEY_CTX_free(i32* %259)
  %261 = load i32*, i32** %6, align 8
  %262 = call i32 @BIO_free_all(i32* %261)
  %263 = load i32*, i32** %5, align 8
  %264 = call i32 @BIO_free(i32* %263)
  %265 = load i32*, i32** %7, align 8
  %266 = call i32 @release_engine(i32* %265)
  %267 = load i8*, i8** %12, align 8
  %268 = call i32 @OPENSSL_free(i8* %267)
  %269 = load i32, i32* %18, align 4
  ret i32 %269
}

declare dso_local i8* @opt_init(i32, i8**, i32) #1

declare dso_local i32 @opt_next(...) #1

declare dso_local i32 @BIO_printf(i32, i8*, ...) #1

declare dso_local i32 @opt_help(i32) #1

declare dso_local i32 @opt_format(i8*, i32, i32*) #1

declare dso_local i8* @opt_arg(...) #1

declare dso_local i32* @setup_engine(i8*, i32) #1

declare dso_local i32 @init_keygen_file(i32**, i8*, i32*) #1

declare dso_local i32 @init_gen_str(i32**, i8*, i32*, i32) #1

declare dso_local i32 @pkey_ctrl_string(i32*, i8*) #1

declare dso_local i32 @ERR_print_errors(i32) #1

declare dso_local i32 @opt_cipher(i32, i32**) #1

declare dso_local i32 @opt_unknown(...) #1

declare dso_local i32 @EVP_CIPHER_mode(i32*) #1

declare dso_local i32 @opt_num_rest(...) #1

declare dso_local i32 @app_passwd(i8*, i32*, i8**, i32*) #1

declare dso_local i32 @BIO_puts(i32, i8*) #1

declare dso_local i32* @bio_open_owner(i8*, i32, i32) #1

declare dso_local i32 @EVP_PKEY_CTX_set_cb(i32*, i32) #1

declare dso_local i32 @EVP_PKEY_CTX_set_app_data(i32*, i32) #1

declare dso_local i64 @EVP_PKEY_paramgen(i32*, i32**) #1

declare dso_local i64 @EVP_PKEY_keygen(i32*, i32**) #1

declare dso_local i32 @PEM_write_bio_Parameters(i32*, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @PEM_write_bio_PrivateKey(i32*, i32*, i32*, i32*, i32, i32*, i8*) #1

declare dso_local i32 @i2d_PrivateKey_bio(i32*, i32*) #1

declare dso_local i32 @EVP_PKEY_print_params(i32*, i32*, i32, i32*) #1

declare dso_local i32 @EVP_PKEY_print_private(i32*, i32*, i32, i32*) #1

declare dso_local i32 @EVP_PKEY_free(i32*) #1

declare dso_local i32 @EVP_PKEY_CTX_free(i32*) #1

declare dso_local i32 @BIO_free_all(i32*) #1

declare dso_local i32 @BIO_free(i32*) #1

declare dso_local i32 @release_engine(i32*) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
