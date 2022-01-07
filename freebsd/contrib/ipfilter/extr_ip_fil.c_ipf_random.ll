; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ipfilter/extr_ip_fil.c_ipf_random.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ipfilter/extr_ip_fil.c_ipf_random.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ipf_random.last = internal global i32 -1515870811, align 4
@ipf_random.calls = internal global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipf_random() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @ipf_random.calls, align 4
  %3 = add nsw i32 %2, 1
  store i32 %3, i32* @ipf_random.calls, align 4
  %4 = load i32, i32* @ipf_random.calls, align 4
  switch i32 %4, label %11 [
    i32 1, label %5
    i32 2, label %6
    i32 3, label %7
    i32 4, label %8
    i32 5, label %9
    i32 6, label %10
  ]

5:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %21

6:                                                ; preds = %0
  store i32 4, i32* %1, align 4
  br label %21

7:                                                ; preds = %0
  store i32 3999, i32* %1, align 4
  br label %21

8:                                                ; preds = %0
  store i32 4000, i32* %1, align 4
  br label %21

9:                                                ; preds = %0
  store i32 48999, i32* %1, align 4
  br label %21

10:                                               ; preds = %0
  store i32 49000, i32* %1, align 4
  br label %21

11:                                               ; preds = %0
  %12 = load i32, i32* @ipf_random.last, align 4
  store i32 %12, i32* %1, align 4
  %13 = load i32, i32* @ipf_random.calls, align 4
  %14 = load i32, i32* @ipf_random.last, align 4
  %15 = mul i32 %14, %13
  store i32 %15, i32* @ipf_random.last, align 4
  %16 = load i32, i32* @ipf_random.last, align 4
  %17 = add i32 %16, 1
  store i32 %17, i32* @ipf_random.last, align 4
  %18 = load i32, i32* @ipf_random.last, align 4
  %19 = load i32, i32* %1, align 4
  %20 = xor i32 %19, %18
  store i32 %20, i32* %1, align 4
  br label %21

21:                                               ; preds = %11, %10, %9, %8, %7, %6, %5
  %22 = load i32, i32* %1, align 4
  ret i32 %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
