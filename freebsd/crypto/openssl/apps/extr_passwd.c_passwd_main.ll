; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_passwd.c_passwd_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_passwd.c_passwd_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@passwd_unset = common dso_local global i64 0, align 8
@passwd_options = common dso_local global i32 0, align 4
@bio_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"%s: Use -help for summary.\0A\00", align 1
@passwd_md5 = common dso_local global i64 0, align 8
@passwd_sha256 = common dso_local global i64 0, align 8
@passwd_sha512 = common dso_local global i64 0, align 8
@passwd_apr1 = common dso_local global i64 0, align 8
@passwd_aixmd5 = common dso_local global i64 0, align 8
@passwd_crypt = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"%s: Can't combine -in and -stdin\0A\00", align 1
@FORMAT_TEXT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"password buffer\00", align 1
@passwd_main.passwds_static = internal global [2 x i8*] zeroinitializer, align 16
@.str.3 = private unnamed_addr constant [11 x i8] c"Password: \00", align 1
@bio_out = common dso_local global i32 0, align 4
@BUFSIZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @passwd_main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i8*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32* null, i32** %5, align 8
  store i8* null, i8** %6, align 8
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  store i8** null, i8*** %9, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 1, i32* %21, align 4
  %30 = load i64, i64* @passwd_unset, align 8
  store i64 %30, i64* %22, align 8
  store i64 0, i64* %23, align 8
  store i64 256, i64* %24, align 8
  %31 = load i32, i32* %3, align 4
  %32 = load i8**, i8*** %4, align 8
  %33 = load i32, i32* @passwd_options, align 4
  %34 = call i8* @opt_init(i32 %31, i8** %32, i32 %33)
  store i8* %34, i8** %12, align 8
  br label %35

35:                                               ; preds = %113, %2
  %36 = call i32 (...) @opt_next()
  store i32 %36, i32* %13, align 4
  %37 = icmp ne i32 %36, 138
  br i1 %37, label %38, label %114

38:                                               ; preds = %35
  %39 = load i32, i32* %13, align 4
  switch i32 %39, label %113 [
    i32 138, label %40
    i32 137, label %40
    i32 136, label %45
    i32 135, label %48
    i32 134, label %54
    i32 133, label %55
    i32 128, label %56
    i32 132, label %57
    i32 144, label %58
    i32 143, label %65
    i32 142, label %72
    i32 140, label %79
    i32 141, label %86
    i32 139, label %93
    i32 130, label %100
    i32 129, label %102
    i32 131, label %107
  ]

40:                                               ; preds = %38, %38
  br label %41

41:                                               ; preds = %123, %105, %97, %90, %83, %76, %69, %62, %51, %40
  %42 = load i32, i32* @bio_err, align 4
  %43 = load i8*, i8** %12, align 8
  %44 = call i32 (i32, i8*, ...) @BIO_printf(i32 %42, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %43)
  br label %296

45:                                               ; preds = %38
  %46 = load i32, i32* @passwd_options, align 4
  %47 = call i32 @opt_help(i32 %46)
  store i32 0, i32* %21, align 4
  br label %296

48:                                               ; preds = %38
  %49 = load i32, i32* %15, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  br label %41

52:                                               ; preds = %48
  %53 = call i8* (...) @opt_arg()
  store i8* %53, i8** %6, align 8
  store i32 1, i32* %15, align 4
  br label %113

54:                                               ; preds = %38
  store i32 1, i32* %16, align 4
  br label %113

55:                                               ; preds = %38
  store i32 1, i32* %18, align 4
  br label %113

56:                                               ; preds = %38
  store i32 1, i32* %19, align 4
  br label %113

57:                                               ; preds = %38
  store i32 1, i32* %20, align 4
  br label %113

58:                                               ; preds = %38
  %59 = load i64, i64* %22, align 8
  %60 = load i64, i64* @passwd_unset, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  br label %41

63:                                               ; preds = %58
  %64 = load i64, i64* @passwd_md5, align 8
  store i64 %64, i64* %22, align 8
  br label %113

65:                                               ; preds = %38
  %66 = load i64, i64* %22, align 8
  %67 = load i64, i64* @passwd_unset, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  br label %41

70:                                               ; preds = %65
  %71 = load i64, i64* @passwd_sha256, align 8
  store i64 %71, i64* %22, align 8
  br label %113

72:                                               ; preds = %38
  %73 = load i64, i64* %22, align 8
  %74 = load i64, i64* @passwd_unset, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %72
  br label %41

