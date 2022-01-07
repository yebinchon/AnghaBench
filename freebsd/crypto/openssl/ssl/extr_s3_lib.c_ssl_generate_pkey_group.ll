; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_s3_lib.c_ssl_generate_pkey_group.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_s3_lib.c_ssl_generate_pkey_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_F_SSL_GENERATE_PKEY_GROUP = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@TLS_CURVE_TYPE = common dso_local global i32 0, align 4
@TLS_CURVE_CUSTOM = common dso_local global i32 0, align 4
@EVP_PKEY_EC = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@ERR_R_EVP_LIB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ssl_generate_pkey_group(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.TYPE_3__* @tls1_group_id_lookup(i32 %9)
  store %struct.TYPE_3__* %10, %struct.TYPE_3__** %7, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %12 = icmp eq %struct.TYPE_3__* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load i32*, i32** %3, align 8
  %15 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %16 = load i32, i32* @SSL_F_SSL_GENERATE_PKEY_GROUP, align 4
  %17 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %18 = call i32 @SSLfatal(i32* %14, i32 %15, i32 %16, i32 %17)
  br label %85

19:                                               ; preds = %2
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @TLS_CURVE_TYPE, align 4
  %24 = and i32 %22, %23
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @TLS_CURVE_CUSTOM, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %19
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32* @EVP_PKEY_CTX_new_id(i32 %31, i32* null)
  store i32* %32, i32** %5, align 8
  br label %36

33:                                               ; preds = %19
  %34 = load i32, i32* @EVP_PKEY_EC, align 4
  %35 = call i32* @EVP_PKEY_CTX_new_id(i32 %34, i32* null)
  store i32* %35, i32** %5, align 8
  br label %36

36:                                               ; preds = %33, %28
  %37 = load i32*, i32** %5, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %45

39:                                               ; preds = %36
  %40 = load i32*, i32** %3, align 8
  %41 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %42 = load i32, i32* @SSL_F_SSL_GENERATE_PKEY_GROUP, align 4
  %43 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %44 = call i32 @SSLfatal(i32* %40, i32 %41, i32 %42, i32 %43)
  br label %85

45:                                               ; preds = %36
  %46 = load i32*, i32** %5, align 8
  %47 = call i64 @EVP_PKEY_keygen_init(i32* %46)
  %48 = icmp sle i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %45
  %50 = load i32*, i32** %3, align 8
  %51 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %52 = load i32, i32* @SSL_F_SSL_GENERATE_PKEY_GROUP, align 4
  %53 = load i32, i32* @ERR_R_EVP_LIB, align 4
  %54 = call i32 @SSLfatal(i32* %50, i32 %51, i32 %52, i32 %53)
  br label %85

55:                                               ; preds = %45
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @TLS_CURVE_CUSTOM, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %72

59:                                               ; preds = %55
  %60 = load i32*, i32** %5, align 8
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @EVP_PKEY_CTX_set_ec_paramgen_curve_nid(i32* %60, i32 %63)
  %65 = icmp sle i64 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %59
  %67 = load i32*, i32** %3, align 8
  %68 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %69 = load i32, i32* @SSL_F_SSL_GENERATE_PKEY_GROUP, align 4
  %70 = load i32, i32* @ERR_R_EVP_LIB, align 4
  %71 = call i32 @SSLfatal(i32* %67, i32 %68, i32 %69, i32 %70)
  br label %85

72:                                               ; preds = %59, %55
  %73 = load i32*, i32** %5, align 8
  %74 = call i64 @EVP_PKEY_keygen(i32* %73, i32** %6)
  %75 = icmp sle i64 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %72
  %77 = load i32*, i32** %3, align 8
  %78 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %79 = load i32, i32* @SSL_F_SSL_GENERATE_PKEY_GROUP, align 4
  %80 = load i32, i32* @ERR_R_EVP_LIB, align 4
  %81 = call i32 @SSLfatal(i32* %77, i32 %78, i32 %79, i32 %80)
  %82 = load i32*, i32** %6, align 8
  %83 = call i32 @EVP_PKEY_free(i32* %82)
  store i32* null, i32** %6, align 8
  br label %84

84:                                               ; preds = %76, %72
  br label %85

85:                                               ; preds = %84, %66, %49, %39, %13
  %86 = load i32*, i32** %5, align 8
  %87 = call i32 @EVP_PKEY_CTX_free(i32* %86)
  %88 = load i32*, i32** %6, align 8
  ret i32* %88
}

declare dso_local %struct.TYPE_3__* @tls1_group_id_lookup(i32) #1

declare dso_local i32 @SSLfatal(i32*, i32, i32, i32) #1

declare dso_local i32* @EVP_PKEY_CTX_new_id(i32, i32*) #1

declare dso_local i64 @EVP_PKEY_keygen_init(i32*) #1

declare dso_local i64 @EVP_PKEY_CTX_set_ec_paramgen_curve_nid(i32*, i32) #1

declare dso_local i64 @EVP_PKEY_keygen(i32*, i32**) #1

declare dso_local i32 @EVP_PKEY_free(i32*) #1

declare dso_local i32 @EVP_PKEY_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
