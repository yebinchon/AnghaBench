; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_crl.c_crl_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_crl.c_crl_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FORMAT_PEM = common dso_local global i32 0, align 4
@crl_options = common dso_local global i32 0, align 4
@bio_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"%s: Use -help for summary.\0A\00", align 1
@OPT_FMT_PEMDER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Error initialising X509 store\0A\00", align 1
@X509_LU_X509 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"Error getting CRL issuer certificate\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"Error getting CRL issuer public key\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"verify failure\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"verify OK\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"Missing CRL signing key\0A\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"CRL signing key\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"Error creating delta CRL\0A\00", align 1
@bio_out = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [8 x i8] c"issuer=\00", align 1
@NID_crl_number = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [11 x i8] c"crlNumber=\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"<NONE>\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"%08lx\0A\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"lastUpdate=\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"nextUpdate=\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"NONE\00", align 1
@EVP_MAX_MD_SIZE = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"%s Fingerprint=\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"%02X%c\00", align 1
@FORMAT_ASN1 = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [21 x i8] c"unable to write CRL\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crl_main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
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
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32*, align 8
  %41 = alloca i32*, align 8
  %42 = alloca i32*, align 8
  %43 = alloca i32*, align 8
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i8*, align 8
  %47 = alloca i64, align 8
  %48 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  store i32* null, i32** %10, align 8
  %49 = call i32* (...) @EVP_sha1()
  store i32* %49, i32** %12, align 8
  store i8* null, i8** %13, align 8
  store i8* null, i8** %14, align 8
  store i8* null, i8** %15, align 8
  store i8* null, i8** %16, align 8
  store i8* null, i8** %17, align 8
  store i8* null, i8** %18, align 8
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  store i32 0, i32* %25, align 4
  %50 = load i32, i32* @FORMAT_PEM, align 4
  store i32 %50, i32* %26, align 4
  %51 = load i32, i32* @FORMAT_PEM, align 4
  store i32 %51, i32* %27, align 4
  %52 = load i32, i32* @FORMAT_PEM, align 4
  store i32 %52, i32* %28, align 4
  store i32 1, i32* %29, align 4
  store i32 0, i32* %30, align 4
  store i32 0, i32* %31, align 4
  store i32 0, i32* %32, align 4
  store i32 0, i32* %33, align 4
  store i32 0, i32* %34, align 4
  store i32 0, i32* %35, align 4
  store i32 0, i32* %36, align 4
  store i32 0, i32* %37, align 4
  store i32 0, i32* %39, align 4
  %53 = load i32, i32* %3, align 4
  %54 = load i8**, i8*** %4, align 8
  %55 = load i32, i32* @crl_options, align 4
  %56 = call i8* @opt_init(i32 %53, i8** %54, i32 %55)
  store i8* %56, i8** %19, align 8
  br label %57

57:                                               ; preds = %144, %2
  %58 = call i32 (...) @opt_next()
  store i32 %58, i32* %20, align 4
  %59 = icmp ne i32 %58, 150
  br i1 %59, label %60, label %145

60:                                               ; preds = %57
  %61 = load i32, i32* %20, align 4
  switch i32 %61, label %144 [
    i32 150, label %62
    i32 149, label %62
    i32 144, label %67
    i32 142, label %70
    i32 143, label %77
    i32 130, label %79
    i32 131, label %86
    i32 139, label %88
    i32 140, label %95
    i32 147, label %97
    i32 152, label %99
    i32 153, label %101
    i32 133, label %103
    i32 134, label %104
    i32 145, label %105
    i32 128, label %108
    i32 129, label %109
    i32 146, label %110
    i32 141, label %113
    i32 138, label %116
    i32 135, label %119
    i32 132, label %122
    i32 148, label %125
    i32 151, label %128
    i32 154, label %131
    i32 136, label %132
    i32 137, label %138
  ]

62:                                               ; preds = %60, %60
  br label %63

63:                                               ; preds = %149, %142, %136, %93, %84, %75, %62
  %64 = load i32, i32* @bio_err, align 4
  %65 = load i8*, i8** %19, align 8
  %66 = call i32 (i32, i8*, ...) @BIO_printf(i32 %64, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %65)
  br label %469

