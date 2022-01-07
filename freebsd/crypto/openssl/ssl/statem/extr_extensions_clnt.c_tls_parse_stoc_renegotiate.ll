; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_extensions_clnt.c_tls_parse_stoc_renegotiate.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_extensions_clnt.c_tls_parse_stoc_renegotiate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i64, i32, i32, i32 }

@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_F_TLS_PARSE_STOC_RENEGOTIATE = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_AD_DECODE_ERROR = common dso_local global i32 0, align 4
@SSL_R_RENEGOTIATION_ENCODING_ERR = common dso_local global i32 0, align 4
@SSL_AD_ILLEGAL_PARAMETER = common dso_local global i32 0, align 4
@SSL_R_RENEGOTIATION_MISMATCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls_parse_stoc_renegotiate(%struct.TYPE_6__* %0, i32* %1, i32 %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = add i64 %19, %24
  store i64 %25, i64* %12, align 8
  %26 = load i64, i64* %12, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %5
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br label %35

35:                                               ; preds = %28, %5
  %36 = phi i1 [ true, %5 ], [ %34, %28 ]
  %37 = zext i1 %36 to i32
  %38 = call i32 @ossl_assert(i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %55

40:                                               ; preds = %35
  %41 = load i64, i64* %12, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %40
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br label %50

50:                                               ; preds = %43, %40
  %51 = phi i1 [ true, %40 ], [ %49, %43 ]
  %52 = zext i1 %51 to i32
  %53 = call i32 @ossl_assert(i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %50, %35
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %57 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %58 = load i32, i32* @SSL_F_TLS_PARSE_STOC_RENEGOTIATE, align 4
  %59 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %60 = call i32 @SSLfatal(%struct.TYPE_6__* %56, i32 %57, i32 %58, i32 %59)
  store i32 0, i32* %6, align 4
  br label %155

61:                                               ; preds = %50
  %62 = load i32*, i32** %8, align 8
  %63 = call i32 @PACKET_get_1_len(i32* %62, i64* %13)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %71, label %65

65:                                               ; preds = %61
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %67 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %68 = load i32, i32* @SSL_F_TLS_PARSE_STOC_RENEGOTIATE, align 4
  %69 = load i32, i32* @SSL_R_RENEGOTIATION_ENCODING_ERR, align 4
  %70 = call i32 @SSLfatal(%struct.TYPE_6__* %66, i32 %67, i32 %68, i32 %69)
  store i32 0, i32* %6, align 4
  br label %155

71:                                               ; preds = %61
  %72 = load i32*, i32** %8, align 8
  %73 = call i64 @PACKET_remaining(i32* %72)
  %74 = load i64, i64* %13, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %71
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %78 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %79 = load i32, i32* @SSL_F_TLS_PARSE_STOC_RENEGOTIATE, align 4
  %80 = load i32, i32* @SSL_R_RENEGOTIATION_ENCODING_ERR, align 4
  %81 = call i32 @SSLfatal(%struct.TYPE_6__* %77, i32 %78, i32 %79, i32 %80)
  store i32 0, i32* %6, align 4
  br label %155

82:                                               ; preds = %71
  %83 = load i64, i64* %13, align 8
  %84 = load i64, i64* %12, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %92

86:                                               ; preds = %82
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %88 = load i32, i32* @SSL_AD_ILLEGAL_PARAMETER, align 4
  %89 = load i32, i32* @SSL_F_TLS_PARSE_STOC_RENEGOTIATE, align 4
  %90 = load i32, i32* @SSL_R_RENEGOTIATION_MISMATCH, align 4
  %91 = call i32 @SSLfatal(%struct.TYPE_6__* %87, i32 %88, i32 %89, i32 %90)
  store i32 0, i32* %6, align 4
  br label %155

92:                                               ; preds = %82
  %93 = load i32*, i32** %8, align 8
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = call i32 @PACKET_get_bytes(i32* %93, i8** %14, i64 %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %115

101:                                              ; preds = %92
  %102 = load i8*, i8** %14, align 8
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = call i64 @memcmp(i8* %102, i32 %107, i64 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %101, %92
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %117 = load i32, i32* @SSL_AD_ILLEGAL_PARAMETER, align 4
  %118 = load i32, i32* @SSL_F_TLS_PARSE_STOC_RENEGOTIATE, align 4
  %119 = load i32, i32* @SSL_R_RENEGOTIATION_MISMATCH, align 4
  %120 = call i32 @SSLfatal(%struct.TYPE_6__* %116, i32 %117, i32 %118, i32 %119)
  store i32 0, i32* %6, align 4
  br label %155

121:                                              ; preds = %101
  %122 = load i32*, i32** %8, align 8
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = call i32 @PACKET_get_bytes(i32* %122, i8** %14, i64 %127)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %144

130:                                              ; preds = %121
  %131 = load i8*, i8** %14, align 8
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 0
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = call i64 @memcmp(i8* %131, i32 %136, i64 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %150

144:                                              ; preds = %130, %121
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %146 = load i32, i32* @SSL_AD_ILLEGAL_PARAMETER, align 4
  %147 = load i32, i32* @SSL_F_TLS_PARSE_STOC_RENEGOTIATE, align 4
  %148 = load i32, i32* @SSL_R_RENEGOTIATION_MISMATCH, align 4
  %149 = call i32 @SSLfatal(%struct.TYPE_6__* %145, i32 %146, i32 %147, i32 %148)
  store i32 0, i32* %6, align 4
  br label %155

150:                                              ; preds = %130
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 0
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 2
  store i32 1, i32* %154, align 8
  store i32 1, i32* %6, align 4
  br label %155

155:                                              ; preds = %150, %144, %115, %86, %76, %65, %55
  %156 = load i32, i32* %6, align 4
  ret i32 %156
}

declare dso_local i32 @ossl_assert(i32) #1

declare dso_local i32 @SSLfatal(%struct.TYPE_6__*, i32, i32, i32) #1

declare dso_local i32 @PACKET_get_1_len(i32*, i64*) #1

declare dso_local i64 @PACKET_remaining(i32*) #1

declare dso_local i32 @PACKET_get_bytes(i32*, i8**, i64) #1

declare dso_local i64 @memcmp(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
