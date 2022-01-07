; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_kexc25519s.c_input_kex_c25519_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_kexc25519s.c_input_kex_c25519_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssh = type { i32, %struct.kex* }
%struct.kex = type { i64, i32 (%struct.sshkey*, %struct.sshkey*, i32**, i64*, i32*, i64, i32, i32)*, i32, i32*, %struct.sshbuf*, %struct.sshbuf*, i32, i32, i32, i32, i32, %struct.sshkey* (i32, i32, %struct.ssh*)*, %struct.sshkey* (i32, i32, %struct.ssh*)* }
%struct.sshkey = type { i32 }
%struct.sshbuf = type { i32 }

@CURVE25519_SIZE = common dso_local global i32 0, align 4
@SSH_DIGEST_MAX_LENGTH = common dso_local global i32 0, align 4
@SSH_ERR_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@SSH_ERR_NO_HOSTKEY_LOADED = common dso_local global i32 0, align 4
@SSH_ERR_SIGNATURE_INVALID = common dso_local global i32 0, align 4
@SSH_ERR_ALLOC_FAIL = common dso_local global i32 0, align 4
@SSH2_MSG_KEX_ECDH_REPLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.ssh*)* @input_kex_c25519_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @input_kex_c25519_init(i32 %0, i32 %1, %struct.ssh* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ssh*, align 8
  %7 = alloca %struct.kex*, align 8
  %8 = alloca %struct.sshkey*, align 8
  %9 = alloca %struct.sshkey*, align 8
  %10 = alloca %struct.sshbuf*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
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
  store %struct.sshbuf* null, %struct.sshbuf** %10, align 8
  store i32* null, i32** %11, align 8
  store i32* null, i32** %12, align 8
  %26 = load i32, i32* @CURVE25519_SIZE, align 4
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %13, align 8
  %29 = alloca i32, i64 %27, align 16
  store i64 %27, i64* %14, align 8
  store i32* null, i32** %15, align 8
  %30 = load i32, i32* @CURVE25519_SIZE, align 4
  %31 = zext i32 %30 to i64
  %32 = alloca i32, i64 %31, align 16
  store i64 %31, i64* %16, align 8
  %33 = load i32, i32* @SSH_DIGEST_MAX_LENGTH, align 4
  %34 = zext i32 %33 to i64
  %35 = alloca i32, i64 %34, align 16
  store i64 %34, i64* %17, align 8
  %36 = call i32 @kexc25519_keygen(i32* %29, i32* %32)
  %37 = load %struct.kex*, %struct.kex** %7, align 8
  %38 = getelementptr inbounds %struct.kex, %struct.kex* %37, i32 0, i32 12
  %39 = load %struct.sshkey* (i32, i32, %struct.ssh*)*, %struct.sshkey* (i32, i32, %struct.ssh*)** %38, align 8
  %40 = icmp eq %struct.sshkey* (i32, i32, %struct.ssh*)* %39, null
  br i1 %40, label %46, label %41

41:                                               ; preds = %3
  %42 = load %struct.kex*, %struct.kex** %7, align 8
  %43 = getelementptr inbounds %struct.kex, %struct.kex* %42, i32 0, i32 11
  %44 = load %struct.sshkey* (i32, i32, %struct.ssh*)*, %struct.sshkey* (i32, i32, %struct.ssh*)** %43, align 8
  %45 = icmp eq %struct.sshkey* (i32, i32, %struct.ssh*)* %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %41, %3
  %47 = load i32, i32* @SSH_ERR_INVALID_ARGUMENT, align 4
  store i32 %47, i32* %22, align 4
  br label %226

48:                                               ; preds = %41
  %49 = load %struct.kex*, %struct.kex** %7, align 8
  %50 = getelementptr inbounds %struct.kex, %struct.kex* %49, i32 0, i32 12
  %51 = load %struct.sshkey* (i32, i32, %struct.ssh*)*, %struct.sshkey* (i32, i32, %struct.ssh*)** %50, align 8
  %52 = load %struct.kex*, %struct.kex** %7, align 8
  %53 = getelementptr inbounds %struct.kex, %struct.kex* %52, i32 0, i32 10
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.kex*, %struct.kex** %7, align 8
  %56 = getelementptr inbounds %struct.kex, %struct.kex* %55, i32 0, i32 9
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.ssh*, %struct.ssh** %6, align 8
  %59 = call %struct.sshkey* %51(i32 %54, i32 %57, %struct.ssh* %58)
  store %struct.sshkey* %59, %struct.sshkey** %9, align 8
  %60 = load %struct.kex*, %struct.kex** %7, align 8
  %61 = getelementptr inbounds %struct.kex, %struct.kex* %60, i32 0, i32 11
  %62 = load %struct.sshkey* (i32, i32, %struct.ssh*)*, %struct.sshkey* (i32, i32, %struct.ssh*)** %61, align 8
  %63 = load %struct.kex*, %struct.kex** %7, align 8
  %64 = getelementptr inbounds %struct.kex, %struct.kex* %63, i32 0, i32 10
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.kex*, %struct.kex** %7, align 8
  %67 = getelementptr inbounds %struct.kex, %struct.kex* %66, i32 0, i32 9
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.ssh*, %struct.ssh** %6, align 8
  %70 = call %struct.sshkey* %62(i32 %65, i32 %68, %struct.ssh* %69)
  store %struct.sshkey* %70, %struct.sshkey** %8, align 8
  %71 = load %struct.sshkey*, %struct.sshkey** %9, align 8
  %72 = icmp eq %struct.sshkey* %71, null
  br i1 %72, label %73, label %75

73:                                               ; preds = %48
  %74 = load i32, i32* @SSH_ERR_NO_HOSTKEY_LOADED, align 4
  store i32 %74, i32* %22, align 4
  br label %226

75:                                               ; preds = %48
  %76 = load %struct.ssh*, %struct.ssh** %6, align 8
  %77 = call i32 @sshpkt_get_string(%struct.ssh* %76, i32** %15, i64* %19)
  store i32 %77, i32* %22, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %75
  %80 = load %struct.ssh*, %struct.ssh** %6, align 8
  %81 = call i32 @sshpkt_get_end(%struct.ssh* %80)
  store i32 %81, i32* %22, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %79, %75
  br label %226

84:                                               ; preds = %79
  %85 = load i64, i64* %19, align 8
  %86 = load i32, i32* @CURVE25519_SIZE, align 4
  %87 = sext i32 %86 to i64
  %88 = icmp ne i64 %85, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %84
  %90 = load i32, i32* @SSH_ERR_SIGNATURE_INVALID, align 4
  store i32 %90, i32* %22, align 4
  br label %226

91:                                               ; preds = %84
  %92 = call %struct.sshbuf* (...) @sshbuf_new()
  store %struct.sshbuf* %92, %struct.sshbuf** %10, align 8
  %93 = icmp eq %struct.sshbuf* %92, null
  br i1 %93, label %94, label %96

94:                                               ; preds = %91
  %95 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %95, i32* %22, align 4
  br label %226

96:                                               ; preds = %91
  %97 = load i32*, i32** %15, align 8
  %98 = load %struct.sshbuf*, %struct.sshbuf** %10, align 8
  %99 = call i32 @kexc25519_shared_key(i32* %29, i32* %97, %struct.sshbuf* %98)
  store i32 %99, i32* %22, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %96
  br label %226

102:                                              ; preds = %96
  %103 = load %struct.sshkey*, %struct.sshkey** %9, align 8
  %104 = call i32 @sshkey_to_blob(%struct.sshkey* %103, i32** %11, i64* %20)
  store i32 %104, i32* %22, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %102
  br label %226

107:                                              ; preds = %102
  %108 = mul nuw i64 4, %34
  store i64 %108, i64* %21, align 8
  %109 = load %struct.kex*, %struct.kex** %7, align 8
  %110 = getelementptr inbounds %struct.kex, %struct.kex* %109, i32 0, i32 8
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.kex*, %struct.kex** %7, align 8
  %113 = getelementptr inbounds %struct.kex, %struct.kex* %112, i32 0, i32 7
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.kex*, %struct.kex** %7, align 8
  %116 = getelementptr inbounds %struct.kex, %struct.kex* %115, i32 0, i32 6
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.kex*, %struct.kex** %7, align 8
  %119 = getelementptr inbounds %struct.kex, %struct.kex* %118, i32 0, i32 5
  %120 = load %struct.sshbuf*, %struct.sshbuf** %119, align 8
  %121 = call i32 @sshbuf_ptr(%struct.sshbuf* %120)
  %122 = load %struct.kex*, %struct.kex** %7, align 8
  %123 = getelementptr inbounds %struct.kex, %struct.kex* %122, i32 0, i32 5
  %124 = load %struct.sshbuf*, %struct.sshbuf** %123, align 8
  %125 = call i32 @sshbuf_len(%struct.sshbuf* %124)
  %126 = load %struct.kex*, %struct.kex** %7, align 8
  %127 = getelementptr inbounds %struct.kex, %struct.kex* %126, i32 0, i32 4
  %128 = load %struct.sshbuf*, %struct.sshbuf** %127, align 8
  %129 = call i32 @sshbuf_ptr(%struct.sshbuf* %128)
  %130 = load %struct.kex*, %struct.kex** %7, align 8
  %131 = getelementptr inbounds %struct.kex, %struct.kex* %130, i32 0, i32 4
  %132 = load %struct.sshbuf*, %struct.sshbuf** %131, align 8
  %133 = call i32 @sshbuf_len(%struct.sshbuf* %132)
  %134 = load i32*, i32** %11, align 8
  %135 = load i64, i64* %20, align 8
  %136 = load i32*, i32** %15, align 8
  %137 = load %struct.sshbuf*, %struct.sshbuf** %10, align 8
  %138 = call i32 @sshbuf_ptr(%struct.sshbuf* %137)
  %139 = load %struct.sshbuf*, %struct.sshbuf** %10, align 8
  %140 = call i32 @sshbuf_len(%struct.sshbuf* %139)
  %141 = call i32 @kex_c25519_hash(i32 %111, i32 %114, i32 %117, i32 %121, i32 %125, i32 %129, i32 %133, i32* %134, i64 %135, i32* %136, i32* %32, i32 %138, i32 %140, i32* %35, i64* %21)
  store i32 %141, i32* %22, align 4
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %107
  br label %226

144:                                              ; preds = %107
  %145 = load %struct.kex*, %struct.kex** %7, align 8
  %146 = getelementptr inbounds %struct.kex, %struct.kex* %145, i32 0, i32 3
  %147 = load i32*, i32** %146, align 8
  %148 = icmp eq i32* %147, null
  br i1 %148, label %149, label %173

149:                                              ; preds = %144
  %150 = load i64, i64* %21, align 8
  %151 = load %struct.kex*, %struct.kex** %7, align 8
  %152 = getelementptr inbounds %struct.kex, %struct.kex* %151, i32 0, i32 0
  store i64 %150, i64* %152, align 8
  %153 = load %struct.kex*, %struct.kex** %7, align 8
  %154 = getelementptr inbounds %struct.kex, %struct.kex* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = call i32* @malloc(i64 %155)
  %157 = load %struct.kex*, %struct.kex** %7, align 8
  %158 = getelementptr inbounds %struct.kex, %struct.kex* %157, i32 0, i32 3
  store i32* %156, i32** %158, align 8
  %159 = load %struct.kex*, %struct.kex** %7, align 8
  %160 = getelementptr inbounds %struct.kex, %struct.kex* %159, i32 0, i32 3
  %161 = load i32*, i32** %160, align 8
  %162 = icmp eq i32* %161, null
  br i1 %162, label %163, label %165

163:                                              ; preds = %149
  %164 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %164, i32* %22, align 4
  br label %226

165:                                              ; preds = %149
  %166 = load %struct.kex*, %struct.kex** %7, align 8
  %167 = getelementptr inbounds %struct.kex, %struct.kex* %166, i32 0, i32 3
  %168 = load i32*, i32** %167, align 8
  %169 = load %struct.kex*, %struct.kex** %7, align 8
  %170 = getelementptr inbounds %struct.kex, %struct.kex* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = call i32 @memcpy(i32* %168, i32* %35, i64 %171)
  br label %173

173:                                              ; preds = %165, %144
  %174 = load %struct.kex*, %struct.kex** %7, align 8
  %175 = getelementptr inbounds %struct.kex, %struct.kex* %174, i32 0, i32 1
  %176 = load i32 (%struct.sshkey*, %struct.sshkey*, i32**, i64*, i32*, i64, i32, i32)*, i32 (%struct.sshkey*, %struct.sshkey*, i32**, i64*, i32*, i64, i32, i32)** %175, align 8
  %177 = load %struct.sshkey*, %struct.sshkey** %8, align 8
  %178 = load %struct.sshkey*, %struct.sshkey** %9, align 8
  %179 = load i64, i64* %21, align 8
  %180 = load %struct.kex*, %struct.kex** %7, align 8
  %181 = getelementptr inbounds %struct.kex, %struct.kex* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 8
  %183 = load %struct.ssh*, %struct.ssh** %6, align 8
  %184 = getelementptr inbounds %struct.ssh, %struct.ssh* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = call i32 %176(%struct.sshkey* %177, %struct.sshkey* %178, i32** %12, i64* %18, i32* %35, i64 %179, i32 %182, i32 %185)
  store i32 %186, i32* %22, align 4
  %187 = icmp slt i32 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %173
  br label %226

189:                                              ; preds = %173
  %190 = load %struct.ssh*, %struct.ssh** %6, align 8
  %191 = load i32, i32* @SSH2_MSG_KEX_ECDH_REPLY, align 4
  %192 = call i32 @sshpkt_start(%struct.ssh* %190, i32 %191)
  store i32 %192, i32* %22, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %215, label %194

194:                                              ; preds = %189
  %195 = load %struct.ssh*, %struct.ssh** %6, align 8
  %196 = load i32*, i32** %11, align 8
  %197 = load i64, i64* %20, align 8
  %198 = call i32 @sshpkt_put_string(%struct.ssh* %195, i32* %196, i64 %197)
  store i32 %198, i32* %22, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %215, label %200

200:                                              ; preds = %194
  %201 = load %struct.ssh*, %struct.ssh** %6, align 8
  %202 = mul nuw i64 4, %31
  %203 = call i32 @sshpkt_put_string(%struct.ssh* %201, i32* %32, i64 %202)
  store i32 %203, i32* %22, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %215, label %205

205:                                              ; preds = %200
  %206 = load %struct.ssh*, %struct.ssh** %6, align 8
  %207 = load i32*, i32** %12, align 8
  %208 = load i64, i64* %18, align 8
  %209 = call i32 @sshpkt_put_string(%struct.ssh* %206, i32* %207, i64 %208)
  store i32 %209, i32* %22, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %215, label %211

211:                                              ; preds = %205
  %212 = load %struct.ssh*, %struct.ssh** %6, align 8
  %213 = call i32 @sshpkt_send(%struct.ssh* %212)
  store i32 %213, i32* %22, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %216

215:                                              ; preds = %211, %205, %200, %194, %189
  br label %226

216:                                              ; preds = %211
  %217 = load %struct.ssh*, %struct.ssh** %6, align 8
  %218 = load i64, i64* %21, align 8
  %219 = load %struct.sshbuf*, %struct.sshbuf** %10, align 8
  %220 = call i32 @kex_derive_keys(%struct.ssh* %217, i32* %35, i64 %218, %struct.sshbuf* %219)
  store i32 %220, i32* %22, align 4
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %222, label %225

222:                                              ; preds = %216
  %223 = load %struct.ssh*, %struct.ssh** %6, align 8
  %224 = call i32 @kex_send_newkeys(%struct.ssh* %223)
  store i32 %224, i32* %22, align 4
  br label %225

225:                                              ; preds = %222, %216
  br label %226

226:                                              ; preds = %225, %215, %188, %163, %143, %106, %101, %94, %89, %83, %73, %46
  %227 = mul nuw i64 4, %34
  %228 = trunc i64 %227 to i32
  %229 = call i32 @explicit_bzero(i32* %35, i32 %228)
  %230 = mul nuw i64 4, %27
  %231 = trunc i64 %230 to i32
  %232 = call i32 @explicit_bzero(i32* %29, i32 %231)
  %233 = load i32*, i32** %11, align 8
  %234 = call i32 @free(i32* %233)
  %235 = load i32*, i32** %12, align 8
  %236 = call i32 @free(i32* %235)
  %237 = load i32*, i32** %15, align 8
  %238 = call i32 @free(i32* %237)
  %239 = load %struct.sshbuf*, %struct.sshbuf** %10, align 8
  %240 = call i32 @sshbuf_free(%struct.sshbuf* %239)
  %241 = load i32, i32* %22, align 4
  %242 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %242)
  ret i32 %241
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @kexc25519_keygen(i32*, i32*) #2

