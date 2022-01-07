; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tzcode/zic/extr_zic.c_setboundaries.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tzcode/zic/extr_zic.c_setboundaries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@min_time = common dso_local global i32 0, align 4
@TIME_T_BITS_IN_FILE = common dso_local global i32 0, align 4
@max_time = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @setboundaries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setboundaries() #0 {
  %1 = alloca i32, align 4
  store i32 -1, i32* @min_time, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %10, %0
  %3 = load i32, i32* %1, align 4
  %4 = load i32, i32* @TIME_T_BITS_IN_FILE, align 4
  %5 = sub nsw i32 %4, 1
  %6 = icmp slt i32 %3, %5
  br i1 %6, label %7, label %13

7:                                                ; preds = %2
  %8 = load i32, i32* @min_time, align 4
  %9 = mul nsw i32 %8, 2
  store i32 %9, i32* @min_time, align 4
  br label %10

10:                                               ; preds = %7
  %11 = load i32, i32* %1, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %1, align 4
  br label %2

13:                                               ; preds = %2
  %14 = load i32, i32* @min_time, align 4
  %15 = add nsw i32 %14, 1
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* @max_time, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
