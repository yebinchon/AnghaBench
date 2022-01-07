; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_statem_clnt.c_tls_process_ske_ecdhe.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_statem_clnt.c_tls_process_ske_ecdhe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__*, %struct.TYPE_11__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__, i32* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }

@SSL_AD_DECODE_ERROR = common dso_local global i32 0, align 4
@SSL_F_TLS_PROCESS_SKE_ECDHE = common dso_local global i32 0, align 4
@SSL_R_LENGTH_TOO_SHORT = common dso_local global i32 0, align 4
@NAMED_CURVE_TYPE = common dso_local global i32 0, align 4
@SSL_AD_ILLEGAL_PARAMETER = common dso_local global i32 0, align 4
@SSL_R_WRONG_CURVE = common dso_local global i32 0, align 4
@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_R_UNABLE_TO_FIND_ECDH_PARAMETERS = common dso_local global i32 0, align 4
@SSL_R_LENGTH_MISMATCH = common dso_local global i32 0, align 4
@SSL_R_BAD_ECPOINT = common dso_local global i32 0, align 4
@SSL_aECDSA = common dso_local global i32 0, align 4
@SSL_aRSA = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i32*, i32**)* @tls_process_ske_ecdhe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls_process_ske_ecdhe(%struct.TYPE_13__* %0, i32* %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32** %2, i32*** %7, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = call i32 @PACKET_get_1(i32* %11, i32* %9)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load i32*, i32** %6, align 8
  %16 = call i32 @PACKET_get_net_2(i32* %15, i32* %10)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %14, %3
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %20 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %21 = load i32, i32* @SSL_F_TLS_PROCESS_SKE_ECDHE, align 4
  %22 = load i32, i32* @SSL_R_LENGTH_TOO_SHORT, align 4
  %23 = call i32 @SSLfatal(%struct.TYPE_13__* %19, i32 %20, i32 %21, i32 %22)
  store i32 0, i32* %4, align 4
  br label %121

24:                                               ; preds = %14
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @NAMED_CURVE_TYPE, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %33, label %28

28:                                               ; preds = %24
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @tls1_check_group_id(%struct.TYPE_13__* %29, i32 %30, i32 1)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %28, %24
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %35 = load i32, i32* @SSL_AD_ILLEGAL_PARAMETER, align 4
  %36 = load i32, i32* @SSL_F_TLS_PROCESS_SKE_ECDHE, align 4
  %37 = load i32, i32* @SSL_R_WRONG_CURVE, align 4
  %38 = call i32 @SSLfatal(%struct.TYPE_13__* %34, i32 %35, i32 %36, i32 %37)
  store i32 0, i32* %4, align 4
  br label %121

39:                                               ; preds = %28
  %40 = load i32, i32* %10, align 4
  %41 = call i32* @ssl_generate_param_group(i32 %40)
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 1
  store i32* %41, i32** %45, align 8
  %46 = icmp eq i32* %41, null
  br i1 %46, label %47, label %53

47:                                               ; preds = %39
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %49 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %50 = load i32, i32* @SSL_F_TLS_PROCESS_SKE_ECDHE, align 4
  %51 = load i32, i32* @SSL_R_UNABLE_TO_FIND_ECDH_PARAMETERS, align 4
  %52 = call i32 @SSLfatal(%struct.TYPE_13__* %48, i32 %49, i32 %50, i32 %51)
  store i32 0, i32* %4, align 4
  br label %121

53:                                               ; preds = %39
  %54 = load i32*, i32** %6, align 8
  %55 = call i32 @PACKET_get_length_prefixed_1(i32* %54, i32* %8)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %53
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %59 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %60 = load i32, i32* @SSL_F_TLS_PROCESS_SKE_ECDHE, align 4
  %61 = load i32, i32* @SSL_R_LENGTH_MISMATCH, align 4
  %62 = call i32 @SSLfatal(%struct.TYPE_13__* %58, i32 %59, i32 %60, i32 %61)
  store i32 0, i32* %4, align 4
  br label %121

63:                                               ; preds = %53
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = call i32 @PACKET_data(i32* %8)
  %70 = call i32 @PACKET_remaining(i32* %8)
  %71 = call i32 @EVP_PKEY_set1_tls_encodedpoint(i32* %68, i32 %69, i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %79, label %73

73:                                               ; preds = %63
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %75 = load i32, i32* @SSL_AD_ILLEGAL_PARAMETER, align 4
  %76 = load i32, i32* @SSL_F_TLS_PROCESS_SKE_ECDHE, align 4
  %77 = load i32, i32* @SSL_R_BAD_ECPOINT, align 4
  %78 = call i32 @SSLfatal(%struct.TYPE_13__* %74, i32 %75, i32 %76, i32 %77)
  store i32 0, i32* %4, align 4
  br label %121

79:                                               ; preds = %63
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @SSL_aECDSA, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %79
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32* @X509_get0_pubkey(i32 %96)
  %98 = load i32**, i32*** %7, align 8
  store i32* %97, i32** %98, align 8
  br label %120

99:                                               ; preds = %79
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 1
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @SSL_aRSA, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %119

111:                                              ; preds = %99
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32* @X509_get0_pubkey(i32 %116)
  %118 = load i32**, i32*** %7, align 8
  store i32* %117, i32** %118, align 8
  br label %119

119:                                              ; preds = %111, %99
  br label %120

120:                                              ; preds = %119, %91
  store i32 1, i32* %4, align 4
  br label %121

121:                                              ; preds = %120, %73, %57, %47, %33, %18
  %122 = load i32, i32* %4, align 4
  ret i32 %122
}

declare dso_local i32 @PACKET_get_1(i32*, i32*) #1

declare dso_local i32 @PACKET_get_net_2(i32*, i32*) #1

declare dso_local i32 @SSLfatal(%struct.TYPE_13__*, i32, i32, i32) #1

declare dso_local i32 @tls1_check_group_id(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32* @ssl_generate_param_group(i32) #1

declare dso_local i32 @PACKET_get_length_prefixed_1(i32*, i32*) #1

declare dso_local i32 @EVP_PKEY_set1_tls_encodedpoint(i32*, i32, i32) #1

declare dso_local i32 @PACKET_data(i32*) #1

declare dso_local i32 @PACKET_remaining(i32*) #1

declare dso_local i32* @X509_get0_pubkey(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
