; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_statem_clnt.c_tls_construct_client_certificate.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_statem_clnt.c_tls_construct_client_certificate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_17__*, %struct.TYPE_15__*, %struct.TYPE_14__*, i32, i32* }
%struct.TYPE_17__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 (%struct.TYPE_18__*, i32)* }
%struct.TYPE_15__ = type { i32* }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }

@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_F_TLS_CONSTRUCT_CLIENT_CERTIFICATE = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL3_CC_HANDSHAKE = common dso_local global i32 0, align 4
@SSL3_CHANGE_CIPHER_CLIENT_WRITE = common dso_local global i32 0, align 4
@SSL_AD_NO_ALERT = common dso_local global i32 0, align 4
@SSL_R_CANNOT_CHANGE_CIPHER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls_construct_client_certificate(%struct.TYPE_18__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca i32*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %7 = call i64 @SSL_IS_TLS13(%struct.TYPE_18__* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %43

9:                                                ; preds = %2
  %10 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 4
  %12 = load i32*, i32** %11, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %25

14:                                               ; preds = %9
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @WPACKET_put_bytes_u8(i32* %15, i32 0)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %14
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %20 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %21 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CLIENT_CERTIFICATE, align 4
  %22 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %23 = call i32 @SSLfatal(%struct.TYPE_18__* %19, i32 %20, i32 %21, i32 %22)
  store i32 0, i32* %3, align 4
  br label %94

24:                                               ; preds = %14
  br label %42

25:                                               ; preds = %9
  %26 = load i32*, i32** %5, align 8
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i32 0, i32 4
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @WPACKET_sub_memcpy_u8(i32* %26, i32* %29, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %25
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %37 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %38 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CLIENT_CERTIFICATE, align 4
  %39 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %40 = call i32 @SSLfatal(%struct.TYPE_18__* %36, i32 %37, i32 %38, i32 %39)
  store i32 0, i32* %3, align 4
  br label %94

41:                                               ; preds = %25
  br label %42

42:                                               ; preds = %41, %24
  br label %43

43:                                               ; preds = %42, %2
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %45 = load i32*, i32** %5, align 8
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i32 0, i32 2
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %51, 2
  br i1 %52, label %53, label %54

53:                                               ; preds = %43
  br label %60

54:                                               ; preds = %43
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  br label %60

60:                                               ; preds = %54, %53
  %61 = phi i32* [ null, %53 ], [ %59, %54 ]
  %62 = call i32 @ssl3_output_cert_chain(%struct.TYPE_18__* %44, i32* %45, i32* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %60
  store i32 0, i32* %3, align 4
  br label %94

65:                                               ; preds = %60
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %67 = call i64 @SSL_IS_TLS13(%struct.TYPE_18__* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %93

69:                                               ; preds = %65
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %71 = call i64 @SSL_IS_FIRST_HANDSHAKE(%struct.TYPE_18__* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %93

73:                                               ; preds = %69
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 0
  %80 = load i32 (%struct.TYPE_18__*, i32)*, i32 (%struct.TYPE_18__*, i32)** %79, align 8
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %82 = load i32, i32* @SSL3_CC_HANDSHAKE, align 4
  %83 = load i32, i32* @SSL3_CHANGE_CIPHER_CLIENT_WRITE, align 4
  %84 = or i32 %82, %83
  %85 = call i32 %80(%struct.TYPE_18__* %81, i32 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %93, label %87

87:                                               ; preds = %73
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %89 = load i32, i32* @SSL_AD_NO_ALERT, align 4
  %90 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CLIENT_CERTIFICATE, align 4
  %91 = load i32, i32* @SSL_R_CANNOT_CHANGE_CIPHER, align 4
  %92 = call i32 @SSLfatal(%struct.TYPE_18__* %88, i32 %89, i32 %90, i32 %91)
  store i32 0, i32* %3, align 4
  br label %94

93:                                               ; preds = %73, %69, %65
  store i32 1, i32* %3, align 4
  br label %94

94:                                               ; preds = %93, %87, %64, %35, %18
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i64 @SSL_IS_TLS13(%struct.TYPE_18__*) #1

declare dso_local i32 @WPACKET_put_bytes_u8(i32*, i32) #1

declare dso_local i32 @SSLfatal(%struct.TYPE_18__*, i32, i32, i32) #1

declare dso_local i32 @WPACKET_sub_memcpy_u8(i32*, i32*, i32) #1

declare dso_local i32 @ssl3_output_cert_chain(%struct.TYPE_18__*, i32*, i32*) #1

declare dso_local i64 @SSL_IS_FIRST_HANDSHAKE(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
