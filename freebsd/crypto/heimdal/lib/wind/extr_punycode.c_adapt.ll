; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/wind/extr_punycode.c_adapt.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/wind/extr_punycode.c_adapt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@damp = common dso_local global i32 0, align 4
@base = common dso_local global i32 0, align 4
@t_min = common dso_local global i32 0, align 4
@t_max = common dso_local global i32 0, align 4
@skew = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @adapt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adapt(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %3
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @damp, align 4
  %13 = udiv i32 %11, %12
  store i32 %13, i32* %4, align 4
  br label %17

14:                                               ; preds = %3
  %15 = load i32, i32* %4, align 4
  %16 = udiv i32 %15, 2
  store i32 %16, i32* %4, align 4
  br label %17

17:                                               ; preds = %14, %10
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* %5, align 4
  %20 = udiv i32 %18, %19
  %21 = load i32, i32* %4, align 4
  %22 = add i32 %21, %20
  store i32 %22, i32* %4, align 4
  store i32 0, i32* %7, align 4
  br label %23

23:                                               ; preds = %32, %17
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @base, align 4
  %26 = load i32, i32* @t_min, align 4
  %27 = sub nsw i32 %25, %26
  %28 = load i32, i32* @t_max, align 4
  %29 = mul nsw i32 %27, %28
  %30 = sdiv i32 %29, 2
  %31 = icmp ugt i32 %24, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %23
  %33 = load i32, i32* @base, align 4
  %34 = load i32, i32* @t_min, align 4
  %35 = sub nsw i32 %33, %34
  %36 = load i32, i32* %4, align 4
  %37 = udiv i32 %36, %35
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* @base, align 4
  %39 = load i32, i32* %7, align 4
  %40 = add i32 %39, %38
  store i32 %40, i32* %7, align 4
  br label %23

41:                                               ; preds = %23
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @base, align 4
  %44 = load i32, i32* @t_min, align 4
  %45 = sub nsw i32 %43, %44
  %46 = add nsw i32 %45, 1
  %47 = load i32, i32* %4, align 4
  %48 = mul i32 %46, %47
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @skew, align 4
  %51 = add i32 %49, %50
  %52 = udiv i32 %48, %51
  %53 = add i32 %42, %52
  ret i32 %53
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
