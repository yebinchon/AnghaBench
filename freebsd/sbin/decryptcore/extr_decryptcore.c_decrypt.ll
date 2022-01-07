; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/decryptcore/extr_decryptcore.c_decrypt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/decryptcore/extr_decryptcore.c_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kerneldumpkey = type { i32, i32, i32*, i32 }

@KERNELDUMP_BUFFER_SIZE = common dso_local global i32 0, align 4
@KERNELDUMP_KEY_MAX_SIZE = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Unable to create child process\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Unable to open %s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Unable to enter capability mode\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"Unable to allocate an RSA structure: %s\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Unable to read data from %s.\00", align 1
@.str.6 = private unnamed_addr constant [57 x i8] c"RSA modulus size mismatch: equals %db and should be %ub.\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"Invalid encryption algorithm.\00", align 1
@RSA_PKCS1_PADDING = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [26 x i8] c"Unable to decrypt key: %s\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"Unable to read data from %s\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"Unable to decrypt core.\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"Unable to write core\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i8*, i8*)* @decrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decrypt(i32 %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca [16 x i32], align 16
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.kerneldumpkey*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %26 = load i32, i32* @KERNELDUMP_BUFFER_SIZE, align 4
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %10, align 8
  %29 = alloca i32, i64 %27, align 16
  store i64 %27, i64* %11, align 8
  %30 = load i32, i32* @KERNELDUMP_KEY_MAX_SIZE, align 4
  %31 = zext i32 %30 to i64
  %32 = alloca i32, i64 %31, align 16
  store i64 %31, i64* %12, align 8
  %33 = load i32, i32* %6, align 4
  %34 = icmp sge i32 %33, 0
  %35 = zext i1 %34 to i32
  %36 = call i32 @PJDLOG_ASSERT(i32 %35)
  %37 = load i8*, i8** %7, align 8
  %38 = icmp ne i8* %37, null
  %39 = zext i1 %38 to i32
  %40 = call i32 @PJDLOG_ASSERT(i32 %39)
  %41 = load i8*, i8** %8, align 8
  %42 = icmp ne i8* %41, null
  %43 = zext i1 %42 to i32
  %44 = call i32 @PJDLOG_ASSERT(i32 %43)
  %45 = load i8*, i8** %9, align 8
  %46 = icmp ne i8* %45, null
  %47 = zext i1 %46 to i32
  %48 = call i32 @PJDLOG_ASSERT(i32 %47)
  store i32* null, i32** %14, align 8
  store i32* null, i32** %18, align 8
  %49 = call i32 (...) @fork()
  store i32 %49, i32* %24, align 4
  %50 = load i32, i32* %24, align 4
  %51 = icmp eq i32 %50, -1
  br i1 %51, label %52, label %57

52:                                               ; preds = %4
  %53 = load i32, i32* @LOG_ERR, align 4
  %54 = call i32 (i32, i8*, ...) @pjdlog_errno(i32 %53, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @close(i32 %55)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %25, align 4
  br label %276

57:                                               ; preds = %4
  %58 = load i32, i32* %24, align 4
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %57
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @close(i32 %61)
  %63 = load i32, i32* %24, align 4
  %64 = call i64 @wait_for_process(i32 %63)
  %65 = icmp eq i64 %64, 0
  %66 = zext i1 %65 to i32
  store i32 %66, i32* %5, align 4
  store i32 1, i32* %25, align 4
  br label %276

67:                                               ; preds = %57
  %68 = load i8*, i8** %8, align 8
  %69 = load i32, i32* @O_RDONLY, align 4
  %70 = call i32 @open(i8* %68, i32 %69)
  store i32 %70, i32* %20, align 4
  %71 = load i32, i32* %20, align 4
  %72 = icmp eq i32 %71, -1
  br i1 %72, label %73, label %77

73:                                               ; preds = %67
  %74 = load i32, i32* @LOG_ERR, align 4
  %75 = load i8*, i8** %8, align 8
  %76 = call i32 (i32, i8*, ...) @pjdlog_errno(i32 %74, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %75)
  br label %260

77:                                               ; preds = %67
  %78 = load i8*, i8** %9, align 8
  %79 = load i32, i32* @O_RDONLY, align 4
  %80 = call i32 @open(i8* %78, i32 %79)
  store i32 %80, i32* %19, align 4
  %81 = load i32, i32* %19, align 4
  %82 = icmp eq i32 %81, -1
  br i1 %82, label %83, label %87

83:                                               ; preds = %77
  %84 = load i32, i32* @LOG_ERR, align 4
  %85 = load i8*, i8** %9, align 8
  %86 = call i32 (i32, i8*, ...) @pjdlog_errno(i32 %84, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %85)
  br label %260

87:                                               ; preds = %77
  %88 = load i8*, i8** %7, align 8
  %89 = call i32* @fopen(i8* %88, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32* %89, i32** %16, align 8
  %90 = load i32*, i32** %16, align 8
  %91 = icmp eq i32* %90, null
  br i1 %91, label %92, label %96

92:                                               ; preds = %87
  %93 = load i32, i32* @LOG_ERR, align 4
  %94 = load i8*, i8** %7, align 8
  %95 = call i32 (i32, i8*, ...) @pjdlog_errno(i32 %93, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %94)
  br label %260

96:                                               ; preds = %87
  %97 = call i64 (...) @caph_enter()
  %98 = icmp slt i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %96
  %100 = load i32, i32* @LOG_ERR, align 4
  %101 = call i32 (i32, i8*, ...) @pjdlog_errno(i32 %100, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %260

102:                                              ; preds = %96
  %103 = call i32* (...) @RSA_new()
  store i32* %103, i32** %18, align 8
  %104 = load i32*, i32** %18, align 8
  %105 = icmp eq i32* %104, null
  br i1 %105, label %106, label %110

106:                                              ; preds = %102
  %107 = call i32 (...) @ERR_get_error()
  %108 = call i32 @ERR_error_string(i32 %107, i32* null)
  %109 = call i32 (i8*, ...) @pjdlog_error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 %108)
  br label %260

110:                                              ; preds = %102
  %111 = call i32* (...) @EVP_CIPHER_CTX_new()
  store i32* %111, i32** %14, align 8
  %112 = load i32*, i32** %14, align 8
  %113 = icmp eq i32* %112, null
  br i1 %113, label %114, label %115

114:                                              ; preds = %110
  br label %260

115:                                              ; preds = %110
  %116 = load i32, i32* %20, align 4
  %117 = call %struct.kerneldumpkey* @read_key(i32 %116)
  store %struct.kerneldumpkey* %117, %struct.kerneldumpkey** %17, align 8
  %118 = load i32, i32* %20, align 4
  %119 = call i32 @close(i32 %118)
  %120 = load %struct.kerneldumpkey*, %struct.kerneldumpkey** %17, align 8
  %121 = icmp eq %struct.kerneldumpkey* %120, null
  br i1 %121, label %122, label %123

122:                                              ; preds = %115
  br label %260

123:                                              ; preds = %115
  %124 = load i32*, i32** %16, align 8
  %125 = call i32* @PEM_read_RSAPrivateKey(i32* %124, i32** %18, i32* null, i32* null)
  store i32* %125, i32** %18, align 8
  %126 = load i32*, i32** %16, align 8
  %127 = call i32 @fclose(i32* %126)
  %128 = load i32*, i32** %18, align 8
  %129 = icmp eq i32* %128, null
  br i1 %129, label %130, label %133

130:                                              ; preds = %123
  %131 = load i8*, i8** %7, align 8
  %132 = call i32 (i8*, ...) @pjdlog_error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i8* %131)
  br label %260

133:                                              ; preds = %123
  %134 = load i32*, i32** %18, align 8
  %135 = call i32 @RSA_size(i32* %134)
  store i32 %135, i32* %22, align 4
  %136 = load i32, i32* %22, align 4
  %137 = load %struct.kerneldumpkey*, %struct.kerneldumpkey** %17, align 8
  %138 = getelementptr inbounds %struct.kerneldumpkey, %struct.kerneldumpkey* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = icmp ne i32 %136, %139
  br i1 %140, label %141, label %149

141:                                              ; preds = %133
  %142 = load i32, i32* %22, align 4
  %143 = mul nsw i32 8, %142
  %144 = load %struct.kerneldumpkey*, %struct.kerneldumpkey** %17, align 8
  %145 = getelementptr inbounds %struct.kerneldumpkey, %struct.kerneldumpkey* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = mul nsw i32 8, %146
  %148 = call i32 (i8*, ...) @pjdlog_error(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.6, i64 0, i64 0), i32 %143, i32 %147)
  br label %260

149:                                              ; preds = %133
  %150 = load %struct.kerneldumpkey*, %struct.kerneldumpkey** %17, align 8
  %151 = getelementptr inbounds %struct.kerneldumpkey, %struct.kerneldumpkey* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  switch i32 %152, label %157 [
    i32 129, label %153
    i32 128, label %155
  ]

153:                                              ; preds = %149
  %154 = call i32* (...) @EVP_aes_256_cbc()
  store i32* %154, i32** %15, align 8
  br label %159

155:                                              ; preds = %149
  %156 = call i32* (...) @EVP_chacha20()
  store i32* %156, i32** %15, align 8
  br label %159

157:                                              ; preds = %149
  %158 = call i32 (i8*, ...) @pjdlog_error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  br label %260

159:                                              ; preds = %155, %153
  %160 = load %struct.kerneldumpkey*, %struct.kerneldumpkey** %17, align 8
  %161 = getelementptr inbounds %struct.kerneldumpkey, %struct.kerneldumpkey* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.kerneldumpkey*, %struct.kerneldumpkey** %17, align 8
  %164 = getelementptr inbounds %struct.kerneldumpkey, %struct.kerneldumpkey* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 8
  %166 = load i32*, i32** %18, align 8
  %167 = load i32, i32* @RSA_PKCS1_PADDING, align 4
  %168 = call i32 @RSA_private_decrypt(i32 %162, i32 %165, i32* %32, i32* %166, i32 %167)
  %169 = sext i32 %168 to i64
  %170 = mul nuw i64 4, %31
  %171 = icmp ne i64 %169, %170
  br i1 %171, label %172, label %176

172:                                              ; preds = %159
  %173 = call i32 (...) @ERR_get_error()
  %174 = call i32 @ERR_error_string(i32 %173, i32* null)
  %175 = call i32 (i8*, ...) @pjdlog_error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i32 %174)
  br label %260

