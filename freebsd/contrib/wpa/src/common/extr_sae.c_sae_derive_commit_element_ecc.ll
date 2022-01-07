; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_sae.c_sae_derive_commit_element_ecc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_sae.c_sae_derive_commit_element_ecc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sae_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32, i32 }
%struct.crypto_bignum = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"SAE: Could not compute commit-element\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sae_data*, %struct.crypto_bignum*)* @sae_derive_commit_element_ecc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sae_derive_commit_element_ecc(%struct.sae_data* %0, %struct.crypto_bignum* %1) #0 {
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
  br i1 %11, label %31, label %12

12:                                               ; preds = %2
  %13 = load %struct.sae_data*, %struct.sae_data** %4, align 8
  %14 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i64 @crypto_ec_point_init(i32 %17)
  %19 = load %struct.sae_data*, %struct.sae_data** %4, align 8
  %20 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i64 %18, i64* %22, align 8
  %23 = load %struct.sae_data*, %struct.sae_data** %4, align 8
  %24 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %12
  store i32 -1, i32* %3, align 4
  br label %67

30:                                               ; preds = %12
  br label %31

31:                                               ; preds = %30, %2
  %32 = load %struct.sae_data*, %struct.sae_data** %4, align 8
  %33 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.sae_data*, %struct.sae_data** %4, align 8
  %38 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.crypto_bignum*, %struct.crypto_bignum** %5, align 8
  %43 = load %struct.sae_data*, %struct.sae_data** %4, align 8
  %44 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i64 @crypto_ec_point_mul(i32 %36, i32 %41, %struct.crypto_bignum* %42, i64 %47)
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %63, label %50

50:                                               ; preds = %31
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
  %61 = call i64 @crypto_ec_point_invert(i32 %55, i64 %60)
  %62 = icmp slt i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %50, %31
  %64 = load i32, i32* @MSG_DEBUG, align 4
  %65 = call i32 @wpa_printf(i32 %64, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %67

66:                                               ; preds = %50
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %66, %63, %29
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i64 @crypto_ec_point_init(i32) #1

declare dso_local i64 @crypto_ec_point_mul(i32, i32, %struct.crypto_bignum*, i64) #1

declare dso_local i64 @crypto_ec_point_invert(i32, i64) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
