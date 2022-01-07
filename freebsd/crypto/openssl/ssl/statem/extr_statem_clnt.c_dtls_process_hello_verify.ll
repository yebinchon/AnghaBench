; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_statem_clnt.c_dtls_process_hello_verify.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_statem_clnt.c_dtls_process_hello_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i32 }

@SSL_AD_DECODE_ERROR = common dso_local global i32 0, align 4
@SSL_F_DTLS_PROCESS_HELLO_VERIFY = common dso_local global i32 0, align 4
@SSL_R_LENGTH_MISMATCH = common dso_local global i32 0, align 4
@MSG_PROCESS_ERROR = common dso_local global i32 0, align 4
@SSL_AD_ILLEGAL_PARAMETER = common dso_local global i32 0, align 4
@SSL_R_LENGTH_TOO_LONG = common dso_local global i32 0, align 4
@MSG_PROCESS_FINISHED_READING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dtls_process_hello_verify(%struct.TYPE_6__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = call i32 @PACKET_forward(i32* %8, i32 2)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i32*, i32** %5, align 8
  %13 = call i32 @PACKET_get_length_prefixed_1(i32* %12, i32* %7)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %11, %2
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %17 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %18 = load i32, i32* @SSL_F_DTLS_PROCESS_HELLO_VERIFY, align 4
  %19 = load i32, i32* @SSL_R_LENGTH_MISMATCH, align 4
  %20 = call i32 @SSLfatal(%struct.TYPE_6__* %16, i32 %17, i32 %18, i32 %19)
  %21 = load i32, i32* @MSG_PROCESS_ERROR, align 4
  store i32 %21, i32* %3, align 4
  br label %56

22:                                               ; preds = %11
  %23 = call i64 @PACKET_remaining(i32* %7)
  store i64 %23, i64* %6, align 8
  %24 = load i64, i64* %6, align 8
  %25 = icmp ugt i64 %24, 4
  br i1 %25, label %26, label %33

26:                                               ; preds = %22
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %28 = load i32, i32* @SSL_AD_ILLEGAL_PARAMETER, align 4
  %29 = load i32, i32* @SSL_F_DTLS_PROCESS_HELLO_VERIFY, align 4
  %30 = load i32, i32* @SSL_R_LENGTH_TOO_LONG, align 4
  %31 = call i32 @SSLfatal(%struct.TYPE_6__* %27, i32 %28, i32 %29, i32 %30)
  %32 = load i32, i32* @MSG_PROCESS_ERROR, align 4
  store i32 %32, i32* %3, align 4
  br label %56

33:                                               ; preds = %22
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i64, i64* %6, align 8
  %40 = call i32 @PACKET_copy_bytes(i32* %7, i32 %38, i64 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %49, label %42

42:                                               ; preds = %33
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %44 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %45 = load i32, i32* @SSL_F_DTLS_PROCESS_HELLO_VERIFY, align 4
  %46 = load i32, i32* @SSL_R_LENGTH_MISMATCH, align 4
  %47 = call i32 @SSLfatal(%struct.TYPE_6__* %43, i32 %44, i32 %45, i32 %46)
  %48 = load i32, i32* @MSG_PROCESS_ERROR, align 4
  store i32 %48, i32* %3, align 4
  br label %56

49:                                               ; preds = %33
  %50 = load i64, i64* %6, align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  store i64 %50, i64* %54, align 8
  %55 = load i32, i32* @MSG_PROCESS_FINISHED_READING, align 4
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %49, %42, %26, %15
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @PACKET_forward(i32*, i32) #1

declare dso_local i32 @PACKET_get_length_prefixed_1(i32*, i32*) #1

declare dso_local i32 @SSLfatal(%struct.TYPE_6__*, i32, i32, i32) #1

declare dso_local i64 @PACKET_remaining(i32*) #1

declare dso_local i32 @PACKET_copy_bytes(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