176:                                              ; preds = %159
  %177 = load i32*, i32** %18, align 8
  %178 = call i32 @RSA_free(i32* %177)
  store i32* null, i32** %18, align 8
  %179 = load %struct.kerneldumpkey*, %struct.kerneldumpkey** %17, align 8
  %180 = getelementptr inbounds %struct.kerneldumpkey, %struct.kerneldumpkey* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = icmp eq i32 %181, 128
  br i1 %182, label %183, label %195

183:                                              ; preds = %176
  %184 = getelementptr inbounds [16 x i32], [16 x i32]* %13, i64 0, i64 0
  %185 = call i32 @memset(i32* %184, i32 0, i32 8)
  %186 = getelementptr inbounds [16 x i32], [16 x i32]* %13, i64 0, i64 8
  %187 = load %struct.kerneldumpkey*, %struct.kerneldumpkey** %17, align 8
  %188 = getelementptr inbounds %struct.kerneldumpkey, %struct.kerneldumpkey* %187, i32 0, i32 2
  %189 = load i32*, i32** %188, align 8
  %190 = call i32 @memcpy(i32* %186, i32* %189, i32 8)
  %191 = load i32*, i32** %14, align 8
  %192 = load i32*, i32** %15, align 8
  %193 = getelementptr inbounds [16 x i32], [16 x i32]* %13, i64 0, i64 0
  %194 = call i32 @EVP_DecryptInit_ex(i32* %191, i32* %192, i32* null, i32* %32, i32* %193)
  br label %202

