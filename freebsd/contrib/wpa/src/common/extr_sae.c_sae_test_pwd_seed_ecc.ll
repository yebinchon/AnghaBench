; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_sae.c_sae_test_pwd_seed_ecc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_sae.c_sae_test_pwd_seed_ecc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sae_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.crypto_bignum = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"SAE: pwd-seed\00", align 1
@SHA256_MAC_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"SAE Hunting and Pecking\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"SAE: pwd-value\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sae_data*, i32*, i32*, i32*, i32*, i32*)* @sae_test_pwd_seed_ecc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sae_test_pwd_seed_ecc(%struct.sae_data* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sae_data*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.crypto_bignum*, align 8
  %15 = alloca %struct.crypto_bignum*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.sae_data* %0, %struct.sae_data** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %20 = load i32, i32* @MSG_DEBUG, align 4
  %21 = load i32*, i32** %9, align 8
  %22 = load i32, i32* @SHA256_MAC_LEN, align 4
  %23 = call i32 @wpa_hexdump_key(i32 %20, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32* %21, i32 %22)
  %24 = load %struct.sae_data*, %struct.sae_data** %8, align 8
  %25 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @crypto_ec_prime_len_bits(i32 %28)
  store i64 %29, i64* %17, align 8
  %30 = load i32*, i32** %9, align 8
  %31 = load i32, i32* @SHA256_MAC_LEN, align 4
  %32 = load i32*, i32** %10, align 8
  %33 = load %struct.sae_data*, %struct.sae_data** %8, align 8
  %34 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %13, align 8
  %39 = load i64, i64* %17, align 8
  %40 = call i64 @sha256_prf_bits(i32* %30, i32 %31, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32* %32, i32 %37, i32* %38, i64 %39)
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %6
  store i32 -1, i32* %7, align 4
  br label %121

43:                                               ; preds = %6
  %44 = load i64, i64* %17, align 8
  %45 = urem i64 %44, 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %59

47:                                               ; preds = %43
  %48 = load i32*, i32** %13, align 8
  %49 = load %struct.sae_data*, %struct.sae_data** %8, align 8
  %50 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i64, i64* %17, align 8
  %55 = urem i64 %54, 8
  %56 = sub i64 8, %55
  %57 = trunc i64 %56 to i32
  %58 = call i32 @buf_shift_right(i32* %48, i32 %53, i32 %57)
  br label %59

59:                                               ; preds = %47, %43
  %60 = load i32, i32* @MSG_DEBUG, align 4
  %61 = load i32*, i32** %13, align 8
  %62 = load %struct.sae_data*, %struct.sae_data** %8, align 8
  %63 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @wpa_hexdump_key(i32 %60, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32* %61, i32 %66)
  %68 = load i32*, i32** %13, align 8
  %69 = load i32*, i32** %10, align 8
  %70 = load %struct.sae_data*, %struct.sae_data** %8, align 8
  %71 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %70, i32 0, i32 0
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @const_time_memcmp(i32* %68, i32* %69, i32 %74)
  store i32 %75, i32* %18, align 4
  %76 = load i32, i32* %18, align 4
  %77 = call i32 @const_time_fill_msb(i32 %76)
  store i32 %77, i32* %19, align 4
  %78 = load i32*, i32** %13, align 8
  %79 = load %struct.sae_data*, %struct.sae_data** %8, align 8
  %80 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %79, i32 0, i32 0
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call %struct.crypto_bignum* @crypto_bignum_init_set(i32* %78, i32 %83)
  store %struct.crypto_bignum* %84, %struct.crypto_bignum** %15, align 8
  %85 = load %struct.crypto_bignum*, %struct.crypto_bignum** %15, align 8
  %86 = icmp ne %struct.crypto_bignum* %85, null
  br i1 %86, label %88, label %87

87:                                               ; preds = %59
  store i32 -1, i32* %7, align 4
  br label %121

88:                                               ; preds = %59
  %89 = load %struct.sae_data*, %struct.sae_data** %8, align 8
  %90 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %89, i32 0, i32 0
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.crypto_bignum*, %struct.crypto_bignum** %15, align 8
  %95 = call %struct.crypto_bignum* @crypto_ec_point_compute_y_sqr(i32 %93, %struct.crypto_bignum* %94)
  store %struct.crypto_bignum* %95, %struct.crypto_bignum** %14, align 8
  %96 = load %struct.crypto_bignum*, %struct.crypto_bignum** %15, align 8
  %97 = call i32 @crypto_bignum_deinit(%struct.crypto_bignum* %96, i32 1)
  %98 = load %struct.crypto_bignum*, %struct.crypto_bignum** %14, align 8
  %99 = icmp ne %struct.crypto_bignum* %98, null
  br i1 %99, label %101, label %100

100:                                              ; preds = %88
  store i32 -1, i32* %7, align 4
  br label %121

101:                                              ; preds = %88
  %102 = load %struct.sae_data*, %struct.sae_data** %8, align 8
  %103 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %102, i32 0, i32 0
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32*, i32** %11, align 8
  %108 = load i32*, i32** %12, align 8
  %109 = load %struct.crypto_bignum*, %struct.crypto_bignum** %14, align 8
  %110 = call i32 @dragonfly_is_quadratic_residue_blind(i32 %106, i32* %107, i32* %108, %struct.crypto_bignum* %109)
  store i32 %110, i32* %16, align 4
  %111 = load %struct.crypto_bignum*, %struct.crypto_bignum** %14, align 8
  %112 = call i32 @crypto_bignum_deinit(%struct.crypto_bignum* %111, i32 1)
  %113 = load i32, i32* %16, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %101
  %116 = load i32, i32* %16, align 4
  store i32 %116, i32* %7, align 4
  br label %121

117:                                              ; preds = %101
  %118 = load i32, i32* %19, align 4
  %119 = load i32, i32* %16, align 4
  %120 = call i32 @const_time_select_int(i32 %118, i32 %119, i32 0)
  store i32 %120, i32* %7, align 4
  br label %121

121:                                              ; preds = %117, %115, %100, %87, %42
  %122 = load i32, i32* %7, align 4
  ret i32 %122
}

declare dso_local i32 @wpa_hexdump_key(i32, i8*, i32*, i32) #1

declare dso_local i64 @crypto_ec_prime_len_bits(i32) #1

declare dso_local i64 @sha256_prf_bits(i32*, i32, i8*, i32*, i32, i32*, i64) #1

declare dso_local i32 @buf_shift_right(i32*, i32, i32) #1

declare dso_local i32 @const_time_memcmp(i32*, i32*, i32) #1

declare dso_local i32 @const_time_fill_msb(i32) #1

declare dso_local %struct.crypto_bignum* @crypto_bignum_init_set(i32*, i32) #1

declare dso_local %struct.crypto_bignum* @crypto_ec_point_compute_y_sqr(i32, %struct.crypto_bignum*) #1

declare dso_local i32 @crypto_bignum_deinit(%struct.crypto_bignum*, i32) #1

declare dso_local i32 @dragonfly_is_quadratic_residue_blind(i32, i32*, i32*, %struct.crypto_bignum*) #1

declare dso_local i32 @const_time_select_int(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
