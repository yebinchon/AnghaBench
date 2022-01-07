; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/arm/gen/extr_flt_rounds.c___flt_rounds.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/arm/gen/extr_flt_rounds.c___flt_rounds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__softfloat_float_rounding_mode = common dso_local global i32 0, align 4
@_ROUND_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__flt_rounds() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @__softfloat_float_rounding_mode, align 4
  store i32 %3, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  switch i32 %4, label %9 [
    i32 129, label %5
    i32 130, label %6
    i32 128, label %7
    i32 131, label %8
  ]

5:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %10

6:                                                ; preds = %0
  store i32 1, i32* %1, align 4
  br label %10

7:                                                ; preds = %0
  store i32 2, i32* %1, align 4
  br label %10

8:                                                ; preds = %0
  store i32 3, i32* %1, align 4
  br label %10

9:                                                ; preds = %0
  store i32 -1, i32* %1, align 4
  br label %10

10:                                               ; preds = %9, %8, %7, %6, %5
  %11 = load i32, i32* %1, align 4
  ret i32 %11
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
