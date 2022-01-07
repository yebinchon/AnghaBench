; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_ssl_lib.c_SSL_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_ssl_lib.c_SSL_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, %struct.TYPE_15__, i32, i32, i32, %struct.TYPE_14__*, i32, i32, i32, i32, %struct.TYPE_16__*, %struct.TYPE_16__*, i32, i32, %struct.TYPE_16__*, i32, %struct.TYPE_16__*, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_16__*, %struct.TYPE_16__*, %struct.TYPE_16__*, %struct.TYPE_13__, %struct.TYPE_16__*, %struct.TYPE_16__*, %struct.TYPE_16__*, %struct.TYPE_16__*, %struct.TYPE_16__*, %struct.TYPE_16__* }
%struct.TYPE_13__ = type { %struct.TYPE_16__*, i32, i32 }
%struct.TYPE_14__ = type { i32 (%struct.TYPE_16__*)* }

@.str = private unnamed_addr constant [4 x i8] c"SSL\00", align 1
@CRYPTO_EX_INDEX_SSL = common dso_local global i32 0, align 4
@X509_EXTENSION_free = common dso_local global i32 0, align 4
@OCSP_RESPID_free = common dso_local global i32 0, align 4
@X509_NAME_free = common dso_local global i32 0, align 4
@X509_free = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SSL_free(%struct.TYPE_16__* %0) #0 {
  %2 = alloca %struct.TYPE_16__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %2, align 8
  %4 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %5 = icmp eq %struct.TYPE_16__* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %230

7:                                                ; preds = %1
  %8 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 30
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @CRYPTO_DOWN_REF(i32* %9, i32* %3, i32 %12)
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %15 = call i32 @REF_PRINT_COUNT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %struct.TYPE_16__* %14)
  %16 = load i32, i32* %3, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %7
  br label %230

19:                                               ; preds = %7
  %20 = load i32, i32* %3, align 4
  %21 = icmp slt i32 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i32 @REF_ASSERT_ISNT(i32 %22)
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 29
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @X509_VERIFY_PARAM_free(i32 %26)
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 28
  %30 = call i32 @dane_final(i32* %29)
  %31 = load i32, i32* @CRYPTO_EX_INDEX_SSL, align 4
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 27
  %35 = call i32 @CRYPTO_free_ex_data(i32 %31, %struct.TYPE_16__* %32, i32* %34)
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %37 = call i32 @ssl_free_wbio_buffer(%struct.TYPE_16__* %36)
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 26
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @BIO_free_all(i32 %40)
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 25
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @BIO_free_all(i32 %44)
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 24
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @BUF_MEM_free(i32 %48)
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 23
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @sk_SSL_CIPHER_free(i32 %52)
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 22
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @sk_SSL_CIPHER_free(i32 %56)
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 21
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @sk_SSL_CIPHER_free(i32 %60)
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 20
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @sk_SSL_CIPHER_free(i32 %64)
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 19
  %68 = load i32*, i32** %67, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %77

70:                                               ; preds = %19
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %72 = call i32 @ssl_clear_bad_session(%struct.TYPE_16__* %71)
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 19
  %75 = load i32*, i32** %74, align 8
  %76 = call i32 @SSL_SESSION_free(i32* %75)
  br label %77

77:                                               ; preds = %70, %19
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 18
  %80 = load i32*, i32** %79, align 8
  %81 = call i32 @SSL_SESSION_free(i32* %80)
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 17
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %83, align 8
  %85 = call i32 @OPENSSL_free(%struct.TYPE_16__* %84)
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %87 = call i32 @clear_ciphers(%struct.TYPE_16__* %86)
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 16
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @ssl_cert_free(i32 %90)
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 15
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %93, align 8
  %95 = call i32 @OPENSSL_free(%struct.TYPE_16__* %94)
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 9
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %98, align 8
  %100 = call i32 @OPENSSL_free(%struct.TYPE_16__* %99)
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 14
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @SSL_CTX_free(i32 %103)
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 8
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %107, align 8
  %109 = call i32 @OPENSSL_free(%struct.TYPE_16__* %108)
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 7
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %112, align 8
  %114 = call i32 @OPENSSL_free(%struct.TYPE_16__* %113)
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 6
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %117, align 8
  %119 = call i32 @OPENSSL_free(%struct.TYPE_16__* %118)
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i32 0, i32 5
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %122, align 8
  %124 = call i32 @OPENSSL_free(%struct.TYPE_16__* %123)
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 3
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @X509_EXTENSION_free, align 4
  %131 = call i32 @sk_X509_EXTENSION_pop_free(i32 %129, i32 %130)
  %132 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %133, i32 0, i32 3
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @OCSP_RESPID_free, align 4
  %138 = call i32 @sk_OCSP_RESPID_pop_free(i32 %136, i32 %137)
  %139 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %139, i32 0, i32 13
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @SCT_LIST_free(i32 %141)
  %143 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %144, i32 0, i32 4
  %146 = load %struct.TYPE_16__*, %struct.TYPE_16__** %145, align 8
  %147 = call i32 @OPENSSL_free(%struct.TYPE_16__* %146)
  %148 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %149 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %149, i32 0, i32 3
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 0
  %152 = load %struct.TYPE_16__*, %struct.TYPE_16__** %151, align 8
  %153 = call i32 @OPENSSL_free(%struct.TYPE_16__* %152)
  %154 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %154, i32 0, i32 2
  %156 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %155, i32 0, i32 2
  %157 = load %struct.TYPE_16__*, %struct.TYPE_16__** %156, align 8
  %158 = call i32 @OPENSSL_free(%struct.TYPE_16__* %157)
  %159 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %160 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %159, i32 0, i32 2
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %160, i32 0, i32 1
  %162 = load %struct.TYPE_16__*, %struct.TYPE_16__** %161, align 8
  %163 = call i32 @OPENSSL_free(%struct.TYPE_16__* %162)
  %164 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %165 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %164, i32 0, i32 12
  %166 = load %struct.TYPE_16__*, %struct.TYPE_16__** %165, align 8
  %167 = call i32 @OPENSSL_free(%struct.TYPE_16__* %166)
  %168 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %169 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %168, i32 0, i32 11
  %170 = load %struct.TYPE_16__*, %struct.TYPE_16__** %169, align 8
  %171 = call i32 @OPENSSL_free(%struct.TYPE_16__* %170)
  %172 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %173 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %172, i32 0, i32 10
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @EVP_MD_CTX_free(i32 %174)
  %176 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %177 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %176, i32 0, i32 9
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* @X509_NAME_free, align 4
  %180 = call i32 @sk_X509_NAME_pop_free(i32 %178, i32 %179)
  %181 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %182 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %181, i32 0, i32 8
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* @X509_NAME_free, align 4
  %185 = call i32 @sk_X509_NAME_pop_free(i32 %183, i32 %184)
  %186 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %187 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %186, i32 0, i32 7
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* @X509_free, align 4
  %190 = call i32 @sk_X509_pop_free(i32 %188, i32 %189)
  %191 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %192 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %191, i32 0, i32 6
  %193 = load %struct.TYPE_14__*, %struct.TYPE_14__** %192, align 8
  %194 = icmp ne %struct.TYPE_14__* %193, null
  br i1 %194, label %195, label %203

