; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_storeutl.c_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_storeutl.c_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bio_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Couldn't open file or uri %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [65 x i8] c"%s: the store scheme doesn't support the given search criteria.\0A\00", align 1
@.str.2 = private unnamed_addr constant [73 x i8] c"ERROR: OSSL_STORE_load() returned NULL without eof or error indications\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"       This is an error in the loader\0A\00", align 1
@bio_out = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"%d: %s: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"%d: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"!!! Unknown code\0A\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"Total found: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32*, i32, i32, i32*, i32, i32, i32, i32, i32*, i8*)* @process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process(i8* %0, i32* %1, i32* %2, i32 %3, i32 %4, i32* %5, i32 %6, i32 %7, i32 %8, i32 %9, i32* %10, i8* %11) #0 {
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i8*, align 8
  %32 = alloca i8*, align 8
  %33 = alloca i8*, align 8
  %34 = alloca i8*, align 8
  store i8* %0, i8** %14, align 8
  store i32* %1, i32** %15, align 8
  store i32* %2, i32** %16, align 8
  store i32 %3, i32* %17, align 4
  store i32 %4, i32* %18, align 4
  store i32* %5, i32** %19, align 8
  store i32 %6, i32* %20, align 4
  store i32 %7, i32* %21, align 4
  store i32 %8, i32* %22, align 4
  store i32 %9, i32* %23, align 4
  store i32* %10, i32** %24, align 8
  store i8* %11, i8** %25, align 8
  store i32* null, i32** %26, align 8
  store i32 1, i32* %27, align 4
  store i32 0, i32* %28, align 4
  %35 = load i8*, i8** %14, align 8
  %36 = load i32*, i32** %15, align 8
  %37 = load i32*, i32** %16, align 8
  %38 = call i32* @OSSL_STORE_open(i8* %35, i32* %36, i32* %37, i32* null, i32* null)
  store i32* %38, i32** %26, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %47

40:                                               ; preds = %12
  %41 = load i32, i32* @bio_err, align 4
  %42 = load i8*, i8** %14, align 8
  %43 = call i32 (i32, i8*, ...) @BIO_printf(i32 %41, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %42)
  %44 = load i32, i32* @bio_err, align 4
  %45 = call i32 @ERR_print_errors(i32 %44)
  %46 = load i32, i32* %27, align 4
  store i32 %46, i32* %13, align 4
  br label %284

