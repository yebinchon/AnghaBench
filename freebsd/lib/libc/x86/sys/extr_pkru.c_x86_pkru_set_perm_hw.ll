; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/x86/sys/extr_pkru.c_x86_pkru_set_perm_hw.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/x86/sys/extr_pkru.c_x86_pkru_set_perm_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PKRU_IDX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @x86_pkru_set_perm_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x86_pkru_set_perm_hw(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @MAX_PKRU_IDX, align 4
  %11 = icmp sgt i32 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i32, i32* @EINVAL, align 4
  store i32 %13, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %41

14:                                               ; preds = %3
  %15 = load i32, i32* %5, align 4
  %16 = mul nsw i32 %15, 2
  store i32 %16, i32* %5, align 4
  %17 = call i32 (...) @rdpkru()
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %5, align 4
  %19 = shl i32 3, %18
  %20 = xor i32 %19, -1
  %21 = load i32, i32* %8, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %14
  %26 = load i32, i32* %5, align 4
  %27 = shl i32 1, %26
  %28 = load i32, i32* %8, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %8, align 4
  br label %30

30:                                               ; preds = %25, %14
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* %5, align 4
  %35 = shl i32 2, %34
  %36 = load i32, i32* %8, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %8, align 4
  br label %38

38:                                               ; preds = %33, %30
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @wrpkru(i32 %39)
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %38, %12
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @rdpkru(...) #1

declare dso_local i32 @wrpkru(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
