; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_s3_enc.c_ssl3_generate_key_block.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_s3_enc.c_ssl3_generate_key_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i8*, i32 }
%struct.TYPE_6__ = type { i8*, i8* }

@SHA_DIGEST_LENGTH = common dso_local global i32 0, align 4
@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_F_SSL3_GENERATE_KEY_BLOCK = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@EVP_MD_CTX_FLAG_NON_FIPS_ALLOW = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL3_RANDOM_SIZE = common dso_local global i32 0, align 4
@MD5_DIGEST_LENGTH = common dso_local global i64 0, align 8
@os_toascii = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i8*, i32)* @ssl3_generate_key_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl3_generate_key_block(%struct.TYPE_8__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca [16 x i8], align 16
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %17 = load i32, i32* @SHA_DIGEST_LENGTH, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %10, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %11, align 8
  store i8 65, i8* %12, align 1
  store i32 0, i32* %16, align 4
  store i32 0, i32* %15, align 4
  %21 = call i32* (...) @EVP_MD_CTX_new()
  store i32* %21, i32** %7, align 8
  %22 = call i32* (...) @EVP_MD_CTX_new()
  store i32* %22, i32** %8, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %3
  %26 = load i32*, i32** %8, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %25, %3
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %30 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %31 = load i32, i32* @SSL_F_SSL3_GENERATE_KEY_BLOCK, align 4
  %32 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %33 = call i32 @SSLfatal(%struct.TYPE_8__* %29, i32 %30, i32 %31, i32 %32)
  br label %197

34:                                               ; preds = %25
  %35 = load i32*, i32** %7, align 8
  %36 = load i32, i32* @EVP_MD_CTX_FLAG_NON_FIPS_ALLOW, align 4
  %37 = call i32 @EVP_MD_CTX_set_flags(i32* %35, i32 %36)
  store i32 0, i32* %13, align 4
  br label %38

38:                                               ; preds = %188, %34
  %39 = load i32, i32* %13, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %194

42:                                               ; preds = %38
  %43 = load i32, i32* %15, align 4
  %44 = add i32 %43, 1
  store i32 %44, i32* %15, align 4
  %45 = load i32, i32* %15, align 4
  %46 = zext i32 %45 to i64
  %47 = icmp ugt i64 %46, 16
  br i1 %47, label %48, label %54

48:                                               ; preds = %42
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %50 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %51 = load i32, i32* @SSL_F_SSL3_GENERATE_KEY_BLOCK, align 4
  %52 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %53 = call i32 @SSLfatal(%struct.TYPE_8__* %49, i32 %50, i32 %51, i32 %52)
  br label %197

54:                                               ; preds = %42
  store i32 0, i32* %14, align 4
  br label %55

55:                                               ; preds = %64, %54
  %56 = load i32, i32* %14, align 4
  %57 = load i32, i32* %15, align 4
  %58 = icmp ult i32 %56, %57
  br i1 %58, label %59, label %67

59:                                               ; preds = %55
  %60 = load i8, i8* %12, align 1
  %61 = load i32, i32* %14, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 %62
  store i8 %60, i8* %63, align 1
  br label %64

64:                                               ; preds = %59
  %65 = load i32, i32* %14, align 4
  %66 = add i32 %65, 1
  store i32 %66, i32* %14, align 4
  br label %55

67:                                               ; preds = %55
  %68 = load i8, i8* %12, align 1
  %69 = add i8 %68, 1
  store i8 %69, i8* %12, align 1
  %70 = load i32*, i32** %8, align 8
  %71 = call i32 (...) @EVP_sha1()
  %72 = call i32 @EVP_DigestInit_ex(i32* %70, i32 %71, i32* null)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %142

74:                                               ; preds = %67
  %75 = load i32*, i32** %8, align 8
  %76 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %77 = load i32, i32* %15, align 4
  %78 = call i32 @EVP_DigestUpdate(i32* %75, i8* %76, i32 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %142

80:                                               ; preds = %74
  %81 = load i32*, i32** %8, align 8
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @EVP_DigestUpdate(i32* %81, i8* %86, i32 %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %142

94:                                               ; preds = %80
  %95 = load i32*, i32** %8, align 8
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 1
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8
  %101 = load i32, i32* @SSL3_RANDOM_SIZE, align 4
  %102 = call i32 @EVP_DigestUpdate(i32* %95, i8* %100, i32 %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %142

104:                                              ; preds = %94
  %105 = load i32*, i32** %8, align 8
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 1
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 1
  %110 = load i8*, i8** %109, align 8
  %111 = load i32, i32* @SSL3_RANDOM_SIZE, align 4
  %112 = call i32 @EVP_DigestUpdate(i32* %105, i8* %110, i32 %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %142

114:                                              ; preds = %104
  %115 = load i32*, i32** %8, align 8
  %116 = call i32 @EVP_DigestFinal_ex(i32* %115, i8* %20, i32* null)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %142

118:                                              ; preds = %114
  %119 = load i32*, i32** %7, align 8
  %120 = call i32 (...) @EVP_md5()
  %121 = call i32 @EVP_DigestInit_ex(i32* %119, i32 %120, i32* null)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %142

123:                                              ; preds = %118
  %124 = load i32*, i32** %7, align 8
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 0
  %129 = load i8*, i8** %128, align 8
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @EVP_DigestUpdate(i32* %124, i8* %129, i32 %134)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %142

137:                                              ; preds = %123
  %138 = load i32*, i32** %7, align 8
  %139 = load i32, i32* @SHA_DIGEST_LENGTH, align 4
  %140 = call i32 @EVP_DigestUpdate(i32* %138, i8* %20, i32 %139)
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %148, label %142

142:                                              ; preds = %137, %123, %118, %114, %104, %94, %80, %74, %67
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %144 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %145 = load i32, i32* @SSL_F_SSL3_GENERATE_KEY_BLOCK, align 4
  %146 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %147 = call i32 @SSLfatal(%struct.TYPE_8__* %143, i32 %144, i32 %145, i32 %146)
  br label %197

148:                                              ; preds = %137
  %149 = load i32, i32* %13, align 4
  %150 = zext i32 %149 to i64
  %151 = load i64, i64* @MD5_DIGEST_LENGTH, align 8
  %152 = add nsw i64 %150, %151
  %153 = trunc i64 %152 to i32
  %154 = load i32, i32* %6, align 4
  %155 = icmp sgt i32 %153, %154
  br i1 %155, label %156, label %172

156:                                              ; preds = %148
  %157 = load i32*, i32** %7, align 8
  %158 = call i32 @EVP_DigestFinal_ex(i32* %157, i8* %20, i32* null)
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %166, label %160

160:                                              ; preds = %156
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %162 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %163 = load i32, i32* @SSL_F_SSL3_GENERATE_KEY_BLOCK, align 4
  %164 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %165 = call i32 @SSLfatal(%struct.TYPE_8__* %161, i32 %162, i32 %163, i32 %164)
  br label %197

166:                                              ; preds = %156
  %167 = load i8*, i8** %5, align 8
  %168 = load i32, i32* %6, align 4
  %169 = load i32, i32* %13, align 4
  %170 = sub i32 %168, %169
  %171 = call i32 @memcpy(i8* %167, i8* %20, i32 %170)
  br label %184

172:                                              ; preds = %148
  %173 = load i32*, i32** %7, align 8
  %174 = load i8*, i8** %5, align 8
  %175 = call i32 @EVP_DigestFinal_ex(i32* %173, i8* %174, i32* null)
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %183, label %177

177:                                              ; preds = %172
  %178 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %179 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %180 = load i32, i32* @SSL_F_SSL3_GENERATE_KEY_BLOCK, align 4
  %181 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %182 = call i32 @SSLfatal(%struct.TYPE_8__* %178, i32 %179, i32 %180, i32 %181)
  br label %197

183:                                              ; preds = %172
  br label %184

184:                                              ; preds = %183, %166
  %185 = load i64, i64* @MD5_DIGEST_LENGTH, align 8
  %186 = load i8*, i8** %5, align 8
  %187 = getelementptr inbounds i8, i8* %186, i64 %185
  store i8* %187, i8** %5, align 8
  br label %188

188:                                              ; preds = %184
  %189 = load i64, i64* @MD5_DIGEST_LENGTH, align 8
  %190 = load i32, i32* %13, align 4
  %191 = zext i32 %190 to i64
  %192 = add nsw i64 %191, %189
  %193 = trunc i64 %192 to i32
  store i32 %193, i32* %13, align 4
  br label %38

194:                                              ; preds = %38
  %195 = trunc i64 %18 to i32
  %196 = call i32 @OPENSSL_cleanse(i8* %20, i32 %195)
  store i32 1, i32* %16, align 4
  br label %197

197:                                              ; preds = %194, %177, %160, %142, %48, %28
  %198 = load i32*, i32** %7, align 8
  %199 = call i32 @EVP_MD_CTX_free(i32* %198)
  %200 = load i32*, i32** %8, align 8
  %201 = call i32 @EVP_MD_CTX_free(i32* %200)
  %202 = load i32, i32* %16, align 4
  %203 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %203)
  ret i32 %202
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @EVP_MD_CTX_new(...) #2

declare dso_local i32 @SSLfatal(%struct.TYPE_8__*, i32, i32, i32) #2

declare dso_local i32 @EVP_MD_CTX_set_flags(i32*, i32) #2

declare dso_local i32 @EVP_DigestInit_ex(i32*, i32, i32*) #2

declare dso_local i32 @EVP_sha1(...) #2

declare dso_local i32 @EVP_DigestUpdate(i32*, i8*, i32) #2

declare dso_local i32 @EVP_DigestFinal_ex(i32*, i8*, i32*) #2

declare dso_local i32 @EVP_md5(...) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @OPENSSL_cleanse(i8*, i32) #2

declare dso_local i32 @EVP_MD_CTX_free(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
