; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/tests/string/extr_wcsnlen_test.c_test_wcsnlen.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/tests/string/extr_wcsnlen_test.c_test_wcsnlen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @test_wcsnlen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_wcsnlen(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = call i32 @wcslen(i32* %8)
  %10 = add nsw i32 %9, 1
  %11 = sext i32 %10 to i64
  store i64 %11, i64* %4, align 8
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %59, %1
  %13 = load i32, i32* %7, align 4
  %14 = icmp sle i32 %13, 1
  br i1 %14, label %15, label %62

15:                                               ; preds = %12
  store i64 0, i64* %6, align 8
  br label %16

16:                                               ; preds = %55, %15
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* %4, align 8
  %19 = add i64 %18, 10
  %20 = icmp ule i64 %17, %19
  br i1 %20, label %21, label %58

21:                                               ; preds = %16
  %22 = load i64, i64* %6, align 8
  %23 = mul i64 %22, 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32* @makebuf(i64 %23, i32 %24)
  store i32* %25, i32** %3, align 8
  %26 = load i32*, i32** %3, align 8
  %27 = load i32*, i32** %2, align 8
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* %4, align 8
  %30 = icmp ule i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %21
  %32 = load i64, i64* %6, align 8
  br label %35

33:                                               ; preds = %21
  %34 = load i64, i64* %4, align 8
  br label %35

35:                                               ; preds = %33, %31
  %36 = phi i64 [ %32, %31 ], [ %34, %33 ]
  %37 = call i32 @wmemcpy(i32* %26, i32* %27, i64 %36)
  %38 = load i64, i64* %4, align 8
  %39 = load i64, i64* %6, align 8
  %40 = icmp ugt i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i64, i64* %6, align 8
  br label %46

43:                                               ; preds = %35
  %44 = load i64, i64* %4, align 8
  %45 = sub i64 %44, 1
  br label %46

46:                                               ; preds = %43, %41
  %47 = phi i64 [ %42, %41 ], [ %45, %43 ]
  store i64 %47, i64* %5, align 8
  %48 = load i32*, i32** %3, align 8
  %49 = load i64, i64* %6, align 8
  %50 = call i64 @wcsnlen(i32* %48, i64 %49)
  %51 = load i64, i64* %5, align 8
  %52 = icmp eq i64 %50, %51
  %53 = zext i1 %52 to i32
  %54 = call i32 @ATF_CHECK(i32 %53)
  br label %55

55:                                               ; preds = %46
  %56 = load i64, i64* %6, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %6, align 8
  br label %16

58:                                               ; preds = %16
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %7, align 4
  br label %12

62:                                               ; preds = %12
  ret void
}

declare dso_local i32 @wcslen(i32*) #1

declare dso_local i32* @makebuf(i64, i32) #1

declare dso_local i32 @wmemcpy(i32*, i32*, i64) #1

declare dso_local i32 @ATF_CHECK(i32) #1

declare dso_local i64 @wcsnlen(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
