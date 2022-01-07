; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_sae.c_sae_derive_commit_element_ffc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_sae.c_sae_derive_commit_element_ffc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sae_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32, i32 }
%struct.crypto_bignum = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"SAE: Could not compute commit-element\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sae_data*, %struct.crypto_bignum*)* @sae_derive_commit_element_ffc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sae_derive_commit_element_ffc(%struct.sae_data* %0, %struct.crypto_bignum* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sae_data*, align 8
  %5 = alloca %struct.crypto_bignum*, align 8
  store %struct.sae_data* %0, %struct.sae_data** %4, align 8
  store %struct.crypto_bignum* %1, %struct.crypto_bignum** %5, align 8
  %6 = load %struct.sae_data*, %struct.sae_data** %4, align 8
  %7 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %26, label %12

12:                                               ; preds = %2
  %13 = call i64 (...) @crypto_bignum_init()
  %14 = load %struct.sae_data*, %struct.sae_data** %4, align 8
  %15 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i64 %13, i64* %17, align 8
  %18 = load %struct.sae_data*, %struct.sae_data** %4, align 8
  %19 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %12
  store i32 -1, i32* %3, align 4
  br label %67

25:                                               ; preds = %12
  br label %26

26:                                               ; preds = %25, %2
  %27 = load %struct.sae_data*, %struct.sae_data** %4, align 8
  %28 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.crypto_bignum*, %struct.crypto_bignum** %5, align 8
  %33 = load %struct.sae_data*, %struct.sae_data** %4, align 8
  %34 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.sae_data*, %struct.sae_data** %4, align 8
  %39 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i64 @crypto_bignum_exptmod(i32 %31, %struct.crypto_bignum* %32, i32 %37, i64 %42)
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %63, label %45

45:                                               ; preds = %26
  %46 = load %struct.sae_data*, %struct.sae_data** %4, align 8
  %47 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.sae_data*, %struct.sae_data** %4, align 8
  %52 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.sae_data*, %struct.sae_data** %4, align 8
  %57 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i64 @crypto_bignum_inverse(i64 %50, i32 %55, i64 %60)
  %62 = icmp slt i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %45, %26
  %64 = load i32, i32* @MSG_DEBUG, align 4
  %65 = call i32 @wpa_printf(i32 %64, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %67

66:                                               ; preds = %45
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %66, %63, %24
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i64 @crypto_bignum_init(...) #1

declare dso_local i64 @crypto_bignum_exptmod(i32, %struct.crypto_bignum*, i32, i64) #1

declare dso_local i64 @crypto_bignum_inverse(i64, i32, i64) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
