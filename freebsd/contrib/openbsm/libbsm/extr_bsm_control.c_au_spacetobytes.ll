; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/libbsm/extr_bsm_control.c_au_spacetobytes.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/libbsm/extr_bsm_control.c_au_spacetobytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i32, i8)* @au_spacetobytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @au_spacetobytes(i64* %0, i32 %1, i8 signext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  store i64* %0, i64** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8 %2, i8* %7, align 1
  %8 = load i64*, i64** %5, align 8
  %9 = icmp eq i64* null, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %38

11:                                               ; preds = %3
  %12 = load i8, i8* %7, align 1
  %13 = sext i8 %12 to i32
  switch i32 %13, label %36 [
    i32 66, label %14
    i32 32, label %14
    i32 75, label %18
    i32 77, label %23
    i32 71, label %29
  ]

14:                                               ; preds = %11, %11
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = load i64*, i64** %5, align 8
  store i64 %16, i64* %17, align 8
  br label %37

18:                                               ; preds = %11
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = mul i64 %20, 1024
  %22 = load i64*, i64** %5, align 8
  store i64 %21, i64* %22, align 8
  br label %37

23:                                               ; preds = %11
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = mul i64 %25, 1024
  %27 = mul i64 %26, 1024
  %28 = load i64*, i64** %5, align 8
  store i64 %27, i64* %28, align 8
  br label %37

29:                                               ; preds = %11
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = mul i64 %31, 1024
  %33 = mul i64 %32, 1024
  %34 = mul i64 %33, 1024
  %35 = load i64*, i64** %5, align 8
  store i64 %34, i64* %35, align 8
  br label %37

36:                                               ; preds = %11
  store i32 -1, i32* %4, align 4
  br label %38

37:                                               ; preds = %29, %23, %18, %14
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %37, %36, %10
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
