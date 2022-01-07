; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_d1_msg.c_dtls1_write_app_data_bytes.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_d1_msg.c_dtls1_write_app_data_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 (%struct.TYPE_7__*)* }

@SSL_F_DTLS1_WRITE_APP_DATA_BYTES = common dso_local global i32 0, align 4
@SSL_R_SSL_HANDSHAKE_FAILURE = common dso_local global i32 0, align 4
@SSL3_RT_MAX_PLAIN_LENGTH = common dso_local global i64 0, align 8
@SSL_R_DTLS_MESSAGE_TOO_BIG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dtls1_write_app_data_bytes(%struct.TYPE_7__* %0, i32 %1, i8* %2, i64 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64* %4, i64** %11, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %14 = call i64 @SSL_in_init(%struct.TYPE_7__* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %38

16:                                               ; preds = %5
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %18 = call i32 @ossl_statem_get_in_handshake(%struct.TYPE_7__* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %38, label %20

20:                                               ; preds = %16
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** %22, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %25 = call i32 %23(%struct.TYPE_7__* %24)
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %12, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = load i32, i32* %12, align 4
  store i32 %29, i32* %6, align 4
  br label %53

30:                                               ; preds = %20
  %31 = load i32, i32* %12, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load i32, i32* @SSL_F_DTLS1_WRITE_APP_DATA_BYTES, align 4
  %35 = load i32, i32* @SSL_R_SSL_HANDSHAKE_FAILURE, align 4
  %36 = call i32 @SSLerr(i32 %34, i32 %35)
  store i32 -1, i32* %6, align 4
  br label %53

37:                                               ; preds = %30
  br label %38

38:                                               ; preds = %37, %16, %5
  %39 = load i64, i64* %10, align 8
  %40 = load i64, i64* @SSL3_RT_MAX_PLAIN_LENGTH, align 8
  %41 = icmp ugt i64 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = load i32, i32* @SSL_F_DTLS1_WRITE_APP_DATA_BYTES, align 4
  %44 = load i32, i32* @SSL_R_DTLS_MESSAGE_TOO_BIG, align 4
  %45 = call i32 @SSLerr(i32 %43, i32 %44)
  store i32 -1, i32* %6, align 4
  br label %53

46:                                               ; preds = %38
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %48 = load i32, i32* %8, align 4
  %49 = load i8*, i8** %9, align 8
  %50 = load i64, i64* %10, align 8
  %51 = load i64*, i64** %11, align 8
  %52 = call i32 @dtls1_write_bytes(%struct.TYPE_7__* %47, i32 %48, i8* %49, i64 %50, i64* %51)
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %46, %42, %33, %28
  %54 = load i32, i32* %6, align 4
  ret i32 %54
}

declare dso_local i64 @SSL_in_init(%struct.TYPE_7__*) #1

declare dso_local i32 @ossl_statem_get_in_handshake(%struct.TYPE_7__*) #1

declare dso_local i32 @SSLerr(i32, i32) #1

declare dso_local i32 @dtls1_write_bytes(%struct.TYPE_7__*, i32, i8*, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