195:                                              ; preds = %176
  %196 = load i32*, i32** %14, align 8
  %197 = load i32*, i32** %15, align 8
  %198 = load %struct.kerneldumpkey*, %struct.kerneldumpkey** %17, align 8
  %199 = getelementptr inbounds %struct.kerneldumpkey, %struct.kerneldumpkey* %198, i32 0, i32 2
  %200 = load i32*, i32** %199, align 8
  %201 = call i32 @EVP_DecryptInit_ex(i32* %196, i32* %197, i32* null, i32* %32, i32* %200)
  br label %202

202:                                              ; preds = %195, %183
  %203 = load i32*, i32** %14, align 8
  %204 = call i32 @EVP_CIPHER_CTX_set_padding(i32* %203, i32 0)
  %205 = mul nuw i64 4, %31
  %206 = trunc i64 %205 to i32
  %207 = call i32 @explicit_bzero(i32* %32, i32 %206)
  br label %208

208:                                              ; preds = %250, %202
  %209 = load i32, i32* %19, align 4
  %210 = mul nuw i64 4, %27
  %211 = trunc i64 %210 to i32
  %212 = call i64 @read(i32 %209, i32* %29, i32 %211)
  store i64 %212, i64* %23, align 8
  %213 = load i64, i64* %23, align 8
  %214 = icmp slt i64 %213, 0
  br i1 %214, label %215, label %219

