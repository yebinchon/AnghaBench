; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_extensions_srvr.c_tls_construct_stoc_ec_pt_formats.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_extensions_srvr.c_tls_construct_stoc_ec_pt_formats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_11__, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64, i64 }

@SSL_kECDHE = common dso_local global i64 0, align 8
@SSL_aECDSA = common dso_local global i64 0, align 8
@EXT_RETURN_NOT_SENT = common dso_local global i32 0, align 4
@TLSEXT_TYPE_ec_point_formats = common dso_local global i32 0, align 4
@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_F_TLS_CONSTRUCT_STOC_EC_PT_FORMATS = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@EXT_RETURN_FAIL = common dso_local global i32 0, align 4
@EXT_RETURN_SENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls_construct_stoc_ec_pt_formats(%struct.TYPE_13__* %0, i32* %1, i32 %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %12, align 8
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %13, align 8
  %33 = load i64, i64* %12, align 8
  %34 = load i64, i64* @SSL_kECDHE, align 8
  %35 = and i64 %33, %34
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %5
  %38 = load i64, i64* %13, align 8
  %39 = load i64, i64* @SSL_aECDSA, align 8
  %40 = and i64 %38, %39
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %37, %5
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = icmp ne i32* %46, null
  br label %48

48:                                               ; preds = %42, %37
  %49 = phi i1 [ false, %37 ], [ %47, %42 ]
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %14, align 4
  %51 = load i32, i32* %14, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %48
  %54 = load i32, i32* @EXT_RETURN_NOT_SENT, align 4
  store i32 %54, i32* %6, align 4
  br label %85

55:                                               ; preds = %48
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %57 = call i32 @tls1_get_formatlist(%struct.TYPE_13__* %56, i8** %15, i64* %16)
  %58 = load i32*, i32** %8, align 8
  %59 = load i32, i32* @TLSEXT_TYPE_ec_point_formats, align 4
  %60 = call i32 @WPACKET_put_bytes_u16(i32* %58, i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %76

62:                                               ; preds = %55
  %63 = load i32*, i32** %8, align 8
  %64 = call i32 @WPACKET_start_sub_packet_u16(i32* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %62
  %67 = load i32*, i32** %8, align 8
  %68 = load i8*, i8** %15, align 8
  %69 = load i64, i64* %16, align 8
  %70 = call i32 @WPACKET_sub_memcpy_u8(i32* %67, i8* %68, i64 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %66
  %73 = load i32*, i32** %8, align 8
  %74 = call i32 @WPACKET_close(i32* %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %83, label %76

76:                                               ; preds = %72, %66, %62, %55
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %78 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %79 = load i32, i32* @SSL_F_TLS_CONSTRUCT_STOC_EC_PT_FORMATS, align 4
  %80 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %81 = call i32 @SSLfatal(%struct.TYPE_13__* %77, i32 %78, i32 %79, i32 %80)
  %82 = load i32, i32* @EXT_RETURN_FAIL, align 4
  store i32 %82, i32* %6, align 4
  br label %85

83:                                               ; preds = %72
  %84 = load i32, i32* @EXT_RETURN_SENT, align 4
  store i32 %84, i32* %6, align 4
  br label %85

85:                                               ; preds = %83, %76, %53
  %86 = load i32, i32* %6, align 4
  ret i32 %86
}

declare dso_local i32 @tls1_get_formatlist(%struct.TYPE_13__*, i8**, i64*) #1

declare dso_local i32 @WPACKET_put_bytes_u16(i32*, i32) #1

declare dso_local i32 @WPACKET_start_sub_packet_u16(i32*) #1

declare dso_local i32 @WPACKET_sub_memcpy_u8(i32*, i8*, i64) #1

declare dso_local i32 @WPACKET_close(i32*) #1

declare dso_local i32 @SSLfatal(%struct.TYPE_13__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
