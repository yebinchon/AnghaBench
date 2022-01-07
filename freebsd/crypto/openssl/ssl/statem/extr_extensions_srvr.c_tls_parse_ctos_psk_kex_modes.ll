; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_extensions_srvr.c_tls_parse_ctos_psk_kex_modes.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_extensions_srvr.c_tls_parse_ctos_psk_kex_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@SSL_AD_DECODE_ERROR = common dso_local global i32 0, align 4
@SSL_F_TLS_PARSE_CTOS_PSK_KEX_MODES = common dso_local global i32 0, align 4
@SSL_R_BAD_EXTENSION = common dso_local global i32 0, align 4
@TLSEXT_KEX_MODE_KE_DHE = common dso_local global i32 0, align 4
@TLSEXT_KEX_MODE_FLAG_KE_DHE = common dso_local global i32 0, align 4
@TLSEXT_KEX_MODE_KE = common dso_local global i32 0, align 4
@SSL_OP_ALLOW_NO_DHE_KEX = common dso_local global i32 0, align 4
@TLSEXT_KEX_MODE_FLAG_KE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls_parse_ctos_psk_kex_modes(%struct.TYPE_6__* %0, i32* %1, i32 %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = call i32 @PACKET_as_length_prefixed_1(i32* %14, i32* %12)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %5
  %18 = call i64 @PACKET_remaining(i32* %12)
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %17, %5
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %22 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %23 = load i32, i32* @SSL_F_TLS_PARSE_CTOS_PSK_KEX_MODES, align 4
  %24 = load i32, i32* @SSL_R_BAD_EXTENSION, align 4
  %25 = call i32 @SSLfatal(%struct.TYPE_6__* %21, i32 %22, i32 %23, i32 %24)
  store i32 0, i32* %6, align 4
  br label %62

26:                                               ; preds = %17
  br label %27

27:                                               ; preds = %60, %26
  %28 = call i64 @PACKET_get_1(i32* %12, i32* %13)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %61

30:                                               ; preds = %27
  %31 = load i32, i32* %13, align 4
  %32 = load i32, i32* @TLSEXT_KEX_MODE_KE_DHE, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %30
  %35 = load i32, i32* @TLSEXT_KEX_MODE_FLAG_KE_DHE, align 4
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %35
  store i32 %40, i32* %38, align 4
  br label %60

41:                                               ; preds = %30
  %42 = load i32, i32* %13, align 4
  %43 = load i32, i32* @TLSEXT_KEX_MODE_KE, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %59

45:                                               ; preds = %41
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @SSL_OP_ALLOW_NO_DHE_KEX, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %45
  %53 = load i32, i32* @TLSEXT_KEX_MODE_FLAG_KE, align 4
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %53
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %52, %45, %41
  br label %60

60:                                               ; preds = %59, %34
  br label %27

61:                                               ; preds = %27
  store i32 1, i32* %6, align 4
  br label %62

62:                                               ; preds = %61, %20
  %63 = load i32, i32* %6, align 4
  ret i32 %63
}

declare dso_local i32 @PACKET_as_length_prefixed_1(i32*, i32*) #1

declare dso_local i64 @PACKET_remaining(i32*) #1

declare dso_local i32 @SSLfatal(%struct.TYPE_6__*, i32, i32, i32) #1

declare dso_local i64 @PACKET_get_1(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
