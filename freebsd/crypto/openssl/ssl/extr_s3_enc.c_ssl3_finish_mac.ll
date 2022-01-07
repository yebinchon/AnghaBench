; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_s3_enc.c_ssl3_finish_mac.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_s3_enc.c_ssl3_finish_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32*, i32 }

@INT_MAX = common dso_local global i64 0, align 8
@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_F_SSL3_FINISH_MAC = common dso_local global i32 0, align 4
@SSL_R_OVERFLOW_ERROR = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssl3_finish_mac(%struct.TYPE_6__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %49

15:                                               ; preds = %3
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* @INT_MAX, align 8
  %18 = icmp ugt i64 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %15
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %21 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %22 = load i32, i32* @SSL_F_SSL3_FINISH_MAC, align 4
  %23 = load i32, i32* @SSL_R_OVERFLOW_ERROR, align 4
  %24 = call i32 @SSLfatal(%struct.TYPE_6__* %20, i32 %21, i32 %22, i32 %23)
  store i32 0, i32* %4, align 4
  br label %68

25:                                               ; preds = %15
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = load i64, i64* %7, align 8
  %33 = trunc i64 %32 to i32
  %34 = call i32 @BIO_write(i32 %30, i8* %31, i32 %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp sle i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %25
  %38 = load i32, i32* %8, align 4
  %39 = load i64, i64* %7, align 8
  %40 = trunc i64 %39 to i32
  %41 = icmp ne i32 %38, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %37, %25
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %44 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %45 = load i32, i32* @SSL_F_SSL3_FINISH_MAC, align 4
  %46 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %47 = call i32 @SSLfatal(%struct.TYPE_6__* %43, i32 %44, i32 %45, i32 %46)
  store i32 0, i32* %4, align 4
  br label %68

48:                                               ; preds = %37
  br label %67

49:                                               ; preds = %3
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i8*, i8** %6, align 8
  %56 = load i64, i64* %7, align 8
  %57 = call i32 @EVP_DigestUpdate(i32* %54, i8* %55, i64 %56)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %49
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %62 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %63 = load i32, i32* @SSL_F_SSL3_FINISH_MAC, align 4
  %64 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %65 = call i32 @SSLfatal(%struct.TYPE_6__* %61, i32 %62, i32 %63, i32 %64)
  store i32 0, i32* %4, align 4
  br label %68

66:                                               ; preds = %49
  br label %67

67:                                               ; preds = %66, %48
  store i32 1, i32* %4, align 4
  br label %68

68:                                               ; preds = %67, %60, %42, %19
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i32 @SSLfatal(%struct.TYPE_6__*, i32, i32, i32) #1

declare dso_local i32 @BIO_write(i32, i8*, i32) #1

declare dso_local i32 @EVP_DigestUpdate(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
