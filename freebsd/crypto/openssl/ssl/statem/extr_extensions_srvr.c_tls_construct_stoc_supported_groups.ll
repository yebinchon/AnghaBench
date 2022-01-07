; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_extensions_srvr.c_tls_construct_stoc_supported_groups.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_extensions_srvr.c_tls_construct_stoc_supported_groups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }

@EXT_RETURN_NOT_SENT = common dso_local global i32 0, align 4
@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_F_TLS_CONSTRUCT_STOC_SUPPORTED_GROUPS = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@EXT_RETURN_FAIL = common dso_local global i32 0, align 4
@SSL_SECOP_CURVE_SUPPORTED = common dso_local global i32 0, align 4
@TLSEXT_TYPE_supported_groups = common dso_local global i64 0, align 8
@EXT_RETURN_SENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls_construct_stoc_supported_groups(%struct.TYPE_8__* %0, i32* %1, i32 %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 1, i64* %15, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %5
  %24 = load i32, i32* @EXT_RETURN_NOT_SENT, align 4
  store i32 %24, i32* %6, align 4
  br label %120

25:                                               ; preds = %5
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %27 = call i32 @tls1_get_supported_groups(%struct.TYPE_8__* %26, i64** %12, i64* %13)
  %28 = load i64, i64* %13, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %25
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %32 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %33 = load i32, i32* @SSL_F_TLS_CONSTRUCT_STOC_SUPPORTED_GROUPS, align 4
  %34 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %35 = call i32 @SSLfatal(%struct.TYPE_8__* %31, i32 %32, i32 %33, i32 %34)
  %36 = load i32, i32* @EXT_RETURN_FAIL, align 4
  store i32 %36, i32* %6, align 4
  br label %120

37:                                               ; preds = %25
  store i64 0, i64* %14, align 8
  br label %38

38:                                               ; preds = %100, %37
  %39 = load i64, i64* %14, align 8
  %40 = load i64, i64* %13, align 8
  %41 = icmp ult i64 %39, %40
  br i1 %41, label %42, label %103

42:                                               ; preds = %38
  %43 = load i64*, i64** %12, align 8
  %44 = load i64, i64* %14, align 8
  %45 = getelementptr inbounds i64, i64* %43, i64 %44
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %16, align 8
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %48 = load i64, i64* %16, align 8
  %49 = load i32, i32* @SSL_SECOP_CURVE_SUPPORTED, align 4
  %50 = call i64 @tls_curve_allowed(%struct.TYPE_8__* %47, i64 %48, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %99

52:                                               ; preds = %42
  %53 = load i64, i64* %15, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %86

55:                                               ; preds = %52
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* %16, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %55
  %64 = load i32, i32* @EXT_RETURN_NOT_SENT, align 4
  store i32 %64, i32* %6, align 4
  br label %120

65:                                               ; preds = %55
  %66 = load i32*, i32** %8, align 8
  %67 = load i64, i64* @TLSEXT_TYPE_supported_groups, align 8
  %68 = call i32 @WPACKET_put_bytes_u16(i32* %66, i64 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %65
  %71 = load i32*, i32** %8, align 8
  %72 = call i32 @WPACKET_start_sub_packet_u16(i32* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %70
  %75 = load i32*, i32** %8, align 8
  %76 = call i32 @WPACKET_start_sub_packet_u16(i32* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %85, label %78

78:                                               ; preds = %74, %70, %65
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %80 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %81 = load i32, i32* @SSL_F_TLS_CONSTRUCT_STOC_SUPPORTED_GROUPS, align 4
  %82 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %83 = call i32 @SSLfatal(%struct.TYPE_8__* %79, i32 %80, i32 %81, i32 %82)
  %84 = load i32, i32* @EXT_RETURN_FAIL, align 4
  store i32 %84, i32* %6, align 4
  br label %120

85:                                               ; preds = %74
  store i64 0, i64* %15, align 8
  br label %86

86:                                               ; preds = %85, %52
  %87 = load i32*, i32** %8, align 8
  %88 = load i64, i64* %16, align 8
  %89 = call i32 @WPACKET_put_bytes_u16(i32* %87, i64 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %98, label %91

91:                                               ; preds = %86
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %93 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %94 = load i32, i32* @SSL_F_TLS_CONSTRUCT_STOC_SUPPORTED_GROUPS, align 4
  %95 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %96 = call i32 @SSLfatal(%struct.TYPE_8__* %92, i32 %93, i32 %94, i32 %95)
  %97 = load i32, i32* @EXT_RETURN_FAIL, align 4
  store i32 %97, i32* %6, align 4
  br label %120

98:                                               ; preds = %86
  br label %99

99:                                               ; preds = %98, %42
  br label %100

100:                                              ; preds = %99
  %101 = load i64, i64* %14, align 8
  %102 = add i64 %101, 1
  store i64 %102, i64* %14, align 8
  br label %38

103:                                              ; preds = %38
  %104 = load i32*, i32** %8, align 8
  %105 = call i32 @WPACKET_close(i32* %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %103
  %108 = load i32*, i32** %8, align 8
  %109 = call i32 @WPACKET_close(i32* %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %118, label %111

111:                                              ; preds = %107, %103
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %113 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %114 = load i32, i32* @SSL_F_TLS_CONSTRUCT_STOC_SUPPORTED_GROUPS, align 4
  %115 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %116 = call i32 @SSLfatal(%struct.TYPE_8__* %112, i32 %113, i32 %114, i32 %115)
  %117 = load i32, i32* @EXT_RETURN_FAIL, align 4
  store i32 %117, i32* %6, align 4
  br label %120

118:                                              ; preds = %107
  %119 = load i32, i32* @EXT_RETURN_SENT, align 4
  store i32 %119, i32* %6, align 4
  br label %120

120:                                              ; preds = %118, %111, %91, %78, %63, %30, %23
  %121 = load i32, i32* %6, align 4
  ret i32 %121
}

declare dso_local i32 @tls1_get_supported_groups(%struct.TYPE_8__*, i64**, i64*) #1

declare dso_local i32 @SSLfatal(%struct.TYPE_8__*, i32, i32, i32) #1

declare dso_local i64 @tls_curve_allowed(%struct.TYPE_8__*, i64, i32) #1

declare dso_local i32 @WPACKET_put_bytes_u16(i32*, i64) #1

declare dso_local i32 @WPACKET_start_sub_packet_u16(i32*) #1

declare dso_local i32 @WPACKET_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
