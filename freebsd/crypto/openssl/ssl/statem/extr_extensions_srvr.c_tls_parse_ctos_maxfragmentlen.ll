; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_extensions_srvr.c_tls_parse_ctos_maxfragmentlen.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_extensions_srvr.c_tls_parse_ctos_maxfragmentlen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__*, i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@SSL_AD_DECODE_ERROR = common dso_local global i32 0, align 4
@SSL_F_TLS_PARSE_CTOS_MAXFRAGMENTLEN = common dso_local global i32 0, align 4
@SSL_R_BAD_EXTENSION = common dso_local global i32 0, align 4
@SSL_AD_ILLEGAL_PARAMETER = common dso_local global i32 0, align 4
@SSL_R_SSL3_EXT_INVALID_MAX_FRAGMENT_LENGTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls_parse_ctos_maxfragmentlen(%struct.TYPE_8__* %0, i32* %1, i32 %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %13 = load i32*, i32** %8, align 8
  %14 = call i32 @PACKET_remaining(i32* %13)
  %15 = icmp ne i32 %14, 1
  br i1 %15, label %20, label %16

16:                                               ; preds = %5
  %17 = load i32*, i32** %8, align 8
  %18 = call i32 @PACKET_get_1(i32* %17, i32* %12)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %16, %5
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %22 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %23 = load i32, i32* @SSL_F_TLS_PARSE_CTOS_MAXFRAGMENTLEN, align 4
  %24 = load i32, i32* @SSL_R_BAD_EXTENSION, align 4
  %25 = call i32 @SSLfatal(%struct.TYPE_8__* %21, i32 %22, i32 %23, i32 %24)
  store i32 0, i32* %6, align 4
  br label %63

26:                                               ; preds = %16
  %27 = load i32, i32* %12, align 4
  %28 = call i32 @IS_MAX_FRAGMENT_LENGTH_EXT_VALID(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %26
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %32 = load i32, i32* @SSL_AD_ILLEGAL_PARAMETER, align 4
  %33 = load i32, i32* @SSL_F_TLS_PARSE_CTOS_MAXFRAGMENTLEN, align 4
  %34 = load i32, i32* @SSL_R_SSL3_EXT_INVALID_MAX_FRAGMENT_LENGTH, align 4
  %35 = call i32 @SSLfatal(%struct.TYPE_8__* %31, i32 %32, i32 %33, i32 %34)
  store i32 0, i32* %6, align 4
  br label %63

36:                                               ; preds = %26
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %56

41:                                               ; preds = %36
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %12, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %41
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %52 = load i32, i32* @SSL_AD_ILLEGAL_PARAMETER, align 4
  %53 = load i32, i32* @SSL_F_TLS_PARSE_CTOS_MAXFRAGMENTLEN, align 4
  %54 = load i32, i32* @SSL_R_SSL3_EXT_INVALID_MAX_FRAGMENT_LENGTH, align 4
  %55 = call i32 @SSLfatal(%struct.TYPE_8__* %51, i32 %52, i32 %53, i32 %54)
  store i32 0, i32* %6, align 4
  br label %63

56:                                               ; preds = %41, %36
  %57 = load i32, i32* %12, align 4
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  store i32 %57, i32* %62, align 4
  store i32 1, i32* %6, align 4
  br label %63

63:                                               ; preds = %56, %50, %30, %20
  %64 = load i32, i32* %6, align 4
  ret i32 %64
}

declare dso_local i32 @PACKET_remaining(i32*) #1

declare dso_local i32 @PACKET_get_1(i32*, i32*) #1

declare dso_local i32 @SSLfatal(%struct.TYPE_8__*, i32, i32, i32) #1

declare dso_local i32 @IS_MAX_FRAGMENT_LENGTH_EXT_VALID(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
