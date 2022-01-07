; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_req.c_set_keygen_ctx.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_req.c_set_keygen_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EVP_PKEY_RSA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"param:\00", align 1
@bio_err = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Unknown algorithm %.*s\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Can't open parameter file %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Error reading parameter file %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"Key Type does not match parameters\0A\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"Internal error: can't find key algorithm\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"Error allocating keygen context\0A\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"Error initializing keygen context\0A\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"Error setting RSA keysize\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32*, i64*, i8**, i32*)* @set_keygen_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @set_keygen_ctx(i8* %0, i32* %1, i64* %2, i8** %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64* %2, i64** %9, align 8
  store i8** %3, i8*** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* null, i32** %12, align 8
  store i32* null, i32** %13, align 8
  store i64 -1, i64* %14, align 8
  store i32* null, i32** %15, align 8
  store i8* null, i8** %16, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %5
  %28 = load i32, i32* @EVP_PKEY_RSA, align 4
  %29 = load i32*, i32** %8, align 8
  store i32 %28, i32* %29, align 4
  %30 = load i64*, i64** %9, align 8
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %14, align 8
  br label %117

32:                                               ; preds = %5
  %33 = load i8*, i8** %7, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 0
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp sge i32 %36, 48
  br i1 %37, label %38, label %51

38:                                               ; preds = %32
  %39 = load i8*, i8** %7, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 0
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp sle i32 %42, 57
  br i1 %43, label %44, label %51

44:                                               ; preds = %38
  %45 = load i32, i32* @EVP_PKEY_RSA, align 4
  %46 = load i32*, i32** %8, align 8
  store i32 %45, i32* %46, align 4
  %47 = load i8*, i8** %7, align 8
  %48 = call i64 @atol(i8* %47)
  store i64 %48, i64* %14, align 8
  %49 = load i64, i64* %14, align 8
  %50 = load i64*, i64** %9, align 8
  store i64 %49, i64* %50, align 8
  br label %116

51:                                               ; preds = %38, %32
  %52 = load i8*, i8** %7, align 8
  %53 = call i64 @strncmp(i8* %52, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 6)
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = load i8*, i8** %7, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 6
  store i8* %57, i8** %16, align 8
  br label %115

58:                                               ; preds = %51
  %59 = load i8*, i8** %7, align 8
  %60 = call i8* @strchr(i8* %59, i8 signext 58)
  store i8* %60, i8** %17, align 8
  %61 = load i8*, i8** %17, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %70

63:                                               ; preds = %58
  %64 = load i8*, i8** %17, align 8
  %65 = load i8*, i8** %7, align 8
  %66 = ptrtoint i8* %64 to i64
  %67 = ptrtoint i8* %65 to i64
  %68 = sub i64 %66, %67
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %18, align 4
  br label %73

70:                                               ; preds = %58
  %71 = load i8*, i8** %7, align 8
  %72 = call i32 @strlen(i8* %71)
  store i32 %72, i32* %18, align 4
  br label %73

73:                                               ; preds = %70, %63
  %74 = load i8*, i8** %7, align 8
  %75 = load i32, i32* %18, align 4
  %76 = call i32* @EVP_PKEY_asn1_find_str(i32** %19, i8* %74, i32 %75)
  store i32* %76, i32** %20, align 8
  %77 = load i32*, i32** %20, align 8
  %78 = icmp eq i32* %77, null
  br i1 %78, label %79, label %84

79:                                               ; preds = %73
  %80 = load i32, i32* @bio_err, align 4
  %81 = load i32, i32* %18, align 4
  %82 = load i8*, i8** %7, align 8
  %83 = call i32 (i32, i8*, ...) @BIO_printf(i32 %80, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %81, i8* %82)
  store i32* null, i32** %6, align 8
  br label %256

84:                                               ; preds = %73
  %85 = load i32*, i32** %8, align 8
  %86 = load i32*, i32** %20, align 8
  %87 = call i32 @EVP_PKEY_asn1_get0_info(i32* null, i32* %85, i32* null, i32* null, i8** null, i32* %86)
  %88 = load i32*, i32** %19, align 8
  %89 = call i32 @ENGINE_finish(i32* %88)
  %90 = load i32*, i32** %8, align 8
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @EVP_PKEY_RSA, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %107

