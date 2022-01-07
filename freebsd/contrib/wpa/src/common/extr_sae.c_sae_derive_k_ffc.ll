; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_sae.c_sae_derive_k_ffc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_sae.c_sae_derive_k_ffc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sae_data = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, %struct.crypto_bignum* }
%struct.crypto_bignum = type { i32 }

@SAE_MAX_PRIME_LEN = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"SAE: Failed to calculate K and k\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"SAE: k\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sae_data*, i32*)* @sae_derive_k_ffc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sae_derive_k_ffc(%struct.sae_data* %0, i32* %1) #0 {
  %3 = alloca %struct.sae_data*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.crypto_bignum*, align 8
  %6 = alloca i32, align 4
  store %struct.sae_data* %0, %struct.sae_data** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 -1, i32* %6, align 4
  %7 = call %struct.crypto_bignum* (...) @crypto_bignum_init()
  store %struct.crypto_bignum* %7, %struct.crypto_bignum** %5, align 8
  %8 = load %struct.crypto_bignum*, %struct.crypto_bignum** %5, align 8
  %9 = icmp eq %struct.crypto_bignum* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %85

11:                                               ; preds = %2
  %12 = load %struct.sae_data*, %struct.sae_data** %3, align 8
  %13 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 4
  %16 = load %struct.crypto_bignum*, %struct.crypto_bignum** %15, align 8
  %17 = load %struct.sae_data*, %struct.sae_data** %3, align 8
  %18 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.sae_data*, %struct.sae_data** %3, align 8
  %21 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.crypto_bignum*, %struct.crypto_bignum** %5, align 8
  %26 = call i64 @crypto_bignum_exptmod(%struct.crypto_bignum* %16, i32 %19, i32 %24, %struct.crypto_bignum* %25)
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %73, label %28

28:                                               ; preds = %11
  %29 = load %struct.crypto_bignum*, %struct.crypto_bignum** %5, align 8
  %30 = load %struct.sae_data*, %struct.sae_data** %3, align 8
  %31 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.sae_data*, %struct.sae_data** %3, align 8
  %36 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.crypto_bignum*, %struct.crypto_bignum** %5, align 8
  %41 = call i64 @crypto_bignum_mulmod(%struct.crypto_bignum* %29, i32 %34, i32 %39, %struct.crypto_bignum* %40)
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %73, label %43

43:                                               ; preds = %28
  %44 = load %struct.crypto_bignum*, %struct.crypto_bignum** %5, align 8
  %45 = load %struct.sae_data*, %struct.sae_data** %3, align 8
  %46 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.sae_data*, %struct.sae_data** %3, align 8
  %51 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.crypto_bignum*, %struct.crypto_bignum** %5, align 8
  %56 = call i64 @crypto_bignum_exptmod(%struct.crypto_bignum* %44, i32 %49, i32 %54, %struct.crypto_bignum* %55)
  %57 = icmp slt i64 %56, 0
  br i1 %57, label %73, label %58

58:                                               ; preds = %43
  %59 = load %struct.crypto_bignum*, %struct.crypto_bignum** %5, align 8
  %60 = call i64 @crypto_bignum_is_one(%struct.crypto_bignum* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %73, label %62

62:                                               ; preds = %58
  %63 = load %struct.crypto_bignum*, %struct.crypto_bignum** %5, align 8
  %64 = load i32*, i32** %4, align 8
  %65 = load i32, i32* @SAE_MAX_PRIME_LEN, align 4
  %66 = load %struct.sae_data*, %struct.sae_data** %3, align 8
  %67 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i64 @crypto_bignum_to_bin(%struct.crypto_bignum* %63, i32* %64, i32 %65, i32 %70)
  %72 = icmp slt i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %62, %58, %43, %28, %11
  %74 = load i32, i32* @MSG_DEBUG, align 4
  %75 = call i32 @wpa_printf(i32 %74, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %85

76:                                               ; preds = %62
  %77 = load i32, i32* @MSG_DEBUG, align 4
  %78 = load i32*, i32** %4, align 8
  %79 = load %struct.sae_data*, %struct.sae_data** %3, align 8
  %80 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %79, i32 0, i32 0
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @wpa_hexdump_key(i32 %77, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32* %78, i32 %83)
  store i32 0, i32* %6, align 4
  br label %85

85:                                               ; preds = %76, %73, %10
  %86 = load %struct.crypto_bignum*, %struct.crypto_bignum** %5, align 8
  %87 = call i32 @crypto_bignum_deinit(%struct.crypto_bignum* %86, i32 1)
  %88 = load i32, i32* %6, align 4
  ret i32 %88
}

declare dso_local %struct.crypto_bignum* @crypto_bignum_init(...) #1

declare dso_local i64 @crypto_bignum_exptmod(%struct.crypto_bignum*, i32, i32, %struct.crypto_bignum*) #1

declare dso_local i64 @crypto_bignum_mulmod(%struct.crypto_bignum*, i32, i32, %struct.crypto_bignum*) #1

declare dso_local i64 @crypto_bignum_is_one(%struct.crypto_bignum*) #1

declare dso_local i64 @crypto_bignum_to_bin(%struct.crypto_bignum*, i32*, i32, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @wpa_hexdump_key(i32, i8*, i32*, i32) #1

declare dso_local i32 @crypto_bignum_deinit(%struct.crypto_bignum*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
