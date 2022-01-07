; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_sae.c_sae_cn_confirm.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_sae.c_sae_cn_confirm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sae_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }
%struct.crypto_bignum = type { i32 }

@SAE_MAX_PRIME_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sae_data*, i32*, %struct.crypto_bignum*, i32*, i64, %struct.crypto_bignum*, i32*, i64, i32*)* @sae_cn_confirm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sae_cn_confirm(%struct.sae_data* %0, i32* %1, %struct.crypto_bignum* %2, i32* %3, i64 %4, %struct.crypto_bignum* %5, i32* %6, i64 %7, i32* %8) #0 {
  %10 = alloca %struct.sae_data*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.crypto_bignum*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.crypto_bignum*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  %19 = alloca [5 x i32*], align 16
  %20 = alloca [5 x i64], align 16
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  store %struct.sae_data* %0, %struct.sae_data** %10, align 8
  store i32* %1, i32** %11, align 8
  store %struct.crypto_bignum* %2, %struct.crypto_bignum** %12, align 8
  store i32* %3, i32** %13, align 8
  store i64 %4, i64* %14, align 8
  store %struct.crypto_bignum* %5, %struct.crypto_bignum** %15, align 8
  store i32* %6, i32** %16, align 8
  store i64 %7, i64* %17, align 8
  store i32* %8, i32** %18, align 8
  %24 = load i32, i32* @SAE_MAX_PRIME_LEN, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %21, align 8
  %27 = alloca i32, i64 %25, align 16
  store i64 %25, i64* %22, align 8
  %28 = load i32, i32* @SAE_MAX_PRIME_LEN, align 4
  %29 = zext i32 %28 to i64
  %30 = alloca i32, i64 %29, align 16
  store i64 %29, i64* %23, align 8
  %31 = load i32*, i32** %11, align 8
  %32 = getelementptr inbounds [5 x i32*], [5 x i32*]* %19, i64 0, i64 0
  store i32* %31, i32** %32, align 16
  %33 = getelementptr inbounds [5 x i64], [5 x i64]* %20, i64 0, i64 0
  store i64 2, i64* %33, align 16
  %34 = load %struct.crypto_bignum*, %struct.crypto_bignum** %12, align 8
  %35 = mul nuw i64 4, %25
  %36 = trunc i64 %35 to i32
  %37 = load %struct.sae_data*, %struct.sae_data** %10, align 8
  %38 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @crypto_bignum_to_bin(%struct.crypto_bignum* %34, i32* %27, i32 %36, i64 %41)
  %43 = getelementptr inbounds [5 x i32*], [5 x i32*]* %19, i64 0, i64 1
  store i32* %27, i32** %43, align 8
  %44 = load %struct.sae_data*, %struct.sae_data** %10, align 8
  %45 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds [5 x i64], [5 x i64]* %20, i64 0, i64 1
  store i64 %48, i64* %49, align 8
  %50 = load i32*, i32** %13, align 8
  %51 = getelementptr inbounds [5 x i32*], [5 x i32*]* %19, i64 0, i64 2
  store i32* %50, i32** %51, align 16
  %52 = load i64, i64* %14, align 8
  %53 = getelementptr inbounds [5 x i64], [5 x i64]* %20, i64 0, i64 2
  store i64 %52, i64* %53, align 16
  %54 = load %struct.crypto_bignum*, %struct.crypto_bignum** %15, align 8
  %55 = mul nuw i64 4, %29
  %56 = trunc i64 %55 to i32
  %57 = load %struct.sae_data*, %struct.sae_data** %10, align 8
  %58 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @crypto_bignum_to_bin(%struct.crypto_bignum* %54, i32* %30, i32 %56, i64 %61)
  %63 = getelementptr inbounds [5 x i32*], [5 x i32*]* %19, i64 0, i64 3
  store i32* %30, i32** %63, align 8
  %64 = load %struct.sae_data*, %struct.sae_data** %10, align 8
  %65 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %64, i32 0, i32 0
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds [5 x i64], [5 x i64]* %20, i64 0, i64 3
  store i64 %68, i64* %69, align 8
  %70 = load i32*, i32** %16, align 8
  %71 = getelementptr inbounds [5 x i32*], [5 x i32*]* %19, i64 0, i64 4
  store i32* %70, i32** %71, align 16
  %72 = load i64, i64* %17, align 8
  %73 = getelementptr inbounds [5 x i64], [5 x i64]* %20, i64 0, i64 4
  store i64 %72, i64* %73, align 16
  %74 = load %struct.sae_data*, %struct.sae_data** %10, align 8
  %75 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %74, i32 0, i32 0
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = getelementptr inbounds [5 x i32*], [5 x i32*]* %19, i64 0, i64 0
  %80 = getelementptr inbounds [5 x i64], [5 x i64]* %20, i64 0, i64 0
  %81 = load i32*, i32** %18, align 8
  %82 = call i32 @hmac_sha256_vector(i32 %78, i32 4, i32 5, i32** %79, i64* %80, i32* %81)
  %83 = load i8*, i8** %21, align 8
  call void @llvm.stackrestore(i8* %83)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @crypto_bignum_to_bin(%struct.crypto_bignum*, i32*, i32, i64) #2

declare dso_local i32 @hmac_sha256_vector(i32, i32, i32, i32**, i64*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
