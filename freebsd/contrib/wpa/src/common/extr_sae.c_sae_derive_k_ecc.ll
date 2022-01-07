; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_sae.c_sae_derive_k_ecc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_sae.c_sae_derive_k_ecc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sae_data = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, %struct.crypto_ec_point* }
%struct.crypto_ec_point = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"SAE: Failed to calculate K and k\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"SAE: k\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sae_data*, i32*)* @sae_derive_k_ecc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sae_derive_k_ecc(%struct.sae_data* %0, i32* %1) #0 {
  %3 = alloca %struct.sae_data*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.crypto_ec_point*, align 8
  %6 = alloca i32, align 4
  store %struct.sae_data* %0, %struct.sae_data** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 -1, i32* %6, align 4
  %7 = load %struct.sae_data*, %struct.sae_data** %3, align 8
  %8 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.crypto_ec_point* @crypto_ec_point_init(i32 %11)
  store %struct.crypto_ec_point* %12, %struct.crypto_ec_point** %5, align 8
  %13 = load %struct.crypto_ec_point*, %struct.crypto_ec_point** %5, align 8
  %14 = icmp eq %struct.crypto_ec_point* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %94

16:                                               ; preds = %2
  %17 = load %struct.sae_data*, %struct.sae_data** %3, align 8
  %18 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.sae_data*, %struct.sae_data** %3, align 8
  %23 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 4
  %26 = load %struct.crypto_ec_point*, %struct.crypto_ec_point** %25, align 8
  %27 = load %struct.sae_data*, %struct.sae_data** %3, align 8
  %28 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.crypto_ec_point*, %struct.crypto_ec_point** %5, align 8
  %31 = call i64 @crypto_ec_point_mul(i32 %21, %struct.crypto_ec_point* %26, i32 %29, %struct.crypto_ec_point* %30)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %82, label %33

33:                                               ; preds = %16
  %34 = load %struct.sae_data*, %struct.sae_data** %3, align 8
  %35 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.crypto_ec_point*, %struct.crypto_ec_point** %5, align 8
  %40 = load %struct.sae_data*, %struct.sae_data** %3, align 8
  %41 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.crypto_ec_point*, %struct.crypto_ec_point** %5, align 8
  %46 = call i64 @crypto_ec_point_add(i32 %38, %struct.crypto_ec_point* %39, i32 %44, %struct.crypto_ec_point* %45)
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %82, label %48

48:                                               ; preds = %33
  %49 = load %struct.sae_data*, %struct.sae_data** %3, align 8
  %50 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.crypto_ec_point*, %struct.crypto_ec_point** %5, align 8
  %55 = load %struct.sae_data*, %struct.sae_data** %3, align 8
  %56 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.crypto_ec_point*, %struct.crypto_ec_point** %5, align 8
  %61 = call i64 @crypto_ec_point_mul(i32 %53, %struct.crypto_ec_point* %54, i32 %59, %struct.crypto_ec_point* %60)
  %62 = icmp slt i64 %61, 0
  br i1 %62, label %82, label %63

63:                                               ; preds = %48
  %64 = load %struct.sae_data*, %struct.sae_data** %3, align 8
  %65 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %64, i32 0, i32 0
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.crypto_ec_point*, %struct.crypto_ec_point** %5, align 8
  %70 = call i64 @crypto_ec_point_is_at_infinity(i32 %68, %struct.crypto_ec_point* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %82, label %72

72:                                               ; preds = %63
  %73 = load %struct.sae_data*, %struct.sae_data** %3, align 8
  %74 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %73, i32 0, i32 0
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.crypto_ec_point*, %struct.crypto_ec_point** %5, align 8
  %79 = load i32*, i32** %4, align 8
  %80 = call i64 @crypto_ec_point_to_bin(i32 %77, %struct.crypto_ec_point* %78, i32* %79, i32* null)
  %81 = icmp slt i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %72, %63, %48, %33, %16
  %83 = load i32, i32* @MSG_DEBUG, align 4
  %84 = call i32 @wpa_printf(i32 %83, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %94

85:                                               ; preds = %72
  %86 = load i32, i32* @MSG_DEBUG, align 4
  %87 = load i32*, i32** %4, align 8
  %88 = load %struct.sae_data*, %struct.sae_data** %3, align 8
  %89 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %88, i32 0, i32 0
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @wpa_hexdump_key(i32 %86, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32* %87, i32 %92)
  store i32 0, i32* %6, align 4
  br label %94

94:                                               ; preds = %85, %82, %15
  %95 = load %struct.crypto_ec_point*, %struct.crypto_ec_point** %5, align 8
  %96 = call i32 @crypto_ec_point_deinit(%struct.crypto_ec_point* %95, i32 1)
  %97 = load i32, i32* %6, align 4
  ret i32 %97
}

declare dso_local %struct.crypto_ec_point* @crypto_ec_point_init(i32) #1

declare dso_local i64 @crypto_ec_point_mul(i32, %struct.crypto_ec_point*, i32, %struct.crypto_ec_point*) #1

declare dso_local i64 @crypto_ec_point_add(i32, %struct.crypto_ec_point*, i32, %struct.crypto_ec_point*) #1

declare dso_local i64 @crypto_ec_point_is_at_infinity(i32, %struct.crypto_ec_point*) #1

declare dso_local i64 @crypto_ec_point_to_bin(i32, %struct.crypto_ec_point*, i32*, i32*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @wpa_hexdump_key(i32, i8*, i32*, i32) #1

declare dso_local i32 @crypto_ec_point_deinit(%struct.crypto_ec_point*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
