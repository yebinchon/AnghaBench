; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_extensions_clnt.c_tls_parse_stoc_sct.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_extensions_clnt.c_tls_parse_stoc_sct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__*, %struct.TYPE_7__, i32* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32*, i64 }

@SSL_EXT_TLS1_3_CERTIFICATE_REQUEST = common dso_local global i32 0, align 4
@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_F_TLS_PARSE_STOC_SCT = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_EXT_TLS1_2_SERVER_HELLO = common dso_local global i32 0, align 4
@ENDPOINT_CLIENT = common dso_local global i32 0, align 4
@ENDPOINT_BOTH = common dso_local global i32 0, align 4
@TLSEXT_TYPE_signed_certificate_timestamp = common dso_local global i32 0, align 4
@TLS1_AD_UNSUPPORTED_EXTENSION = common dso_local global i32 0, align 4
@SSL_R_BAD_EXTENSION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls_parse_stoc_sct(%struct.TYPE_9__* %0, i32* %1, i32 %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* @SSL_EXT_TLS1_3_CERTIFICATE_REQUEST, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %5
  store i32 1, i32* %6, align 4
  br label %108

18:                                               ; preds = %5
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %68

23:                                               ; preds = %18
  %24 = load i32*, i32** %8, align 8
  %25 = call i64 @PACKET_remaining(i32* %24)
  store i64 %25, i64* %12, align 8
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @OPENSSL_free(i32* %29)
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  store i32* null, i32** %33, align 8
  %34 = load i64, i64* %12, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  store i64 %34, i64* %37, align 8
  %38 = load i64, i64* %12, align 8
  %39 = icmp ugt i64 %38, 0
  br i1 %39, label %40, label %67

40:                                               ; preds = %23
  %41 = load i64, i64* %12, align 8
  %42 = call i32* @OPENSSL_malloc(i64 %41)
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  store i32* %42, i32** %45, align 8
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = icmp eq i32* %49, null
  br i1 %50, label %60, label %51

51:                                               ; preds = %40
  %52 = load i32*, i32** %8, align 8
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i64, i64* %12, align 8
  %58 = call i32 @PACKET_copy_bytes(i32* %52, i32* %56, i64 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %51, %40
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %62 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %63 = load i32, i32* @SSL_F_TLS_PARSE_STOC_SCT, align 4
  %64 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %65 = call i32 @SSLfatal(%struct.TYPE_9__* %61, i32 %62, i32 %63, i32 %64)
  store i32 0, i32* %6, align 4
  br label %108

66:                                               ; preds = %51
  br label %67

67:                                               ; preds = %66, %23
  br label %107

68:                                               ; preds = %18
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* @SSL_EXT_TLS1_2_SERVER_HELLO, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %68
  %74 = load i32, i32* @ENDPOINT_CLIENT, align 4
  br label %77

75:                                               ; preds = %68
  %76 = load i32, i32* @ENDPOINT_BOTH, align 4
  br label %77

77:                                               ; preds = %75, %73
  %78 = phi i32 [ %74, %73 ], [ %76, %75 ]
  store i32 %78, i32* %13, align 4
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load i32, i32* %13, align 4
  %84 = load i32, i32* @TLSEXT_TYPE_signed_certificate_timestamp, align 4
  %85 = call i32* @custom_ext_find(i32* %82, i32 %83, i32 %84, i32* null)
  %86 = icmp eq i32* %85, null
  br i1 %86, label %87, label %93

87:                                               ; preds = %77
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %89 = load i32, i32* @TLS1_AD_UNSUPPORTED_EXTENSION, align 4
  %90 = load i32, i32* @SSL_F_TLS_PARSE_STOC_SCT, align 4
  %91 = load i32, i32* @SSL_R_BAD_EXTENSION, align 4
  %92 = call i32 @SSLfatal(%struct.TYPE_9__* %88, i32 %89, i32 %90, i32 %91)
  store i32 0, i32* %6, align 4
  br label %108

93:                                               ; preds = %77
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* @TLSEXT_TYPE_signed_certificate_timestamp, align 4
  %97 = load i32*, i32** %8, align 8
  %98 = call i32 @PACKET_data(i32* %97)
  %99 = load i32*, i32** %8, align 8
  %100 = call i64 @PACKET_remaining(i32* %99)
  %101 = load i32*, i32** %10, align 8
  %102 = load i64, i64* %11, align 8
  %103 = call i32 @custom_ext_parse(%struct.TYPE_9__* %94, i32 %95, i32 %96, i32 %98, i64 %100, i32* %101, i64 %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %93
  store i32 0, i32* %6, align 4
  br label %108

106:                                              ; preds = %93
  br label %107

107:                                              ; preds = %106, %67
  store i32 1, i32* %6, align 4
  br label %108

108:                                              ; preds = %107, %105, %87, %60, %17
  %109 = load i32, i32* %6, align 4
  ret i32 %109
}

declare dso_local i64 @PACKET_remaining(i32*) #1

declare dso_local i32 @OPENSSL_free(i32*) #1

declare dso_local i32* @OPENSSL_malloc(i64) #1

declare dso_local i32 @PACKET_copy_bytes(i32*, i32*, i64) #1

declare dso_local i32 @SSLfatal(%struct.TYPE_9__*, i32, i32, i32) #1

declare dso_local i32* @custom_ext_find(i32*, i32, i32, i32*) #1

declare dso_local i32 @custom_ext_parse(%struct.TYPE_9__*, i32, i32, i32, i64, i32*, i64) #1

declare dso_local i32 @PACKET_data(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
