; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/dh/extr_dh_key.c_compute_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/dh/extr_dh_key.c_compute_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32*, %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_7__*, i32*, i32*, i32*, i32, i32*, i32*)* }

@OPENSSL_DH_MAX_MODULUS_BITS = common dso_local global i64 0, align 8
@DH_F_COMPUTE_KEY = common dso_local global i32 0, align 4
@DH_R_MODULUS_TOO_LARGE = common dso_local global i32 0, align 4
@DH_R_NO_PRIVATE_VALUE = common dso_local global i32 0, align 4
@DH_FLAG_CACHE_MONT_P = common dso_local global i32 0, align 4
@BN_FLG_CONSTTIME = common dso_local global i32 0, align 4
@DH_R_INVALID_PUBKEY = common dso_local global i32 0, align 4
@ERR_R_BN_LIB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, %struct.TYPE_7__*)* @compute_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compute_key(i8* %0, i32* %1, %struct.TYPE_7__* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %6, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  store i32 -1, i32* %10, align 4
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @BN_num_bits(i32 %14)
  %16 = load i64, i64* @OPENSSL_DH_MAX_MODULUS_BITS, align 8
  %17 = icmp sgt i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = load i32, i32* @DH_F_COMPUTE_KEY, align 4
  %20 = load i32, i32* @DH_R_MODULUS_TOO_LARGE, align 4
  %21 = call i32 @DHerr(i32 %19, i32 %20)
  br label %110

22:                                               ; preds = %3
  %23 = call i32* (...) @BN_CTX_new()
  store i32* %23, i32** %7, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  br label %110

27:                                               ; preds = %22
  %28 = load i32*, i32** %7, align 8
  %29 = call i32 @BN_CTX_start(i32* %28)
  %30 = load i32*, i32** %7, align 8
  %31 = call i32* @BN_CTX_get(i32* %30)
  store i32* %31, i32** %9, align 8
  %32 = load i32*, i32** %9, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  br label %110

35:                                               ; preds = %27
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load i32, i32* @DH_F_COMPUTE_KEY, align 4
  %42 = load i32, i32* @DH_R_NO_PRIVATE_VALUE, align 4
  %43 = call i32 @DHerr(i32 %41, i32 %42)
  br label %110

44:                                               ; preds = %35
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @DH_FLAG_CACHE_MONT_P, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %71

51:                                               ; preds = %44
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 5
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32*, i32** %7, align 8
  %61 = call i32* @BN_MONT_CTX_set_locked(i32* %53, i32 %56, i32 %59, i32* %60)
  store i32* %61, i32** %8, align 8
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 2
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* @BN_FLG_CONSTTIME, align 4
  %66 = call i32 @BN_set_flags(i32* %64, i32 %65)
  %67 = load i32*, i32** %8, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %70, label %69

69:                                               ; preds = %51
  br label %110

70:                                               ; preds = %51
  br label %71

71:                                               ; preds = %70, %44
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %73 = load i32*, i32** %5, align 8
  %74 = call i32 @DH_check_pub_key(%struct.TYPE_7__* %72, i32* %73, i32* %11)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = load i32, i32* %11, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %76, %71
  %80 = load i32, i32* @DH_F_COMPUTE_KEY, align 4
  %81 = load i32, i32* @DH_R_INVALID_PUBKEY, align 4
  %82 = call i32 @DHerr(i32 %80, i32 %81)
  br label %110

83:                                               ; preds = %76
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 3
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i32 (%struct.TYPE_7__*, i32*, i32*, i32*, i32, i32*, i32*)*, i32 (%struct.TYPE_7__*, i32*, i32*, i32*, i32, i32*, i32*)** %87, align 8
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %90 = load i32*, i32** %9, align 8
  %91 = load i32*, i32** %5, align 8
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 2
  %94 = load i32*, i32** %93, align 8
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32*, i32** %7, align 8
  %99 = load i32*, i32** %8, align 8
  %100 = call i32 %88(%struct.TYPE_7__* %89, i32* %90, i32* %91, i32* %94, i32 %97, i32* %98, i32* %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %106, label %102

102:                                              ; preds = %83
  %103 = load i32, i32* @DH_F_COMPUTE_KEY, align 4
  %104 = load i32, i32* @ERR_R_BN_LIB, align 4
  %105 = call i32 @DHerr(i32 %103, i32 %104)
  br label %110

106:                                              ; preds = %83
  %107 = load i32*, i32** %9, align 8
  %108 = load i8*, i8** %4, align 8
  %109 = call i32 @BN_bn2bin(i32* %107, i8* %108)
  store i32 %109, i32* %10, align 4
  br label %110

110:                                              ; preds = %106, %102, %79, %69, %40, %34, %26, %18
  %111 = load i32*, i32** %7, align 8
  %112 = call i32 @BN_CTX_end(i32* %111)
  %113 = load i32*, i32** %7, align 8
  %114 = call i32 @BN_CTX_free(i32* %113)
  %115 = load i32, i32* %10, align 4
  ret i32 %115
}

declare dso_local i64 @BN_num_bits(i32) #1

declare dso_local i32 @DHerr(i32, i32) #1

declare dso_local i32* @BN_CTX_new(...) #1

declare dso_local i32 @BN_CTX_start(i32*) #1

declare dso_local i32* @BN_CTX_get(i32*) #1

declare dso_local i32* @BN_MONT_CTX_set_locked(i32*, i32, i32, i32*) #1

declare dso_local i32 @BN_set_flags(i32*, i32) #1

declare dso_local i32 @DH_check_pub_key(%struct.TYPE_7__*, i32*, i32*) #1

declare dso_local i32 @BN_bn2bin(i32*, i8*) #1

declare dso_local i32 @BN_CTX_end(i32*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