215:                                              ; preds = %208
  %216 = load i32, i32* @LOG_ERR, align 4
  %217 = load i8*, i8** %9, align 8
  %218 = call i32 (i32, i8*, ...) @pjdlog_errno(i32 %216, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0), i8* %217)
  br label %260

219:                                              ; preds = %208
  %220 = load i64, i64* %23, align 8
  %221 = icmp sgt i64 %220, 0
  br i1 %221, label %222, label %230

222:                                              ; preds = %219
  %223 = load i32*, i32** %14, align 8
  %224 = load i64, i64* %23, align 8
  %225 = call i64 @EVP_DecryptUpdate(i32* %223, i32* %29, i32* %21, i32* %29, i64 %224)
  %226 = icmp eq i64 %225, 0
  br i1 %226, label %227, label %229

227:                                              ; preds = %222
  %228 = call i32 (i8*, ...) @pjdlog_error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0))
  br label %260

229:                                              ; preds = %222
  br label %237

230:                                              ; preds = %219
  %231 = load i32*, i32** %14, align 8
  %232 = call i64 @EVP_DecryptFinal_ex(i32* %231, i32* %29, i32* %21)
  %233 = icmp eq i64 %232, 0
  br i1 %233, label %234, label %236

234:                                              ; preds = %230
  %235 = call i32 (i8*, ...) @pjdlog_error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0))
  br label %260

236:                                              ; preds = %230
  br label %237

237:                                              ; preds = %236, %229
  %238 = load i32, i32* %21, align 4
  %239 = icmp sgt i32 %238, 0
  br i1 %239, label %240, label %249

240:                                              ; preds = %237
  %241 = load i32, i32* %6, align 4
  %242 = load i32, i32* %21, align 4
  %243 = call i32 @write(i32 %241, i32* %29, i32 %242)
  %244 = load i32, i32* %21, align 4
  %245 = icmp ne i32 %243, %244
  br i1 %245, label %246, label %249

