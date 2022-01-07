; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_ssl_lib.c_SSL_CTX_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_ssl_lib.c_SSL_CTX_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_9__, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_10__* }

@.str = private unnamed_addr constant [8 x i8] c"SSL_CTX\00", align 1
@CRYPTO_EX_INDEX_SSL_CTX = common dso_local global i32 0, align 4
@X509_NAME_free = common dso_local global i32 0, align 4
@X509_free = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SSL_CTX_free(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %4 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %5 = icmp eq %struct.TYPE_10__* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %125

7:                                                ; preds = %1
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 18
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @CRYPTO_DOWN_REF(i32* %9, i32* %3, i32 %12)
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %15 = call i32 @REF_PRINT_COUNT(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.TYPE_10__* %14)
  %16 = load i32, i32* %3, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %7
  br label %125

19:                                               ; preds = %7
  %20 = load i32, i32* %3, align 4
  %21 = icmp slt i32 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i32 @REF_ASSERT_ISNT(i32 %22)
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 17
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @X509_VERIFY_PARAM_free(i32 %26)
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 16
  %30 = call i32 @dane_ctx_final(i32* %29)
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 14
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %19
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %37 = call i32 @SSL_CTX_flush_sessions(%struct.TYPE_10__* %36, i32 0)
  br label %38

38:                                               ; preds = %35, %19
  %39 = load i32, i32* @CRYPTO_EX_INDEX_SSL_CTX, align 4
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 15
  %43 = call i32 @CRYPTO_free_ex_data(i32 %39, %struct.TYPE_10__* %40, i32* %42)
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 14
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @lh_SSL_SESSION_free(i32* %46)
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 13
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @X509_STORE_free(i32 %50)
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 12
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @CTLOG_STORE_free(i32 %54)
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 11
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @sk_SSL_CIPHER_free(i32 %58)
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 10
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @sk_SSL_CIPHER_free(i32 %62)
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 9
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @sk_SSL_CIPHER_free(i32 %66)
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 8
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @ssl_cert_free(i32 %70)
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 7
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @X509_NAME_free, align 4
  %76 = call i32 @sk_X509_NAME_pop_free(i32 %74, i32 %75)
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 6
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @X509_NAME_free, align 4
  %81 = call i32 @sk_X509_NAME_pop_free(i32 %79, i32 %80)
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 5
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @X509_free, align 4
  %86 = call i32 @sk_X509_pop_free(i32 %84, i32 %85)
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 4
  store i32* null, i32** %88, align 8
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @sk_SRTP_PROTECTION_PROFILE_free(i32 %91)
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %94 = call i32 @SSL_CTX_SRP_CTX_free(%struct.TYPE_10__* %93)
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @ENGINE_finish(i32 %97)
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 3
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %101, align 8
  %103 = call i32 @OPENSSL_free(%struct.TYPE_10__* %102)
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 2
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %106, align 8
  %108 = call i32 @OPENSSL_free(%struct.TYPE_10__* %107)
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %111, align 8
  %113 = call i32 @OPENSSL_free(%struct.TYPE_10__* %112)
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @OPENSSL_secure_free(i32 %117)
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @CRYPTO_THREAD_lock_free(i32 %121)
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %124 = call i32 @OPENSSL_free(%struct.TYPE_10__* %123)
  br label %125

125:                                              ; preds = %38, %18, %6
  ret void
}

declare dso_local i32 @CRYPTO_DOWN_REF(i32*, i32*, i32) #1

declare dso_local i32 @REF_PRINT_COUNT(i8*, %struct.TYPE_10__*) #1

declare dso_local i32 @REF_ASSERT_ISNT(i32) #1

declare dso_local i32 @X509_VERIFY_PARAM_free(i32) #1

declare dso_local i32 @dane_ctx_final(i32*) #1

declare dso_local i32 @SSL_CTX_flush_sessions(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @CRYPTO_free_ex_data(i32, %struct.TYPE_10__*, i32*) #1

declare dso_local i32 @lh_SSL_SESSION_free(i32*) #1

declare dso_local i32 @X509_STORE_free(i32) #1

declare dso_local i32 @CTLOG_STORE_free(i32) #1

declare dso_local i32 @sk_SSL_CIPHER_free(i32) #1

declare dso_local i32 @ssl_cert_free(i32) #1

declare dso_local i32 @sk_X509_NAME_pop_free(i32, i32) #1

declare dso_local i32 @sk_X509_pop_free(i32, i32) #1

declare dso_local i32 @sk_SRTP_PROTECTION_PROFILE_free(i32) #1

declare dso_local i32 @SSL_CTX_SRP_CTX_free(%struct.TYPE_10__*) #1

declare dso_local i32 @ENGINE_finish(i32) #1

declare dso_local i32 @OPENSSL_free(%struct.TYPE_10__*) #1

declare dso_local i32 @OPENSSL_secure_free(i32) #1

declare dso_local i32 @CRYPTO_THREAD_lock_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
