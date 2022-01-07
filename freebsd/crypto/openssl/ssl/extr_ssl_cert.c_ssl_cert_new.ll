; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_ssl_cert.c_ssl_cert_new.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_ssl_cert.c_ssl_cert_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32*, i32*, i32, i32, i32*, i32* }

@SSL_F_SSL_CERT_NEW = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@SSL_PKEY_RSA = common dso_local global i64 0, align 8
@ssl_security_default_callback = common dso_local global i32 0, align 4
@OPENSSL_TLS_SECURITY_LEVEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @ssl_cert_new() #0 {
  %1 = alloca %struct.TYPE_5__*, align 8
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = call %struct.TYPE_5__* @OPENSSL_zalloc(i32 48)
  store %struct.TYPE_5__* %3, %struct.TYPE_5__** %2, align 8
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %5 = icmp eq %struct.TYPE_5__* %4, null
  br i1 %5, label %6, label %10

6:                                                ; preds = %0
  %7 = load i32, i32* @SSL_F_SSL_CERT_NEW, align 4
  %8 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %9 = call i32 @SSLerr(i32 %7, i32 %8)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %1, align 8
  br label %43

10:                                               ; preds = %0
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 5
  %13 = load i32*, i32** %12, align 8
  %14 = load i64, i64* @SSL_PKEY_RSA, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 6
  store i32* %15, i32** %17, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  store i32 1, i32* %19, align 8
  %20 = load i32, i32* @ssl_security_default_callback, align 4
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 4
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @OPENSSL_TLS_SECURITY_LEVEL, align 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 2
  store i32* null, i32** %27, align 8
  %28 = call i32* (...) @CRYPTO_THREAD_lock_new()
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  store i32* %28, i32** %30, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %10
  %36 = load i32, i32* @SSL_F_SSL_CERT_NEW, align 4
  %37 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %38 = call i32 @SSLerr(i32 %36, i32 %37)
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %40 = call i32 @OPENSSL_free(%struct.TYPE_5__* %39)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %1, align 8
  br label %43

41:                                               ; preds = %10
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  store %struct.TYPE_5__* %42, %struct.TYPE_5__** %1, align 8
  br label %43

43:                                               ; preds = %41, %35, %6
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  ret %struct.TYPE_5__* %44
}

declare dso_local %struct.TYPE_5__* @OPENSSL_zalloc(i32) #1

declare dso_local i32 @SSLerr(i32, i32) #1

declare dso_local i32* @CRYPTO_THREAD_lock_new(...) #1

declare dso_local i32 @OPENSSL_free(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
