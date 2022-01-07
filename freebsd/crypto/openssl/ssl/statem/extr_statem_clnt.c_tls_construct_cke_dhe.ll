; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_statem_clnt.c_tls_construct_cke_dhe.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_statem_clnt.c_tls_construct_cke_dhe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32* }

@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_F_TLS_CONSTRUCT_CKE_DHE = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32*)* @tls_construct_cke_dhe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls_construct_cke_dhe(%struct.TYPE_7__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  store i8* null, i8** %10, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %9, align 8
  %16 = load i32*, i32** %9, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %20 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %21 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CKE_DHE, align 4
  %22 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %23 = call i32 @SSLfatal(%struct.TYPE_7__* %19, i32 %20, i32 %21, i32 %22)
  br label %73

24:                                               ; preds = %2
  %25 = load i32*, i32** %9, align 8
  %26 = call i32* @ssl_generate_pkey(i32* %25)
  store i32* %26, i32** %8, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %31 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %32 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CKE_DHE, align 4
  %33 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %34 = call i32 @SSLfatal(%struct.TYPE_7__* %30, i32 %31, i32 %32, i32 %33)
  br label %73

35:                                               ; preds = %24
  %36 = load i32*, i32** %8, align 8
  %37 = call i32* @EVP_PKEY_get0_DH(i32* %36)
  store i32* %37, i32** %6, align 8
  %38 = load i32*, i32** %6, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %42 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %43 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CKE_DHE, align 4
  %44 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %45 = call i32 @SSLfatal(%struct.TYPE_7__* %41, i32 %42, i32 %43, i32 %44)
  br label %73

46:                                               ; preds = %35
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %48 = load i32*, i32** %8, align 8
  %49 = load i32*, i32** %9, align 8
  %50 = call i64 @ssl_derive(%struct.TYPE_7__* %47, i32* %48, i32* %49, i32 0)
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  br label %73

53:                                               ; preds = %46
  %54 = load i32*, i32** %6, align 8
  %55 = call i32 @DH_get0_key(i32* %54, i32** %7, i32* null)
  %56 = load i32*, i32** %5, align 8
  %57 = load i32*, i32** %7, align 8
  %58 = call i32 @BN_num_bytes(i32* %57)
  %59 = call i32 @WPACKET_sub_allocate_bytes_u16(i32* %56, i32 %58, i8** %10)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %67, label %61

61:                                               ; preds = %53
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %63 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %64 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CKE_DHE, align 4
  %65 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %66 = call i32 @SSLfatal(%struct.TYPE_7__* %62, i32 %63, i32 %64, i32 %65)
  br label %73

67:                                               ; preds = %53
  %68 = load i32*, i32** %7, align 8
  %69 = load i8*, i8** %10, align 8
  %70 = call i32 @BN_bn2bin(i32* %68, i8* %69)
  %71 = load i32*, i32** %8, align 8
  %72 = call i32 @EVP_PKEY_free(i32* %71)
  store i32 1, i32* %3, align 4
  br label %76

73:                                               ; preds = %61, %52, %40, %29, %18
  %74 = load i32*, i32** %8, align 8
  %75 = call i32 @EVP_PKEY_free(i32* %74)
  store i32 0, i32* %3, align 4
  br label %76

76:                                               ; preds = %73, %67
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @SSLfatal(%struct.TYPE_7__*, i32, i32, i32) #1

declare dso_local i32* @ssl_generate_pkey(i32*) #1

declare dso_local i32* @EVP_PKEY_get0_DH(i32*) #1

declare dso_local i64 @ssl_derive(%struct.TYPE_7__*, i32*, i32*, i32) #1

declare dso_local i32 @DH_get0_key(i32*, i32**, i32*) #1

declare dso_local i32 @WPACKET_sub_allocate_bytes_u16(i32*, i32, i8**) #1

declare dso_local i32 @BN_num_bytes(i32*) #1

declare dso_local i32 @BN_bn2bin(i32*, i8*) #1

declare dso_local i32 @EVP_PKEY_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
