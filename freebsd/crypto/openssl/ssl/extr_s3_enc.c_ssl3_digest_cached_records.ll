; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_s3_enc.c_ssl3_digest_cached_records.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_s3_enc.c_ssl3_digest_cached_records.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32*, i32* }

@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_F_SSL3_DIGEST_CACHED_RECORDS = common dso_local global i32 0, align 4
@SSL_R_BAD_HANDSHAKE_LENGTH = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssl3_digest_cached_records(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %79

15:                                               ; preds = %2
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = call i64 @BIO_get_mem_data(i32* %20, i8** %8)
  store i64 %21, i64* %7, align 8
  %22 = load i64, i64* %7, align 8
  %23 = icmp sle i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %15
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %26 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %27 = load i32, i32* @SSL_F_SSL3_DIGEST_CACHED_RECORDS, align 4
  %28 = load i32, i32* @SSL_R_BAD_HANDSHAKE_LENGTH, align 4
  %29 = call i32 @SSLfatal(%struct.TYPE_7__* %25, i32 %26, i32 %27, i32 %28)
  store i32 0, i32* %3, align 4
  br label %94

30:                                               ; preds = %15
  %31 = call i32* (...) @EVP_MD_CTX_new()
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  store i32* %31, i32** %35, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %48

42:                                               ; preds = %30
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %44 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %45 = load i32, i32* @SSL_F_SSL3_DIGEST_CACHED_RECORDS, align 4
  %46 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %47 = call i32 @SSLfatal(%struct.TYPE_7__* %43, i32 %44, i32 %45, i32 %46)
  store i32 0, i32* %3, align 4
  br label %94

48:                                               ; preds = %30
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %50 = call i32* @ssl_handshake_md(%struct.TYPE_7__* %49)
  store i32* %50, i32** %6, align 8
  %51 = load i32*, i32** %6, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %72, label %53

53:                                               ; preds = %48
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load i32*, i32** %6, align 8
  %60 = call i32 @EVP_DigestInit_ex(i32* %58, i32* %59, i32* null)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %72

62:                                               ; preds = %53
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = load i8*, i8** %8, align 8
  %69 = load i64, i64* %7, align 8
  %70 = call i32 @EVP_DigestUpdate(i32* %67, i8* %68, i64 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %78, label %72

72:                                               ; preds = %62, %53, %48
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %74 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %75 = load i32, i32* @SSL_F_SSL3_DIGEST_CACHED_RECORDS, align 4
  %76 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %77 = call i32 @SSLfatal(%struct.TYPE_7__* %73, i32 %74, i32 %75, i32 %76)
  store i32 0, i32* %3, align 4
  br label %94

78:                                               ; preds = %62
  br label %79

79:                                               ; preds = %78, %2
  %80 = load i32, i32* %5, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %93

82:                                               ; preds = %79
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = call i32 @BIO_free(i32* %87)
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  store i32* null, i32** %92, align 8
  br label %93

93:                                               ; preds = %82, %79
  store i32 1, i32* %3, align 4
  br label %94

94:                                               ; preds = %93, %72, %42, %24
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i64 @BIO_get_mem_data(i32*, i8**) #1

declare dso_local i32 @SSLfatal(%struct.TYPE_7__*, i32, i32, i32) #1

declare dso_local i32* @EVP_MD_CTX_new(...) #1

declare dso_local i32* @ssl_handshake_md(%struct.TYPE_7__*) #1

declare dso_local i32 @EVP_DigestInit_ex(i32*, i32*, i32*) #1

declare dso_local i32 @EVP_DigestUpdate(i32*, i8*, i64) #1

declare dso_local i32 @BIO_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
