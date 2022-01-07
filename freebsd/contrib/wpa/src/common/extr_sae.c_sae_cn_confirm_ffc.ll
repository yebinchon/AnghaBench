; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_sae.c_sae_cn_confirm_ffc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_sae.c_sae_cn_confirm_ffc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sae_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.crypto_bignum = type { i32 }

@SAE_MAX_PRIME_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sae_data*, i32*, %struct.crypto_bignum*, %struct.crypto_bignum*, %struct.crypto_bignum*, %struct.crypto_bignum*, i32*)* @sae_cn_confirm_ffc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sae_cn_confirm_ffc(%struct.sae_data* %0, i32* %1, %struct.crypto_bignum* %2, %struct.crypto_bignum* %3, %struct.crypto_bignum* %4, %struct.crypto_bignum* %5, i32* %6) #0 {
  %8 = alloca %struct.sae_data*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.crypto_bignum*, align 8
  %11 = alloca %struct.crypto_bignum*, align 8
  %12 = alloca %struct.crypto_bignum*, align 8
  %13 = alloca %struct.crypto_bignum*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.sae_data* %0, %struct.sae_data** %8, align 8
  store i32* %1, i32** %9, align 8
  store %struct.crypto_bignum* %2, %struct.crypto_bignum** %10, align 8
  store %struct.crypto_bignum* %3, %struct.crypto_bignum** %11, align 8
  store %struct.crypto_bignum* %4, %struct.crypto_bignum** %12, align 8
  store %struct.crypto_bignum* %5, %struct.crypto_bignum** %13, align 8
  store i32* %6, i32** %14, align 8
  %18 = load i32, i32* @SAE_MAX_PRIME_LEN, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %15, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %16, align 8
  %22 = load i32, i32* @SAE_MAX_PRIME_LEN, align 4
  %23 = zext i32 %22 to i64
  %24 = alloca i32, i64 %23, align 16
  store i64 %23, i64* %17, align 8
  %25 = load %struct.crypto_bignum*, %struct.crypto_bignum** %11, align 8
  %26 = mul nuw i64 4, %19
  %27 = trunc i64 %26 to i32
  %28 = load %struct.sae_data*, %struct.sae_data** %8, align 8
  %29 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @crypto_bignum_to_bin(%struct.crypto_bignum* %25, i32* %21, i32 %27, i32 %32)
  %34 = load %struct.crypto_bignum*, %struct.crypto_bignum** %13, align 8
  %35 = mul nuw i64 4, %23
  %36 = trunc i64 %35 to i32
  %37 = load %struct.sae_data*, %struct.sae_data** %8, align 8
  %38 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @crypto_bignum_to_bin(%struct.crypto_bignum* %34, i32* %24, i32 %36, i32 %41)
  %43 = load %struct.sae_data*, %struct.sae_data** %8, align 8
  %44 = load i32*, i32** %9, align 8
  %45 = load %struct.crypto_bignum*, %struct.crypto_bignum** %10, align 8
  %46 = load %struct.sae_data*, %struct.sae_data** %8, align 8
  %47 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.crypto_bignum*, %struct.crypto_bignum** %12, align 8
  %52 = load %struct.sae_data*, %struct.sae_data** %8, align 8
  %53 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32*, i32** %14, align 8
  %58 = call i32 @sae_cn_confirm(%struct.sae_data* %43, i32* %44, %struct.crypto_bignum* %45, i32* %21, i32 %50, %struct.crypto_bignum* %51, i32* %24, i32 %56, i32* %57)
  %59 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %59)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @crypto_bignum_to_bin(%struct.crypto_bignum*, i32*, i32, i32) #2

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
