; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_extensions_clnt.c_tls_construct_ctos_key_share.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_extensions_clnt.c_tls_construct_ctos_key_share.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }

@TLSEXT_TYPE_key_share = common dso_local global i32 0, align 4
@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_F_TLS_CONSTRUCT_CTOS_KEY_SHARE = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@EXT_RETURN_FAIL = common dso_local global i32 0, align 4
@SSL_SECOP_CURVE_SUPPORTED = common dso_local global i32 0, align 4
@SSL_R_NO_SUITABLE_KEY_SHARE = common dso_local global i32 0, align 4
@EXT_RETURN_SENT = common dso_local global i32 0, align 4
@EXT_RETURN_NOT_SENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls_construct_ctos_key_share(%struct.TYPE_9__* %0, i32* %1, i32 %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 0, i64* %13, align 8
  store i64* null, i64** %14, align 8
  store i64 0, i64* %15, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = load i32, i32* @TLSEXT_TYPE_key_share, align 4
  %18 = call i32 @WPACKET_put_bytes_u16(i32* %16, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %5
  %21 = load i32*, i32** %8, align 8
  %22 = call i32 @WPACKET_start_sub_packet_u16(i32* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load i32*, i32** %8, align 8
  %26 = call i32 @WPACKET_start_sub_packet_u16(i32* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %24, %20, %5
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %30 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %31 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CTOS_KEY_SHARE, align 4
  %32 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %33 = call i32 @SSLfatal(%struct.TYPE_9__* %29, i32 %30, i32 %31, i32 %32)
  %34 = load i32, i32* @EXT_RETURN_FAIL, align 4
  store i32 %34, i32* %6, align 4
  br label %109

35:                                               ; preds = %24
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %37 = call i32 @tls1_get_supported_groups(%struct.TYPE_9__* %36, i64** %14, i64* %13)
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %35
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %15, align 8
  br label %74

50:                                               ; preds = %35
  store i64 0, i64* %12, align 8
  br label %51

51:                                               ; preds = %70, %50
  %52 = load i64, i64* %12, align 8
  %53 = load i64, i64* %13, align 8
  %54 = icmp ult i64 %52, %53
  br i1 %54, label %55, label %73

55:                                               ; preds = %51
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %57 = load i64*, i64** %14, align 8
  %58 = load i64, i64* %12, align 8
  %59 = getelementptr inbounds i64, i64* %57, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = load i32, i32* @SSL_SECOP_CURVE_SUPPORTED, align 4
  %62 = call i32 @tls_curve_allowed(%struct.TYPE_9__* %56, i64 %60, i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %55
  br label %70

65:                                               ; preds = %55
  %66 = load i64*, i64** %14, align 8
  %67 = load i64, i64* %12, align 8
  %68 = getelementptr inbounds i64, i64* %66, i64 %67
  %69 = load i64, i64* %68, align 8
  store i64 %69, i64* %15, align 8
  br label %73

70:                                               ; preds = %64
  %71 = load i64, i64* %12, align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* %12, align 8
  br label %51

73:                                               ; preds = %65, %51
  br label %74

74:                                               ; preds = %73, %44
  %75 = load i64, i64* %15, align 8
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %74
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %79 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %80 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CTOS_KEY_SHARE, align 4
  %81 = load i32, i32* @SSL_R_NO_SUITABLE_KEY_SHARE, align 4
  %82 = call i32 @SSLfatal(%struct.TYPE_9__* %78, i32 %79, i32 %80, i32 %81)
  %83 = load i32, i32* @EXT_RETURN_FAIL, align 4
  store i32 %83, i32* %6, align 4
  br label %109

84:                                               ; preds = %74
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %86 = load i32*, i32** %8, align 8
  %87 = load i64, i64* %15, align 8
  %88 = call i32 @add_key_share(%struct.TYPE_9__* %85, i32* %86, i64 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %92, label %90

90:                                               ; preds = %84
  %91 = load i32, i32* @EXT_RETURN_FAIL, align 4
  store i32 %91, i32* %6, align 4
  br label %109

92:                                               ; preds = %84
  %93 = load i32*, i32** %8, align 8
  %94 = call i32 @WPACKET_close(i32* %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %92
  %97 = load i32*, i32** %8, align 8
  %98 = call i32 @WPACKET_close(i32* %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %107, label %100

100:                                              ; preds = %96, %92
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %102 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %103 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CTOS_KEY_SHARE, align 4
  %104 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %105 = call i32 @SSLfatal(%struct.TYPE_9__* %101, i32 %102, i32 %103, i32 %104)
  %106 = load i32, i32* @EXT_RETURN_FAIL, align 4
  store i32 %106, i32* %6, align 4
  br label %109

107:                                              ; preds = %96
  %108 = load i32, i32* @EXT_RETURN_SENT, align 4
  store i32 %108, i32* %6, align 4
  br label %109

109:                                              ; preds = %107, %100, %90, %77, %28
  %110 = load i32, i32* %6, align 4
  ret i32 %110
}

declare dso_local i32 @WPACKET_put_bytes_u16(i32*, i32) #1

declare dso_local i32 @WPACKET_start_sub_packet_u16(i32*) #1

declare dso_local i32 @SSLfatal(%struct.TYPE_9__*, i32, i32, i32) #1

declare dso_local i32 @tls1_get_supported_groups(%struct.TYPE_9__*, i64**, i64*) #1

declare dso_local i32 @tls_curve_allowed(%struct.TYPE_9__*, i64, i32) #1

declare dso_local i32 @add_key_share(%struct.TYPE_9__*, i32*, i64) #1

declare dso_local i32 @WPACKET_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