94:                                               ; preds = %84
  %95 = load i8*, i8** %17, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %97, label %103

97:                                               ; preds = %94
  %98 = load i8*, i8** %17, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 1
  %100 = call i64 @atol(i8* %99)
  store i64 %100, i64* %14, align 8
  %101 = load i64, i64* %14, align 8
  %102 = load i64*, i64** %9, align 8
  store i64 %101, i64* %102, align 8
  br label %106

103:                                              ; preds = %94
  %104 = load i64*, i64** %9, align 8
  %105 = load i64, i64* %104, align 8
  store i64 %105, i64* %14, align 8
  br label %106

106:                                              ; preds = %103, %97
  br label %114

107:                                              ; preds = %84
  %108 = load i8*, i8** %17, align 8
  %109 = icmp ne i8* %108, null
  br i1 %109, label %110, label %113

110:                                              ; preds = %107
  %111 = load i8*, i8** %17, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 1
  store i8* %112, i8** %16, align 8
  br label %113

113:                                              ; preds = %110, %107
  br label %114

114:                                              ; preds = %113, %106
  br label %115

115:                                              ; preds = %114, %55
  br label %116

116:                                              ; preds = %115, %44
  br label %117

117:                                              ; preds = %116, %27
  %118 = load i8*, i8** %16, align 8
  %119 = icmp ne i8* %118, null
  br i1 %119, label %120, label %177

