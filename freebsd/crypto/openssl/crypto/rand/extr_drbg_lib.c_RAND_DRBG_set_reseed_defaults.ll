; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/rand/extr_drbg_lib.c_RAND_DRBG_set_reseed_defaults.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/rand/extr_drbg_lib.c_RAND_DRBG_set_reseed_defaults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_RESEED_INTERVAL = common dso_local global i32 0, align 4
@MAX_RESEED_TIME_INTERVAL = common dso_local global i64 0, align 8
@master_reseed_interval = common dso_local global i32 0, align 4
@slave_reseed_interval = common dso_local global i32 0, align 4
@master_reseed_time_interval = common dso_local global i64 0, align 8
@slave_reseed_time_interval = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RAND_DRBG_set_reseed_defaults(i32 %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @MAX_RESEED_INTERVAL, align 4
  %12 = icmp ugt i32 %10, %11
  br i1 %12, label %17, label %13

13:                                               ; preds = %4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @MAX_RESEED_INTERVAL, align 4
  %16 = icmp ugt i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %13, %4
  store i32 0, i32* %5, align 4
  br label %32

18:                                               ; preds = %13
  %19 = load i64, i64* %8, align 8
  %20 = load i64, i64* @MAX_RESEED_TIME_INTERVAL, align 8
  %21 = icmp sgt i64 %19, %20
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = load i64, i64* %9, align 8
  %24 = load i64, i64* @MAX_RESEED_TIME_INTERVAL, align 8
  %25 = icmp sgt i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %22, %18
  store i32 0, i32* %5, align 4
  br label %32

27:                                               ; preds = %22
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* @master_reseed_interval, align 4
  %29 = load i32, i32* %7, align 4
  store i32 %29, i32* @slave_reseed_interval, align 4
  %30 = load i64, i64* %8, align 8
  store i64 %30, i64* @master_reseed_time_interval, align 8
  %31 = load i64, i64* %9, align 8
  store i64 %31, i64* @slave_reseed_time_interval, align 8
  store i32 1, i32* %5, align 4
  br label %32

32:                                               ; preds = %27, %26, %17
  %33 = load i32, i32* %5, align 4
  ret i32 %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
