; ModuleID = '/home/carl/AnghaBench/freebsd/stand/kshim/extr_bsd_busspace.c_bus_space_write_multi_4.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/kshim/extr_bsd_busspace.c_bus_space_write_multi_4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bus_space_write_multi_4(i32 %0, i64 %1, i64 %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  store i64 %4, i64* %10, align 8
  %11 = load i64, i64* %8, align 8
  %12 = load i64, i64* %7, align 8
  %13 = add nsw i64 %12, %11
  store i64 %13, i64* %7, align 8
  br label %14

14:                                               ; preds = %18, %5
  %15 = load i64, i64* %10, align 8
  %16 = add nsw i64 %15, -1
  store i64 %16, i64* %10, align 8
  %17 = icmp ne i64 %15, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %14
  %19 = load i32*, i32** %9, align 8
  %20 = getelementptr inbounds i32, i32* %19, i32 1
  store i32* %20, i32** %9, align 8
  %21 = load i32, i32* %19, align 4
  %22 = load i64, i64* %7, align 8
  %23 = inttoptr i64 %22 to i32*
  store volatile i32 %21, i32* %23, align 4
  br label %14

24:                                               ; preds = %14
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