120:                                              ; preds = %117
  %121 = load i8*, i8** %16, align 8
  %122 = call i32* @BIO_new_file(i8* %121, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32* %122, i32** %15, align 8
  %123 = load i32*, i32** %15, align 8
  %124 = icmp eq i32* %123, null
  br i1 %124, label %125, label %129

125:                                              ; preds = %120
  %126 = load i32, i32* @bio_err, align 4
  %127 = load i8*, i8** %16, align 8
  %128 = call i32 (i32, i8*, ...) @BIO_printf(i32 %126, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8* %127)
  store i32* null, i32** %6, align 8
  br label %256

129:                                              ; preds = %120
  %130 = load i32*, i32** %15, align 8
  %131 = call i32* @PEM_read_bio_Parameters(i32* %130, i32* null)
  store i32* %131, i32** %13, align 8
  %132 = load i32*, i32** %13, align 8
  %133 = icmp eq i32* %132, null
  br i1 %133, label %134, label %147

134:                                              ; preds = %129
  %135 = load i32*, i32** %15, align 8
  %136 = call i32 @BIO_reset(i32* %135)
  %137 = load i32*, i32** %15, align 8
  %138 = call i32* @PEM_read_bio_X509(i32* %137, i32* null, i32* null, i32* null)
  store i32* %138, i32** %21, align 8
  %139 = load i32*, i32** %21, align 8
  %140 = icmp ne i32* %139, null
  br i1 %140, label %141, label %146

141:                                              ; preds = %134
  %142 = load i32*, i32** %21, align 8
  %143 = call i32* @X509_get_pubkey(i32* %142)
  store i32* %143, i32** %13, align 8
  %144 = load i32*, i32** %21, align 8
  %145 = call i32 @X509_free(i32* %144)
  br label %146

146:                                              ; preds = %141, %134
  br label %147

147:                                              ; preds = %146, %129
  %148 = load i32*, i32** %15, align 8
  %149 = call i32 @BIO_free(i32* %148)
  %150 = load i32*, i32** %13, align 8
  %151 = icmp eq i32* %150, null
  br i1 %151, label %152, label %156

152:                                              ; preds = %147
  %153 = load i32, i32* @bio_err, align 4
  %154 = load i8*, i8** %16, align 8
  %155 = call i32 (i32, i8*, ...) @BIO_printf(i32 %153, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i8* %154)
  store i32* null, i32** %6, align 8
  br label %256

156:                                              ; preds = %147
  %157 = load i32*, i32** %8, align 8
  %158 = load i32, i32* %157, align 4
  %159 = icmp eq i32 %158, -1
  br i1 %159, label %160, label %164

160:                                              ; preds = %156
  %161 = load i32*, i32** %13, align 8
  %162 = call i32 @EVP_PKEY_id(i32* %161)
  %163 = load i32*, i32** %8, align 8
  store i32 %162, i32* %163, align 4
  br label %176

164:                                              ; preds = %156
  %165 = load i32*, i32** %8, align 8
  %166 = load i32, i32* %165, align 4
  %167 = load i32*, i32** %13, align 8
  %168 = call i32 @EVP_PKEY_base_id(i32* %167)
  %169 = icmp ne i32 %166, %168
  br i1 %169, label %170, label %175

170:                                              ; preds = %164
  %171 = load i32, i32* @bio_err, align 4
  %172 = call i32 (i32, i8*, ...) @BIO_printf(i32 %171, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  %173 = load i32*, i32** %13, align 8
  %174 = call i32 @EVP_PKEY_free(i32* %173)
  store i32* null, i32** %6, align 8
  br label %256

175:                                              ; preds = %164
  br label %176

176:                                              ; preds = %175, %160
  br label %177

177:                                              ; preds = %176, %117
  %178 = load i8**, i8*** %10, align 8
  %179 = icmp ne i8** %178, null
  br i1 %179, label %180, label %197

180:                                              ; preds = %177
  %181 = load i32*, i32** %8, align 8
  %182 = load i32, i32* %181, align 4
  %183 = call i32* @EVP_PKEY_asn1_find(i32** %23, i32 %182)
  store i32* %183, i32** %22, align 8
  %184 = load i32*, i32** %22, align 8
  %185 = icmp eq i32* %184, null
  br i1 %185, label %186, label %189

186:                                              ; preds = %180
  %187 = load i32, i32* @bio_err, align 4
  %188 = call i32 @BIO_puts(i32 %187, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0))
  store i32* null, i32** %6, align 8
  br label %256

189:                                              ; preds = %180
  %190 = load i32*, i32** %22, align 8
  %191 = call i32 @EVP_PKEY_asn1_get0_info(i32* null, i32* null, i32* null, i32* null, i8** %24, i32* %190)
  %192 = load i8*, i8** %24, align 8
  %193 = call i8* @OPENSSL_strdup(i8* %192)
  %194 = load i8**, i8*** %10, align 8
  store i8* %193, i8** %194, align 8
  %195 = load i32*, i32** %23, align 8
  %196 = call i32 @ENGINE_finish(i32* %195)
  br label %197

197:                                              ; preds = %189, %177
  %198 = load i32*, i32** %13, align 8
  %199 = icmp ne i32* %198, null
  br i1 %199, label %200, label %209

200:                                              ; preds = %197
  %201 = load i32*, i32** %13, align 8
  %202 = load i32*, i32** %11, align 8
  %203 = call i32* @EVP_PKEY_CTX_new(i32* %201, i32* %202)
  store i32* %203, i32** %12, align 8
  %204 = load i32*, i32** %13, align 8
  %205 = call i64 @EVP_PKEY_bits(i32* %204)
  %206 = load i64*, i64** %9, align 8
  store i64 %205, i64* %206, align 8
  %207 = load i32*, i32** %13, align 8
  %208 = call i32 @EVP_PKEY_free(i32* %207)
  br label %214

209:                                              ; preds = %197
  %210 = load i32*, i32** %8, align 8
  %211 = load i32, i32* %210, align 4
  %212 = load i32*, i32** %11, align 8
  %213 = call i32* @EVP_PKEY_CTX_new_id(i32 %211, i32* %212)
  store i32* %213, i32** %12, align 8
  br label %214

214:                                              ; preds = %209, %200
  %215 = load i32*, i32** %12, align 8
  %216 = icmp eq i32* %215, null
  br i1 %216, label %217, label %222

217:                                              ; preds = %214
  %218 = load i32, i32* @bio_err, align 4
  %219 = call i32 @BIO_puts(i32 %218, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  %220 = load i32, i32* @bio_err, align 4
  %221 = call i32 @ERR_print_errors(i32 %220)
  store i32* null, i32** %6, align 8
  br label %256

222:                                              ; preds = %214
  %223 = load i32*, i32** %12, align 8
  %224 = call i64 @EVP_PKEY_keygen_init(i32* %223)
  %225 = icmp sle i64 %224, 0
  br i1 %225, label %226, label %233

226:                                              ; preds = %222
  %227 = load i32, i32* @bio_err, align 4
  %228 = call i32 @BIO_puts(i32 %227, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0))
  %229 = load i32, i32* @bio_err, align 4
  %230 = call i32 @ERR_print_errors(i32 %229)
  %231 = load i32*, i32** %12, align 8
  %232 = call i32 @EVP_PKEY_CTX_free(i32* %231)
  store i32* null, i32** %6, align 8
  br label %256

233:                                              ; preds = %222
  %234 = load i32*, i32** %8, align 8
  %235 = load i32, i32* %234, align 4
  %236 = load i32, i32* @EVP_PKEY_RSA, align 4
  %237 = icmp eq i32 %235, %236
  br i1 %237, label %238, label %254

238:                                              ; preds = %233
  %239 = load i64, i64* %14, align 8
  %240 = icmp ne i64 %239, -1
  br i1 %240, label %241, label %254

241:                                              ; preds = %238
  %242 = load i32*, i32** %12, align 8
  %243 = load i64, i64* %14, align 8
  %244 = call i64 @EVP_PKEY_CTX_set_rsa_keygen_bits(i32* %242, i64 %243)
  %245 = icmp sle i64 %244, 0
  br i1 %245, label %246, label %253

246:                                              ; preds = %241
  %247 = load i32, i32* @bio_err, align 4
  %248 = call i32 @BIO_puts(i32 %247, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0))
  %249 = load i32, i32* @bio_err, align 4
  %250 = call i32 @ERR_print_errors(i32 %249)
  %251 = load i32*, i32** %12, align 8
  %252 = call i32 @EVP_PKEY_CTX_free(i32* %251)
  store i32* null, i32** %6, align 8
  br label %256

