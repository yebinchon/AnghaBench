; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_ts.c_ts_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_ts.c_ts_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@default_config_file = common dso_local global i8* null, align 8
@ts_options = common dso_local global i32 0, align 4
@bio_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"%s: Use -help for summary.\0A\00", align 1
@opt_helplist = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Error getting password.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ts_main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32*, align 8
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32* null, i32** %5, align 8
  store i8* null, i8** %6, align 8
  store i8* null, i8** %7, align 8
  %36 = load i8*, i8** @default_config_file, align 8
  store i8* %36, i8** %9, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  store i8* null, i8** %13, align 8
  store i8* null, i8** %14, align 8
  store i8* null, i8** %15, align 8
  store i8* null, i8** %16, align 8
  store i8* null, i8** %17, align 8
  store i8* null, i8** %18, align 8
  store i8* null, i8** %19, align 8
  store i8* null, i8** %20, align 8
  store i8* null, i8** %21, align 8
  store i8* null, i8** %22, align 8
  store i8* null, i8** %23, align 8
  store i8* null, i8** %24, align 8
  store i32* null, i32** %25, align 8
  store i32 148, i32* %27, align 4
  store i32 1, i32* %28, align 4
  store i32 0, i32* %29, align 4
  store i32 0, i32* %30, align 4
  store i32 0, i32* %31, align 4
  store i32 0, i32* %32, align 4
  store i32* null, i32** %33, align 8
  store i32 0, i32* %34, align 4
  store i32 0, i32* %35, align 4
  %37 = call i32* (...) @X509_VERIFY_PARAM_new()
  store i32* %37, i32** %33, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %2
  br label %278

40:                                               ; preds = %2
  %41 = load i32, i32* %3, align 4
  %42 = load i8**, i8*** %4, align 8
  %43 = load i32, i32* @ts_options, align 4
  %44 = call i8* @opt_init(i32 %41, i8** %42, i32 %43)
  store i8* %44, i8** %8, align 8
  br label %45

45:                                               ; preds = %136, %40
  %46 = call i32 (...) @opt_next()
  store i32 %46, i32* %26, align 4
  %47 = icmp ne i32 %46, 149
  br i1 %47, label %48, label %137

48:                                               ; preds = %45
  %49 = load i32, i32* %26, align 4
  switch i32 %49, label %136 [
    i32 149, label %50
    i32 148, label %50
    i32 147, label %55
    i32 153, label %72
    i32 136, label %74
    i32 140, label %76
    i32 138, label %76
    i32 129, label %76
    i32 152, label %82
    i32 151, label %84
    i32 137, label %86
    i32 131, label %92
    i32 143, label %94
    i32 155, label %95
    i32 146, label %96
    i32 133, label %98
    i32 142, label %99
    i32 132, label %101
    i32 134, label %102
    i32 139, label %103
    i32 141, label %105
    i32 145, label %107
    i32 135, label %109
    i32 154, label %111
    i32 156, label %113
    i32 157, label %115
    i32 130, label %117
    i32 150, label %119
    i32 144, label %121
    i32 128, label %127
  ]

50:                                               ; preds = %48, %48
  br label %51

51:                                               ; preds = %274, %253, %219, %209, %202, %181, %174, %143, %125, %79, %50
  %52 = load i32, i32* @bio_err, align 4
  %53 = load i8*, i8** %8, align 8
  %54 = call i32 (i32, i8*, ...) @BIO_printf(i32 %52, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %53)
  br label %278

55:                                               ; preds = %48
  %56 = load i32, i32* @ts_options, align 4
  %57 = call i32 @opt_help(i32 %56)
  %58 = load i8**, i8*** @opt_helplist, align 8
  store i8** %58, i8*** %12, align 8
  br label %59

59:                                               ; preds = %68, %55
  %60 = load i8**, i8*** %12, align 8
  %61 = load i8*, i8** %60, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %71

63:                                               ; preds = %59
  %64 = load i32, i32* @bio_err, align 4
  %65 = load i8**, i8*** %12, align 8
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 (i32, i8*, ...) @BIO_printf(i32 %64, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %66)
  br label %68

68:                                               ; preds = %63
  %69 = load i8**, i8*** %12, align 8
  %70 = getelementptr inbounds i8*, i8** %69, i32 1
  store i8** %70, i8*** %12, align 8
  br label %59

71:                                               ; preds = %59
  store i32 0, i32* %28, align 4
  br label %278

72:                                               ; preds = %48
  %73 = call i8* (...) @opt_arg()
  store i8* %73, i8** %9, align 8
  br label %136

