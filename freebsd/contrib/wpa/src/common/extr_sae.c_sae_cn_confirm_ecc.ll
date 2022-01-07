; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_sae.c_sae_cn_confirm_ecc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_sae.c_sae_cn_confirm_ecc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sae_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.crypto_bignum = type { i32 }
%struct.crypto_ec_point = type { i32 }

@SAE_MAX_ECC_PRIME_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sae_data*, i32*, %struct.crypto_bignum*, %struct.crypto_ec_point*, %struct.crypto_bignum*, %struct.crypto_ec_point*, i32*)* @sae_cn_confirm_ecc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sae_cn_confirm_ecc(%struct.sae_data* %0, i32* %1, %struct.crypto_bignum* %2, %struct.crypto_ec_point* %3, %struct.crypto_bignum* %4, %struct.crypto_ec_point* %5, i32* %6) #0 {
  %8 = alloca %struct.sae_data*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.crypto_bignum*, align 8
  %11 = alloca %struct.crypto_ec_point*, align 8
  %12 = alloca %struct.crypto_bignum*, align 8
  %13 = alloca %struct.crypto_ec_point*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.sae_data* %0, %struct.sae_data** %8, align 8
  store i32* %1, i32** %9, align 8
  store %struct.crypto_bignum* %2, %struct.crypto_bignum** %10, align 8
  store %struct.crypto_ec_point* %3, %struct.crypto_ec_point** %11, align 8
  store %struct.crypto_bignum* %4, %struct.crypto_bignum** %12, align 8
  store %struct.crypto_ec_point* %5, %struct.crypto_ec_point** %13, align 8
  store i32* %6, i32** %14, align 8
  %18 = load i32, i32* @SAE_MAX_ECC_PRIME_LEN, align 4
  %19 = mul nsw i32 2, %18
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %15, align 8
  %22 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %16, align 8
  %23 = load i32, i32* @SAE_MAX_ECC_PRIME_LEN, align 4
  %24 = mul nsw i32 2, %23
  %25 = zext i32 %24 to i64
  %26 = alloca i32, i64 %25, align 16
  store i64 %25, i64* %17, align 8
  %27 = load %struct.sae_data*, %struct.sae_data** %8, align 8
  %28 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.crypto_ec_point*, %struct.crypto_ec_point** %11, align 8
  %33 = load %struct.sae_data*, %struct.sae_data** %8, align 8
  %34 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %22, i64 %38
  %40 = call i32 @crypto_ec_point_to_bin(i32 %31, %struct.crypto_ec_point* %32, i32* %22, i32* %39)
  %41 = load %struct.sae_data*, %struct.sae_data** %8, align 8
  %42 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.crypto_ec_point*, %struct.crypto_ec_point** %13, align 8
  %47 = load %struct.sae_data*, %struct.sae_data** %8, align 8
  %48 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %26, i64 %52
  %54 = call i32 @crypto_ec_point_to_bin(i32 %45, %struct.crypto_ec_point* %46, i32* %26, i32* %53)
  %55 = load %struct.sae_data*, %struct.sae_data** %8, align 8
  %56 = load i32*, i32** %9, align 8
  %57 = load %struct.crypto_bignum*, %struct.crypto_bignum** %10, align 8
  %58 = load %struct.sae_data*, %struct.sae_data** %8, align 8
  %59 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = mul nsw i32 2, %62
  %64 = load %struct.crypto_bignum*, %struct.crypto_bignum** %12, align 8
  %65 = load %struct.sae_data*, %struct.sae_data** %8, align 8
  %66 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %65, i32 0, i32 0
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = mul nsw i32 2, %69
  %71 = load i32*, i32** %14, align 8
  %72 = call i32 @sae_cn_confirm(%struct.sae_data* %55, i32* %56, %struct.crypto_bignum* %57, i32* %22, i32 %63, %struct.crypto_bignum* %64, i32* %26, i32 %70, i32* %71)
  %73 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %73)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @crypto_ec_point_to_bin(i32, %struct.crypto_ec_point*, i32*, i32*) #2

declare dso_local i32 @sae_cn_confirm(%struct.sae_data*, i32*, %struct.crypto_bignum*, i32*, i32, %struct.crypto_bignum*, i32*, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
