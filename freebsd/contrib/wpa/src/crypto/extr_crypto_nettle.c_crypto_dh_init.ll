; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_crypto_nettle.c_crypto_dh_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_crypto_nettle.c_crypto_dh_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_dh_init(i64 %0, i64* %1, i64 %2, i64* %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i64 %0, i64* %7, align 8
  store i64* %1, i64** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64* %3, i64** %10, align 8
  store i64* %4, i64** %11, align 8
  %14 = load i64*, i64** %10, align 8
  %15 = load i64, i64* %9, align 8
  %16 = call i64 @os_get_random(i64* %14, i64 %15)
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %56

19:                                               ; preds = %5
  %20 = load i64*, i64** %10, align 8
  %21 = load i64*, i64** %8, align 8
  %22 = load i64, i64* %9, align 8
  %23 = call i64 @os_memcmp(i64* %20, i64* %21, i64 %22)
  %24 = icmp sgt i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load i64*, i64** %10, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 0
  store i64 0, i64* %27, align 8
  br label %28

28:                                               ; preds = %25, %19
  %29 = load i64, i64* %9, align 8
  store i64 %29, i64* %12, align 8
  %30 = load i64*, i64** %10, align 8
  %31 = load i64, i64* %9, align 8
  %32 = load i64*, i64** %8, align 8
  %33 = load i64, i64* %9, align 8
  %34 = load i64*, i64** %11, align 8
  %35 = call i64 @crypto_mod_exp(i64* %7, i32 1, i64* %30, i64 %31, i64* %32, i64 %33, i64* %34, i64* %12)
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %28
  store i32 -1, i32* %6, align 4
  br label %56

38:                                               ; preds = %28
  %39 = load i64, i64* %12, align 8
  %40 = load i64, i64* %9, align 8
  %41 = icmp ult i64 %39, %40
  br i1 %41, label %42, label %55

42:                                               ; preds = %38
  %43 = load i64, i64* %9, align 8
  %44 = load i64, i64* %12, align 8
  %45 = sub i64 %43, %44
  store i64 %45, i64* %13, align 8
  %46 = load i64*, i64** %11, align 8
  %47 = load i64, i64* %13, align 8
  %48 = getelementptr inbounds i64, i64* %46, i64 %47
  %49 = load i64*, i64** %11, align 8
  %50 = load i64, i64* %12, align 8
  %51 = call i32 @os_memmove(i64* %48, i64* %49, i64 %50)
  %52 = load i64*, i64** %11, align 8
  %53 = load i64, i64* %13, align 8
  %54 = call i32 @os_memset(i64* %52, i32 0, i64 %53)
  br label %55

55:                                               ; preds = %42, %38
  store i32 0, i32* %6, align 4
  br label %56

56:                                               ; preds = %55, %37, %18
  %57 = load i32, i32* %6, align 4
  ret i32 %57
}

declare dso_local i64 @os_get_random(i64*, i64) #1

declare dso_local i64 @os_memcmp(i64*, i64*, i64) #1

declare dso_local i64 @crypto_mod_exp(i64*, i32, i64*, i64, i64*, i64, i64*, i64*) #1

declare dso_local i32 @os_memmove(i64*, i64*, i64) #1

declare dso_local i32 @os_memset(i64*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