77:                                               ; preds = %72
  %78 = load i64, i64* @passwd_sha512, align 8
  store i64 %78, i64* %22, align 8
  br label %113

79:                                               ; preds = %38
  %80 = load i64, i64* %22, align 8
  %81 = load i64, i64* @passwd_unset, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %79
  br label %41

84:                                               ; preds = %79
  %85 = load i64, i64* @passwd_apr1, align 8
  store i64 %85, i64* %22, align 8
  br label %113

86:                                               ; preds = %38
  %87 = load i64, i64* %22, align 8
  %88 = load i64, i64* @passwd_unset, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  br label %41

91:                                               ; preds = %86
  %92 = load i64, i64* @passwd_aixmd5, align 8
  store i64 %92, i64* %22, align 8
  br label %113

93:                                               ; preds = %38
  %94 = load i64, i64* %22, align 8
  %95 = load i64, i64* @passwd_unset, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %93
  br label %41

98:                                               ; preds = %93
  %99 = load i64, i64* @passwd_crypt, align 8
  store i64 %99, i64* %22, align 8
  br label %113

100:                                              ; preds = %38
  store i32 1, i32* %17, align 4
  %101 = call i8* (...) @opt_arg()
  store i8* %101, i8** %7, align 8
  br label %113

102:                                              ; preds = %38
  %103 = load i32, i32* %15, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %102
  br label %41

106:                                              ; preds = %102
  store i32 1, i32* %14, align 4
  store i32 1, i32* %15, align 4
  br label %113

