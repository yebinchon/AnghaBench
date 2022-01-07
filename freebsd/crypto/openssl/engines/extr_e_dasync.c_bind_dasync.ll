; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/engines/extr_e_dasync.c_bind_dasync.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/engines/extr_e_dasync.c_bind_dasync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [23 x i8] c"Dummy Async RSA method\00", align 1
@dasync_rsa_method = common dso_local global i32* null, align 8
@dasync_pub_enc = common dso_local global i32 0, align 4
@dasync_pub_dec = common dso_local global i32 0, align 4
@dasync_rsa_priv_enc = common dso_local global i32 0, align 4
@dasync_rsa_priv_dec = common dso_local global i32 0, align 4
@dasync_rsa_mod_exp = common dso_local global i32 0, align 4
@BN_mod_exp_mont = common dso_local global i32 0, align 4
@dasync_rsa_init = common dso_local global i32 0, align 4
@dasync_rsa_finish = common dso_local global i32 0, align 4
@DASYNC_F_BIND_DASYNC = common dso_local global i32 0, align 4
@DASYNC_R_INIT_FAILED = common dso_local global i32 0, align 4
@engine_dasync_id = common dso_local global i32 0, align 4
@engine_dasync_name = common dso_local global i32 0, align 4
@dasync_digests = common dso_local global i32 0, align 4
@dasync_ciphers = common dso_local global i32 0, align 4
@dasync_destroy = common dso_local global i32 0, align 4
@dasync_init = common dso_local global i32 0, align 4
@dasync_finish = common dso_local global i32 0, align 4
@NID_sha1 = common dso_local global i32 0, align 4
@NID_sha1WithRSAEncryption = common dso_local global i32 0, align 4
@_hidden_sha1_md = common dso_local global i32* null, align 8
@SHA_DIGEST_LENGTH = common dso_local global i32 0, align 4
@SHA_CBLOCK = common dso_local global i32 0, align 4
@EVP_MD_FLAG_DIGALGID_ABSENT = common dso_local global i32 0, align 4
@dasync_sha1_init = common dso_local global i32 0, align 4
@dasync_sha1_update = common dso_local global i32 0, align 4
@dasync_sha1_final = common dso_local global i32 0, align 4
@NID_aes_128_cbc = common dso_local global i32 0, align 4
@_hidden_aes_128_cbc = common dso_local global i32* null, align 8
@EVP_CIPH_FLAG_DEFAULT_ASN1 = common dso_local global i32 0, align 4
@EVP_CIPH_CBC_MODE = common dso_local global i32 0, align 4
@EVP_CIPH_FLAG_PIPELINE = common dso_local global i32 0, align 4
@dasync_aes128_init_key = common dso_local global i32 0, align 4
@dasync_aes128_cbc_cipher = common dso_local global i32 0, align 4
@dasync_aes128_cbc_cleanup = common dso_local global i32 0, align 4
@dasync_aes128_cbc_ctrl = common dso_local global i32 0, align 4
@NID_aes_128_cbc_hmac_sha1 = common dso_local global i32 0, align 4
@_hidden_aes_128_cbc_hmac_sha1 = common dso_local global i32* null, align 8
@EVP_CIPH_FLAG_AEAD_CIPHER = common dso_local global i32 0, align 4
@dasync_aes128_cbc_hmac_sha1_init_key = common dso_local global i32 0, align 4
@dasync_aes128_cbc_hmac_sha1_cipher = common dso_local global i32 0, align 4
@dasync_aes128_cbc_hmac_sha1_cleanup = common dso_local global i32 0, align 4
@dasync_aes128_cbc_hmac_sha1_ctrl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @bind_dasync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bind_dasync(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %4 = call i32* @RSA_meth_new(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 0)
  store i32* %4, i32** @dasync_rsa_method, align 8
  %5 = icmp eq i32* %4, null
  br i1 %5, label %46, label %6

6:                                                ; preds = %1
  %7 = load i32*, i32** @dasync_rsa_method, align 8
  %8 = load i32, i32* @dasync_pub_enc, align 4
  %9 = call i64 @RSA_meth_set_pub_enc(i32* %7, i32 %8)
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %46, label %11

11:                                               ; preds = %6
  %12 = load i32*, i32** @dasync_rsa_method, align 8
  %13 = load i32, i32* @dasync_pub_dec, align 4
  %14 = call i64 @RSA_meth_set_pub_dec(i32* %12, i32 %13)
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %46, label %16

16:                                               ; preds = %11
  %17 = load i32*, i32** @dasync_rsa_method, align 8
  %18 = load i32, i32* @dasync_rsa_priv_enc, align 4
  %19 = call i64 @RSA_meth_set_priv_enc(i32* %17, i32 %18)
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %46, label %21

21:                                               ; preds = %16
  %22 = load i32*, i32** @dasync_rsa_method, align 8
  %23 = load i32, i32* @dasync_rsa_priv_dec, align 4
  %24 = call i64 @RSA_meth_set_priv_dec(i32* %22, i32 %23)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %46, label %26

26:                                               ; preds = %21
  %27 = load i32*, i32** @dasync_rsa_method, align 8
  %28 = load i32, i32* @dasync_rsa_mod_exp, align 4
  %29 = call i64 @RSA_meth_set_mod_exp(i32* %27, i32 %28)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %46, label %31

31:                                               ; preds = %26
  %32 = load i32*, i32** @dasync_rsa_method, align 8
  %33 = load i32, i32* @BN_mod_exp_mont, align 4
  %34 = call i64 @RSA_meth_set_bn_mod_exp(i32* %32, i32 %33)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %46, label %36

36:                                               ; preds = %31
  %37 = load i32*, i32** @dasync_rsa_method, align 8
  %38 = load i32, i32* @dasync_rsa_init, align 4
  %39 = call i64 @RSA_meth_set_init(i32* %37, i32 %38)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %36
  %42 = load i32*, i32** @dasync_rsa_method, align 8
  %43 = load i32, i32* @dasync_rsa_finish, align 4
  %44 = call i64 @RSA_meth_set_finish(i32* %42, i32 %43)
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %41, %36, %31, %26, %21, %16, %11, %6, %1
  %47 = load i32, i32* @DASYNC_F_BIND_DASYNC, align 4
  %48 = load i32, i32* @DASYNC_R_INIT_FAILED, align 4
  %49 = call i32 @DASYNCerr(i32 %47, i32 %48)
  store i32 0, i32* %2, align 4
  br label %231

50:                                               ; preds = %41
  %51 = call i32 (...) @ERR_load_DASYNC_strings()
  %52 = load i32*, i32** %3, align 8
  %53 = load i32, i32* @engine_dasync_id, align 4
  %54 = call i32 @ENGINE_set_id(i32* %52, i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %91

56:                                               ; preds = %50
  %57 = load i32*, i32** %3, align 8
  %58 = load i32, i32* @engine_dasync_name, align 4
  %59 = call i32 @ENGINE_set_name(i32* %57, i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %91

61:                                               ; preds = %56
  %62 = load i32*, i32** %3, align 8
  %63 = load i32*, i32** @dasync_rsa_method, align 8
  %64 = call i32 @ENGINE_set_RSA(i32* %62, i32* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %91

66:                                               ; preds = %61
  %67 = load i32*, i32** %3, align 8
  %68 = load i32, i32* @dasync_digests, align 4
  %69 = call i32 @ENGINE_set_digests(i32* %67, i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %91

71:                                               ; preds = %66
  %72 = load i32*, i32** %3, align 8
  %73 = load i32, i32* @dasync_ciphers, align 4
  %74 = call i32 @ENGINE_set_ciphers(i32* %72, i32 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %91

76:                                               ; preds = %71
  %77 = load i32*, i32** %3, align 8
  %78 = load i32, i32* @dasync_destroy, align 4
  %79 = call i32 @ENGINE_set_destroy_function(i32* %77, i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %91

81:                                               ; preds = %76
  %82 = load i32*, i32** %3, align 8
  %83 = load i32, i32* @dasync_init, align 4
  %84 = call i32 @ENGINE_set_init_function(i32* %82, i32 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %81
  %87 = load i32*, i32** %3, align 8
  %88 = load i32, i32* @dasync_finish, align 4
  %89 = call i32 @ENGINE_set_finish_function(i32* %87, i32 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %95, label %91

91:                                               ; preds = %86, %81, %76, %71, %66, %61, %56, %50
  %92 = load i32, i32* @DASYNC_F_BIND_DASYNC, align 4
  %93 = load i32, i32* @DASYNC_R_INIT_FAILED, align 4
  %94 = call i32 @DASYNCerr(i32 %92, i32 %93)
  store i32 0, i32* %2, align 4
  br label %231

95:                                               ; preds = %86
  %96 = load i32, i32* @NID_sha1, align 4
  %97 = load i32, i32* @NID_sha1WithRSAEncryption, align 4
  %98 = call i32* @EVP_MD_meth_new(i32 %96, i32 %97)
  store i32* %98, i32** @_hidden_sha1_md, align 8
  %99 = load i32*, i32** @_hidden_sha1_md, align 8
  %100 = icmp eq i32* %99, null
  br i1 %100, label %135, label %101

101:                                              ; preds = %95
  %102 = load i32*, i32** @_hidden_sha1_md, align 8
  %103 = load i32, i32* @SHA_DIGEST_LENGTH, align 4
  %104 = call i32 @EVP_MD_meth_set_result_size(i32* %102, i32 %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %135

106:                                              ; preds = %101
  %107 = load i32*, i32** @_hidden_sha1_md, align 8
  %108 = load i32, i32* @SHA_CBLOCK, align 4
  %109 = call i32 @EVP_MD_meth_set_input_blocksize(i32* %107, i32 %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %135

111:                                              ; preds = %106
  %112 = load i32*, i32** @_hidden_sha1_md, align 8
  %113 = call i32 @EVP_MD_meth_set_app_datasize(i32* %112, i32 12)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %135

115:                                              ; preds = %111
  %116 = load i32*, i32** @_hidden_sha1_md, align 8
  %117 = load i32, i32* @EVP_MD_FLAG_DIGALGID_ABSENT, align 4
  %118 = call i32 @EVP_MD_meth_set_flags(i32* %116, i32 %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %135

120:                                              ; preds = %115
  %121 = load i32*, i32** @_hidden_sha1_md, align 8
  %122 = load i32, i32* @dasync_sha1_init, align 4
  %123 = call i32 @EVP_MD_meth_set_init(i32* %121, i32 %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %135

125:                                              ; preds = %120
  %126 = load i32*, i32** @_hidden_sha1_md, align 8
  %127 = load i32, i32* @dasync_sha1_update, align 4
  %128 = call i32 @EVP_MD_meth_set_update(i32* %126, i32 %127)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %125
  %131 = load i32*, i32** @_hidden_sha1_md, align 8
  %132 = load i32, i32* @dasync_sha1_final, align 4
  %133 = call i32 @EVP_MD_meth_set_final(i32* %131, i32 %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %138, label %135

135:                                              ; preds = %130, %125, %120, %115, %111, %106, %101, %95
  %136 = load i32*, i32** @_hidden_sha1_md, align 8
  %137 = call i32 @EVP_MD_meth_free(i32* %136)
  store i32* null, i32** @_hidden_sha1_md, align 8
  br label %138

138:                                              ; preds = %135, %130
  %139 = load i32, i32* @NID_aes_128_cbc, align 4
  %140 = call i32* @EVP_CIPHER_meth_new(i32 %139, i32 16, i32 16)
  store i32* %140, i32** @_hidden_aes_128_cbc, align 8
  %141 = load i32*, i32** @_hidden_aes_128_cbc, align 8
  %142 = icmp eq i32* %141, null
  br i1 %142, label %180, label %143

143:                                              ; preds = %138
  %144 = load i32*, i32** @_hidden_aes_128_cbc, align 8
  %145 = call i32 @EVP_CIPHER_meth_set_iv_length(i32* %144, i32 16)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %180

147:                                              ; preds = %143
  %148 = load i32*, i32** @_hidden_aes_128_cbc, align 8
  %149 = load i32, i32* @EVP_CIPH_FLAG_DEFAULT_ASN1, align 4
  %150 = load i32, i32* @EVP_CIPH_CBC_MODE, align 4
  %151 = or i32 %149, %150
  %152 = load i32, i32* @EVP_CIPH_FLAG_PIPELINE, align 4
  %153 = or i32 %151, %152
  %154 = call i32 @EVP_CIPHER_meth_set_flags(i32* %148, i32 %153)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %180

156:                                              ; preds = %147
  %157 = load i32*, i32** @_hidden_aes_128_cbc, align 8
  %158 = load i32, i32* @dasync_aes128_init_key, align 4
  %159 = call i32 @EVP_CIPHER_meth_set_init(i32* %157, i32 %158)
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %180

161:                                              ; preds = %156
  %162 = load i32*, i32** @_hidden_aes_128_cbc, align 8
  %163 = load i32, i32* @dasync_aes128_cbc_cipher, align 4
  %164 = call i32 @EVP_CIPHER_meth_set_do_cipher(i32* %162, i32 %163)
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %180

166:                                              ; preds = %161
  %167 = load i32*, i32** @_hidden_aes_128_cbc, align 8
  %168 = load i32, i32* @dasync_aes128_cbc_cleanup, align 4
  %169 = call i32 @EVP_CIPHER_meth_set_cleanup(i32* %167, i32 %168)
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %180

171:                                              ; preds = %166
  %172 = load i32*, i32** @_hidden_aes_128_cbc, align 8
  %173 = load i32, i32* @dasync_aes128_cbc_ctrl, align 4
  %174 = call i32 @EVP_CIPHER_meth_set_ctrl(i32* %172, i32 %173)
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %180

176:                                              ; preds = %171
  %177 = load i32*, i32** @_hidden_aes_128_cbc, align 8
  %178 = call i32 @EVP_CIPHER_meth_set_impl_ctx_size(i32* %177, i32 4)
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %183, label %180

180:                                              ; preds = %176, %171, %166, %161, %156, %147, %143, %138
  %181 = load i32*, i32** @_hidden_aes_128_cbc, align 8
  %182 = call i32 @EVP_CIPHER_meth_free(i32* %181)
  store i32* null, i32** @_hidden_aes_128_cbc, align 8
  br label %183

183:                                              ; preds = %180, %176
  %184 = load i32, i32* @NID_aes_128_cbc_hmac_sha1, align 4
  %185 = call i32* @EVP_CIPHER_meth_new(i32 %184, i32 16, i32 16)
  store i32* %185, i32** @_hidden_aes_128_cbc_hmac_sha1, align 8
  %186 = load i32*, i32** @_hidden_aes_128_cbc_hmac_sha1, align 8
  %187 = icmp eq i32* %186, null
  br i1 %187, label %227, label %188

188:                                              ; preds = %183
  %189 = load i32*, i32** @_hidden_aes_128_cbc_hmac_sha1, align 8
  %190 = call i32 @EVP_CIPHER_meth_set_iv_length(i32* %189, i32 16)
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %227

192:                                              ; preds = %188
  %193 = load i32*, i32** @_hidden_aes_128_cbc_hmac_sha1, align 8
  %194 = load i32, i32* @EVP_CIPH_CBC_MODE, align 4
  %195 = load i32, i32* @EVP_CIPH_FLAG_DEFAULT_ASN1, align 4
  %196 = or i32 %194, %195
  %197 = load i32, i32* @EVP_CIPH_FLAG_AEAD_CIPHER, align 4
  %198 = or i32 %196, %197
  %199 = load i32, i32* @EVP_CIPH_FLAG_PIPELINE, align 4
  %200 = or i32 %198, %199
  %201 = call i32 @EVP_CIPHER_meth_set_flags(i32* %193, i32 %200)
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %227

203:                                              ; preds = %192
  %204 = load i32*, i32** @_hidden_aes_128_cbc_hmac_sha1, align 8
  %205 = load i32, i32* @dasync_aes128_cbc_hmac_sha1_init_key, align 4
  %206 = call i32 @EVP_CIPHER_meth_set_init(i32* %204, i32 %205)
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %227

208:                                              ; preds = %203
  %209 = load i32*, i32** @_hidden_aes_128_cbc_hmac_sha1, align 8
  %210 = load i32, i32* @dasync_aes128_cbc_hmac_sha1_cipher, align 4
  %211 = call i32 @EVP_CIPHER_meth_set_do_cipher(i32* %209, i32 %210)
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %227

213:                                              ; preds = %208
  %214 = load i32*, i32** @_hidden_aes_128_cbc_hmac_sha1, align 8
  %215 = load i32, i32* @dasync_aes128_cbc_hmac_sha1_cleanup, align 4
  %216 = call i32 @EVP_CIPHER_meth_set_cleanup(i32* %214, i32 %215)
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %227

218:                                              ; preds = %213
  %219 = load i32*, i32** @_hidden_aes_128_cbc_hmac_sha1, align 8
  %220 = load i32, i32* @dasync_aes128_cbc_hmac_sha1_ctrl, align 4
  %221 = call i32 @EVP_CIPHER_meth_set_ctrl(i32* %219, i32 %220)
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %227

223:                                              ; preds = %218
  %224 = load i32*, i32** @_hidden_aes_128_cbc_hmac_sha1, align 8
  %225 = call i32 @EVP_CIPHER_meth_set_impl_ctx_size(i32* %224, i32 4)
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %230, label %227

227:                                              ; preds = %223, %218, %213, %208, %203, %192, %188, %183
  %228 = load i32*, i32** @_hidden_aes_128_cbc_hmac_sha1, align 8
  %229 = call i32 @EVP_CIPHER_meth_free(i32* %228)
  store i32* null, i32** @_hidden_aes_128_cbc_hmac_sha1, align 8
  br label %230

230:                                              ; preds = %227, %223
  store i32 1, i32* %2, align 4
  br label %231

231:                                              ; preds = %230, %91, %46
  %232 = load i32, i32* %2, align 4
  ret i32 %232
}

declare dso_local i32* @RSA_meth_new(i8*, i32) #1

declare dso_local i64 @RSA_meth_set_pub_enc(i32*, i32) #1

declare dso_local i64 @RSA_meth_set_pub_dec(i32*, i32) #1

declare dso_local i64 @RSA_meth_set_priv_enc(i32*, i32) #1

declare dso_local i64 @RSA_meth_set_priv_dec(i32*, i32) #1

declare dso_local i64 @RSA_meth_set_mod_exp(i32*, i32) #1

declare dso_local i64 @RSA_meth_set_bn_mod_exp(i32*, i32) #1

declare dso_local i64 @RSA_meth_set_init(i32*, i32) #1

declare dso_local i64 @RSA_meth_set_finish(i32*, i32) #1

declare dso_local i32 @DASYNCerr(i32, i32) #1

declare dso_local i32 @ERR_load_DASYNC_strings(...) #1

declare dso_local i32 @ENGINE_set_id(i32*, i32) #1

declare dso_local i32 @ENGINE_set_name(i32*, i32) #1

declare dso_local i32 @ENGINE_set_RSA(i32*, i32*) #1

declare dso_local i32 @ENGINE_set_digests(i32*, i32) #1

declare dso_local i32 @ENGINE_set_ciphers(i32*, i32) #1

declare dso_local i32 @ENGINE_set_destroy_function(i32*, i32) #1

declare dso_local i32 @ENGINE_set_init_function(i32*, i32) #1

declare dso_local i32 @ENGINE_set_finish_function(i32*, i32) #1

declare dso_local i32* @EVP_MD_meth_new(i32, i32) #1

declare dso_local i32 @EVP_MD_meth_set_result_size(i32*, i32) #1

declare dso_local i32 @EVP_MD_meth_set_input_blocksize(i32*, i32) #1

declare dso_local i32 @EVP_MD_meth_set_app_datasize(i32*, i32) #1

declare dso_local i32 @EVP_MD_meth_set_flags(i32*, i32) #1

declare dso_local i32 @EVP_MD_meth_set_init(i32*, i32) #1

declare dso_local i32 @EVP_MD_meth_set_update(i32*, i32) #1

declare dso_local i32 @EVP_MD_meth_set_final(i32*, i32) #1

declare dso_local i32 @EVP_MD_meth_free(i32*) #1

declare dso_local i32* @EVP_CIPHER_meth_new(i32, i32, i32) #1

declare dso_local i32 @EVP_CIPHER_meth_set_iv_length(i32*, i32) #1

declare dso_local i32 @EVP_CIPHER_meth_set_flags(i32*, i32) #1

declare dso_local i32 @EVP_CIPHER_meth_set_init(i32*, i32) #1

declare dso_local i32 @EVP_CIPHER_meth_set_do_cipher(i32*, i32) #1

declare dso_local i32 @EVP_CIPHER_meth_set_cleanup(i32*, i32) #1

declare dso_local i32 @EVP_CIPHER_meth_set_ctrl(i32*, i32) #1

declare dso_local i32 @EVP_CIPHER_meth_set_impl_ctx_size(i32*, i32) #1

declare dso_local i32 @EVP_CIPHER_meth_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
