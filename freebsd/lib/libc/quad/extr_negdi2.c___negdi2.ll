; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/quad/extr_negdi2.c___negdi2.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/quad/extr_negdi2.c___negdi2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.uu = type { i32* }

@L = common dso_local global i64 0, align 8
@H = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__negdi2(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %union.uu, align 8
  %4 = alloca %union.uu, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = bitcast %union.uu* %3 to i32*
  store i32 %5, i32* %6, align 8
  %7 = bitcast %union.uu* %3 to i32**
  %8 = load i32*, i32** %7, align 8
  %9 = load i64, i64* @L, align 8
  %10 = getelementptr inbounds i32, i32* %8, i64 %9
  %11 = load i32, i32* %10, align 4
  %12 = sub nsw i32 0, %11
  %13 = bitcast %union.uu* %4 to i32**
  %14 = load i32*, i32** %13, align 8
  %15 = load i64, i64* @L, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  store i32 %12, i32* %16, align 4
  %17 = bitcast %union.uu* %3 to i32**
  %18 = load i32*, i32** %17, align 8
  %19 = load i64, i64* @H, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = sub nsw i32 0, %21
  %23 = bitcast %union.uu* %4 to i32**
  %24 = load i32*, i32** %23, align 8
  %25 = load i64, i64* @L, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = icmp sgt i32 %27, 0
  %29 = zext i1 %28 to i32
  %30 = sub nsw i32 %22, %29
  %31 = bitcast %union.uu* %4 to i32**
  %32 = load i32*, i32** %31, align 8
  %33 = load i64, i64* @H, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  store i32 %30, i32* %34, align 4
  %35 = bitcast %union.uu* %4 to i32*
  %36 = load i32, i32* %35, align 8
  ret i32 %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