195:                                              ; preds = %77
  %196 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %197 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %196, i32 0, i32 6
  %198 = load %struct.TYPE_14__*, %struct.TYPE_14__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %198, i32 0, i32 0
  %200 = load i32 (%struct.TYPE_16__*)*, i32 (%struct.TYPE_16__*)** %199, align 8
  %201 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %202 = call i32 %200(%struct.TYPE_16__* %201)
  br label %203

203:                                              ; preds = %195, %77
  %204 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %205 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %204, i32 0, i32 5
  %206 = call i32 @RECORD_LAYER_release(i32* %205)
  %207 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %208 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %207, i32 0, i32 4
  %209 = load i32, i32* %208, align 4
  %210 = call i32 @SSL_CTX_free(i32 %209)
  %211 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %212 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %211, i32 0, i32 3
  %213 = load i32, i32* %212, align 8
  %214 = call i32 @ASYNC_WAIT_CTX_free(i32 %213)
  %215 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %216 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %215, i32 0, i32 2
  %217 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %216, i32 0, i32 0
  %218 = load %struct.TYPE_16__*, %struct.TYPE_16__** %217, align 8
  %219 = call i32 @OPENSSL_free(%struct.TYPE_16__* %218)
  %220 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %221 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = call i32 @sk_SRTP_PROTECTION_PROFILE_free(i32 %222)
  %224 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %225 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = call i32 @CRYPTO_THREAD_lock_free(i32 %226)
  %228 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %229 = call i32 @OPENSSL_free(%struct.TYPE_16__* %228)
  br label %230

230:                                              ; preds = %203, %18, %6
  ret void
}

declare dso_local i32 @CRYPTO_DOWN_REF(i32*, i32*, i32) #1

declare dso_local i32 @REF_PRINT_COUNT(i8*, %struct.TYPE_16__*) #1

declare dso_local i32 @REF_ASSERT_ISNT(i32) #1

declare dso_local i32 @X509_VERIFY_PARAM_free(i32) #1

declare dso_local i32 @dane_final(i32*) #1

declare dso_local i32 @CRYPTO_free_ex_data(i32, %struct.TYPE_16__*, i32*) #1

declare dso_local i32 @ssl_free_wbio_buffer(%struct.TYPE_16__*) #1

declare dso_local i32 @BIO_free_all(i32) #1

declare dso_local i32 @BUF_MEM_free(i32) #1

declare dso_local i32 @sk_SSL_CIPHER_free(i32) #1

declare dso_local i32 @ssl_clear_bad_session(%struct.TYPE_16__*) #1

declare dso_local i32 @SSL_SESSION_free(i32*) #1

declare dso_local i32 @OPENSSL_free(%struct.TYPE_16__*) #1

declare dso_local i32 @clear_ciphers(%struct.TYPE_16__*) #1

declare dso_local i32 @ssl_cert_free(i32) #1

declare dso_local i32 @SSL_CTX_free(i32) #1

declare dso_local i32 @sk_X509_EXTENSION_pop_free(i32, i32) #1

declare dso_local i32 @sk_OCSP_RESPID_pop_free(i32, i32) #1

declare dso_local i32 @SCT_LIST_free(i32) #1

declare dso_local i32 @EVP_MD_CTX_free(i32) #1

declare dso_local i32 @sk_X509_NAME_pop_free(i32, i32) #1

declare dso_local i32 @sk_X509_pop_free(i32, i32) #1

declare dso_local i32 @RECORD_LAYER_release(i32*) #1

declare dso_local i32 @ASYNC_WAIT_CTX_free(i32) #1

declare dso_local i32 @sk_SRTP_PROTECTION_PROFILE_free(i32) #1

declare dso_local i32 @CRYPTO_THREAD_lock_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
