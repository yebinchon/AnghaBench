; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/rsa/extr_rsa_sign.c_int_rsa_verify.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/rsa/extr_rsa_sign.c_int_rsa_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RSA_F_INT_RSA_VERIFY = common dso_local global i32 0, align 4
@RSA_R_WRONG_SIGNATURE_LENGTH = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@RSA_PKCS1_PADDING = common dso_local global i32 0, align 4
@NID_md5_sha1 = common dso_local global i32 0, align 4
@SSL_SIG_LENGTH = common dso_local global i32 0, align 4
@RSA_R_BAD_SIGNATURE = common dso_local global i32 0, align 4
@RSA_R_INVALID_MESSAGE_LENGTH = common dso_local global i32 0, align 4
@NID_mdc2 = common dso_local global i32 0, align 4
@RSA_R_UNKNOWN_ALGORITHM_TYPE = common dso_local global i32 0, align 4
@RSA_R_INVALID_DIGEST_LENGTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @int_rsa_verify(i32 %0, i8* %1, i32 %2, i8* %3, i64* %4, i8* %5, i64 %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32*, align 8
  store i32 %0, i32* %10, align 4
  store i8* %1, i8** %11, align 8
  store i32 %2, i32* %12, align 4
  store i8* %3, i8** %13, align 8
  store i64* %4, i64** %14, align 8
  store i8* %5, i8** %15, align 8
  store i64 %6, i64* %16, align 8
  store i32* %7, i32** %17, align 8
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i8* null, i8** %21, align 8
  store i8* null, i8** %22, align 8
  %24 = load i64, i64* %16, align 8
  %25 = load i32*, i32** %17, align 8
  %26 = call i64 @RSA_size(i32* %25)
  %27 = icmp ne i64 %24, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %8
  %29 = load i32, i32* @RSA_F_INT_RSA_VERIFY, align 4
  %30 = load i32, i32* @RSA_R_WRONG_SIGNATURE_LENGTH, align 4
  %31 = call i32 @RSAerr(i32 %29, i32 %30)
  store i32 0, i32* %9, align 4
  br label %219

32:                                               ; preds = %8
  %33 = load i64, i64* %16, align 8
  %34 = call i8* @OPENSSL_malloc(i64 %33)
  store i8* %34, i8** %21, align 8
  %35 = load i8*, i8** %21, align 8
  %36 = icmp eq i8* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load i32, i32* @RSA_F_INT_RSA_VERIFY, align 4
  %39 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %40 = call i32 @RSAerr(i32 %38, i32 %39)
  br label %210

41:                                               ; preds = %32
  %42 = load i64, i64* %16, align 8
  %43 = trunc i64 %42 to i32
  %44 = load i8*, i8** %15, align 8
  %45 = load i8*, i8** %21, align 8
  %46 = load i32*, i32** %17, align 8
  %47 = load i32, i32* @RSA_PKCS1_PADDING, align 4
  %48 = call i32 @RSA_public_decrypt(i32 %43, i8* %44, i8* %45, i32* %46, i32 %47)
  store i32 %48, i32* %18, align 4
  %49 = load i32, i32* %18, align 4
  %50 = icmp sle i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %41
  br label %210

52:                                               ; preds = %41
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* @NID_md5_sha1, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %95

56:                                               ; preds = %52
  %57 = load i32, i32* %18, align 4
  %58 = load i32, i32* @SSL_SIG_LENGTH, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %56
  %61 = load i32, i32* @RSA_F_INT_RSA_VERIFY, align 4
  %62 = load i32, i32* @RSA_R_BAD_SIGNATURE, align 4
  %63 = call i32 @RSAerr(i32 %61, i32 %62)
  br label %210

64:                                               ; preds = %56
  %65 = load i8*, i8** %13, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %75

67:                                               ; preds = %64
  %68 = load i8*, i8** %13, align 8
  %69 = load i8*, i8** %21, align 8
  %70 = load i32, i32* @SSL_SIG_LENGTH, align 4
  %71 = call i32 @memcpy(i8* %68, i8* %69, i32 %70)
  %72 = load i32, i32* @SSL_SIG_LENGTH, align 4
  %73 = sext i32 %72 to i64
  %74 = load i64*, i64** %14, align 8
  store i64 %73, i64* %74, align 8
  br label %94

75:                                               ; preds = %64
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* @SSL_SIG_LENGTH, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %75
  %80 = load i32, i32* @RSA_F_INT_RSA_VERIFY, align 4
  %81 = load i32, i32* @RSA_R_INVALID_MESSAGE_LENGTH, align 4
  %82 = call i32 @RSAerr(i32 %80, i32 %81)
  br label %210

83:                                               ; preds = %75
  %84 = load i8*, i8** %21, align 8
  %85 = load i8*, i8** %11, align 8
  %86 = load i32, i32* @SSL_SIG_LENGTH, align 4
  %87 = call i64 @memcmp(i8* %84, i8* %85, i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %83
  %90 = load i32, i32* @RSA_F_INT_RSA_VERIFY, align 4
  %91 = load i32, i32* @RSA_R_BAD_SIGNATURE, align 4
  %92 = call i32 @RSAerr(i32 %90, i32 %91)
  br label %210

93:                                               ; preds = %83
  br label %94

94:                                               ; preds = %93, %67
  br label %209

95:                                               ; preds = %52
  %96 = load i32, i32* %10, align 4
  %97 = load i32, i32* @NID_mdc2, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %142

99:                                               ; preds = %95
  %100 = load i32, i32* %18, align 4
  %101 = icmp eq i32 %100, 18
  br i1 %101, label %102, label %142

102:                                              ; preds = %99
  %103 = load i8*, i8** %21, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 0
  %105 = load i8, i8* %104, align 1
  %106 = zext i8 %105 to i32
  %107 = icmp eq i32 %106, 4
  br i1 %107, label %108, label %142

108:                                              ; preds = %102
  %109 = load i8*, i8** %21, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 1
  %111 = load i8, i8* %110, align 1
  %112 = zext i8 %111 to i32
  %113 = icmp eq i32 %112, 16
  br i1 %113, label %114, label %142

114:                                              ; preds = %108
  %115 = load i8*, i8** %13, align 8
  %116 = icmp ne i8* %115, null
  br i1 %116, label %117, label %123

117:                                              ; preds = %114
  %118 = load i8*, i8** %13, align 8
  %119 = load i8*, i8** %21, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 2
  %121 = call i32 @memcpy(i8* %118, i8* %120, i32 16)
  %122 = load i64*, i64** %14, align 8
  store i64 16, i64* %122, align 8
  br label %141

123:                                              ; preds = %114
  %124 = load i32, i32* %12, align 4
  %125 = icmp ne i32 %124, 16
  br i1 %125, label %126, label %130

126:                                              ; preds = %123
  %127 = load i32, i32* @RSA_F_INT_RSA_VERIFY, align 4
  %128 = load i32, i32* @RSA_R_INVALID_MESSAGE_LENGTH, align 4
  %129 = call i32 @RSAerr(i32 %127, i32 %128)
  br label %210

130:                                              ; preds = %123
  %131 = load i8*, i8** %11, align 8
  %132 = load i8*, i8** %21, align 8
  %133 = getelementptr inbounds i8, i8* %132, i64 2
  %134 = call i64 @memcmp(i8* %131, i8* %133, i32 16)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %130
  %137 = load i32, i32* @RSA_F_INT_RSA_VERIFY, align 4
  %138 = load i32, i32* @RSA_R_BAD_SIGNATURE, align 4
  %139 = call i32 @RSAerr(i32 %137, i32 %138)
  br label %210

140:                                              ; preds = %130
  br label %141

141:                                              ; preds = %140, %117
  br label %208

142:                                              ; preds = %108, %102, %99, %95
  %143 = load i8*, i8** %13, align 8
  %144 = icmp ne i8* %143, null
  br i1 %144, label %145, label %175

145:                                              ; preds = %142
  %146 = load i32, i32* %10, align 4
  %147 = call i32* @EVP_get_digestbynid(i32 %146)
  store i32* %147, i32** %23, align 8
  %148 = load i32*, i32** %23, align 8
  %149 = icmp eq i32* %148, null
  br i1 %149, label %150, label %154

150:                                              ; preds = %145
  %151 = load i32, i32* @RSA_F_INT_RSA_VERIFY, align 4
  %152 = load i32, i32* @RSA_R_UNKNOWN_ALGORITHM_TYPE, align 4
  %153 = call i32 @RSAerr(i32 %151, i32 %152)
  br label %210

154:                                              ; preds = %145
  %155 = load i32*, i32** %23, align 8
  %156 = call i32 @EVP_MD_size(i32* %155)
  store i32 %156, i32* %12, align 4
  %157 = load i32, i32* %12, align 4
  %158 = zext i32 %157 to i64
  %159 = load i32, i32* %18, align 4
  %160 = sext i32 %159 to i64
  %161 = icmp ugt i64 %158, %160
  br i1 %161, label %162, label %166

162:                                              ; preds = %154
  %163 = load i32, i32* @RSA_F_INT_RSA_VERIFY, align 4
  %164 = load i32, i32* @RSA_R_INVALID_DIGEST_LENGTH, align 4
  %165 = call i32 @RSAerr(i32 %163, i32 %164)
  br label %210

166:                                              ; preds = %154
  %167 = load i8*, i8** %21, align 8
  %168 = load i32, i32* %18, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i8, i8* %167, i64 %169
  %171 = load i32, i32* %12, align 4
  %172 = zext i32 %171 to i64
  %173 = sub i64 0, %172
  %174 = getelementptr inbounds i8, i8* %170, i64 %173
  store i8* %174, i8** %11, align 8
  br label %175

175:                                              ; preds = %166, %142
  %176 = load i32, i32* %10, align 4
  %177 = load i8*, i8** %11, align 8
  %178 = load i32, i32* %12, align 4
  %179 = call i32 @encode_pkcs1(i8** %22, i32* %20, i32 %176, i8* %177, i32 %178)
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %182, label %181

181:                                              ; preds = %175
  br label %210

182:                                              ; preds = %175
  %183 = load i32, i32* %20, align 4
  %184 = load i32, i32* %18, align 4
  %185 = icmp ne i32 %183, %184
  br i1 %185, label %192, label %186

186:                                              ; preds = %182
  %187 = load i8*, i8** %22, align 8
  %188 = load i8*, i8** %21, align 8
  %189 = load i32, i32* %20, align 4
  %190 = call i64 @memcmp(i8* %187, i8* %188, i32 %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %196

192:                                              ; preds = %186, %182
  %193 = load i32, i32* @RSA_F_INT_RSA_VERIFY, align 4
  %194 = load i32, i32* @RSA_R_BAD_SIGNATURE, align 4
  %195 = call i32 @RSAerr(i32 %193, i32 %194)
  br label %210

196:                                              ; preds = %186
  %197 = load i8*, i8** %13, align 8
  %198 = icmp ne i8* %197, null
  br i1 %198, label %199, label %207

199:                                              ; preds = %196
  %200 = load i8*, i8** %13, align 8
  %201 = load i8*, i8** %11, align 8
  %202 = load i32, i32* %12, align 4
  %203 = call i32 @memcpy(i8* %200, i8* %201, i32 %202)
  %204 = load i32, i32* %12, align 4
  %205 = zext i32 %204 to i64
  %206 = load i64*, i64** %14, align 8
  store i64 %205, i64* %206, align 8
  br label %207

207:                                              ; preds = %199, %196
  br label %208

208:                                              ; preds = %207, %141
  br label %209

209:                                              ; preds = %208, %94
  store i32 1, i32* %19, align 4
  br label %210

210:                                              ; preds = %209, %192, %181, %162, %150, %136, %126, %89, %79, %60, %51, %37
  %211 = load i8*, i8** %22, align 8
  %212 = load i32, i32* %20, align 4
  %213 = sext i32 %212 to i64
  %214 = call i32 @OPENSSL_clear_free(i8* %211, i64 %213)
  %215 = load i8*, i8** %21, align 8
  %216 = load i64, i64* %16, align 8
  %217 = call i32 @OPENSSL_clear_free(i8* %215, i64 %216)
  %218 = load i32, i32* %19, align 4
  store i32 %218, i32* %9, align 4
  br label %219

219:                                              ; preds = %210, %28
  %220 = load i32, i32* %9, align 4
  ret i32 %220
}

declare dso_local i64 @RSA_size(i32*) #1

declare dso_local i32 @RSAerr(i32, i32) #1

declare dso_local i8* @OPENSSL_malloc(i64) #1

declare dso_local i32 @RSA_public_decrypt(i32, i8*, i8*, i32*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32* @EVP_get_digestbynid(i32) #1

declare dso_local i32 @EVP_MD_size(i32*) #1

declare dso_local i32 @encode_pkcs1(i8**, i32*, i32, i8*, i32) #1

declare dso_local i32 @OPENSSL_clear_free(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