253:                                              ; preds = %241
  br label %254

254:                                              ; preds = %253, %238, %233
  %255 = load i32*, i32** %12, align 8
  store i32* %255, i32** %6, align 8
  br label %256

256:                                              ; preds = %254, %246, %226, %217, %186, %170, %152, %125, %79
  %257 = load i32*, i32** %6, align 8
  ret i32* %257
}

declare dso_local i64 @atol(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32* @EVP_PKEY_asn1_find_str(i32**, i8*, i32) #1

declare dso_local i32 @BIO_printf(i32, i8*, ...) #1

declare dso_local i32 @EVP_PKEY_asn1_get0_info(i32*, i32*, i32*, i32*, i8**, i32*) #1

declare dso_local i32 @ENGINE_finish(i32*) #1

declare dso_local i32* @BIO_new_file(i8*, i8*) #1

declare dso_local i32* @PEM_read_bio_Parameters(i32*, i32*) #1

declare dso_local i32 @BIO_reset(i32*) #1

declare dso_local i32* @PEM_read_bio_X509(i32*, i32*, i32*, i32*) #1

declare dso_local i32* @X509_get_pubkey(i32*) #1

declare dso_local i32 @X509_free(i32*) #1

declare dso_local i32 @BIO_free(i32*) #1

declare dso_local i32 @EVP_PKEY_id(i32*) #1

declare dso_local i32 @EVP_PKEY_base_id(i32*) #1

declare dso_local i32 @EVP_PKEY_free(i32*) #1

declare dso_local i32* @EVP_PKEY_asn1_find(i32**, i32) #1

declare dso_local i32 @BIO_puts(i32, i8*) #1

declare dso_local i8* @OPENSSL_strdup(i8*) #1

declare dso_local i32* @EVP_PKEY_CTX_new(i32*, i32*) #1

declare dso_local i64 @EVP_PKEY_bits(i32*) #1

declare dso_local i32* @EVP_PKEY_CTX_new_id(i32, i32*) #1

declare dso_local i32 @ERR_print_errors(i32) #1

declare dso_local i64 @EVP_PKEY_keygen_init(i32*) #1

declare dso_local i32 @EVP_PKEY_CTX_free(i32*) #1

declare dso_local i64 @EVP_PKEY_CTX_set_rsa_keygen_bits(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