47:                                               ; preds = %12
  %48 = load i32, i32* %17, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %47
  %51 = load i32*, i32** %26, align 8
  %52 = load i32, i32* %17, align 4
  %53 = call i32 @OSSL_STORE_expect(i32* %51, i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %50
  %56 = load i32, i32* @bio_err, align 4
  %57 = call i32 @ERR_print_errors(i32 %56)
  br label %273

58:                                               ; preds = %50
  br label %59

59:                                               ; preds = %58, %47
  %60 = load i32, i32* %18, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %80

62:                                               ; preds = %59
  %63 = load i32*, i32** %26, align 8
  %64 = load i32, i32* %18, align 4
  %65 = call i32 @OSSL_STORE_supports_search(i32* %63, i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %62
  %68 = load i32, i32* @bio_err, align 4
  %69 = load i8*, i8** %25, align 8
  %70 = call i32 (i32, i8*, ...) @BIO_printf(i32 %68, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i8* %69)
  br label %273

71:                                               ; preds = %62
  %72 = load i32*, i32** %26, align 8
  %73 = load i32*, i32** %19, align 8
  %74 = call i32 @OSSL_STORE_find(i32* %72, i32* %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %71
  %77 = load i32, i32* @bio_err, align 4
  %78 = call i32 @ERR_print_errors(i32 %77)
  br label %273

79:                                               ; preds = %71
  br label %80

80:                                               ; preds = %79, %59
  store i32 0, i32* %27, align 4
  br label %81

81:                                               ; preds = %263, %119, %80
  %82 = load i32*, i32** %26, align 8
  %83 = call i32* @OSSL_STORE_load(i32* %82)
  store i32* %83, i32** %29, align 8
  %84 = load i32*, i32** %29, align 8
  %85 = icmp eq i32* %84, null
  br i1 %85, label %86, label %87

86:                                               ; preds = %81
  br label %90

87:                                               ; preds = %81
  %88 = load i32*, i32** %29, align 8
  %89 = call i32 @OSSL_STORE_INFO_get_type(i32* %88)
  br label %90

90:                                               ; preds = %87, %86
  %91 = phi i32 [ 0, %86 ], [ %89, %87 ]
  store i32 %91, i32* %30, align 4
  %92 = load i32*, i32** %29, align 8
  %93 = icmp eq i32* %92, null
  br i1 %93, label %94, label %95

94:                                               ; preds = %90
  br label %98

95:                                               ; preds = %90
  %96 = load i32, i32* %30, align 4
  %97 = call i8* @OSSL_STORE_INFO_type_string(i32 %96)
  br label %98

98:                                               ; preds = %95, %94
  %99 = phi i8* [ null, %94 ], [ %97, %95 ]
  store i8* %99, i8** %31, align 8
  %100 = load i32*, i32** %29, align 8
  %101 = icmp eq i32* %100, null
  br i1 %101, label %102, label %131

102:                                              ; preds = %98
  %103 = load i32*, i32** %26, align 8
  %104 = call i64 @OSSL_STORE_eof(i32* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %102
  br label %268

107:                                              ; preds = %102
  %108 = load i32*, i32** %26, align 8
  %109 = call i64 @OSSL_STORE_error(i32* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %122

111:                                              ; preds = %107
  %112 = load i32, i32* %22, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %111
  %115 = call i32 (...) @ERR_clear_error()
  br label %119

116:                                              ; preds = %111
  %117 = load i32, i32* @bio_err, align 4
  %118 = call i32 @ERR_print_errors(i32 %117)
  br label %119

119:                                              ; preds = %116, %114
  %120 = load i32, i32* %27, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %27, align 4
  br label %81

122:                                              ; preds = %107
  %123 = load i32, i32* @bio_err, align 4
  %124 = call i32 (i32, i8*, ...) @BIO_printf(i32 %123, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i64 0, i64 0))
  %125 = load i32, i32* @bio_err, align 4
  %126 = call i32 (i32, i8*, ...) @BIO_printf(i32 %125, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  %127 = load i32, i32* @bio_err, align 4
  %128 = call i32 @ERR_print_errors(i32 %127)
  %129 = load i32, i32* %27, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %27, align 4
  br label %268

131:                                              ; preds = %98
  %132 = load i32, i32* %30, align 4
  %133 = icmp eq i32 %132, 130
  br i1 %133, label %134, label %157

134:                                              ; preds = %131
  %135 = load i32*, i32** %29, align 8
  %136 = call i8* @OSSL_STORE_INFO_get0_NAME(i32* %135)
  store i8* %136, i8** %32, align 8
  %137 = load i32*, i32** %29, align 8
  %138 = call i8* @OSSL_STORE_INFO_get0_NAME_description(i32* %137)
  store i8* %138, i8** %33, align 8
  %139 = load i32, i32* %23, align 4
  %140 = load i32, i32* @bio_out, align 4
  %141 = sext i32 %140 to i64
  %142 = inttoptr i64 %141 to i32*
  %143 = load i32, i32* %28, align 4
  %144 = load i8*, i8** %31, align 8
  %145 = load i8*, i8** %32, align 8
  %146 = call i32 (i32, i32*, i8*, ...) @indent_printf(i32 %139, i32* %142, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %143, i8* %144, i8* %145)
  %147 = load i8*, i8** %33, align 8
  %148 = icmp ne i8* %147, null
  br i1 %148, label %149, label %156

149:                                              ; preds = %134
  %150 = load i32, i32* %23, align 4
  %151 = load i32, i32* @bio_out, align 4
  %152 = sext i32 %151 to i64
  %153 = inttoptr i64 %152 to i32*
  %154 = load i8*, i8** %33, align 8
  %155 = call i32 (i32, i32*, i8*, ...) @indent_printf(i32 %150, i32* %153, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %154)
  br label %156

156:                                              ; preds = %149, %134
  br label %165

157:                                              ; preds = %131
  %158 = load i32, i32* %23, align 4
  %159 = load i32, i32* @bio_out, align 4
  %160 = sext i32 %159 to i64
  %161 = inttoptr i64 %160 to i32*
  %162 = load i32, i32* %28, align 4
  %163 = load i8*, i8** %31, align 8
  %164 = call i32 (i32, i32*, i8*, ...) @indent_printf(i32 %158, i32* %161, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %162, i8* %163)
  br label %165

165:                                              ; preds = %157, %156
  %166 = load i32, i32* %30, align 4
  switch i32 %166, label %258 [
    i32 130, label %167
    i32 129, label %190
    i32 128, label %207
    i32 132, label %224
    i32 131, label %241
  ]

167:                                              ; preds = %165
  %168 = load i32, i32* %22, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %189

170:                                              ; preds = %167
  %171 = load i32*, i32** %29, align 8
  %172 = call i8* @OSSL_STORE_INFO_get0_NAME(i32* %171)
  store i8* %172, i8** %34, align 8
  %173 = load i8*, i8** %34, align 8
  %174 = load i32*, i32** %15, align 8
  %175 = load i32*, i32** %16, align 8
  %176 = load i32, i32* %17, align 4
  %177 = load i32, i32* %18, align 4
  %178 = load i32*, i32** %19, align 8
  %179 = load i32, i32* %20, align 4
  %180 = load i32, i32* %21, align 4
  %181 = load i32, i32* %22, align 4
  %182 = load i32, i32* %23, align 4
  %183 = add nsw i32 %182, 2
  %184 = load i32*, i32** %24, align 8
  %185 = load i8*, i8** %25, align 8
  %186 = call i32 @process(i8* %173, i32* %174, i32* %175, i32 %176, i32 %177, i32* %178, i32 %179, i32 %180, i32 %181, i32 %183, i32* %184, i8* %185)
  %187 = load i32, i32* %27, align 4
  %188 = add nsw i32 %187, %186
  store i32 %188, i32* %27, align 4
  br label %189

189:                                              ; preds = %170, %167
  br label %263

190:                                              ; preds = %165
  %191 = load i32, i32* %20, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %198

193:                                              ; preds = %190
  %194 = load i32*, i32** %24, align 8
  %195 = load i32*, i32** %29, align 8
  %196 = call i32 @OSSL_STORE_INFO_get0_PARAMS(i32* %195)
  %197 = call i32 @EVP_PKEY_print_params(i32* %194, i32 %196, i32 0, i32* null)
  br label %198

198:                                              ; preds = %193, %190
  %199 = load i32, i32* %21, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %206, label %201

201:                                              ; preds = %198
  %202 = load i32*, i32** %24, align 8
  %203 = load i32*, i32** %29, align 8
  %204 = call i32 @OSSL_STORE_INFO_get0_PARAMS(i32* %203)
  %205 = call i32 @PEM_write_bio_Parameters(i32* %202, i32 %204)
  br label %206

206:                                              ; preds = %201, %198
  br label %263

207:                                              ; preds = %165
  %208 = load i32, i32* %20, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %215

210:                                              ; preds = %207
  %211 = load i32*, i32** %24, align 8
  %212 = load i32*, i32** %29, align 8
  %213 = call i32 @OSSL_STORE_INFO_get0_PKEY(i32* %212)
  %214 = call i32 @EVP_PKEY_print_private(i32* %211, i32 %213, i32 0, i32* null)
  br label %215

215:                                              ; preds = %210, %207
  %216 = load i32, i32* %21, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %223, label %218

218:                                              ; preds = %215
  %219 = load i32*, i32** %24, align 8
  %220 = load i32*, i32** %29, align 8
  %221 = call i32 @OSSL_STORE_INFO_get0_PKEY(i32* %220)
  %222 = call i32 @PEM_write_bio_PrivateKey(i32* %219, i32 %221, i32* null, i32* null, i32 0, i32* null, i32* null)
  br label %223

223:                                              ; preds = %218, %215
  br label %263

224:                                              ; preds = %165
  %225 = load i32, i32* %20, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %232

227:                                              ; preds = %224
  %228 = load i32*, i32** %24, align 8
  %229 = load i32*, i32** %29, align 8
  %230 = call i32 @OSSL_STORE_INFO_get0_CERT(i32* %229)
  %231 = call i32 @X509_print(i32* %228, i32 %230)
  br label %232

232:                                              ; preds = %227, %224
  %233 = load i32, i32* %21, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %240, label %235

235:                                              ; preds = %232
  %236 = load i32*, i32** %24, align 8
  %237 = load i32*, i32** %29, align 8
  %238 = call i32 @OSSL_STORE_INFO_get0_CERT(i32* %237)
  %239 = call i32 @PEM_write_bio_X509(i32* %236, i32 %238)
  br label %240

240:                                              ; preds = %235, %232
  br label %263

241:                                              ; preds = %165
  %242 = load i32, i32* %20, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %249

244:                                              ; preds = %241
  %245 = load i32*, i32** %24, align 8
  %246 = load i32*, i32** %29, align 8
  %247 = call i32 @OSSL_STORE_INFO_get0_CRL(i32* %246)
  %248 = call i32 @X509_CRL_print(i32* %245, i32 %247)
  br label %249

249:                                              ; preds = %244, %241
  %250 = load i32, i32* %21, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %257, label %252

252:                                              ; preds = %249
  %253 = load i32*, i32** %24, align 8
  %254 = load i32*, i32** %29, align 8
  %255 = call i32 @OSSL_STORE_INFO_get0_CRL(i32* %254)
  %256 = call i32 @PEM_write_bio_X509_CRL(i32* %253, i32 %255)
  br label %257

257:                                              ; preds = %252, %249
  br label %263

258:                                              ; preds = %165
  %259 = load i32, i32* @bio_err, align 4
  %260 = call i32 (i32, i8*, ...) @BIO_printf(i32 %259, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  %261 = load i32, i32* %27, align 4
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %27, align 4
  br label %263

263:                                              ; preds = %258, %257, %240, %223, %206, %189
  %264 = load i32, i32* %28, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %28, align 4
  %266 = load i32*, i32** %29, align 8
  %267 = call i32 @OSSL_STORE_INFO_free(i32* %266)
  br label %81

268:                                              ; preds = %122, %106
  %269 = load i32, i32* %23, align 4
  %270 = load i32*, i32** %24, align 8
  %271 = load i32, i32* %28, align 4
  %272 = call i32 (i32, i32*, i8*, ...) @indent_printf(i32 %269, i32* %270, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i32 %271)
  br label %273

273:                                              ; preds = %268, %76, %67, %55
  %274 = load i32*, i32** %26, align 8
  %275 = call i32 @OSSL_STORE_close(i32* %274)
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %282, label %277

277:                                              ; preds = %273
  %278 = load i32, i32* @bio_err, align 4
  %279 = call i32 @ERR_print_errors(i32 %278)
  %280 = load i32, i32* %27, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %27, align 4
  br label %282

282:                                              ; preds = %277, %273
  %283 = load i32, i32* %27, align 4
  store i32 %283, i32* %13, align 4
  br label %284

284:                                              ; preds = %282, %40
  %285 = load i32, i32* %13, align 4
  ret i32 %285
}

declare dso_local i32* @OSSL_STORE_open(i8*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BIO_printf(i32, i8*, ...) #1

declare dso_local i32 @ERR_print_errors(i32) #1

declare dso_local i32 @OSSL_STORE_expect(i32*, i32) #1

declare dso_local i32 @OSSL_STORE_supports_search(i32*, i32) #1

declare dso_local i32 @OSSL_STORE_find(i32*, i32*) #1

declare dso_local i32* @OSSL_STORE_load(i32*) #1

declare dso_local i32 @OSSL_STORE_INFO_get_type(i32*) #1

declare dso_local i8* @OSSL_STORE_INFO_type_string(i32) #1

declare dso_local i64 @OSSL_STORE_eof(i32*) #1

declare dso_local i64 @OSSL_STORE_error(i32*) #1

declare dso_local i32 @ERR_clear_error(...) #1

declare dso_local i8* @OSSL_STORE_INFO_get0_NAME(i32*) #1

declare dso_local i8* @OSSL_STORE_INFO_get0_NAME_description(i32*) #1

declare dso_local i32 @indent_printf(i32, i32*, i8*, ...) #1

declare dso_local i32 @EVP_PKEY_print_params(i32*, i32, i32, i32*) #1

declare dso_local i32 @OSSL_STORE_INFO_get0_PARAMS(i32*) #1

declare dso_local i32 @PEM_write_bio_Parameters(i32*, i32) #1

declare dso_local i32 @EVP_PKEY_print_private(i32*, i32, i32, i32*) #1

declare dso_local i32 @OSSL_STORE_INFO_get0_PKEY(i32*) #1

declare dso_local i32 @PEM_write_bio_PrivateKey(i32*, i32, i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @X509_print(i32*, i32) #1

declare dso_local i32 @OSSL_STORE_INFO_get0_CERT(i32*) #1

declare dso_local i32 @PEM_write_bio_X509(i32*, i32) #1

declare dso_local i32 @X509_CRL_print(i32*, i32) #1

declare dso_local i32 @OSSL_STORE_INFO_get0_CRL(i32*) #1

declare dso_local i32 @PEM_write_bio_X509_CRL(i32*, i32) #1

declare dso_local i32 @OSSL_STORE_INFO_free(i32*) #1

declare dso_local i32 @OSSL_STORE_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
