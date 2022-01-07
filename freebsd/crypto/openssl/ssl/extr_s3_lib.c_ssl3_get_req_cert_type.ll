; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_s3_lib.c_ssl3_get_req_cert_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_s3_lib.c_ssl3_get_req_cert_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, %struct.TYPE_11__*, %struct.TYPE_8__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i64 }

@SSL_SECOP_SIGALG_MASK = common dso_local global i32 0, align 4
@TLS1_VERSION = common dso_local global i64 0, align 8
@SSL_kGOST = common dso_local global i32 0, align 4
@TLS_CT_GOST01_SIGN = common dso_local global i32 0, align 4
@TLS_CT_GOST12_SIGN = common dso_local global i32 0, align 4
@TLS_CT_GOST12_512_SIGN = common dso_local global i32 0, align 4
@SSL3_VERSION = common dso_local global i64 0, align 8
@SSL_kDHE = common dso_local global i32 0, align 4
@SSL3_CT_RSA_EPHEMERAL_DH = common dso_local global i32 0, align 4
@SSL3_CT_DSS_EPHEMERAL_DH = common dso_local global i32 0, align 4
@SSL_aRSA = common dso_local global i32 0, align 4
@SSL3_CT_RSA_SIGN = common dso_local global i32 0, align 4
@SSL_aDSS = common dso_local global i32 0, align 4
@SSL3_CT_DSS_SIGN = common dso_local global i32 0, align 4
@SSL_aECDSA = common dso_local global i32 0, align 4
@TLS_CT_ECDSA_SIGN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssl3_get_req_cert_type(%struct.TYPE_12__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 2
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %2
  %15 = load i32*, i32** %5, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @WPACKET_memcpy(i32* %15, i64 %20, i32 %25)
  store i32 %26, i32* %3, align 4
  br label %131

27:                                               ; preds = %2
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %29 = load i32, i32* @SSL_SECOP_SIGALG_MASK, align 4
  %30 = call i32 @ssl_set_sig_mask(i32* %7, %struct.TYPE_12__* %28, i32 %29)
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %6, align 4
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @TLS1_VERSION, align 8
  %43 = icmp sge i64 %41, %42
  br i1 %43, label %44, label %67

44:                                               ; preds = %27
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @SSL_kGOST, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %67

49:                                               ; preds = %44
  %50 = load i32*, i32** %5, align 8
  %51 = load i32, i32* @TLS_CT_GOST01_SIGN, align 4
  %52 = call i64 @WPACKET_put_bytes_u8(i32* %50, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %49
  %55 = load i32*, i32** %5, align 8
  %56 = load i32, i32* @TLS_CT_GOST12_SIGN, align 4
  %57 = call i64 @WPACKET_put_bytes_u8(i32* %55, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = load i32*, i32** %5, align 8
  %61 = load i32, i32* @TLS_CT_GOST12_512_SIGN, align 4
  %62 = call i64 @WPACKET_put_bytes_u8(i32* %60, i32 %61)
  %63 = icmp ne i64 %62, 0
  br label %64

64:                                               ; preds = %59, %54, %49
  %65 = phi i1 [ false, %54 ], [ false, %49 ], [ %63, %59 ]
  %66 = zext i1 %65 to i32
  store i32 %66, i32* %3, align 4
  br label %131

67:                                               ; preds = %44, %27
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @SSL3_VERSION, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %91

73:                                               ; preds = %67
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* @SSL_kDHE, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %91

78:                                               ; preds = %73
  %79 = load i32*, i32** %5, align 8
  %80 = load i32, i32* @SSL3_CT_RSA_EPHEMERAL_DH, align 4
  %81 = call i64 @WPACKET_put_bytes_u8(i32* %79, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %78
  store i32 0, i32* %3, align 4
  br label %131

84:                                               ; preds = %78
  %85 = load i32*, i32** %5, align 8
  %86 = load i32, i32* @SSL3_CT_DSS_EPHEMERAL_DH, align 4
  %87 = call i64 @WPACKET_put_bytes_u8(i32* %85, i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %84
  store i32 0, i32* %3, align 4
  br label %131

90:                                               ; preds = %84
  br label %91

91:                                               ; preds = %90, %73, %67
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* @SSL_aRSA, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %102, label %96

96:                                               ; preds = %91
  %97 = load i32*, i32** %5, align 8
  %98 = load i32, i32* @SSL3_CT_RSA_SIGN, align 4
  %99 = call i64 @WPACKET_put_bytes_u8(i32* %97, i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %96
  store i32 0, i32* %3, align 4
  br label %131

102:                                              ; preds = %96, %91
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* @SSL_aDSS, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %113, label %107

107:                                              ; preds = %102
  %108 = load i32*, i32** %5, align 8
  %109 = load i32, i32* @SSL3_CT_DSS_SIGN, align 4
  %110 = call i64 @WPACKET_put_bytes_u8(i32* %108, i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %107
  store i32 0, i32* %3, align 4
  br label %131

113:                                              ; preds = %107, %102
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @TLS1_VERSION, align 8
  %118 = icmp sge i64 %116, %117
  br i1 %118, label %119, label %130

119:                                              ; preds = %113
  %120 = load i32, i32* %7, align 4
  %121 = load i32, i32* @SSL_aECDSA, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %130, label %124

124:                                              ; preds = %119
  %125 = load i32*, i32** %5, align 8
  %126 = load i32, i32* @TLS_CT_ECDSA_SIGN, align 4
  %127 = call i64 @WPACKET_put_bytes_u8(i32* %125, i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %130, label %129

129:                                              ; preds = %124
  store i32 0, i32* %3, align 4
  br label %131

130:                                              ; preds = %124, %119, %113
  store i32 1, i32* %3, align 4
  br label %131

131:                                              ; preds = %130, %129, %112, %101, %89, %83, %64, %14
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local i32 @WPACKET_memcpy(i32*, i64, i32) #1

declare dso_local i32 @ssl_set_sig_mask(i32*, %struct.TYPE_12__*, i32) #1

declare dso_local i64 @WPACKET_put_bytes_u8(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