74:                                               ; preds = %48
  %75 = call i8* (...) @opt_arg()
  store i8* %75, i8** %11, align 8
  br label %136

76:                                               ; preds = %48, %48, %48
  %77 = load i32, i32* %27, align 4
  %78 = icmp ne i32 %77, 148
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  br label %51

80:                                               ; preds = %76
  %81 = load i32, i32* %26, align 4
  store i32 %81, i32* %27, align 4
  br label %136

82:                                               ; preds = %48
  %83 = call i8* (...) @opt_arg()
  store i8* %83, i8** %14, align 8
  br label %136

84:                                               ; preds = %48
  %85 = call i8* (...) @opt_arg()
  store i8* %85, i8** %15, align 8
  br label %136

86:                                               ; preds = %48
  %87 = load i32, i32* %26, align 4
  %88 = call i32 @opt_rand(i32 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %86
  br label %278

91:                                               ; preds = %86
  br label %136

92:                                               ; preds = %48
  %93 = call i8* (...) @opt_arg()
  store i8* %93, i8** %16, align 8
  br label %136

94:                                               ; preds = %48
  store i32 1, i32* %29, align 4
  br label %136

95:                                               ; preds = %48
  store i32 1, i32* %30, align 4
  br label %136

96:                                               ; preds = %48
  %97 = call i8* (...) @opt_arg()
  store i8* %97, i8** %17, align 8
  br label %136

98:                                               ; preds = %48
  store i32 1, i32* %34, align 4
  br label %136

99:                                               ; preds = %48
  %100 = call i8* (...) @opt_arg()
  store i8* %100, i8** %18, align 8
  br label %136

101:                                              ; preds = %48
  store i32 1, i32* %35, align 4
  br label %136

102:                                              ; preds = %48
  store i32 1, i32* %31, align 4
  br label %136

103:                                              ; preds = %48
  %104 = call i8* (...) @opt_arg()
  store i8* %104, i8** %19, align 8
  br label %136

105:                                              ; preds = %48
  %106 = call i8* (...) @opt_arg()
  store i8* %106, i8** %20, align 8
  br label %136

107:                                              ; preds = %48
  %108 = call i8* (...) @opt_arg()
  store i8* %108, i8** %21, align 8
  br label %136

109:                                              ; preds = %48
  %110 = call i8* (...) @opt_arg()
  store i8* %110, i8** %22, align 8
  br label %136

111:                                              ; preds = %48
  %112 = call i8* (...) @opt_arg()
  store i8* %112, i8** %23, align 8
  br label %136

113:                                              ; preds = %48
  %114 = call i8* (...) @opt_arg()
  store i8* %114, i8** %24, align 8
  br label %136

115:                                              ; preds = %48
  %116 = call i8* (...) @opt_arg()
  store i8* %116, i8** %6, align 8
  br label %136

117:                                              ; preds = %48
  %118 = call i8* (...) @opt_arg()
  store i8* %118, i8** %7, align 8
  br label %136

119:                                              ; preds = %48
  %120 = call i8* (...) @opt_arg()
  store i8* %120, i8** %10, align 8
  br label %136

121:                                              ; preds = %48
  %122 = call i32 (...) @opt_unknown()
  %123 = call i32 @opt_md(i32 %122, i32** %25)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %126, label %125

125:                                              ; preds = %121
  br label %51

126:                                              ; preds = %121
  br label %136

127:                                              ; preds = %48
  %128 = load i32, i32* %26, align 4
  %129 = load i32*, i32** %33, align 8
  %130 = call i32 @opt_verify(i32 %128, i32* %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %133, label %132

132:                                              ; preds = %127
  br label %278

133:                                              ; preds = %127
  %134 = load i32, i32* %32, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %32, align 4
  br label %136

136:                                              ; preds = %48, %133, %126, %119, %117, %115, %113, %111, %109, %107, %105, %103, %102, %101, %99, %98, %96, %95, %94, %92, %91, %84, %82, %80, %74, %72
  br label %45

137:                                              ; preds = %45
  %138 = load i32, i32* %27, align 4
  %139 = icmp eq i32 %138, 148
  br i1 %139, label %143, label %140

140:                                              ; preds = %137
  %141 = call i64 (...) @opt_num_rest()
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %140, %137
  br label %51

144:                                              ; preds = %140
  %145 = load i32, i32* %27, align 4
  %146 = icmp eq i32 %145, 138
  br i1 %146, label %147, label %157

147:                                              ; preds = %144
  %148 = load i8*, i8** %20, align 8
  %149 = icmp ne i8* %148, null
  br i1 %149, label %150, label %157

150:                                              ; preds = %147
  %151 = load i8*, i8** %20, align 8
  %152 = call i32 @app_passwd(i8* %151, i32* null, i8** %13, i32* null)
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %157, label %154

154:                                              ; preds = %150
  %155 = load i32, i32* @bio_err, align 4
  %156 = call i32 (i32, i8*, ...) @BIO_printf(i32 %155, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %278

157:                                              ; preds = %150, %147, %144
  %158 = load i8*, i8** %9, align 8
  %159 = call i32* @load_config_file(i8* %158)
  store i32* %159, i32** %5, align 8
  %160 = load i8*, i8** %9, align 8
  %161 = load i8*, i8** @default_config_file, align 8
  %162 = icmp ne i8* %160, %161
  br i1 %162, label %163, label %168

163:                                              ; preds = %157
  %164 = load i32*, i32** %5, align 8
  %165 = call i32 @app_load_modules(i32* %164)
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %168, label %167

167:                                              ; preds = %163
  br label %278

168:                                              ; preds = %163, %157
  %169 = load i32, i32* %27, align 4
  %170 = icmp eq i32 %169, 140
  br i1 %170, label %171, label %196

171:                                              ; preds = %168
  %172 = load i32, i32* %32, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %171
  br label %51

175:                                              ; preds = %171
  %176 = load i8*, i8** %14, align 8
  %177 = icmp ne i8* %176, null
  br i1 %177, label %178, label %182

178:                                              ; preds = %175
  %179 = load i8*, i8** %15, align 8
  %180 = icmp ne i8* %179, null
  br i1 %180, label %181, label %182

181:                                              ; preds = %178
  br label %51

182:                                              ; preds = %178, %175
  %183 = load i8*, i8** %14, align 8
  %184 = load i8*, i8** %15, align 8
  %185 = load i32*, i32** %25, align 8
  %186 = load i8*, i8** %16, align 8
  %187 = load i32, i32* %29, align 4
  %188 = load i32, i32* %30, align 4
  %189 = load i8*, i8** %17, align 8
  %190 = load i8*, i8** %18, align 8
  %191 = load i32, i32* %31, align 4
  %192 = call i32 @query_command(i8* %183, i8* %184, i32* %185, i8* %186, i32 %187, i32 %188, i8* %189, i8* %190, i32 %191)
  %193 = icmp ne i32 %192, 0
  %194 = xor i1 %193, true
  %195 = zext i1 %194 to i32
  store i32 %195, i32* %28, align 4
  br label %277

196:                                              ; preds = %168
  %197 = load i32, i32* %27, align 4
  %198 = icmp eq i32 %197, 138
  br i1 %198, label %199, label %241

199:                                              ; preds = %196
  %200 = load i32, i32* %32, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %203

202:                                              ; preds = %199
  br label %51

203:                                              ; preds = %199
  %204 = load i8*, i8** %17, align 8
  %205 = icmp ne i8* %204, null
  br i1 %205, label %206, label %210

206:                                              ; preds = %203
  %207 = load i8*, i8** %19, align 8
  %208 = icmp ne i8* %207, null
  br i1 %208, label %209, label %210

209:                                              ; preds = %206
  br label %51

210:                                              ; preds = %206, %203
  %211 = load i8*, i8** %17, align 8
  %212 = icmp eq i8* %211, null
  br i1 %212, label %213, label %221

213:                                              ; preds = %210
  %214 = load i32*, i32** %5, align 8
  %215 = icmp eq i32* %214, null
  br i1 %215, label %219, label %216

216:                                              ; preds = %213
  %217 = load i32, i32* %34, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %220

219:                                              ; preds = %216, %213
  br label %51

220:                                              ; preds = %216
  br label %221

221:                                              ; preds = %220, %210
  %222 = load i32*, i32** %5, align 8
  %223 = load i8*, i8** %11, align 8
  %224 = load i8*, i8** %10, align 8
  %225 = load i8*, i8** %19, align 8
  %226 = load i8*, i8** %13, align 8
  %227 = load i8*, i8** %21, align 8
  %228 = load i32*, i32** %25, align 8
  %229 = load i8*, i8** %22, align 8
  %230 = load i8*, i8** %23, align 8
  %231 = load i8*, i8** %16, align 8
  %232 = load i8*, i8** %17, align 8
  %233 = load i32, i32* %34, align 4
  %234 = load i8*, i8** %18, align 8
  %235 = load i32, i32* %35, align 4
  %236 = load i32, i32* %31, align 4
  %237 = call i32 @reply_command(i32* %222, i8* %223, i8* %224, i8* %225, i8* %226, i8* %227, i32* %228, i8* %229, i8* %230, i8* %231, i8* %232, i32 %233, i8* %234, i32 %235, i32 %236)
  %238 = icmp ne i32 %237, 0
  %239 = xor i1 %238, true
  %240 = zext i1 %239 to i32
  store i32 %240, i32* %28, align 4
  br label %276

241:                                              ; preds = %196
  %242 = load i32, i32* %27, align 4
  %243 = icmp eq i32 %242, 129
  br i1 %243, label %244, label %274

244:                                              ; preds = %241
  %245 = load i8*, i8** %17, align 8
  %246 = icmp eq i8* %245, null
  br i1 %246, label %253, label %247

247:                                              ; preds = %244
  %248 = load i8*, i8** %19, align 8
  %249 = load i8*, i8** %14, align 8
  %250 = load i8*, i8** %15, align 8
  %251 = call i32 @EXACTLY_ONE(i8* %248, i8* %249, i8* %250)
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %254, label %253

253:                                              ; preds = %247, %244
  br label %51

254:                                              ; preds = %247
  %255 = load i8*, i8** %14, align 8
  %256 = load i8*, i8** %15, align 8
  %257 = load i8*, i8** %19, align 8
  %258 = load i8*, i8** %17, align 8
  %259 = load i32, i32* %34, align 4
  %260 = load i8*, i8** %24, align 8
  %261 = load i8*, i8** %6, align 8
  %262 = load i8*, i8** %7, align 8
  %263 = load i32, i32* %32, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %267

265:                                              ; preds = %254
  %266 = load i32*, i32** %33, align 8
  br label %268

267:                                              ; preds = %254
  br label %268

268:                                              ; preds = %267, %265
  %269 = phi i32* [ %266, %265 ], [ null, %267 ]
  %270 = call i32 @verify_command(i8* %255, i8* %256, i8* %257, i8* %258, i32 %259, i8* %260, i8* %261, i8* %262, i32* %269)
  %271 = icmp ne i32 %270, 0
  %272 = xor i1 %271, true
  %273 = zext i1 %272 to i32
  store i32 %273, i32* %28, align 4
  br label %275

274:                                              ; preds = %241
  br label %51

275:                                              ; preds = %268
  br label %276

276:                                              ; preds = %275, %221
  br label %277

277:                                              ; preds = %276, %182
  br label %278

278:                                              ; preds = %277, %167, %154, %132, %90, %71, %51, %39
  %279 = load i32*, i32** %33, align 8
  %280 = call i32 @X509_VERIFY_PARAM_free(i32* %279)
  %281 = load i32*, i32** %5, align 8
  %282 = call i32 @NCONF_free(i32* %281)
  %283 = load i8*, i8** %13, align 8
  %284 = call i32 @OPENSSL_free(i8* %283)
  %285 = load i32, i32* %28, align 4
  ret i32 %285
}

declare dso_local i32* @X509_VERIFY_PARAM_new(...) #1

declare dso_local i8* @opt_init(i32, i8**, i32) #1

declare dso_local i32 @opt_next(...) #1

declare dso_local i32 @BIO_printf(i32, i8*, ...) #1

declare dso_local i32 @opt_help(i32) #1

declare dso_local i8* @opt_arg(...) #1

declare dso_local i32 @opt_rand(i32) #1

declare dso_local i32 @opt_md(i32, i32**) #1

declare dso_local i32 @opt_unknown(...) #1

declare dso_local i32 @opt_verify(i32, i32*) #1

declare dso_local i64 @opt_num_rest(...) #1

declare dso_local i32 @app_passwd(i8*, i32*, i8**, i32*) #1

declare dso_local i32* @load_config_file(i8*) #1

declare dso_local i32 @app_load_modules(i32*) #1

declare dso_local i32 @query_command(i8*, i8*, i32*, i8*, i32, i32, i8*, i8*, i32) #1

declare dso_local i32 @reply_command(i32*, i8*, i8*, i8*, i8*, i8*, i32*, i8*, i8*, i8*, i8*, i32, i8*, i32, i32) #1

declare dso_local i32 @EXACTLY_ONE(i8*, i8*, i8*) #1

declare dso_local i32 @verify_command(i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32*) #1

declare dso_local i32 @X509_VERIFY_PARAM_free(i32*) #1

declare dso_local i32 @NCONF_free(i32*) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
