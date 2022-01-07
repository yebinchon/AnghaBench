; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_statem_srvr.c_tls_process_cke_dhe.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_statem_srvr.c_tls_process_cke_dhe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }

@SSL_AD_DECODE_ERROR = common dso_local global i32 0, align 4
@SSL_F_TLS_PROCESS_CKE_DHE = common dso_local global i32 0, align 4
@SSL_R_DH_PUBLIC_VALUE_LENGTH_IS_WRONG = common dso_local global i32 0, align 4
@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_R_MISSING_TMP_DH_KEY = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_R_BN_LIB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32*)* @tls_process_cke_dhe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls_process_cke_dhe(%struct.TYPE_9__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %10, align 8
  store i32 0, i32* %11, align 4
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @PACKET_get_net_2(i32* %12, i32* %7)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load i32*, i32** %4, align 8
  %17 = call i64 @PACKET_remaining(i32* %16)
  %18 = load i32, i32* %7, align 4
  %19 = zext i32 %18 to i64
  %20 = icmp ne i64 %17, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %15, %2
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %23 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %24 = load i32, i32* @SSL_F_TLS_PROCESS_CKE_DHE, align 4
  %25 = load i32, i32* @SSL_R_DH_PUBLIC_VALUE_LENGTH_IS_WRONG, align 4
  %26 = call i32 @SSLfatal(%struct.TYPE_9__* %22, i32 %23, i32 %24, i32 %25)
  br label %122

27:                                               ; preds = %15
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  store i32* %33, i32** %5, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %27
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %38 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %39 = load i32, i32* @SSL_F_TLS_PROCESS_CKE_DHE, align 4
  %40 = load i32, i32* @SSL_R_MISSING_TMP_DH_KEY, align 4
  %41 = call i32 @SSLfatal(%struct.TYPE_9__* %37, i32 %38, i32 %39, i32 %40)
  br label %122

42:                                               ; preds = %27
  %43 = load i32*, i32** %4, align 8
  %44 = call i64 @PACKET_remaining(i32* %43)
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %42
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %48 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %49 = load i32, i32* @SSL_F_TLS_PROCESS_CKE_DHE, align 4
  %50 = load i32, i32* @SSL_R_MISSING_TMP_DH_KEY, align 4
  %51 = call i32 @SSLfatal(%struct.TYPE_9__* %47, i32 %48, i32 %49, i32 %50)
  br label %122

52:                                               ; preds = %42
  %53 = load i32*, i32** %4, align 8
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @PACKET_get_bytes(i32* %53, i8** %9, i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %52
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %59 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %60 = load i32, i32* @SSL_F_TLS_PROCESS_CKE_DHE, align 4
  %61 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %62 = call i32 @SSLfatal(%struct.TYPE_9__* %58, i32 %59, i32 %60, i32 %61)
  br label %122

63:                                               ; preds = %52
  %64 = call i32* (...) @EVP_PKEY_new()
  store i32* %64, i32** %10, align 8
  %65 = load i32*, i32** %10, align 8
  %66 = icmp eq i32* %65, null
  br i1 %66, label %72, label %67

67:                                               ; preds = %63
  %68 = load i32*, i32** %10, align 8
  %69 = load i32*, i32** %5, align 8
  %70 = call i64 @EVP_PKEY_copy_parameters(i32* %68, i32* %69)
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %67, %63
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %74 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %75 = load i32, i32* @SSL_F_TLS_PROCESS_CKE_DHE, align 4
  %76 = load i32, i32* @SSL_R_BN_LIB, align 4
  %77 = call i32 @SSLfatal(%struct.TYPE_9__* %73, i32 %74, i32 %75, i32 %76)
  br label %122

78:                                               ; preds = %67
  %79 = load i32*, i32** %10, align 8
  %80 = call i32* @EVP_PKEY_get0_DH(i32* %79)
  store i32* %80, i32** %6, align 8
  %81 = load i8*, i8** %9, align 8
  %82 = load i32, i32* %7, align 4
  %83 = call i32* @BN_bin2bn(i8* %81, i32 %82, i32* null)
  store i32* %83, i32** %8, align 8
  %84 = load i32*, i32** %8, align 8
  %85 = icmp eq i32* %84, null
  br i1 %85, label %94, label %86

86:                                               ; preds = %78
  %87 = load i32*, i32** %6, align 8
  %88 = icmp eq i32* %87, null
  br i1 %88, label %94, label %89

89:                                               ; preds = %86
  %90 = load i32*, i32** %6, align 8
  %91 = load i32*, i32** %8, align 8
  %92 = call i32 @DH_set0_key(i32* %90, i32* %91, i32* null)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %102, label %94

94:                                               ; preds = %89, %86, %78
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %96 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %97 = load i32, i32* @SSL_F_TLS_PROCESS_CKE_DHE, align 4
  %98 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %99 = call i32 @SSLfatal(%struct.TYPE_9__* %95, i32 %96, i32 %97, i32 %98)
  %100 = load i32*, i32** %8, align 8
  %101 = call i32 @BN_free(i32* %100)
  br label %122

102:                                              ; preds = %89
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %104 = load i32*, i32** %5, align 8
  %105 = load i32*, i32** %10, align 8
  %106 = call i64 @ssl_derive(%struct.TYPE_9__* %103, i32* %104, i32* %105, i32 1)
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %102
  br label %122

109:                                              ; preds = %102
  store i32 1, i32* %11, align 4
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = call i32 @EVP_PKEY_free(i32* %115)
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 0
  store i32* null, i32** %121, align 8
  br label %122

122:                                              ; preds = %109, %108, %94, %72, %57, %46, %36, %21
  %123 = load i32*, i32** %10, align 8
  %124 = call i32 @EVP_PKEY_free(i32* %123)
  %125 = load i32, i32* %11, align 4
  ret i32 %125
}

declare dso_local i32 @PACKET_get_net_2(i32*, i32*) #1

declare dso_local i64 @PACKET_remaining(i32*) #1

declare dso_local i32 @SSLfatal(%struct.TYPE_9__*, i32, i32, i32) #1

declare dso_local i32 @PACKET_get_bytes(i32*, i8**, i32) #1

declare dso_local i32* @EVP_PKEY_new(...) #1

declare dso_local i64 @EVP_PKEY_copy_parameters(i32*, i32*) #1

declare dso_local i32* @EVP_PKEY_get0_DH(i32*) #1

declare dso_local i32* @BN_bin2bn(i8*, i32, i32*) #1

declare dso_local i32 @DH_set0_key(i32*, i32*, i32*) #1

declare dso_local i32 @BN_free(i32*) #1

declare dso_local i64 @ssl_derive(%struct.TYPE_9__*, i32*, i32*, i32) #1

declare dso_local i32 @EVP_PKEY_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
