; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_extensions_srvr.c_tls_parse_ctos_sig_algs_cert.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_extensions_srvr.c_tls_parse_ctos_sig_algs_cert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@SSL_AD_DECODE_ERROR = common dso_local global i32 0, align 4
@SSL_F_TLS_PARSE_CTOS_SIG_ALGS_CERT = common dso_local global i32 0, align 4
@SSL_R_BAD_EXTENSION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls_parse_ctos_sig_algs_cert(%struct.TYPE_5__* %0, i32* %1, i32 %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %13 = load i32*, i32** %8, align 8
  %14 = call i32 @PACKET_as_length_prefixed_2(i32* %13, i32* %12)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %5
  %17 = call i64 @PACKET_remaining(i32* %12)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %16, %5
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %21 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %22 = load i32, i32* @SSL_F_TLS_PARSE_CTOS_SIG_ALGS_CERT, align 4
  %23 = load i32, i32* @SSL_R_BAD_EXTENSION, align 4
  %24 = call i32 @SSLfatal(%struct.TYPE_5__* %20, i32 %21, i32 %22, i32 %23)
  store i32 0, i32* %6, align 4
  br label %41

25:                                               ; preds = %16
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %40, label %30

30:                                               ; preds = %25
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %32 = call i32 @tls1_save_sigalgs(%struct.TYPE_5__* %31, i32* %12, i32 1)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %30
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %36 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %37 = load i32, i32* @SSL_F_TLS_PARSE_CTOS_SIG_ALGS_CERT, align 4
  %38 = load i32, i32* @SSL_R_BAD_EXTENSION, align 4
  %39 = call i32 @SSLfatal(%struct.TYPE_5__* %35, i32 %36, i32 %37, i32 %38)
  store i32 0, i32* %6, align 4
  br label %41

40:                                               ; preds = %30, %25
  store i32 1, i32* %6, align 4
  br label %41

41:                                               ; preds = %40, %34, %19
  %42 = load i32, i32* %6, align 4
  ret i32 %42
}

declare dso_local i32 @PACKET_as_length_prefixed_2(i32*, i32*) #1

declare dso_local i64 @PACKET_remaining(i32*) #1

declare dso_local i32 @SSLfatal(%struct.TYPE_5__*, i32, i32, i32) #1

declare dso_local i32 @tls1_save_sigalgs(%struct.TYPE_5__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
