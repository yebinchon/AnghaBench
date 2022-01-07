; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_kexgexc.c_input_kex_dh_gex_reply.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_kexgexc.c_input_kex_dh_gex_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssh = type { i32, %struct.kex* }
%struct.kex = type { i32 (%struct.sshkey*, %struct.ssh*)*, i64, i64, i32, i32, i64, i32*, i32*, i32, i32, i32, i32, i32, i32, i32 }
%struct.sshkey = type { i64, i64 }

@SSH_DIGEST_MAX_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"got SSH2_MSG_KEX_DH_GEX_REPLY\00", align 1
@SSH_ERR_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@KEY_ECDSA = common dso_local global i64 0, align 8
@SSH_ERR_KEY_TYPE_MISMATCH = common dso_local global i32 0, align 4
@SSH_ERR_SIGNATURE_INVALID = common dso_local global i32 0, align 4
@SSH_ERR_ALLOC_FAIL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"bad server public DH value\00", align 1
@SSH_ERR_MESSAGE_INCOMPLETE = common dso_local global i32 0, align 4
@SSH_ERR_LIBCRYPTO_ERROR = common dso_local global i32 0, align 4
@SSH_OLD_DHGEX = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.ssh*)* @input_kex_dh_gex_reply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @input_kex_dh_gex_reply(i32 %0, i32 %1, %struct.ssh* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ssh*, align 8
  %7 = alloca %struct.kex*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.sshkey*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.ssh* %2, %struct.ssh** %6, align 8
  %25 = load %struct.ssh*, %struct.ssh** %6, align 8
  %26 = getelementptr inbounds %struct.ssh, %struct.ssh* %25, i32 0, i32 1
  %27 = load %struct.kex*, %struct.kex** %26, align 8
  store %struct.kex* %27, %struct.kex** %7, align 8
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  store %struct.sshkey* null, %struct.sshkey** %13, align 8
  store i32* null, i32** %14, align 8
  store i32* null, i32** %15, align 8
  store i32* null, i32** %16, align 8
  %28 = load i32, i32* @SSH_DIGEST_MAX_LENGTH, align 4
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %17, align 8
  %31 = alloca i32, i64 %29, align 16
  store i64 %29, i64* %18, align 8
  store i64 0, i64* %19, align 8
  %32 = call i32 (i8*, ...) @debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.kex*, %struct.kex** %7, align 8
  %34 = getelementptr inbounds %struct.kex, %struct.kex* %33, i32 0, i32 0
  %35 = load i32 (%struct.sshkey*, %struct.ssh*)*, i32 (%struct.sshkey*, %struct.ssh*)** %34, align 8
  %36 = icmp eq i32 (%struct.sshkey*, %struct.ssh*)* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %3
  %38 = load i32, i32* @SSH_ERR_INVALID_ARGUMENT, align 4
  store i32 %38, i32* %24, align 4
  br label %263

39:                                               ; preds = %3
  %40 = load %struct.ssh*, %struct.ssh** %6, align 8
  %41 = call i32 @sshpkt_get_string(%struct.ssh* %40, i32** %16, i64* %21)
  store i32 %41, i32* %24, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %39
  %44 = load i32*, i32** %16, align 8
  %45 = load i64, i64* %21, align 8
  %46 = call i32 @sshkey_from_blob(i32* %44, i64 %45, %struct.sshkey** %13)
  store i32 %46, i32* %24, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43, %39
  br label %263

49:                                               ; preds = %43
  %50 = load %struct.sshkey*, %struct.sshkey** %13, align 8
  %51 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.kex*, %struct.kex** %7, align 8
  %54 = getelementptr inbounds %struct.kex, %struct.kex* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %52, %55
  br i1 %56, label %71, label %57

57:                                               ; preds = %49
  %58 = load %struct.kex*, %struct.kex** %7, align 8
  %59 = getelementptr inbounds %struct.kex, %struct.kex* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @KEY_ECDSA, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %73

63:                                               ; preds = %57
  %64 = load %struct.sshkey*, %struct.sshkey** %13, align 8
  %65 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.kex*, %struct.kex** %7, align 8
  %68 = getelementptr inbounds %struct.kex, %struct.kex* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %66, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %63, %49
  %72 = load i32, i32* @SSH_ERR_KEY_TYPE_MISMATCH, align 4
  store i32 %72, i32* %24, align 4
  br label %263

73:                                               ; preds = %63, %57
  %74 = load %struct.kex*, %struct.kex** %7, align 8
  %75 = getelementptr inbounds %struct.kex, %struct.kex* %74, i32 0, i32 0
  %76 = load i32 (%struct.sshkey*, %struct.ssh*)*, i32 (%struct.sshkey*, %struct.ssh*)** %75, align 8
  %77 = load %struct.sshkey*, %struct.sshkey** %13, align 8
  %78 = load %struct.ssh*, %struct.ssh** %6, align 8
  %79 = call i32 %76(%struct.sshkey* %77, %struct.ssh* %78)
  %80 = icmp eq i32 %79, -1
  br i1 %80, label %81, label %83

81:                                               ; preds = %73
  %82 = load i32, i32* @SSH_ERR_SIGNATURE_INVALID, align 4
  store i32 %82, i32* %24, align 4
  br label %263

83:                                               ; preds = %73
  %84 = call i32* (...) @BN_new()
  store i32* %84, i32** %8, align 8
  %85 = icmp eq i32* %84, null
  br i1 %85, label %86, label %88

86:                                               ; preds = %83
  %87 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %87, i32* %24, align 4
  br label %263

88:                                               ; preds = %83
  %89 = load %struct.ssh*, %struct.ssh** %6, align 8
  %90 = load i32*, i32** %8, align 8
  %91 = call i32 @sshpkt_get_bignum2(%struct.ssh* %89, i32* %90)
  store i32 %91, i32* %24, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %101, label %93

93:                                               ; preds = %88
  %94 = load %struct.ssh*, %struct.ssh** %6, align 8
  %95 = call i32 @sshpkt_get_string(%struct.ssh* %94, i32** %15, i64* %20)
  store i32 %95, i32* %24, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %101, label %97

97:                                               ; preds = %93
  %98 = load %struct.ssh*, %struct.ssh** %6, align 8
  %99 = call i32 @sshpkt_get_end(%struct.ssh* %98)
  store i32 %99, i32* %24, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %97, %93, %88
  br label %263

102:                                              ; preds = %97
  %103 = load %struct.kex*, %struct.kex** %7, align 8
  %104 = getelementptr inbounds %struct.kex, %struct.kex* %103, i32 0, i32 6
  %105 = load i32*, i32** %104, align 8
  %106 = load i32*, i32** %8, align 8
  %107 = call i32 @dh_pub_is_valid(i32* %105, i32* %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %113, label %109

109:                                              ; preds = %102
  %110 = load %struct.ssh*, %struct.ssh** %6, align 8
  %111 = call i32 @sshpkt_disconnect(%struct.ssh* %110, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %112 = load i32, i32* @SSH_ERR_MESSAGE_INCOMPLETE, align 4
  store i32 %112, i32* %24, align 4
  br label %263

113:                                              ; preds = %102
  %114 = load %struct.kex*, %struct.kex** %7, align 8
  %115 = getelementptr inbounds %struct.kex, %struct.kex* %114, i32 0, i32 6
  %116 = load i32*, i32** %115, align 8
  %117 = call i64 @DH_size(i32* %116)
  store i64 %117, i64* %19, align 8
  %118 = load i64, i64* %19, align 8
  %119 = call i8* @malloc(i64 %118)
  %120 = bitcast i8* %119 to i32*
  store i32* %120, i32** %14, align 8
  %121 = icmp eq i32* %120, null
  br i1 %121, label %125, label %122

122:                                              ; preds = %113
  %123 = call i32* (...) @BN_new()
  store i32* %123, i32** %9, align 8
  %124 = icmp eq i32* %123, null
  br i1 %124, label %125, label %127

125:                                              ; preds = %122, %113
  %126 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %126, i32* %24, align 4
  br label %263

127:                                              ; preds = %122
  %128 = load i32*, i32** %14, align 8
  %129 = load i32*, i32** %8, align 8
  %130 = load %struct.kex*, %struct.kex** %7, align 8
  %131 = getelementptr inbounds %struct.kex, %struct.kex* %130, i32 0, i32 6
  %132 = load i32*, i32** %131, align 8
  %133 = call i32 @DH_compute_key(i32* %128, i32* %129, i32* %132)
  store i32 %133, i32* %23, align 4
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %141, label %135

135:                                              ; preds = %127
  %136 = load i32*, i32** %14, align 8
  %137 = load i32, i32* %23, align 4
  %138 = load i32*, i32** %9, align 8
  %139 = call i32* @BN_bin2bn(i32* %136, i32 %137, i32* %138)
  %140 = icmp eq i32* %139, null
  br i1 %140, label %141, label %143

141:                                              ; preds = %135, %127
  %142 = load i32, i32* @SSH_ERR_LIBCRYPTO_ERROR, align 4
  store i32 %142, i32* %24, align 4
  br label %263

143:                                              ; preds = %135
  %144 = load %struct.ssh*, %struct.ssh** %6, align 8
  %145 = getelementptr inbounds %struct.ssh, %struct.ssh* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @SSH_OLD_DHGEX, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %143
  %151 = load %struct.kex*, %struct.kex** %7, align 8
  %152 = getelementptr inbounds %struct.kex, %struct.kex* %151, i32 0, i32 4
  store i32 -1, i32* %152, align 4
  %153 = load %struct.kex*, %struct.kex** %7, align 8
  %154 = getelementptr inbounds %struct.kex, %struct.kex* %153, i32 0, i32 3
  store i32 -1, i32* %154, align 8
  br label %155

155:                                              ; preds = %150, %143
  %156 = load %struct.kex*, %struct.kex** %7, align 8
  %157 = getelementptr inbounds %struct.kex, %struct.kex* %156, i32 0, i32 6
  %158 = load i32*, i32** %157, align 8
  %159 = call i32 @DH_get0_key(i32* %158, i32** %10, i32* null)
  %160 = load %struct.kex*, %struct.kex** %7, align 8
  %161 = getelementptr inbounds %struct.kex, %struct.kex* %160, i32 0, i32 6
  %162 = load i32*, i32** %161, align 8
  %163 = call i32 @DH_get0_pqg(i32* %162, i32** %11, i32* null, i32** %12)
  %164 = mul nuw i64 4, %29
  store i64 %164, i64* %22, align 8
  %165 = load %struct.kex*, %struct.kex** %7, align 8
  %166 = getelementptr inbounds %struct.kex, %struct.kex* %165, i32 0, i32 14
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.kex*, %struct.kex** %7, align 8
  %169 = getelementptr inbounds %struct.kex, %struct.kex* %168, i32 0, i32 13
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.kex*, %struct.kex** %7, align 8
  %172 = getelementptr inbounds %struct.kex, %struct.kex* %171, i32 0, i32 12
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.kex*, %struct.kex** %7, align 8
  %175 = getelementptr inbounds %struct.kex, %struct.kex* %174, i32 0, i32 11
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @sshbuf_ptr(i32 %176)
  %178 = load %struct.kex*, %struct.kex** %7, align 8
  %179 = getelementptr inbounds %struct.kex, %struct.kex* %178, i32 0, i32 11
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @sshbuf_len(i32 %180)
  %182 = load %struct.kex*, %struct.kex** %7, align 8
  %183 = getelementptr inbounds %struct.kex, %struct.kex* %182, i32 0, i32 10
  %184 = load i32, i32* %183, align 8
  %185 = call i32 @sshbuf_ptr(i32 %184)
  %186 = load %struct.kex*, %struct.kex** %7, align 8
  %187 = getelementptr inbounds %struct.kex, %struct.kex* %186, i32 0, i32 10
  %188 = load i32, i32* %187, align 8
  %189 = call i32 @sshbuf_len(i32 %188)
  %190 = load i32*, i32** %16, align 8
  %191 = load i64, i64* %21, align 8
  %192 = load %struct.kex*, %struct.kex** %7, align 8
  %193 = getelementptr inbounds %struct.kex, %struct.kex* %192, i32 0, i32 3
  %194 = load i32, i32* %193, align 8
  %195 = load %struct.kex*, %struct.kex** %7, align 8
  %196 = getelementptr inbounds %struct.kex, %struct.kex* %195, i32 0, i32 9
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.kex*, %struct.kex** %7, align 8
  %199 = getelementptr inbounds %struct.kex, %struct.kex* %198, i32 0, i32 4
  %200 = load i32, i32* %199, align 4
  %201 = load i32*, i32** %11, align 8
  %202 = load i32*, i32** %12, align 8
  %203 = load i32*, i32** %10, align 8
  %204 = load i32*, i32** %8, align 8
  %205 = load i32*, i32** %9, align 8
  %206 = call i32 @kexgex_hash(i32 %167, i32 %170, i32 %173, i32 %177, i32 %181, i32 %185, i32 %189, i32* %190, i64 %191, i32 %194, i32 %197, i32 %200, i32* %201, i32* %202, i32* %203, i32* %204, i32* %205, i32* %31, i64* %22)
  store i32 %206, i32* %24, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %155
  br label %263

209:                                              ; preds = %155
  %210 = load %struct.sshkey*, %struct.sshkey** %13, align 8
  %211 = load i32*, i32** %15, align 8
  %212 = load i64, i64* %20, align 8
  %213 = load i64, i64* %22, align 8
  %214 = load %struct.kex*, %struct.kex** %7, align 8
  %215 = getelementptr inbounds %struct.kex, %struct.kex* %214, i32 0, i32 8
  %216 = load i32, i32* %215, align 8
  %217 = load %struct.ssh*, %struct.ssh** %6, align 8
  %218 = getelementptr inbounds %struct.ssh, %struct.ssh* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = call i32 @sshkey_verify(%struct.sshkey* %210, i32* %211, i64 %212, i32* %31, i64 %213, i32 %216, i32 %219)
  store i32 %220, i32* %24, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %223

222:                                              ; preds = %209
  br label %263

223:                                              ; preds = %209
  %224 = load %struct.kex*, %struct.kex** %7, align 8
  %225 = getelementptr inbounds %struct.kex, %struct.kex* %224, i32 0, i32 7
  %226 = load i32*, i32** %225, align 8
  %227 = icmp eq i32* %226, null
  br i1 %227, label %228, label %253

228:                                              ; preds = %223
  %229 = load i64, i64* %22, align 8
  %230 = load %struct.kex*, %struct.kex** %7, align 8
  %231 = getelementptr inbounds %struct.kex, %struct.kex* %230, i32 0, i32 5
  store i64 %229, i64* %231, align 8
  %232 = load %struct.kex*, %struct.kex** %7, align 8
  %233 = getelementptr inbounds %struct.kex, %struct.kex* %232, i32 0, i32 5
  %234 = load i64, i64* %233, align 8
  %235 = call i8* @malloc(i64 %234)
  %236 = bitcast i8* %235 to i32*
  %237 = load %struct.kex*, %struct.kex** %7, align 8
  %238 = getelementptr inbounds %struct.kex, %struct.kex* %237, i32 0, i32 7
  store i32* %236, i32** %238, align 8
  %239 = load %struct.kex*, %struct.kex** %7, align 8
  %240 = getelementptr inbounds %struct.kex, %struct.kex* %239, i32 0, i32 7
  %241 = load i32*, i32** %240, align 8
  %242 = icmp eq i32* %241, null
  br i1 %242, label %243, label %245

243:                                              ; preds = %228
  %244 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %244, i32* %24, align 4
  br label %263

245:                                              ; preds = %228
  %246 = load %struct.kex*, %struct.kex** %7, align 8
  %247 = getelementptr inbounds %struct.kex, %struct.kex* %246, i32 0, i32 7
  %248 = load i32*, i32** %247, align 8
  %249 = load %struct.kex*, %struct.kex** %7, align 8
  %250 = getelementptr inbounds %struct.kex, %struct.kex* %249, i32 0, i32 5
  %251 = load i64, i64* %250, align 8
  %252 = call i32 @memcpy(i32* %248, i32* %31, i64 %251)
  br label %253

253:                                              ; preds = %245, %223
  %254 = load %struct.ssh*, %struct.ssh** %6, align 8
  %255 = load i64, i64* %22, align 8
  %256 = load i32*, i32** %9, align 8
  %257 = call i32 @kex_derive_keys_bn(%struct.ssh* %254, i32* %31, i64 %255, i32* %256)
  store i32 %257, i32* %24, align 4
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %259, label %262

259:                                              ; preds = %253
  %260 = load %struct.ssh*, %struct.ssh** %6, align 8
  %261 = call i32 @kex_send_newkeys(%struct.ssh* %260)
  store i32 %261, i32* %24, align 4
  br label %262

262:                                              ; preds = %259, %253
  br label %263

263:                                              ; preds = %262, %243, %222, %208, %141, %125, %109, %101, %86, %81, %71, %48, %37
  %264 = mul nuw i64 4, %29
  %265 = call i32 @explicit_bzero(i32* %31, i64 %264)
  %266 = load %struct.kex*, %struct.kex** %7, align 8
  %267 = getelementptr inbounds %struct.kex, %struct.kex* %266, i32 0, i32 6
  %268 = load i32*, i32** %267, align 8
  %269 = call i32 @DH_free(i32* %268)
  %270 = load %struct.kex*, %struct.kex** %7, align 8
  %271 = getelementptr inbounds %struct.kex, %struct.kex* %270, i32 0, i32 6
  store i32* null, i32** %271, align 8
  %272 = load i32*, i32** %8, align 8
  %273 = call i32 @BN_clear_free(i32* %272)
  %274 = load i32*, i32** %14, align 8
  %275 = icmp ne i32* %274, null
  br i1 %275, label %276, label %282

276:                                              ; preds = %263
  %277 = load i32*, i32** %14, align 8
  %278 = load i64, i64* %19, align 8
  %279 = call i32 @explicit_bzero(i32* %277, i64 %278)
  %280 = load i32*, i32** %14, align 8
  %281 = call i32 @free(i32* %280)
  br label %282

282:                                              ; preds = %276, %263
  %283 = load i32*, i32** %9, align 8
  %284 = call i32 @BN_clear_free(i32* %283)
  %285 = load %struct.sshkey*, %struct.sshkey** %13, align 8
  %286 = call i32 @sshkey_free(%struct.sshkey* %285)
  %287 = load i32*, i32** %16, align 8
  %288 = call i32 @free(i32* %287)
  %289 = load i32*, i32** %15, align 8
  %290 = call i32 @free(i32* %289)
  %291 = load i32, i32* %24, align 4
  %292 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %292)
  ret i32 %291
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @debug(i8*, ...) #2

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

declare dso_local i32 @DH_get0_pqg(i32*, i32**, i32*, i32**) #2

declare dso_local i32 @kexgex_hash(i32, i32, i32, i32, i32, i32, i32, i32*, i64, i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i64*) #2

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
