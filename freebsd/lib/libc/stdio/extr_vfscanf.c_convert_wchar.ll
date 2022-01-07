; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_vfscanf.c_convert_wchar.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_vfscanf.c_convert_wchar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@initial_mbs = common dso_local global i32 0, align 4
@WEOF = common dso_local global i64 0, align 8
@SUPPRESS_PTR = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64*, i32, i32)* @convert_wchar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @convert_wchar(i32* %0, i64* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i64* %1, i64** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* @initial_mbs, align 4
  store i32 %14, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %15

15:                                               ; preds = %35, %4
  %16 = load i32, i32* %8, align 4
  %17 = add nsw i32 %16, -1
  store i32 %17, i32* %8, align 4
  %18 = icmp ne i32 %16, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %15
  %20 = load i32*, i32** %6, align 8
  %21 = load i32, i32* %9, align 4
  %22 = call i64 @__fgetwc_mbs(i32* %20, i32* %10, i32* %12, i32 %21)
  store i64 %22, i64* %13, align 8
  %23 = load i64, i64* @WEOF, align 8
  %24 = icmp ne i64 %22, %23
  br label %25

25:                                               ; preds = %19, %15
  %26 = phi i1 [ false, %15 ], [ %24, %19 ]
  br i1 %26, label %27, label %39

27:                                               ; preds = %25
  %28 = load i64*, i64** %7, align 8
  %29 = load i64*, i64** @SUPPRESS_PTR, align 8
  %30 = icmp ne i64* %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load i64, i64* %13, align 8
  %33 = load i64*, i64** %7, align 8
  %34 = getelementptr inbounds i64, i64* %33, i32 1
  store i64* %34, i64** %7, align 8
  store i64 %32, i64* %33, align 8
  br label %35

35:                                               ; preds = %31, %27
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* %11, align 4
  %38 = add nsw i32 %37, %36
  store i32 %38, i32* %11, align 4
  br label %15

39:                                               ; preds = %25
  %40 = load i32, i32* %11, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  store i32 -1, i32* %5, align 4
  br label %45

43:                                               ; preds = %39
  %44 = load i32, i32* %11, align 4
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %43, %42
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local i64 @__fgetwc_mbs(i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
