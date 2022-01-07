; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_kexecdhc.c_input_kex_ecdh_reply.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_kexecdhc.c_input_kex_ecdh_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssh = type { i32, %struct.kex* }
%struct.kex = type { i32 (%struct.sshkey*, %struct.ssh*)*, i64, i64, i64, i32*, i32*, i32, i32, i32, i32, i32, i32, i32* }
%struct.sshkey = type { i64, i64 }

@SSH_DIGEST_MAX_LENGTH = common dso_local global i32 0, align 4
@SSH_ERR_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@KEY_ECDSA = common dso_local global i64 0, align 8
@SSH_ERR_KEY_TYPE_MISMATCH = common dso_local global i32 0, align 4
@SSH_ERR_SIGNATURE_INVALID = common dso_local global i32 0, align 4
@SSH_ERR_ALLOC_FAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"invalid server public key\00", align 1
@SSH_ERR_MESSAGE_INCOMPLETE = common dso_local global i32 0, align 4
@SSH_ERR_LIBCRYPTO_ERROR = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.ssh*)* @input_kex_ecdh_reply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @input_kex_ecdh_reply(i32 %0, i32 %1, %struct.ssh* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ssh*, align 8
  %7 = alloca %struct.kex*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.sshkey*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.ssh* %2, %struct.ssh** %6, align 8
  %23 = load %struct.ssh*, %struct.ssh** %6, align 8
  %24 = getelementptr inbounds %struct.ssh, %struct.ssh* %23, i32 0, i32 1
  %25 = load %struct.kex*, %struct.kex** %24, align 8
  store %struct.kex* %25, %struct.kex** %7, align 8
  store i32* null, i32** %9, align 8
  store i32* null, i32** %11, align 8
  store %struct.sshkey* null, %struct.sshkey** %12, align 8
  store i32* null, i32** %13, align 8
  store i32* null, i32** %14, align 8
  store i32* null, i32** %15, align 8
  %26 = load i32, i32* @SSH_DIGEST_MAX_LENGTH, align 4
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %16, align 8
  %29 = alloca i32, i64 %27, align 16
  store i64 %27, i64* %17, align 8
  store i64 0, i64* %20, align 8
  %30 = load %struct.kex*, %struct.kex** %7, align 8
  %31 = getelementptr inbounds %struct.kex, %struct.kex* %30, i32 0, i32 0
  %32 = load i32 (%struct.sshkey*, %struct.ssh*)*, i32 (%struct.sshkey*, %struct.ssh*)** %31, align 8
  %33 = icmp eq i32 (%struct.sshkey*, %struct.ssh*)* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %3
  %35 = load i32, i32* @SSH_ERR_INVALID_ARGUMENT, align 4
  store i32 %35, i32* %22, align 4
  br label %239

36:                                               ; preds = %3
  %37 = load %struct.kex*, %struct.kex** %7, align 8
  %38 = getelementptr inbounds %struct.kex, %struct.kex* %37, i32 0, i32 12
  %39 = load i32*, i32** %38, align 8
  store i32* %39, i32** %8, align 8
  %40 = load %struct.kex*, %struct.kex** %7, align 8
  %41 = getelementptr inbounds %struct.kex, %struct.kex* %40, i32 0, i32 4
  %42 = load i32*, i32** %41, align 8
  store i32* %42, i32** %10, align 8
  %43 = load %struct.ssh*, %struct.ssh** %6, align 8
  %44 = call i32 @sshpkt_get_string(%struct.ssh* %43, i32** %13, i64* %19)
  store i32 %44, i32* %22, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %36
  %47 = load i32*, i32** %13, align 8
  %48 = load i64, i64* %19, align 8
  %49 = call i32 @sshkey_from_blob(i32* %47, i64 %48, %struct.sshkey** %12)
  store i32 %49, i32* %22, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46, %36
  br label %239

52:                                               ; preds = %46
  %53 = load %struct.sshkey*, %struct.sshkey** %12, align 8
  %54 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.kex*, %struct.kex** %7, align 8
  %57 = getelementptr inbounds %struct.kex, %struct.kex* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %55, %58
  br i1 %59, label %74, label %60

60:                                               ; preds = %52
  %61 = load %struct.kex*, %struct.kex** %7, align 8
  %62 = getelementptr inbounds %struct.kex, %struct.kex* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @KEY_ECDSA, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %76

66:                                               ; preds = %60
  %67 = load %struct.sshkey*, %struct.sshkey** %12, align 8
  %68 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.kex*, %struct.kex** %7, align 8
  %71 = getelementptr inbounds %struct.kex, %struct.kex* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %69, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %66, %52
  %75 = load i32, i32* @SSH_ERR_KEY_TYPE_MISMATCH, align 4
  store i32 %75, i32* %22, align 4
  br label %239

76:                                               ; preds = %66, %60
  %77 = load %struct.kex*, %struct.kex** %7, align 8
  %78 = getelementptr inbounds %struct.kex, %struct.kex* %77, i32 0, i32 0
  %79 = load i32 (%struct.sshkey*, %struct.ssh*)*, i32 (%struct.sshkey*, %struct.ssh*)** %78, align 8
  %80 = load %struct.sshkey*, %struct.sshkey** %12, align 8
  %81 = load %struct.ssh*, %struct.ssh** %6, align 8
  %82 = call i32 %79(%struct.sshkey* %80, %struct.ssh* %81)
  %83 = icmp eq i32 %82, -1
  br i1 %83, label %84, label %86

84:                                               ; preds = %76
  %85 = load i32, i32* @SSH_ERR_SIGNATURE_INVALID, align 4
  store i32 %85, i32* %22, align 4
  br label %239

86:                                               ; preds = %76
  %87 = load i32*, i32** %8, align 8
  %88 = call i32* @EC_POINT_new(i32* %87)
  store i32* %88, i32** %9, align 8
  %89 = icmp eq i32* %88, null
  br i1 %89, label %90, label %92

90:                                               ; preds = %86
  %91 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %91, i32* %22, align 4
  br label %239

92:                                               ; preds = %86
  %93 = load %struct.ssh*, %struct.ssh** %6, align 8
  %94 = load i32*, i32** %9, align 8
  %95 = load i32*, i32** %8, align 8
  %96 = call i32 @sshpkt_get_ec(%struct.ssh* %93, i32* %94, i32* %95)
  store i32 %96, i32* %22, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %106, label %98

98:                                               ; preds = %92
  %99 = load %struct.ssh*, %struct.ssh** %6, align 8
  %100 = call i32 @sshpkt_get_string(%struct.ssh* %99, i32** %14, i64* %18)
  store i32 %100, i32* %22, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %106, label %102

102:                                              ; preds = %98
  %103 = load %struct.ssh*, %struct.ssh** %6, align 8
  %104 = call i32 @sshpkt_get_end(%struct.ssh* %103)
  store i32 %104, i32* %22, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %102, %98, %92
  br label %239

107:                                              ; preds = %102
  %108 = load i32*, i32** %8, align 8
  %109 = load i32*, i32** %9, align 8
  %110 = call i64 @sshkey_ec_validate_public(i32* %108, i32* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %107
  %113 = load %struct.ssh*, %struct.ssh** %6, align 8
  %114 = call i32 @sshpkt_disconnect(%struct.ssh* %113, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %115 = load i32, i32* @SSH_ERR_MESSAGE_INCOMPLETE, align 4
  store i32 %115, i32* %22, align 4
  br label %239

116:                                              ; preds = %107
  %117 = load i32*, i32** %8, align 8
  %118 = call i32 @EC_GROUP_get_degree(i32* %117)
  %119 = add nsw i32 %118, 7
  %120 = sdiv i32 %119, 8
  %121 = sext i32 %120 to i64
  store i64 %121, i64* %20, align 8
  %122 = load i64, i64* %20, align 8
  %123 = call i8* @malloc(i64 %122)
  %124 = bitcast i8* %123 to i32*
  store i32* %124, i32** %15, align 8
  %125 = icmp eq i32* %124, null
  br i1 %125, label %129, label %126

126:                                              ; preds = %116
  %127 = call i32* (...) @BN_new()
  store i32* %127, i32** %11, align 8
  %128 = icmp eq i32* %127, null
  br i1 %128, label %129, label %131

129:                                              ; preds = %126, %116
  %130 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %130, i32* %22, align 4
  br label %239

131:                                              ; preds = %126
  %132 = load i32*, i32** %15, align 8
  %133 = load i64, i64* %20, align 8
  %134 = load i32*, i32** %9, align 8
  %135 = load i32*, i32** %10, align 8
  %136 = call i32 @ECDH_compute_key(i32* %132, i64 %133, i32* %134, i32* %135, i32* null)
  %137 = load i64, i64* %20, align 8
  %138 = trunc i64 %137 to i32
  %139 = icmp ne i32 %136, %138
  br i1 %139, label %146, label %140

140:                                              ; preds = %131
  %141 = load i32*, i32** %15, align 8
  %142 = load i64, i64* %20, align 8
  %143 = load i32*, i32** %11, align 8
  %144 = call i32* @BN_bin2bn(i32* %141, i64 %142, i32* %143)
  %145 = icmp eq i32* %144, null
  br i1 %145, label %146, label %148

146:                                              ; preds = %140, %131
  %147 = load i32, i32* @SSH_ERR_LIBCRYPTO_ERROR, align 4
  store i32 %147, i32* %22, align 4
  br label %239

148:                                              ; preds = %140
  %149 = mul nuw i64 4, %27
  store i64 %149, i64* %21, align 8
  %150 = load %struct.kex*, %struct.kex** %7, align 8
  %151 = getelementptr inbounds %struct.kex, %struct.kex* %150, i32 0, i32 11
  %152 = load i32, i32* %151, align 4
  %153 = load i32*, i32** %8, align 8
  %154 = load %struct.kex*, %struct.kex** %7, align 8
  %155 = getelementptr inbounds %struct.kex, %struct.kex* %154, i32 0, i32 10
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.kex*, %struct.kex** %7, align 8
  %158 = getelementptr inbounds %struct.kex, %struct.kex* %157, i32 0, i32 9
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.kex*, %struct.kex** %7, align 8
  %161 = getelementptr inbounds %struct.kex, %struct.kex* %160, i32 0, i32 8
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @sshbuf_ptr(i32 %162)
  %164 = load %struct.kex*, %struct.kex** %7, align 8
  %165 = getelementptr inbounds %struct.kex, %struct.kex* %164, i32 0, i32 8
  %166 = load i32, i32* %165, align 8
  %167 = call i32 @sshbuf_len(i32 %166)
  %168 = load %struct.kex*, %struct.kex** %7, align 8
  %169 = getelementptr inbounds %struct.kex, %struct.kex* %168, i32 0, i32 7
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @sshbuf_ptr(i32 %170)
  %172 = load %struct.kex*, %struct.kex** %7, align 8
  %173 = getelementptr inbounds %struct.kex, %struct.kex* %172, i32 0, i32 7
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @sshbuf_len(i32 %174)
  %176 = load i32*, i32** %13, align 8
  %177 = load i64, i64* %19, align 8
  %178 = load i32*, i32** %10, align 8
  %179 = call i32 @EC_KEY_get0_public_key(i32* %178)
  %180 = load i32*, i32** %9, align 8
  %181 = load i32*, i32** %11, align 8
  %182 = call i32 @kex_ecdh_hash(i32 %152, i32* %153, i32 %156, i32 %159, i32 %163, i32 %167, i32 %171, i32 %175, i32* %176, i64 %177, i32 %179, i32* %180, i32* %181, i32* %29, i64* %21)
  store i32 %182, i32* %22, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %148
  br label %239

185:                                              ; preds = %148
  %186 = load %struct.sshkey*, %struct.sshkey** %12, align 8
  %187 = load i32*, i32** %14, align 8
  %188 = load i64, i64* %18, align 8
  %189 = load i64, i64* %21, align 8
  %190 = load %struct.kex*, %struct.kex** %7, align 8
  %191 = getelementptr inbounds %struct.kex, %struct.kex* %190, i32 0, i32 6
  %192 = load i32, i32* %191, align 8
  %193 = load %struct.ssh*, %struct.ssh** %6, align 8
  %194 = getelementptr inbounds %struct.ssh, %struct.ssh* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = call i32 @sshkey_verify(%struct.sshkey* %186, i32* %187, i64 %188, i32* %29, i64 %189, i32 %192, i32 %195)
  store i32 %196, i32* %22, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %185
  br label %239

199:                                              ; preds = %185
  %200 = load %struct.kex*, %struct.kex** %7, align 8
  %201 = getelementptr inbounds %struct.kex, %struct.kex* %200, i32 0, i32 5
  %202 = load i32*, i32** %201, align 8
  %203 = icmp eq i32* %202, null
  br i1 %203, label %204, label %229

204:                                              ; preds = %199
  %205 = load i64, i64* %21, align 8
  %206 = load %struct.kex*, %struct.kex** %7, align 8
  %207 = getelementptr inbounds %struct.kex, %struct.kex* %206, i32 0, i32 3
  store i64 %205, i64* %207, align 8
  %208 = load %struct.kex*, %struct.kex** %7, align 8
  %209 = getelementptr inbounds %struct.kex, %struct.kex* %208, i32 0, i32 3
  %210 = load i64, i64* %209, align 8
  %211 = call i8* @malloc(i64 %210)
  %212 = bitcast i8* %211 to i32*
  %213 = load %struct.kex*, %struct.kex** %7, align 8
  %214 = getelementptr inbounds %struct.kex, %struct.kex* %213, i32 0, i32 5
  store i32* %212, i32** %214, align 8
  %215 = load %struct.kex*, %struct.kex** %7, align 8
  %216 = getelementptr inbounds %struct.kex, %struct.kex* %215, i32 0, i32 5
  %217 = load i32*, i32** %216, align 8
  %218 = icmp eq i32* %217, null
  br i1 %218, label %219, label %221

219:                                              ; preds = %204
  %220 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %220, i32* %22, align 4
  br label %239

221:                                              ; preds = %204
  %222 = load %struct.kex*, %struct.kex** %7, align 8
  %223 = getelementptr inbounds %struct.kex, %struct.kex* %222, i32 0, i32 5
  %224 = load i32*, i32** %223, align 8
  %225 = load %struct.kex*, %struct.kex** %7, align 8
  %226 = getelementptr inbounds %struct.kex, %struct.kex* %225, i32 0, i32 3
  %227 = load i64, i64* %226, align 8
  %228 = call i32 @memcpy(i32* %224, i32* %29, i64 %227)
  br label %229

229:                                              ; preds = %221, %199
  %230 = load %struct.ssh*, %struct.ssh** %6, align 8
  %231 = load i64, i64* %21, align 8
  %232 = load i32*, i32** %11, align 8
  %233 = call i32 @kex_derive_keys_bn(%struct.ssh* %230, i32* %29, i64 %231, i32* %232)
  store i32 %233, i32* %22, align 4
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %235, label %238

235:                                              ; preds = %229
  %236 = load %struct.ssh*, %struct.ssh** %6, align 8
  %237 = call i32 @kex_send_newkeys(%struct.ssh* %236)
  store i32 %237, i32* %22, align 4
  br label %238

238:                                              ; preds = %235, %229
  br label %239

239:                                              ; preds = %238, %219, %198, %184, %146, %129, %112, %106, %90, %84, %74, %51, %34
  %240 = mul nuw i64 4, %27
  %241 = call i32 @explicit_bzero(i32* %29, i64 %240)
  %242 = load %struct.kex*, %struct.kex** %7, align 8
  %243 = getelementptr inbounds %struct.kex, %struct.kex* %242, i32 0, i32 4
  %244 = load i32*, i32** %243, align 8
  %245 = call i32 @EC_KEY_free(i32* %244)
  %246 = load %struct.kex*, %struct.kex** %7, align 8
  %247 = getelementptr inbounds %struct.kex, %struct.kex* %246, i32 0, i32 4
  store i32* null, i32** %247, align 8
  %248 = load i32*, i32** %9, align 8
  %249 = call i32 @EC_POINT_clear_free(i32* %248)
  %250 = load i32*, i32** %15, align 8
  %251 = icmp ne i32* %250, null
  br i1 %251, label %252, label %258

252:                                              ; preds = %239
  %253 = load i32*, i32** %15, align 8
  %254 = load i64, i64* %20, align 8
  %255 = call i32 @explicit_bzero(i32* %253, i64 %254)
  %256 = load i32*, i32** %15, align 8
  %257 = call i32 @free(i32* %256)
  br label %258

258:                                              ; preds = %252, %239
  %259 = load i32*, i32** %11, align 8
  %260 = call i32 @BN_clear_free(i32* %259)
  %261 = load %struct.sshkey*, %struct.sshkey** %12, align 8
  %262 = call i32 @sshkey_free(%struct.sshkey* %261)
  %263 = load i32*, i32** %13, align 8
  %264 = call i32 @free(i32* %263)
  %265 = load i32*, i32** %14, align 8
  %266 = call i32 @free(i32* %265)
  %267 = load i32, i32* %22, align 4
  %268 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %268)
  ret i32 %267
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @sshpkt_get_string(%struct.ssh*, i32**, i64*) #2

declare dso_local i32 @sshkey_from_blob(i32*, i64, %struct.sshkey**) #2

declare dso_local i32* @EC_POINT_new(i32*) #2

declare dso_local i32 @sshpkt_get_ec(%struct.ssh*, i32*, i32*) #2

declare dso_local i32 @sshpkt_get_end(%struct.ssh*) #2

declare dso_local i64 @sshkey_ec_validate_public(i32*, i32*) #2

declare dso_local i32 @sshpkt_disconnect(%struct.ssh*, i8*) #2

declare dso_local i32 @EC_GROUP_get_degree(i32*) #2

declare dso_local i8* @malloc(i64) #2

declare dso_local i32* @BN_new(...) #2

declare dso_local i32 @ECDH_compute_key(i32*, i64, i32*, i32*, i32*) #2

declare dso_local i32* @BN_bin2bn(i32*, i64, i32*) #2

declare dso_local i32 @kex_ecdh_hash(i32, i32*, i32, i32, i32, i32, i32, i32, i32*, i64, i32, i32*, i32*, i32*, i64*) #2

declare dso_local i32 @sshbuf_ptr(i32) #2

declare dso_local i32 @sshbuf_len(i32) #2

declare dso_local i32 @EC_KEY_get0_public_key(i32*) #2

declare dso_local i32 @sshkey_verify(%struct.sshkey*, i32*, i64, i32*, i64, i32, i32) #2

declare dso_local i32 @memcpy(i32*, i32*, i64) #2

declare dso_local i32 @kex_derive_keys_bn(%struct.ssh*, i32*, i64, i32*) #2

declare dso_local i32 @kex_send_newkeys(%struct.ssh*) #2

declare dso_local i32 @explicit_bzero(i32*, i64) #2

declare dso_local i32 @EC_KEY_free(i32*) #2

declare dso_local i32 @EC_POINT_clear_free(i32*) #2

declare dso_local i32 @free(i32*) #2

declare dso_local i32 @BN_clear_free(i32*) #2

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
