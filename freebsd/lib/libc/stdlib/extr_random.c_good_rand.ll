; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdlib/extr_random.c_good_rand.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdlib/extr_random.c_good_rand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @good_rand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @good_rand(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = srem i32 %6, 2147483646
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = sdiv i32 %9, 127773
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %5, align 4
  %12 = srem i32 %11, 127773
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = mul nsw i32 16807, %13
  %15 = load i32, i32* %3, align 4
  %16 = mul nsw i32 2836, %15
  %17 = sub nsw i32 %14, %16
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load i32, i32* %5, align 4
  %22 = add nsw i32 %21, 2147483647
  store i32 %22, i32* %5, align 4
  br label %23

23:                                               ; preds = %20, %1
  %24 = load i32, i32* %5, align 4
  %25 = sub nsw i32 %24, 1
  ret i32 %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