declare dso_local i32 @sshpkt_get_string(%struct.ssh*, i32**, i64*) #2

declare dso_local i32 @sshpkt_get_end(%struct.ssh*) #2

declare dso_local %struct.sshbuf* @sshbuf_new(...) #2

declare dso_local i32 @kexc25519_shared_key(i32*, i32*, %struct.sshbuf*) #2

declare dso_local i32 @sshkey_to_blob(%struct.sshkey*, i32**, i64*) #2

declare dso_local i32 @kex_c25519_hash(i32, i32, i32, i32, i32, i32, i32, i32*, i64, i32*, i32*, i32, i32, i32*, i64*) #2

declare dso_local i32 @sshbuf_ptr(%struct.sshbuf*) #2

declare dso_local i32 @sshbuf_len(%struct.sshbuf*) #2

declare dso_local i32* @malloc(i64) #2

declare dso_local i32 @memcpy(i32*, i32*, i64) #2

declare dso_local i32 @sshpkt_start(%struct.ssh*, i32) #2

declare dso_local i32 @sshpkt_put_string(%struct.ssh*, i32*, i64) #2

declare dso_local i32 @sshpkt_send(%struct.ssh*) #2

declare dso_local i32 @kex_derive_keys(%struct.ssh*, i32*, i64, %struct.sshbuf*) #2

declare dso_local i32 @kex_send_newkeys(%struct.ssh*) #2

declare dso_local i32 @explicit_bzero(i32*, i32) #2

declare dso_local i32 @free(i32*) #2

declare dso_local i32 @sshbuf_free(%struct.sshbuf*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
