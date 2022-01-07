; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_kexdhc.c_input_kex_dh.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_kexdhc.c_input_kex_dh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssh = type { i32, %struct.kex* }
%struct.kex = type { i32 (%struct.sshkey*, %struct.ssh*)*, i64, i64, i64, i32*, i32*, i32, i32, i32, i32, i32, i32 }
%struct.sshkey = type { i64, i64 }

@SSH_DIGEST_MAX_LENGTH = common dso_local global i32 0, align 4
@SSH_ERR_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@KEY_ECDSA = common dso_local global i64 0, align 8
@SSH_ERR_KEY_TYPE_MISMATCH = common dso_local global i32 0, align 4
@SSH_ERR_SIGNATURE_INVALID = common dso_local global i32 0, align 4
@SSH_ERR_ALLOC_FAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"bad server public DH value\00", align 1
@SSH_ERR_MESSAGE_INCOMPLETE = common dso_local global i32 0, align 4
@SSH_ERR_LIBCRYPTO_ERROR = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.ssh*)* @input_kex_dh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @input_kex_dh(i32 %0, i32 %1, %struct.ssh* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ssh*, align 8
  %7 = alloca %struct.kex*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.sshkey*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.ssh* %2, %struct.ssh** %6, align 8
  %23 = load %struct.ssh*, %struct.ssh** %6, align 8
  %24 = getelementptr inbounds %struct.ssh, %struct.ssh* %23, i32 0, i32 1
  %25 = load %struct.kex*, %struct.kex** %24, align 8
  store %struct.kex* %25, %struct.kex** %7, align 8
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  store %struct.sshkey* null, %struct.sshkey** %11, align 8
  store i32* null, i32** %12, align 8
  store i32* null, i32** %13, align 8
  store i32* null, i32** %14, align 8
  %26 = load i32, i32* @SSH_DIGEST_MAX_LENGTH, align 4
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %15, align 8
  %29 = alloca i32, i64 %27, align 16
  store i64 %27, i64* %16, align 8
  store i64 0, i64* %17, align 8
  %30 = load %struct.kex*, %struct.kex** %7, align 8
  %31 = getelementptr inbounds %struct.kex, %struct.kex* %30, i32 0, i32 0
  %32 = load i32 (%struct.sshkey*, %struct.ssh*)*, i32 (%struct.sshkey*, %struct.ssh*)** %31, align 8
  %33 = icmp eq i32 (%struct.sshkey*, %struct.ssh*)* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %3
  %35 = load i32, i32* @SSH_ERR_INVALID_ARGUMENT, align 4
  store i32 %35, i32* %22, align 4
  br label %233

36:                                               ; preds = %3
  %37 = load %struct.ssh*, %struct.ssh** %6, align 8
  %38 = call i32 @sshpkt_get_string(%struct.ssh* %37, i32** %13, i64* %19)
  store i32 %38, i32* %22, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %36
  %41 = load i32*, i32** %13, align 8
  %42 = load i64, i64* %19, align 8
  %43 = call i32 @sshkey_from_blob(i32* %41, i64 %42, %struct.sshkey** %11)
  store i32 %43, i32* %22, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40, %36
  br label %233

46:                                               ; preds = %40
  %47 = load %struct.sshkey*, %struct.sshkey** %11, align 8
  %48 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.kex*, %struct.kex** %7, align 8
  %51 = getelementptr inbounds %struct.kex, %struct.kex* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %49, %52
  br i1 %53, label %68, label %54

54:                                               ; preds = %46
  %55 = load %struct.kex*, %struct.kex** %7, align 8
  %56 = getelementptr inbounds %struct.kex, %struct.kex* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @KEY_ECDSA, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %70

60:                                               ; preds = %54
  %61 = load %struct.sshkey*, %struct.sshkey** %11, align 8
  %62 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.kex*, %struct.kex** %7, align 8
  %65 = getelementptr inbounds %struct.kex, %struct.kex* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %63, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %60, %46
  %69 = load i32, i32* @SSH_ERR_KEY_TYPE_MISMATCH, align 4
  store i32 %69, i32* %22, align 4
  br label %233

70:                                               ; preds = %60, %54
  %71 = load %struct.kex*, %struct.kex** %7, align 8
  %72 = getelementptr inbounds %struct.kex, %struct.kex* %71, i32 0, i32 0
  %73 = load i32 (%struct.sshkey*, %struct.ssh*)*, i32 (%struct.sshkey*, %struct.ssh*)** %72, align 8
  %74 = load %struct.sshkey*, %struct.sshkey** %11, align 8
  %75 = load %struct.ssh*, %struct.ssh** %6, align 8
  %76 = call i32 %73(%struct.sshkey* %74, %struct.ssh* %75)
  %77 = icmp eq i32 %76, -1
  br i1 %77, label %78, label %80

78:                                               ; preds = %70
  %79 = load i32, i32* @SSH_ERR_SIGNATURE_INVALID, align 4
  store i32 %79, i32* %22, align 4
  br label %233

80:                                               ; preds = %70
  %81 = call i32* (...) @BN_new()
  store i32* %81, i32** %8, align 8
  %82 = icmp eq i32* %81, null
  br i1 %82, label %83, label %85

83:                                               ; preds = %80
  %84 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %84, i32* %22, align 4
  br label %233

85:                                               ; preds = %80
  %86 = load %struct.ssh*, %struct.ssh** %6, align 8
  %87 = load i32*, i32** %8, align 8
  %88 = call i32 @sshpkt_get_bignum2(%struct.ssh* %86, i32* %87)
  store i32 %88, i32* %22, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %98, label %90

90:                                               ; preds = %85
  %91 = load %struct.ssh*, %struct.ssh** %6, align 8
  %92 = call i32 @sshpkt_get_string(%struct.ssh* %91, i32** %14, i64* %18)
  store i32 %92, i32* %22, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %98, label %94

94:                                               ; preds = %90
  %95 = load %struct.ssh*, %struct.ssh** %6, align 8
  %96 = call i32 @sshpkt_get_end(%struct.ssh* %95)
  store i32 %96, i32* %22, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %94, %90, %85
  br label %233

99:                                               ; preds = %94
  %100 = load %struct.kex*, %struct.kex** %7, align 8
  %101 = getelementptr inbounds %struct.kex, %struct.kex* %100, i32 0, i32 4
  %102 = load i32*, i32** %101, align 8
  %103 = load i32*, i32** %8, align 8
  %104 = call i32 @dh_pub_is_valid(i32* %102, i32* %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %110, label %106

106:                                              ; preds = %99
  %107 = load %struct.ssh*, %struct.ssh** %6, align 8
  %108 = call i32 @sshpkt_disconnect(%struct.ssh* %107, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %109 = load i32, i32* @SSH_ERR_MESSAGE_INCOMPLETE, align 4
  store i32 %109, i32* %22, align 4
  br label %233

110:                                              ; preds = %99
  %111 = load %struct.kex*, %struct.kex** %7, align 8
  %112 = getelementptr inbounds %struct.kex, %struct.kex* %111, i32 0, i32 4
  %113 = load i32*, i32** %112, align 8
  %114 = call i64 @DH_size(i32* %113)
  store i64 %114, i64* %17, align 8
  %115 = load i64, i64* %17, align 8
  %116 = call i8* @malloc(i64 %115)
  %117 = bitcast i8* %116 to i32*
  store i32* %117, i32** %12, align 8
  %118 = icmp eq i32* %117, null
  br i1 %118, label %122, label %119

119:                                              ; preds = %110
  %120 = call i32* (...) @BN_new()
  store i32* %120, i32** %9, align 8
  %121 = icmp eq i32* %120, null
  br i1 %121, label %122, label %124

122:                                              ; preds = %119, %110
  %123 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %123, i32* %22, align 4
  br label %233

124:                                              ; preds = %119
  %125 = load i32*, i32** %12, align 8
  %126 = load i32*, i32** %8, align 8
  %127 = load %struct.kex*, %struct.kex** %7, align 8
  %128 = getelementptr inbounds %struct.kex, %struct.kex* %127, i32 0, i32 4
  %129 = load i32*, i32** %128, align 8
  %130 = call i32 @DH_compute_key(i32* %125, i32* %126, i32* %129)
  store i32 %130, i32* %21, align 4
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %138, label %132

132:                                              ; preds = %124
  %133 = load i32*, i32** %12, align 8
  %134 = load i32, i32* %21, align 4
  %135 = load i32*, i32** %9, align 8
  %136 = call i32* @BN_bin2bn(i32* %133, i32 %134, i32* %135)
  %137 = icmp eq i32* %136, null
  br i1 %137, label %138, label %140

138:                                              ; preds = %132, %124
  %139 = load i32, i32* @SSH_ERR_LIBCRYPTO_ERROR, align 4
  store i32 %139, i32* %22, align 4
  br label %233

140:                                              ; preds = %132
  %141 = load %struct.kex*, %struct.kex** %7, align 8
  %142 = getelementptr inbounds %struct.kex, %struct.kex* %141, i32 0, i32 4
  %143 = load i32*, i32** %142, align 8
  %144 = call i32 @DH_get0_key(i32* %143, i32** %10, i32* null)
  %145 = mul nuw i64 4, %27
  store i64 %145, i64* %20, align 8
  %146 = load %struct.kex*, %struct.kex** %7, align 8
  %147 = getelementptr inbounds %struct.kex, %struct.kex* %146, i32 0, i32 11
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.kex*, %struct.kex** %7, align 8
  %150 = getelementptr inbounds %struct.kex, %struct.kex* %149, i32 0, i32 10
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.kex*, %struct.kex** %7, align 8
  %153 = getelementptr inbounds %struct.kex, %struct.kex* %152, i32 0, i32 9
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.kex*, %struct.kex** %7, align 8
  %156 = getelementptr inbounds %struct.kex, %struct.kex* %155, i32 0, i32 8
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @sshbuf_ptr(i32 %157)
  %159 = load %struct.kex*, %struct.kex** %7, align 8
  %160 = getelementptr inbounds %struct.kex, %struct.kex* %159, i32 0, i32 8
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @sshbuf_len(i32 %161)
  %163 = load %struct.kex*, %struct.kex** %7, align 8
  %164 = getelementptr inbounds %struct.kex, %struct.kex* %163, i32 0, i32 7
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @sshbuf_ptr(i32 %165)
  %167 = load %struct.kex*, %struct.kex** %7, align 8
  %168 = getelementptr inbounds %struct.kex, %struct.kex* %167, i32 0, i32 7
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @sshbuf_len(i32 %169)
  %171 = load i32*, i32** %13, align 8
  %172 = load i64, i64* %19, align 8
  %173 = load i32*, i32** %10, align 8
  %174 = load i32*, i32** %8, align 8
  %175 = load i32*, i32** %9, align 8
  %176 = call i32 @kex_dh_hash(i32 %148, i32 %151, i32 %154, i32 %158, i32 %162, i32 %166, i32 %170, i32* %171, i64 %172, i32* %173, i32* %174, i32* %175, i32* %29, i64* %20)
  store i32 %176, i32* %22, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %140
  br label %233

179:                                              ; preds = %140
  %180 = load %struct.sshkey*, %struct.sshkey** %11, align 8
  %181 = load i32*, i32** %14, align 8
  %182 = load i64, i64* %18, align 8
  %183 = load i64, i64* %20, align 8
  %184 = load %struct.kex*, %struct.kex** %7, align 8
  %185 = getelementptr inbounds %struct.kex, %struct.kex* %184, i32 0, i32 6
  %186 = load i32, i32* %185, align 8
  %187 = load %struct.ssh*, %struct.ssh** %6, align 8
  %188 = getelementptr inbounds %struct.ssh, %struct.ssh* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = call i32 @sshkey_verify(%struct.sshkey* %180, i32* %181, i64 %182, i32* %29, i64 %183, i32 %186, i32 %189)
  store i32 %190, i32* %22, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %179
  br label %233

193:                                              ; preds = %179
  %194 = load %struct.kex*, %struct.kex** %7, align 8
  %195 = getelementptr inbounds %struct.kex, %struct.kex* %194, i32 0, i32 5
  %196 = load i32*, i32** %195, align 8
  %197 = icmp eq i32* %196, null
  br i1 %197, label %198, label %223

198:                                              ; preds = %193
  %199 = load i64, i64* %20, align 8
  %200 = load %struct.kex*, %struct.kex** %7, align 8
  %201 = getelementptr inbounds %struct.kex, %struct.kex* %200, i32 0, i32 3
  store i64 %199, i64* %201, align 8
  %202 = load %struct.kex*, %struct.kex** %7, align 8
  %203 = getelementptr inbounds %struct.kex, %struct.kex* %202, i32 0, i32 3
  %204 = load i64, i64* %203, align 8
  %205 = call i8* @malloc(i64 %204)
  %206 = bitcast i8* %205 to i32*
  %207 = load %struct.kex*, %struct.kex** %7, align 8
  %208 = getelementptr inbounds %struct.kex, %struct.kex* %207, i32 0, i32 5
  store i32* %206, i32** %208, align 8
  %209 = load %struct.kex*, %struct.kex** %7, align 8
  %210 = getelementptr inbounds %struct.kex, %struct.kex* %209, i32 0, i32 5
  %211 = load i32*, i32** %210, align 8
  %212 = icmp eq i32* %211, null
  br i1 %212, label %213, label %215

213:                                              ; preds = %198
  %214 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %214, i32* %22, align 4
  br label %233

215:                                              ; preds = %198
  %216 = load %struct.kex*, %struct.kex** %7, align 8
  %217 = getelementptr inbounds %struct.kex, %struct.kex* %216, i32 0, i32 5
  %218 = load i32*, i32** %217, align 8
  %219 = load %struct.kex*, %struct.kex** %7, align 8
  %220 = getelementptr inbounds %struct.kex, %struct.kex* %219, i32 0, i32 3
  %221 = load i64, i64* %220, align 8
  %222 = call i32 @memcpy(i32* %218, i32* %29, i64 %221)
  br label %223

223:                                              ; preds = %215, %193
  %224 = load %struct.ssh*, %struct.ssh** %6, align 8
  %225 = load i64, i64* %20, align 8
  %226 = load i32*, i32** %9, align 8
  %227 = call i32 @kex_derive_keys_bn(%struct.ssh* %224, i32* %29, i64 %225, i32* %226)
  store i32 %227, i32* %22, align 4
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %229, label %232

229:                                              ; preds = %223
  %230 = load %struct.ssh*, %struct.ssh** %6, align 8
  %231 = call i32 @kex_send_newkeys(%struct.ssh* %230)
  store i32 %231, i32* %22, align 4
  br label %232

232:                                              ; preds = %229, %223
  br label %233

233:                                              ; preds = %232, %213, %192, %178, %138, %122, %106, %98, %83, %78, %68, %45, %34
  %234 = mul nuw i64 4, %27
  %235 = call i32 @explicit_bzero(i32* %29, i64 %234)
  %236 = load %struct.kex*, %struct.kex** %7, align 8
  %237 = getelementptr inbounds %struct.kex, %struct.kex* %236, i32 0, i32 4
  %238 = load i32*, i32** %237, align 8
  %239 = call i32 @DH_free(i32* %238)
  %240 = load %struct.kex*, %struct.kex** %7, align 8
  %241 = getelementptr inbounds %struct.kex, %struct.kex* %240, i32 0, i32 4
  store i32* null, i32** %241, align 8
  %242 = load i32*, i32** %8, align 8
  %243 = call i32 @BN_clear_free(i32* %242)
  %244 = load i32*, i32** %12, align 8
  %245 = icmp ne i32* %244, null
  br i1 %245, label %246, label %252

246:                                              ; preds = %233
  %247 = load i32*, i32** %12, align 8
  %248 = load i64, i64* %17, align 8
  %249 = call i32 @explicit_bzero(i32* %247, i64 %248)
  %250 = load i32*, i32** %12, align 8
  %251 = call i32 @free(i32* %250)
  br label %252

252:                                              ; preds = %246, %233
  %253 = load i32*, i32** %9, align 8
  %254 = call i32 @BN_clear_free(i32* %253)
  %255 = load %struct.sshkey*, %struct.sshkey** %11, align 8
  %256 = call i32 @sshkey_free(%struct.sshkey* %255)
  %257 = load i32*, i32** %13, align 8
  %258 = call i32 @free(i32* %257)
  %259 = load i32*, i32** %14, align 8
  %260 = call i32 @free(i32* %259)
  %261 = load i32, i32* %22, align 4
  %262 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %262)
  ret i32 %261
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @sshpkt_get_string(%struct.ssh*, i32**, i64*) #2

declare dso_local i32 @sshkey_from_blob(i32*, i64, %struct.sshkey**) #2

declare dso_local i32* @BN_new(...) #2

declare dso_local i32 @sshpkt_get_bignum2(%struct.ssh*, i32*) #2

declare dso_local i32 @sshpkt_get_end(%struct.ssh*) #2

declare dso_local i32 @dh_pub_is_valid(i32*, i32*) #2

declare dso_local i32 @sshpkt_disconnect(%struct.ssh*, i8*) #2

declare dso_local i64 @DH_size(i32*) #2

declare dso_local i8* @malloc(i64) #2

declare dso_local i32 @DH_compute_key(i32*, i32*, i32*) #2

declare dso_local i32* @BN_bin2bn(i32*, i32, i32*) #2

declare dso_local i32 @DH_get0_key(i32*, i32**, i32*) #2

declare dso_local i32 @kex_dh_hash(i32, i32, i32, i32, i32, i32, i32, i32*, i64, i32*, i32*, i32*, i32*, i64*) #2

declare dso_local i32 @sshbuf_ptr(i32) #2

declare dso_local i32 @sshbuf_len(i32) #2

declare dso_local i32 @sshkey_verify(%struct.sshkey*, i32*, i64, i32*, i64, i32, i32) #2

declare dso_local i32 @memcpy(i32*, i32*, i64) #2

declare dso_local i32 @kex_derive_keys_bn(%struct.ssh*, i32*, i64, i32*) #2

declare dso_local i32 @kex_send_newkeys(%struct.ssh*) #2

declare dso_local i32 @explicit_bzero(i32*, i64) #2

declare dso_local i32 @DH_free(i32*) #2

declare dso_local i32 @BN_clear_free(i32*) #2

declare dso_local i32 @free(i32*) #2

declare dso_local i32 @sshkey_free(%struct.sshkey*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