67:                                               ; preds = %60
  %68 = load i32, i32* @crl_options, align 4
  %69 = call i32 @opt_help(i32 %68)
  store i32 0, i32* %29, align 4
  br label %469

70:                                               ; preds = %60
  %71 = call i8* (...) @opt_arg()
  %72 = load i32, i32* @OPT_FMT_PEMDER, align 4
  %73 = call i32 @opt_format(i8* %71, i32 %72, i32* %26)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %70
  br label %63

76:                                               ; preds = %70
  br label %144

77:                                               ; preds = %60
  %78 = call i8* (...) @opt_arg()
  store i8* %78, i8** %13, align 8
  br label %144

79:                                               ; preds = %60
  %80 = call i8* (...) @opt_arg()
  %81 = load i32, i32* @OPT_FMT_PEMDER, align 4
  %82 = call i32 @opt_format(i8* %80, i32 %81, i32* %27)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %79
  br label %63

85:                                               ; preds = %79
  br label %144

86:                                               ; preds = %60
  %87 = call i8* (...) @opt_arg()
  store i8* %87, i8** %14, align 8
  br label %144

88:                                               ; preds = %60
  %89 = call i8* (...) @opt_arg()
  %90 = load i32, i32* @OPT_FMT_PEMDER, align 4
  %91 = call i32 @opt_format(i8* %89, i32 %90, i32* %28)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %88
  br label %63

94:                                               ; preds = %88
  br label %144

95:                                               ; preds = %60
  %96 = call i8* (...) @opt_arg()
  store i8* %96, i8** %16, align 8
  br label %144

97:                                               ; preds = %60
  %98 = call i8* (...) @opt_arg()
  store i8* %98, i8** %15, align 8
  br label %144

99:                                               ; preds = %60
  %100 = call i8* (...) @opt_arg()
  store i8* %100, i8** %18, align 8
  store i32 1, i32* %35, align 4
  br label %144

101:                                              ; preds = %60
  %102 = call i8* (...) @opt_arg()
  store i8* %102, i8** %17, align 8
  store i32 1, i32* %35, align 4
  br label %144

103:                                              ; preds = %60
  store i32 1, i32* %37, align 4
  br label %144

104:                                              ; preds = %60
  store i32 1, i32* %36, align 4
  br label %144

105:                                              ; preds = %60
  %106 = load i32, i32* %30, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %30, align 4
  store i32 %107, i32* %39, align 4
  br label %144

108:                                              ; preds = %60
  store i32 1, i32* %35, align 4
  br label %144

109:                                              ; preds = %60
  store i32 1, i32* %34, align 4
  br label %144

110:                                              ; preds = %60
  %111 = load i32, i32* %30, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %30, align 4
  store i32 %112, i32* %21, align 4
  br label %144

113:                                              ; preds = %60
  %114 = load i32, i32* %30, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %30, align 4
  store i32 %115, i32* %22, align 4
  br label %144

116:                                              ; preds = %60
  %117 = load i32, i32* %30, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %30, align 4
  store i32 %118, i32* %23, align 4
  br label %144

119:                                              ; preds = %60
  %120 = load i32, i32* %30, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %30, align 4
  store i32 %121, i32* %24, align 4
  br label %144

122:                                              ; preds = %60
  %123 = load i32, i32* %30, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %30, align 4
  store i32 %124, i32* %25, align 4
  br label %144

125:                                              ; preds = %60
  %126 = load i32, i32* %30, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %30, align 4
  store i32 %127, i32* %32, align 4
  br label %144

128:                                              ; preds = %60
  %129 = load i32, i32* %30, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %30, align 4
  store i32 %130, i32* %33, align 4
  br label %144

131:                                              ; preds = %60
  store i32 1, i32* %31, align 4
  br label %144

