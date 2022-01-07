; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_crypto_internal-modexp.c_crypto_mod_exp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_crypto_internal-modexp.c_crypto_mod_exp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bignum = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_mod_exp(i32* %0, i64 %1, i32* %2, i64 %3, i32* %4, i64 %5, i32* %6, i64* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca %struct.bignum*, align 8
  %18 = alloca %struct.bignum*, align 8
  %19 = alloca %struct.bignum*, align 8
  %20 = alloca %struct.bignum*, align 8
  %21 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i64 %1, i64* %10, align 8
  store i32* %2, i32** %11, align 8
  store i64 %3, i64* %12, align 8
  store i32* %4, i32** %13, align 8
  store i64 %5, i64* %14, align 8
  store i32* %6, i32** %15, align 8
  store i64* %7, i64** %16, align 8
  store i32 -1, i32* %21, align 4
  %22 = call %struct.bignum* (...) @bignum_init()
  store %struct.bignum* %22, %struct.bignum** %17, align 8
  %23 = call %struct.bignum* (...) @bignum_init()
  store %struct.bignum* %23, %struct.bignum** %18, align 8
  %24 = call %struct.bignum* (...) @bignum_init()
  store %struct.bignum* %24, %struct.bignum** %19, align 8
  %25 = call %struct.bignum* (...) @bignum_init()
  store %struct.bignum* %25, %struct.bignum** %20, align 8
  %26 = load %struct.bignum*, %struct.bignum** %17, align 8
  %27 = icmp eq %struct.bignum* %26, null
  br i1 %27, label %37, label %28

28:                                               ; preds = %8
  %29 = load %struct.bignum*, %struct.bignum** %18, align 8
  %30 = icmp eq %struct.bignum* %29, null
  br i1 %30, label %37, label %31

31:                                               ; preds = %28
  %32 = load %struct.bignum*, %struct.bignum** %19, align 8
  %33 = icmp eq %struct.bignum* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = load %struct.bignum*, %struct.bignum** %20, align 8
  %36 = icmp eq %struct.bignum* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %34, %31, %28, %8
  br label %70

38:                                               ; preds = %34
  %39 = load %struct.bignum*, %struct.bignum** %17, align 8
  %40 = load i32*, i32** %9, align 8
  %41 = load i64, i64* %10, align 8
  %42 = call i64 @bignum_set_unsigned_bin(%struct.bignum* %39, i32* %40, i64 %41)
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %56, label %44

44:                                               ; preds = %38
  %45 = load %struct.bignum*, %struct.bignum** %18, align 8
  %46 = load i32*, i32** %11, align 8
  %47 = load i64, i64* %12, align 8
  %48 = call i64 @bignum_set_unsigned_bin(%struct.bignum* %45, i32* %46, i64 %47)
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %44
  %51 = load %struct.bignum*, %struct.bignum** %19, align 8
  %52 = load i32*, i32** %13, align 8
  %53 = load i64, i64* %14, align 8
  %54 = call i64 @bignum_set_unsigned_bin(%struct.bignum* %51, i32* %52, i64 %53)
  %55 = icmp slt i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %50, %44, %38
  br label %70

57:                                               ; preds = %50
  %58 = load %struct.bignum*, %struct.bignum** %17, align 8
  %59 = load %struct.bignum*, %struct.bignum** %18, align 8
  %60 = load %struct.bignum*, %struct.bignum** %19, align 8
  %61 = load %struct.bignum*, %struct.bignum** %20, align 8
  %62 = call i64 @bignum_exptmod(%struct.bignum* %58, %struct.bignum* %59, %struct.bignum* %60, %struct.bignum* %61)
  %63 = icmp slt i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  br label %70

65:                                               ; preds = %57
  %66 = load %struct.bignum*, %struct.bignum** %20, align 8
  %67 = load i32*, i32** %15, align 8
  %68 = load i64*, i64** %16, align 8
  %69 = call i32 @bignum_get_unsigned_bin(%struct.bignum* %66, i32* %67, i64* %68)
  store i32 %69, i32* %21, align 4
  br label %70

70:                                               ; preds = %65, %64, %56, %37
  %71 = load %struct.bignum*, %struct.bignum** %17, align 8
  %72 = call i32 @bignum_deinit(%struct.bignum* %71)
  %73 = load %struct.bignum*, %struct.bignum** %18, align 8
  %74 = call i32 @bignum_deinit(%struct.bignum* %73)
  %75 = load %struct.bignum*, %struct.bignum** %19, align 8
  %76 = call i32 @bignum_deinit(%struct.bignum* %75)
  %77 = load %struct.bignum*, %struct.bignum** %20, align 8
  %78 = call i32 @bignum_deinit(%struct.bignum* %77)
  %79 = load i32, i32* %21, align 4
  ret i32 %79
}

declare dso_local %struct.bignum* @bignum_init(...) #1

declare dso_local i64 @bignum_set_unsigned_bin(%struct.bignum*, i32*, i64) #1

declare dso_local i64 @bignum_exptmod(%struct.bignum*, %struct.bignum*, %struct.bignum*, %struct.bignum*) #1

declare dso_local i32 @bignum_get_unsigned_bin(%struct.bignum*, i32*, i64*) #1

declare dso_local i32 @bignum_deinit(%struct.bignum*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