107:                                              ; preds = %38
  %108 = load i32, i32* %13, align 4
  %109 = call i32 @opt_rand(i32 %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %107
  br label %296

112:                                              ; preds = %107
  br label %113

113:                                              ; preds = %38, %112, %106, %100, %98, %91, %84, %77, %70, %63, %57, %56, %55, %54, %52
  br label %35

114:                                              ; preds = %35
  %115 = call i32 (...) @opt_num_rest()
  store i32 %115, i32* %3, align 4
  %116 = call i8** (...) @opt_rest()
  store i8** %116, i8*** %4, align 8
  %117 = load i8**, i8*** %4, align 8
  %118 = load i8*, i8** %117, align 8
  %119 = icmp ne i8* %118, null
  br i1 %119, label %120, label %126

120:                                              ; preds = %114
  %121 = load i32, i32* %15, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %120
  br label %41

124:                                              ; preds = %120
  store i32 1, i32* %15, align 4
  %125 = load i8**, i8*** %4, align 8
  store i8** %125, i8*** %9, align 8
  br label %126

126:                                              ; preds = %124, %114
  %127 = load i64, i64* %22, align 8
  %128 = load i64, i64* @passwd_unset, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %132

130:                                              ; preds = %126
  %131 = load i64, i64* @passwd_crypt, align 8
  store i64 %131, i64* %22, align 8
  br label %132

132:                                              ; preds = %130, %126
  %133 = load i8*, i8** %6, align 8
  %134 = icmp ne i8* %133, null
  br i1 %134, label %135, label %142

135:                                              ; preds = %132
  %136 = load i32, i32* %14, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %135
  %139 = load i32, i32* @bio_err, align 4
  %140 = load i8*, i8** %12, align 8
  %141 = call i32 (i32, i8*, ...) @BIO_printf(i32 %139, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* %140)
  br label %296

142:                                              ; preds = %135, %132
  %143 = load i8*, i8** %6, align 8
  %144 = icmp ne i8* %143, null
  br i1 %144, label %148, label %145

145:                                              ; preds = %142
  %146 = load i32, i32* %14, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %156

148:                                              ; preds = %145, %142
  %149 = load i8*, i8** %6, align 8
  %150 = load i32, i32* @FORMAT_TEXT, align 4
  %151 = call i32* @bio_open_default(i8* %149, i8 signext 114, i32 %150)
  store i32* %151, i32** %5, align 8
  %152 = load i32*, i32** %5, align 8
  %153 = icmp eq i32* %152, null
  br i1 %153, label %154, label %155

154:                                              ; preds = %148
  br label %296

155:                                              ; preds = %148
  br label %156

156:                                              ; preds = %155, %145
  %157 = load i64, i64* %22, align 8
  %158 = load i64, i64* @passwd_crypt, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %161

160:                                              ; preds = %156
  store i64 8, i64* %24, align 8
  br label %161

161:                                              ; preds = %160, %156
  %162 = load i8**, i8*** %9, align 8
  %163 = icmp eq i8** %162, null
  br i1 %163, label %164, label %169

164:                                              ; preds = %161
  %165 = load i64, i64* %24, align 8
  %166 = add i64 %165, 2
  store i64 %166, i64* %23, align 8
  %167 = load i64, i64* %23, align 8
  %168 = call i8* @app_malloc(i64 %167, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  store i8* %168, i8** %11, align 8
  store i8* %168, i8** %8, align 8
  br label %169

169:                                              ; preds = %164, %161
  %170 = load i32*, i32** %5, align 8
  %171 = icmp eq i32* %170, null
  br i1 %171, label %172, label %198

172:                                              ; preds = %169
  %173 = load i8**, i8*** %9, align 8
  %174 = icmp eq i8** %173, null
  br i1 %174, label %175, label %198

175:                                              ; preds = %172
  store i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @passwd_main.passwds_static, i64 0, i64 0), i8*** %9, align 8
  %176 = load i32*, i32** %5, align 8
  %177 = icmp eq i32* %176, null
  br i1 %177, label %178, label %194

178:                                              ; preds = %175
  %179 = load i8*, i8** %11, align 8
  %180 = load i64, i64* %23, align 8
  %181 = load i32, i32* %17, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %186, label %183

183:                                              ; preds = %178
  %184 = load i32, i32* %16, align 4
  %185 = icmp ne i32 %184, 0
  br label %186

186:                                              ; preds = %183, %178
  %187 = phi i1 [ true, %178 ], [ %185, %183 ]
  %188 = xor i1 %187, true
  %189 = zext i1 %188 to i32
  %190 = call i64 @EVP_read_pw_string(i8* %179, i64 %180, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %186
  br label %296

193:                                              ; preds = %186
  br label %194

194:                                              ; preds = %193, %175
  %195 = load i8*, i8** %11, align 8
  %196 = load i8**, i8*** %9, align 8
  %197 = getelementptr inbounds i8*, i8** %196, i64 0
  store i8* %195, i8** %197, align 8
  br label %198

198:                                              ; preds = %194, %172, %169
  %199 = load i32*, i32** %5, align 8
  %200 = icmp eq i32* %199, null
  br i1 %200, label %201, label %232

201:                                              ; preds = %198
  %202 = load i8**, i8*** %9, align 8
  %203 = icmp ne i8** %202, null
  %204 = zext i1 %203 to i32
  %205 = call i32 @assert(i32 %204)
  %206 = load i8**, i8*** %9, align 8
  %207 = load i8*, i8** %206, align 8
  %208 = icmp ne i8* %207, null
  %209 = zext i1 %208 to i32
  %210 = call i32 @assert(i32 %209)
  br label %211

211:                                              ; preds = %227, %201
  %212 = load i8**, i8*** %9, align 8
  %213 = getelementptr inbounds i8*, i8** %212, i32 1
  store i8** %213, i8*** %9, align 8
  %214 = load i8*, i8** %212, align 8
  store i8* %214, i8** %8, align 8
  %215 = load i32, i32* %17, align 4
  %216 = load i8*, i8** %8, align 8
  %217 = load i32, i32* @bio_out, align 4
  %218 = load i32, i32* %18, align 4
  %219 = load i32, i32* %19, align 4
  %220 = load i32, i32* %20, align 4
  %221 = load i64, i64* %24, align 8
  %222 = load i64, i64* %22, align 8
  %223 = call i32 @do_passwd(i32 %215, i8** %7, i8** %10, i8* %216, i32 %217, i32 %218, i32 %219, i32 %220, i64 %221, i64 %222)
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %226, label %225

225:                                              ; preds = %211
  br label %296

226:                                              ; preds = %211
  br label %227

227:                                              ; preds = %226
  %228 = load i8**, i8*** %9, align 8
  %229 = load i8*, i8** %228, align 8
  %230 = icmp ne i8* %229, null
  br i1 %230, label %211, label %231

231:                                              ; preds = %227
  br label %295

232:                                              ; preds = %198
  %233 = load i8*, i8** %8, align 8
  %234 = icmp ne i8* %233, null
  %235 = zext i1 %234 to i32
  %236 = call i32 @assert(i32 %235)
  br label %237

237:                                              ; preds = %290, %232
  %238 = load i32*, i32** %5, align 8
  %239 = load i8*, i8** %8, align 8
  %240 = load i64, i64* %24, align 8
  %241 = add i64 %240, 1
  %242 = trunc i64 %241 to i32
  %243 = call i32 @BIO_gets(i32* %238, i8* %239, i32 %242)
  store i32 %243, i32* %26, align 4
  %244 = load i32, i32* %26, align 4
  %245 = icmp sgt i32 %244, 0
  br i1 %245, label %246, label %286

246:                                              ; preds = %237
  %247 = load i8*, i8** %8, align 8
  %248 = call i8* @strchr(i8* %247, i8 signext 10)
  store i8* %248, i8** %27, align 8
  %249 = load i8*, i8** %27, align 8
  %250 = icmp ne i8* %249, null
  br i1 %250, label %251, label %253

251:                                              ; preds = %246
  %252 = load i8*, i8** %27, align 8
  store i8 0, i8* %252, align 1
  br label %273

253:                                              ; preds = %246
  %254 = load i32, i32* @BUFSIZ, align 4
  %255 = zext i32 %254 to i64
  %256 = call i8* @llvm.stacksave()
  store i8* %256, i8** %28, align 8
  %257 = alloca i8, i64 %255, align 16
  store i64 %255, i64* %29, align 8
  br label %258

258:                                              ; preds = %269, %253
  %259 = load i32*, i32** %5, align 8
  %260 = trunc i64 %255 to i32
  %261 = call i32 @BIO_gets(i32* %259, i8* %257, i32 %260)
  store i32 %261, i32* %26, align 4
  br label %262

262:                                              ; preds = %258
  %263 = load i32, i32* %26, align 4
  %264 = icmp sgt i32 %263, 0
  br i1 %264, label %265, label %269

265:                                              ; preds = %262
  %266 = call i8* @strchr(i8* %257, i8 signext 10)
  %267 = icmp ne i8* %266, null
  %268 = xor i1 %267, true
  br label %269

269:                                              ; preds = %265, %262
  %270 = phi i1 [ false, %262 ], [ %268, %265 ]
  br i1 %270, label %258, label %271

271:                                              ; preds = %269
  %272 = load i8*, i8** %28, align 8
  call void @llvm.stackrestore(i8* %272)
  br label %273

273:                                              ; preds = %271, %251
  %274 = load i32, i32* %17, align 4
  %275 = load i8*, i8** %8, align 8
  %276 = load i32, i32* @bio_out, align 4
  %277 = load i32, i32* %18, align 4
  %278 = load i32, i32* %19, align 4
  %279 = load i32, i32* %20, align 4
  %280 = load i64, i64* %24, align 8
  %281 = load i64, i64* %22, align 8
  %282 = call i32 @do_passwd(i32 %274, i8** %7, i8** %10, i8* %275, i32 %276, i32 %277, i32 %278, i32 %279, i64 %280, i64 %281)
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %285, label %284

284:                                              ; preds = %273
  br label %296

285:                                              ; preds = %273
  br label %286

286:                                              ; preds = %285, %237
  %287 = load i32, i32* %26, align 4
  %288 = icmp sle i32 %287, 0
  %289 = zext i1 %288 to i32
  store i32 %289, i32* %25, align 4
  br label %290

290:                                              ; preds = %286
  %291 = load i32, i32* %25, align 4
  %292 = icmp ne i32 %291, 0
  %293 = xor i1 %292, true
  br i1 %293, label %237, label %294

294:                                              ; preds = %290
  br label %295

295:                                              ; preds = %294, %231
  store i32 0, i32* %21, align 4
  br label %296

296:                                              ; preds = %295, %284, %225, %192, %154, %138, %111, %45, %41
  %297 = load i8*, i8** %10, align 8
  %298 = call i32 @OPENSSL_free(i8* %297)
  %299 = load i8*, i8** %11, align 8
  %300 = call i32 @OPENSSL_free(i8* %299)
  %301 = load i32*, i32** %5, align 8
  %302 = call i32 @BIO_free(i32* %301)
  %303 = load i32, i32* %21, align 4
  ret i32 %303
}

declare dso_local i8* @opt_init(i32, i8**, i32) #1

declare dso_local i32 @opt_next(...) #1

declare dso_local i32 @BIO_printf(i32, i8*, ...) #1

declare dso_local i32 @opt_help(i32) #1

declare dso_local i8* @opt_arg(...) #1

declare dso_local i32 @opt_rand(i32) #1

declare dso_local i32 @opt_num_rest(...) #1

declare dso_local i8** @opt_rest(...) #1

declare dso_local i32* @bio_open_default(i8*, i8 signext, i32) #1

declare dso_local i8* @app_malloc(i64, i8*) #1

declare dso_local i64 @EVP_read_pw_string(i8*, i64, i8*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @do_passwd(i32, i8**, i8**, i8*, i32, i32, i32, i32, i64, i64) #1

declare dso_local i32 @BIO_gets(i32*, i8*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i32 @BIO_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
