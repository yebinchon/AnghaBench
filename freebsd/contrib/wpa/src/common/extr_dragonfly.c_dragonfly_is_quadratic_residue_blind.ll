; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dragonfly.c_dragonfly_is_quadratic_residue_blind.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dragonfly.c_dragonfly_is_quadratic_residue_blind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_ec = type { i32 }
%struct.crypto_bignum = type opaque

@DRAGONFLY_MAX_ECC_PRIME_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dragonfly_is_quadratic_residue_blind(%struct.crypto_ec* %0, i32* %1, i32* %2, %struct.crypto_bignum* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.crypto_ec*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.crypto_bignum*, align 8
  %10 = alloca %struct.crypto_bignum*, align 8
  %11 = alloca %struct.crypto_bignum*, align 8
  %12 = alloca %struct.crypto_bignum*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.crypto_bignum*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.crypto_ec* %0, %struct.crypto_ec** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.crypto_bignum* %3, %struct.crypto_bignum** %9, align 8
  store %struct.crypto_bignum* null, %struct.crypto_bignum** %12, align 8
  store i32 -1, i32* %14, align 4
  %21 = load i32, i32* @DRAGONFLY_MAX_ECC_PRIME_LEN, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %15, align 8
  %24 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %16, align 8
  %25 = load %struct.crypto_ec*, %struct.crypto_ec** %6, align 8
  %26 = call %struct.crypto_bignum* @crypto_ec_get_prime(%struct.crypto_ec* %25)
  store %struct.crypto_bignum* %26, %struct.crypto_bignum** %17, align 8
  %27 = load %struct.crypto_ec*, %struct.crypto_ec** %6, align 8
  %28 = call i64 @crypto_ec_prime_len(%struct.crypto_ec* %27)
  store i64 %28, i64* %18, align 8
  %29 = load %struct.crypto_bignum*, %struct.crypto_bignum** %17, align 8
  %30 = call %struct.crypto_bignum* @dragonfly_get_rand_1_to_p_1(%struct.crypto_bignum* %29)
  store %struct.crypto_bignum* %30, %struct.crypto_bignum** %10, align 8
  %31 = load %struct.crypto_bignum*, %struct.crypto_bignum** %10, align 8
  %32 = icmp ne %struct.crypto_bignum* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %97

34:                                               ; preds = %4
  %35 = call %struct.crypto_bignum* (...) @crypto_bignum_init()
  store %struct.crypto_bignum* %35, %struct.crypto_bignum** %11, align 8
  %36 = load %struct.crypto_bignum*, %struct.crypto_bignum** %11, align 8
  %37 = icmp ne %struct.crypto_bignum* %36, null
  br i1 %37, label %38, label %52

38:                                               ; preds = %34
  %39 = load %struct.crypto_bignum*, %struct.crypto_bignum** %9, align 8
  %40 = load %struct.crypto_bignum*, %struct.crypto_bignum** %10, align 8
  %41 = load %struct.crypto_bignum*, %struct.crypto_bignum** %17, align 8
  %42 = load %struct.crypto_bignum*, %struct.crypto_bignum** %11, align 8
  %43 = call i64 @crypto_bignum_mulmod(%struct.crypto_bignum* %39, %struct.crypto_bignum* %40, %struct.crypto_bignum* %41, %struct.crypto_bignum* %42)
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %52, label %45

45:                                               ; preds = %38
  %46 = load %struct.crypto_bignum*, %struct.crypto_bignum** %11, align 8
  %47 = load %struct.crypto_bignum*, %struct.crypto_bignum** %10, align 8
  %48 = load %struct.crypto_bignum*, %struct.crypto_bignum** %17, align 8
  %49 = load %struct.crypto_bignum*, %struct.crypto_bignum** %11, align 8
  %50 = call i64 @crypto_bignum_mulmod(%struct.crypto_bignum* %46, %struct.crypto_bignum* %47, %struct.crypto_bignum* %48, %struct.crypto_bignum* %49)
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %45, %38, %34
  br label %89

53:                                               ; preds = %45
  %54 = load %struct.crypto_bignum*, %struct.crypto_bignum** %10, align 8
  %55 = call i32 @crypto_bignum_is_odd(%struct.crypto_bignum* %54)
  %56 = call i32 @const_time_is_zero(i32 %55)
  store i32 %56, i32* %19, align 4
  %57 = load i32, i32* %19, align 4
  %58 = load i32*, i32** %8, align 8
  %59 = load i32*, i32** %7, align 8
  %60 = load i64, i64* %18, align 8
  %61 = call i32 @const_time_select_bin(i32 %57, i32* %58, i32* %59, i64 %60, i32* %24)
  %62 = load i64, i64* %18, align 8
  %63 = call %struct.crypto_bignum* @crypto_bignum_init_set(i32* %24, i64 %62)
  store %struct.crypto_bignum* %63, %struct.crypto_bignum** %12, align 8
  %64 = load %struct.crypto_bignum*, %struct.crypto_bignum** %12, align 8
  %65 = icmp ne %struct.crypto_bignum* %64, null
  br i1 %65, label %66, label %73

66:                                               ; preds = %53
  %67 = load %struct.crypto_bignum*, %struct.crypto_bignum** %11, align 8
  %68 = load %struct.crypto_bignum*, %struct.crypto_bignum** %12, align 8
  %69 = load %struct.crypto_bignum*, %struct.crypto_bignum** %17, align 8
  %70 = load %struct.crypto_bignum*, %struct.crypto_bignum** %11, align 8
  %71 = call i64 @crypto_bignum_mulmod(%struct.crypto_bignum* %67, %struct.crypto_bignum* %68, %struct.crypto_bignum* %69, %struct.crypto_bignum* %70)
  %72 = icmp slt i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %66, %53
  br label %89

74:                                               ; preds = %66
  %75 = load i32, i32* %19, align 4
  %76 = call i32 @const_time_select_int(i32 %75, i32 -1, i32 1)
  store i32 %76, i32* %13, align 4
  %77 = load %struct.crypto_bignum*, %struct.crypto_bignum** %11, align 8
  %78 = load %struct.crypto_bignum*, %struct.crypto_bignum** %17, align 8
  %79 = call i32 @crypto_bignum_legendre(%struct.crypto_bignum* %77, %struct.crypto_bignum* %78)
  store i32 %79, i32* %14, align 4
  %80 = load i32, i32* %14, align 4
  %81 = icmp eq i32 %80, -2
  br i1 %81, label %82, label %83

82:                                               ; preds = %74
  store i32 -1, i32* %14, align 4
  br label %89

83:                                               ; preds = %74
  %84 = load i32, i32* %14, align 4
  %85 = load i32, i32* %13, align 4
  %86 = call i32 @const_time_eq(i32 %84, i32 %85)
  store i32 %86, i32* %19, align 4
  %87 = load i32, i32* %19, align 4
  %88 = call i32 @const_time_select_int(i32 %87, i32 1, i32 0)
  store i32 %88, i32* %14, align 4
  br label %89

89:                                               ; preds = %83, %82, %73, %52
  %90 = load %struct.crypto_bignum*, %struct.crypto_bignum** %11, align 8
  %91 = call i32 @crypto_bignum_deinit(%struct.crypto_bignum* %90, i32 1)
  %92 = load %struct.crypto_bignum*, %struct.crypto_bignum** %10, align 8
  %93 = call i32 @crypto_bignum_deinit(%struct.crypto_bignum* %92, i32 1)
  %94 = load %struct.crypto_bignum*, %struct.crypto_bignum** %12, align 8
  %95 = call i32 @crypto_bignum_deinit(%struct.crypto_bignum* %94, i32 1)
  %96 = load i32, i32* %14, align 4
  store i32 %96, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %97

97:                                               ; preds = %89, %33
  %98 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %98)
  %99 = load i32, i32* %5, align 4
  ret i32 %99
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.crypto_bignum* @crypto_ec_get_prime(%struct.crypto_ec*) #2

declare dso_local i64 @crypto_ec_prime_len(%struct.crypto_ec*) #2

declare dso_local %struct.crypto_bignum* @dragonfly_get_rand_1_to_p_1(%struct.crypto_bignum*) #2

declare dso_local %struct.crypto_bignum* @crypto_bignum_init(...) #2

declare dso_local i64 @crypto_bignum_mulmod(%struct.crypto_bignum*, %struct.crypto_bignum*, %struct.crypto_bignum*, %struct.crypto_bignum*) #2

declare dso_local i32 @const_time_is_zero(i32) #2

declare dso_local i32 @crypto_bignum_is_odd(%struct.crypto_bignum*) #2

declare dso_local i32 @const_time_select_bin(i32, i32*, i32*, i64, i32*) #2

declare dso_local %struct.crypto_bignum* @crypto_bignum_init_set(i32*, i64) #2

declare dso_local i32 @const_time_select_int(i32, i32, i32) #2

declare dso_local i32 @crypto_bignum_legendre(%struct.crypto_bignum*, %struct.crypto_bignum*) #2

declare dso_local i32 @const_time_eq(i32, i32) #2

declare dso_local i32 @crypto_bignum_deinit(%struct.crypto_bignum*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