132:                                              ; preds = %60
  %133 = call i8* (...) @opt_arg()
  %134 = call i32 @set_nameopt(i8* %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %137, label %136

136:                                              ; preds = %132
  br label %63

137:                                              ; preds = %132
  br label %144

138:                                              ; preds = %60
  %139 = call i32 (...) @opt_unknown()
  %140 = call i32 @opt_md(i32 %139, i32** %12)
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %143, label %142

142:                                              ; preds = %138
  br label %63

143:                                              ; preds = %138
  br label %144

144:                                              ; preds = %143, %60, %137, %131, %128, %125, %122, %119, %116, %113, %110, %109, %108, %105, %104, %103, %101, %99, %97, %95, %94, %86, %85, %77, %76
  br label %57

145:                                              ; preds = %57
  %146 = call i32 (...) @opt_num_rest()
  store i32 %146, i32* %3, align 4
  %147 = load i32, i32* %3, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %145
  br label %63

150:                                              ; preds = %145
  %151 = load i8*, i8** %13, align 8
  %152 = load i32, i32* %26, align 4
  %153 = call i32* @load_crl(i8* %151, i32 %152)
  store i32* %153, i32** %5, align 8
  %154 = load i32*, i32** %5, align 8
  %155 = icmp eq i32* %154, null
  br i1 %155, label %156, label %157

156:                                              ; preds = %150
  br label %469

157:                                              ; preds = %150
  %158 = load i32, i32* %35, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %228

160:                                              ; preds = %157
  %161 = load i8*, i8** %17, align 8
  %162 = load i8*, i8** %18, align 8
  %163 = load i32, i32* %36, align 4
  %164 = load i32, i32* %37, align 4
  %165 = call i32* @setup_verify(i8* %161, i8* %162, i32 %163, i32 %164)
  store i32* %165, i32** %7, align 8
  %166 = icmp eq i32* %165, null
  br i1 %166, label %167, label %168

167:                                              ; preds = %160
  br label %469

168:                                              ; preds = %160
  %169 = load i32*, i32** %7, align 8
  %170 = call i32 (...) @X509_LOOKUP_file()
  %171 = call i32* @X509_STORE_add_lookup(i32* %169, i32 %170)
  store i32* %171, i32** %9, align 8
  %172 = load i32*, i32** %9, align 8
  %173 = icmp eq i32* %172, null
  br i1 %173, label %174, label %175

174:                                              ; preds = %168
  br label %469

175:                                              ; preds = %168
  %176 = call i32* (...) @X509_STORE_CTX_new()
  store i32* %176, i32** %8, align 8
  %177 = load i32*, i32** %8, align 8
  %178 = icmp eq i32* %177, null
  br i1 %178, label %184, label %179

179:                                              ; preds = %175
  %180 = load i32*, i32** %8, align 8
  %181 = load i32*, i32** %7, align 8
  %182 = call i32 @X509_STORE_CTX_init(i32* %180, i32* %181, i32* null, i32* null)
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %187, label %184

184:                                              ; preds = %179, %175
  %185 = load i32, i32* @bio_err, align 4
  %186 = call i32 (i32, i8*, ...) @BIO_printf(i32 %185, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %469

187:                                              ; preds = %179
  %188 = load i32*, i32** %8, align 8
  %189 = load i32, i32* @X509_LU_X509, align 4
  %190 = load i32*, i32** %5, align 8
  %191 = call i32 @X509_CRL_get_issuer(i32* %190)
  %192 = call i32* @X509_STORE_CTX_get_obj_by_subject(i32* %188, i32 %189, i32 %191)
  store i32* %192, i32** %10, align 8
  %193 = load i32*, i32** %10, align 8
  %194 = icmp eq i32* %193, null
  br i1 %194, label %195, label %198

195:                                              ; preds = %187
  %196 = load i32, i32* @bio_err, align 4
  %197 = call i32 (i32, i8*, ...) @BIO_printf(i32 %196, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  br label %469

198:                                              ; preds = %187
  %199 = load i32*, i32** %10, align 8
  %200 = call i32 @X509_OBJECT_get0_X509(i32* %199)
  %201 = call i32* @X509_get_pubkey(i32 %200)
  store i32* %201, i32** %11, align 8
  %202 = load i32*, i32** %10, align 8
  %203 = call i32 @X509_OBJECT_free(i32* %202)
  %204 = load i32*, i32** %11, align 8
  %205 = icmp ne i32* %204, null
  br i1 %205, label %209, label %206

206:                                              ; preds = %198
  %207 = load i32, i32* @bio_err, align 4
  %208 = call i32 (i32, i8*, ...) @BIO_printf(i32 %207, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  br label %469

209:                                              ; preds = %198
  %210 = load i32*, i32** %5, align 8
  %211 = load i32*, i32** %11, align 8
  %212 = call i32 @X509_CRL_verify(i32* %210, i32* %211)
  store i32 %212, i32* %38, align 4
  %213 = load i32*, i32** %11, align 8
  %214 = call i32 @EVP_PKEY_free(i32* %213)
  %215 = load i32, i32* %38, align 4
  %216 = icmp slt i32 %215, 0
  br i1 %216, label %217, label %218

217:                                              ; preds = %209
  br label %469

218:                                              ; preds = %209
  %219 = load i32, i32* %38, align 4
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %221, label %224

221:                                              ; preds = %218
  %222 = load i32, i32* @bio_err, align 4
  %223 = call i32 (i32, i8*, ...) @BIO_printf(i32 %222, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  br label %227

224:                                              ; preds = %218
  %225 = load i32, i32* @bio_err, align 4
  %226 = call i32 (i32, i8*, ...) @BIO_printf(i32 %225, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  br label %227

227:                                              ; preds = %224, %221
  br label %228

228:                                              ; preds = %227, %157
  %229 = load i8*, i8** %15, align 8
  %230 = icmp ne i8* %229, null
  br i1 %230, label %231, label %273

231:                                              ; preds = %228
  %232 = load i8*, i8** %16, align 8
  %233 = icmp ne i8* %232, null
  br i1 %233, label %237, label %234

234:                                              ; preds = %231
  %235 = load i32, i32* @bio_err, align 4
  %236 = call i32 @BIO_puts(i32 %235, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  br label %469

237:                                              ; preds = %231
  %238 = load i8*, i8** %15, align 8
  %239 = load i32, i32* %26, align 4
  %240 = call i32* @load_crl(i8* %238, i32 %239)
  store i32* %240, i32** %40, align 8
  %241 = load i32*, i32** %40, align 8
  %242 = icmp ne i32* %241, null
  br i1 %242, label %244, label %243

243:                                              ; preds = %237
  br label %469

244:                                              ; preds = %237
  %245 = load i8*, i8** %16, align 8
  %246 = load i32, i32* %28, align 4
  %247 = call i32* @load_key(i8* %245, i32 %246, i32 0, i32* null, i32* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0))
  store i32* %247, i32** %11, align 8
  %248 = load i32*, i32** %11, align 8
  %249 = icmp ne i32* %248, null
  br i1 %249, label %253, label %250

250:                                              ; preds = %244
  %251 = load i32*, i32** %40, align 8
  %252 = call i32 @X509_CRL_free(i32* %251)
  br label %469

253:                                              ; preds = %244
  %254 = load i32*, i32** %5, align 8
  %255 = load i32*, i32** %40, align 8
  %256 = load i32*, i32** %11, align 8
  %257 = load i32*, i32** %12, align 8
  %258 = call i32* @X509_CRL_diff(i32* %254, i32* %255, i32* %256, i32* %257, i32 0)
  store i32* %258, i32** %41, align 8
  %259 = load i32*, i32** %40, align 8
  %260 = call i32 @X509_CRL_free(i32* %259)
  %261 = load i32*, i32** %11, align 8
  %262 = call i32 @EVP_PKEY_free(i32* %261)
  %263 = load i32*, i32** %41, align 8
  %264 = icmp ne i32* %263, null
  br i1 %264, label %265, label %269

265:                                              ; preds = %253
  %266 = load i32*, i32** %5, align 8
  %267 = call i32 @X509_CRL_free(i32* %266)
  %268 = load i32*, i32** %41, align 8
  store i32* %268, i32** %5, align 8
  br label %272

269:                                              ; preds = %253
  %270 = load i32, i32* @bio_err, align 4
  %271 = call i32 @BIO_puts(i32 %270, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0))
  br label %469

272:                                              ; preds = %265
  br label %273

273:                                              ; preds = %272, %228
  %274 = load i32, i32* %31, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %281

276:                                              ; preds = %273
  %277 = load i32*, i32** %5, align 8
  %278 = call i32 @X509_CRL_get0_signature(i32* %277, i32** %42, i32* null)
  %279 = load i32*, i32** %42, align 8
  %280 = call i32 @corrupt_signature(i32* %279)
  br label %281

281:                                              ; preds = %276, %273
  %282 = load i32, i32* %30, align 4
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %430

284:                                              ; preds = %281
  store i32 1, i32* %38, align 4
  br label %285

285:                                              ; preds = %426, %284
  %286 = load i32, i32* %38, align 4
  %287 = load i32, i32* %30, align 4
  %288 = icmp sle i32 %286, %287
  br i1 %288, label %289, label %429

289:                                              ; preds = %285
  %290 = load i32, i32* %22, align 4
  %291 = load i32, i32* %38, align 4
  %292 = icmp eq i32 %290, %291
  br i1 %292, label %293, label %299

293:                                              ; preds = %289
  %294 = load i32, i32* @bio_out, align 4
  %295 = load i32*, i32** %5, align 8
  %296 = call i32 @X509_CRL_get_issuer(i32* %295)
  %297 = call i32 (...) @get_nameopt()
  %298 = call i32 @print_name(i32 %294, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 %296, i32 %297)
  br label %299

299:                                              ; preds = %293, %289
  %300 = load i32, i32* %33, align 4
  %301 = load i32, i32* %38, align 4
  %302 = icmp eq i32 %300, %301
  br i1 %302, label %303, label %323

303:                                              ; preds = %299
  %304 = load i32*, i32** %5, align 8
  %305 = load i32, i32* @NID_crl_number, align 4
  %306 = call i32* @X509_CRL_get_ext_d2i(i32* %304, i32 %305, i32* null, i32* null)
  store i32* %306, i32** %43, align 8
  %307 = load i32, i32* @bio_out, align 4
  %308 = call i32 (i32, i8*, ...) @BIO_printf(i32 %307, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0))
  %309 = load i32*, i32** %43, align 8
  %310 = icmp ne i32* %309, null
  br i1 %310, label %311, label %317

311:                                              ; preds = %303
  %312 = load i32, i32* @bio_out, align 4
  %313 = load i32*, i32** %43, align 8
  %314 = call i32 @i2a_ASN1_INTEGER(i32 %312, i32* %313)
  %315 = load i32*, i32** %43, align 8
  %316 = call i32 @ASN1_INTEGER_free(i32* %315)
  br label %320

317:                                              ; preds = %303
  %318 = load i32, i32* @bio_out, align 4
  %319 = call i32 @BIO_puts(i32 %318, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  br label %320

320:                                              ; preds = %317, %311
  %321 = load i32, i32* @bio_out, align 4
  %322 = call i32 (i32, i8*, ...) @BIO_printf(i32 %321, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  br label %323

323:                                              ; preds = %320, %299
  %324 = load i32, i32* %21, align 4
  %325 = load i32, i32* %38, align 4
  %326 = icmp eq i32 %324, %325
  br i1 %326, label %327, label %333

327:                                              ; preds = %323
  %328 = load i32, i32* @bio_out, align 4
  %329 = load i32*, i32** %5, align 8
  %330 = call i32 @X509_CRL_get_issuer(i32* %329)
  %331 = call i32 @X509_NAME_hash(i32 %330)
  %332 = call i32 (i32, i8*, ...) @BIO_printf(i32 %328, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i32 %331)
  br label %333

333:                                              ; preds = %327, %323
  %334 = load i32, i32* %39, align 4
  %335 = load i32, i32* %38, align 4
  %336 = icmp eq i32 %334, %335
  br i1 %336, label %337, label %343

337:                                              ; preds = %333
  %338 = load i32, i32* @bio_out, align 4
  %339 = load i32*, i32** %5, align 8
  %340 = call i32 @X509_CRL_get_issuer(i32* %339)
  %341 = call i32 @X509_NAME_hash_old(i32 %340)
  %342 = call i32 (i32, i8*, ...) @BIO_printf(i32 %338, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i32 %341)
  br label %343

343:                                              ; preds = %337, %333
  %344 = load i32, i32* %23, align 4
  %345 = load i32, i32* %38, align 4
  %346 = icmp eq i32 %344, %345
  br i1 %346, label %347, label %356

347:                                              ; preds = %343
  %348 = load i32, i32* @bio_out, align 4
  %349 = call i32 (i32, i8*, ...) @BIO_printf(i32 %348, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0))
  %350 = load i32, i32* @bio_out, align 4
  %351 = load i32*, i32** %5, align 8
  %352 = call i64 @X509_CRL_get0_lastUpdate(i32* %351)
  %353 = call i32 @ASN1_TIME_print(i32 %350, i64 %352)
  %354 = load i32, i32* @bio_out, align 4
  %355 = call i32 (i32, i8*, ...) @BIO_printf(i32 %354, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  br label %356

356:                                              ; preds = %347, %343
  %357 = load i32, i32* %24, align 4
  %358 = load i32, i32* %38, align 4
  %359 = icmp eq i32 %357, %358
  br i1 %359, label %360, label %377

360:                                              ; preds = %356
  %361 = load i32, i32* @bio_out, align 4
  %362 = call i32 (i32, i8*, ...) @BIO_printf(i32 %361, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0))
  %363 = load i32*, i32** %5, align 8
  %364 = call i64 @X509_CRL_get0_nextUpdate(i32* %363)
  %365 = icmp ne i64 %364, 0
  br i1 %365, label %366, label %371

366:                                              ; preds = %360
  %367 = load i32, i32* @bio_out, align 4
  %368 = load i32*, i32** %5, align 8
  %369 = call i64 @X509_CRL_get0_nextUpdate(i32* %368)
  %370 = call i32 @ASN1_TIME_print(i32 %367, i64 %369)
  br label %374

371:                                              ; preds = %360
  %372 = load i32, i32* @bio_out, align 4
  %373 = call i32 (i32, i8*, ...) @BIO_printf(i32 %372, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0))
  br label %374

374:                                              ; preds = %371, %366
  %375 = load i32, i32* @bio_out, align 4
  %376 = call i32 (i32, i8*, ...) @BIO_printf(i32 %375, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  br label %377

377:                                              ; preds = %374, %356
  %378 = load i32, i32* %32, align 4
  %379 = load i32, i32* %38, align 4
  %380 = icmp eq i32 %378, %379
  br i1 %380, label %381, label %425

381:                                              ; preds = %377
  %382 = load i32, i32* @EVP_MAX_MD_SIZE, align 4
  %383 = zext i32 %382 to i64
  %384 = call i8* @llvm.stacksave()
  store i8* %384, i8** %46, align 8
  %385 = alloca i8, i64 %383, align 16
  store i64 %383, i64* %47, align 8
  %386 = load i32*, i32** %5, align 8
  %387 = load i32*, i32** %12, align 8
  %388 = call i32 @X509_CRL_digest(i32* %386, i32* %387, i8* %385, i32* %45)
  %389 = icmp ne i32 %388, 0
  br i1 %389, label %393, label %390

390:                                              ; preds = %381
  %391 = load i32, i32* @bio_err, align 4
  %392 = call i32 (i32, i8*, ...) @BIO_printf(i32 %391, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0))
  store i32 6, i32* %48, align 4
  br label %421

393:                                              ; preds = %381
  %394 = load i32, i32* @bio_out, align 4
  %395 = load i32*, i32** %12, align 8
  %396 = call i32 @EVP_MD_type(i32* %395)
  %397 = call i32 @OBJ_nid2sn(i32 %396)
  %398 = call i32 (i32, i8*, ...) @BIO_printf(i32 %394, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 %397)
  store i32 0, i32* %44, align 4
  br label %399

399:                                              ; preds = %417, %393
  %400 = load i32, i32* %44, align 4
  %401 = load i32, i32* %45, align 4
  %402 = icmp slt i32 %400, %401
  br i1 %402, label %403, label %420

403:                                              ; preds = %399
  %404 = load i32, i32* @bio_out, align 4
  %405 = load i32, i32* %44, align 4
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds i8, i8* %385, i64 %406
  %408 = load i8, i8* %407, align 1
  %409 = zext i8 %408 to i32
  %410 = load i32, i32* %44, align 4
  %411 = add nsw i32 %410, 1
  %412 = load i32, i32* %45, align 4
  %413 = icmp eq i32 %411, %412
  %414 = zext i1 %413 to i64
  %415 = select i1 %413, i32 10, i32 58
  %416 = call i32 (i32, i8*, ...) @BIO_printf(i32 %404, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0), i32 %409, i32 %415)
  br label %417

417:                                              ; preds = %403
  %418 = load i32, i32* %44, align 4
  %419 = add nsw i32 %418, 1
  store i32 %419, i32* %44, align 4
  br label %399

420:                                              ; preds = %399
  store i32 0, i32* %48, align 4
  br label %421

421:                                              ; preds = %390, %420
  %422 = load i8*, i8** %46, align 8
  call void @llvm.stackrestore(i8* %422)
  %423 = load i32, i32* %48, align 4
  switch i32 %423, label %485 [
    i32 0, label %424
    i32 6, label %469
  ]

424:                                              ; preds = %421
  br label %425

425:                                              ; preds = %424, %377
  br label %426

426:                                              ; preds = %425
  %427 = load i32, i32* %38, align 4
  %428 = add nsw i32 %427, 1
  store i32 %428, i32* %38, align 4
  br label %285

429:                                              ; preds = %285
  br label %430

430:                                              ; preds = %429, %281
  %431 = load i8*, i8** %14, align 8
  %432 = load i32, i32* %27, align 4
  %433 = call i32* @bio_open_default(i8* %431, i8 signext 119, i32 %432)
  store i32* %433, i32** %6, align 8
  %434 = load i32*, i32** %6, align 8
  %435 = icmp eq i32* %434, null
  br i1 %435, label %436, label %437

436:                                              ; preds = %430
  br label %469

437:                                              ; preds = %430
  %438 = load i32, i32* %34, align 4
  %439 = icmp ne i32 %438, 0
  br i1 %439, label %440, label %445

440:                                              ; preds = %437
  %441 = load i32*, i32** %6, align 8
  %442 = load i32*, i32** %5, align 8
  %443 = call i32 (...) @get_nameopt()
  %444 = call i32 @X509_CRL_print_ex(i32* %441, i32* %442, i32 %443)
  br label %445

445:                                              ; preds = %440, %437
  %446 = load i32, i32* %25, align 4
  %447 = icmp ne i32 %446, 0
  br i1 %447, label %448, label %449

448:                                              ; preds = %445
  store i32 0, i32* %29, align 4
  br label %469

449:                                              ; preds = %445
  %450 = load i32, i32* %27, align 4
  %451 = load i32, i32* @FORMAT_ASN1, align 4
  %452 = icmp eq i32 %450, %451
  br i1 %452, label %453, label %458

453:                                              ; preds = %449
  %454 = load i32*, i32** %6, align 8
  %455 = load i32*, i32** %5, align 8
  %456 = call i64 @i2d_X509_CRL_bio(i32* %454, i32* %455)
  %457 = trunc i64 %456 to i32
  store i32 %457, i32* %38, align 4
  br label %462

458:                                              ; preds = %449
  %459 = load i32*, i32** %6, align 8
  %460 = load i32*, i32** %5, align 8
  %461 = call i32 @PEM_write_bio_X509_CRL(i32* %459, i32* %460)
  store i32 %461, i32* %38, align 4
  br label %462

462:                                              ; preds = %458, %453
  %463 = load i32, i32* %38, align 4
  %464 = icmp ne i32 %463, 0
  br i1 %464, label %468, label %465

465:                                              ; preds = %462
  %466 = load i32, i32* @bio_err, align 4
  %467 = call i32 (i32, i8*, ...) @BIO_printf(i32 %466, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i64 0, i64 0))
  br label %469

468:                                              ; preds = %462
  store i32 0, i32* %29, align 4
  br label %469

469:                                              ; preds = %468, %465, %448, %436, %421, %269, %250, %243, %234, %217, %206, %195, %184, %174, %167, %156, %67, %63
  %470 = load i32, i32* %29, align 4
  %471 = icmp ne i32 %470, 0
  br i1 %471, label %472, label %475

472:                                              ; preds = %469
  %473 = load i32, i32* @bio_err, align 4
  %474 = call i32 @ERR_print_errors(i32 %473)
  br label %475

475:                                              ; preds = %472, %469
  %476 = load i32*, i32** %6, align 8
  %477 = call i32 @BIO_free_all(i32* %476)
  %478 = load i32*, i32** %5, align 8
  %479 = call i32 @X509_CRL_free(i32* %478)
  %480 = load i32*, i32** %8, align 8
  %481 = call i32 @X509_STORE_CTX_free(i32* %480)
  %482 = load i32*, i32** %7, align 8
  %483 = call i32 @X509_STORE_free(i32* %482)
  %484 = load i32, i32* %29, align 4
  ret i32 %484

485:                                              ; preds = %421
  unreachable
}

declare dso_local i32* @EVP_sha1(...) #1

declare dso_local i8* @opt_init(i32, i8**, i32) #1

declare dso_local i32 @opt_next(...) #1

declare dso_local i32 @BIO_printf(i32, i8*, ...) #1

declare dso_local i32 @opt_help(i32) #1

declare dso_local i32 @opt_format(i8*, i32, i32*) #1

declare dso_local i8* @opt_arg(...) #1

declare dso_local i32 @set_nameopt(i8*) #1

declare dso_local i32 @opt_md(i32, i32**) #1

declare dso_local i32 @opt_unknown(...) #1

declare dso_local i32 @opt_num_rest(...) #1

declare dso_local i32* @load_crl(i8*, i32) #1

declare dso_local i32* @setup_verify(i8*, i8*, i32, i32) #1

declare dso_local i32* @X509_STORE_add_lookup(i32*, i32) #1

declare dso_local i32 @X509_LOOKUP_file(...) #1

declare dso_local i32* @X509_STORE_CTX_new(...) #1

declare dso_local i32 @X509_STORE_CTX_init(i32*, i32*, i32*, i32*) #1

declare dso_local i32* @X509_STORE_CTX_get_obj_by_subject(i32*, i32, i32) #1

declare dso_local i32 @X509_CRL_get_issuer(i32*) #1

declare dso_local i32* @X509_get_pubkey(i32) #1

declare dso_local i32 @X509_OBJECT_get0_X509(i32*) #1

declare dso_local i32 @X509_OBJECT_free(i32*) #1

declare dso_local i32 @X509_CRL_verify(i32*, i32*) #1

declare dso_local i32 @EVP_PKEY_free(i32*) #1

declare dso_local i32 @BIO_puts(i32, i8*) #1

declare dso_local i32* @load_key(i8*, i32, i32, i32*, i32*, i8*) #1

declare dso_local i32 @X509_CRL_free(i32*) #1

declare dso_local i32* @X509_CRL_diff(i32*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @X509_CRL_get0_signature(i32*, i32**, i32*) #1

declare dso_local i32 @corrupt_signature(i32*) #1

declare dso_local i32 @print_name(i32, i8*, i32, i32) #1

declare dso_local i32 @get_nameopt(...) #1

declare dso_local i32* @X509_CRL_get_ext_d2i(i32*, i32, i32*, i32*) #1

declare dso_local i32 @i2a_ASN1_INTEGER(i32, i32*) #1

declare dso_local i32 @ASN1_INTEGER_free(i32*) #1

declare dso_local i32 @X509_NAME_hash(i32) #1

declare dso_local i32 @X509_NAME_hash_old(i32) #1

declare dso_local i32 @ASN1_TIME_print(i32, i64) #1

declare dso_local i64 @X509_CRL_get0_lastUpdate(i32*) #1

declare dso_local i64 @X509_CRL_get0_nextUpdate(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @X509_CRL_digest(i32*, i32*, i8*, i32*) #1

declare dso_local i32 @OBJ_nid2sn(i32) #1

declare dso_local i32 @EVP_MD_type(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32* @bio_open_default(i8*, i8 signext, i32) #1

declare dso_local i32 @X509_CRL_print_ex(i32*, i32*, i32) #1

declare dso_local i64 @i2d_X509_CRL_bio(i32*, i32*) #1

declare dso_local i32 @PEM_write_bio_X509_CRL(i32*, i32*) #1

declare dso_local i32 @ERR_print_errors(i32) #1

declare dso_local i32 @BIO_free_all(i32*) #1

declare dso_local i32 @X509_STORE_CTX_free(i32*) #1

declare dso_local i32 @X509_STORE_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