246:                                              ; preds = %240
  %247 = load i32, i32* @LOG_ERR, align 4
  %248 = call i32 (i32, i8*, ...) @pjdlog_errno(i32 %247, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0))
  br label %260

249:                                              ; preds = %240, %237
  br label %250

250:                                              ; preds = %249
  %251 = load i64, i64* %23, align 8
  %252 = icmp sgt i64 %251, 0
  br i1 %252, label %208, label %253

253:                                              ; preds = %250
  %254 = mul nuw i64 4, %27
  %255 = trunc i64 %254 to i32
  %256 = call i32 @explicit_bzero(i32* %29, i32 %255)
  %257 = load i32*, i32** %14, align 8
  %258 = call i32 @EVP_CIPHER_CTX_free(i32* %257)
  %259 = call i32 @exit(i32 0) #4
  unreachable

260:                                              ; preds = %246, %234, %227, %215, %172, %157, %141, %130, %122, %114, %106, %99, %92, %83, %73
  %261 = mul nuw i64 4, %31
  %262 = trunc i64 %261 to i32
  %263 = call i32 @explicit_bzero(i32* %32, i32 %262)
  %264 = mul nuw i64 4, %27
  %265 = trunc i64 %264 to i32
  %266 = call i32 @explicit_bzero(i32* %29, i32 %265)
  %267 = load i32*, i32** %18, align 8
  %268 = call i32 @RSA_free(i32* %267)
  %269 = load i32*, i32** %14, align 8
  %270 = icmp ne i32* %269, null
  br i1 %270, label %271, label %274

271:                                              ; preds = %260
  %272 = load i32*, i32** %14, align 8
  %273 = call i32 @EVP_CIPHER_CTX_free(i32* %272)
  br label %274

274:                                              ; preds = %271, %260
  %275 = call i32 @exit(i32 1) #4
  unreachable

276:                                              ; preds = %60, %52
  %277 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %277)
  %278 = load i32, i32* %5, align 4
  ret i32 %278
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @PJDLOG_ASSERT(i32) #2

declare dso_local i32 @fork(...) #2

declare dso_local i32 @pjdlog_errno(i32, i8*, ...) #2

declare dso_local i32 @close(i32) #2

declare dso_local i64 @wait_for_process(i32) #2

declare dso_local i32 @open(i8*, i32) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i64 @caph_enter(...) #2

declare dso_local i32* @RSA_new(...) #2

declare dso_local i32 @pjdlog_error(i8*, ...) #2

declare dso_local i32 @ERR_error_string(i32, i32*) #2

declare dso_local i32 @ERR_get_error(...) #2

declare dso_local i32* @EVP_CIPHER_CTX_new(...) #2

declare dso_local %struct.kerneldumpkey* @read_key(i32) #2

declare dso_local i32* @PEM_read_RSAPrivateKey(i32*, i32**, i32*, i32*) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i32 @RSA_size(i32*) #2

declare dso_local i32* @EVP_aes_256_cbc(...) #2

declare dso_local i32* @EVP_chacha20(...) #2

declare dso_local i32 @RSA_private_decrypt(i32, i32, i32*, i32*, i32) #2

declare dso_local i32 @RSA_free(i32*) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @EVP_DecryptInit_ex(i32*, i32*, i32*, i32*, i32*) #2

declare dso_local i32 @EVP_CIPHER_CTX_set_padding(i32*, i32) #2

declare dso_local i32 @explicit_bzero(i32*, i32) #2

declare dso_local i64 @read(i32, i32*, i32) #2

declare dso_local i64 @EVP_DecryptUpdate(i32*, i32*, i32*, i32*, i64) #2

declare dso_local i64 @EVP_DecryptFinal_ex(i32*, i32*, i32*) #2

declare dso_local i32 @write(i32, i32*, i32) #2

declare dso_local i32 @EVP_CIPHER_CTX_free(i32*) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
