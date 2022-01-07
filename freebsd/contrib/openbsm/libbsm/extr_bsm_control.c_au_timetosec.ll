; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/libbsm/extr_bsm_control.c_au_timetosec.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/libbsm/extr_bsm_control.c_au_timetosec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8)* @au_timetosec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @au_timetosec(i32* %0, i32 %1, i8 signext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8 %2, i8* %7, align 1
  %8 = load i32*, i32** %5, align 8
  %9 = icmp eq i32* null, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %43

11:                                               ; preds = %3
  %12 = load i8, i8* %7, align 1
  %13 = sext i8 %12 to i32
  switch i32 %13, label %41 [
    i32 115, label %14
    i32 104, label %17
    i32 100, label %22
    i32 121, label %28
  ]

14:                                               ; preds = %11
  %15 = load i32, i32* %6, align 4
  %16 = load i32*, i32** %5, align 8
  store i32 %15, i32* %16, align 4
  br label %42

17:                                               ; preds = %11
  %18 = load i32, i32* %6, align 4
  %19 = mul nsw i32 %18, 60
  %20 = mul nsw i32 %19, 60
  %21 = load i32*, i32** %5, align 8
  store i32 %20, i32* %21, align 4
  br label %42

22:                                               ; preds = %11
  %23 = load i32, i32* %6, align 4
  %24 = mul nsw i32 %23, 60
  %25 = mul nsw i32 %24, 60
  %26 = mul nsw i32 %25, 24
  %27 = load i32*, i32** %5, align 8
  store i32 %26, i32* %27, align 4
  br label %42

28:                                               ; preds = %11
  %29 = load i32, i32* %6, align 4
  %30 = mul nsw i32 %29, 60
  %31 = mul nsw i32 %30, 60
  %32 = mul nsw i32 %31, 24
  %33 = mul nsw i32 %32, 364
  %34 = load i32, i32* %6, align 4
  %35 = sdiv i32 %34, 4
  %36 = mul nsw i32 %35, 60
  %37 = mul nsw i32 %36, 60
  %38 = mul nsw i32 %37, 24
  %39 = add nsw i32 %33, %38
  %40 = load i32*, i32** %5, align 8
  store i32 %39, i32* %40, align 4
  br label %42

41:                                               ; preds = %11
  store i32 -1, i32* %4, align 4
  br label %43

42:                                               ; preds = %28, %22, %17, %14
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %42, %41, %10
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
