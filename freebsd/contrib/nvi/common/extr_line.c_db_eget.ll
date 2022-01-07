; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/common/extr_line.c_db_eget.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/common/extr_line.c_db_eget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @db_eget(i32* %0, i32 %1, i32** %2, i64* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32**, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32** %2, i32*** %9, align 8
  store i64* %3, i64** %10, align 8
  store i32* %4, i32** %11, align 8
  %13 = load i32*, i32** %11, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %5
  %16 = load i32*, i32** %11, align 8
  store i32 0, i32* %16, align 4
  br label %17

17:                                               ; preds = %15, %5
  %18 = load i32*, i32** %7, align 8
  %19 = load i32, i32* %8, align 4
  %20 = load i32**, i32*** %9, align 8
  %21 = load i64*, i64** %10, align 8
  %22 = call i32 @db_get(i32* %18, i32 %19, i32 0, i32** %20, i64* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %17
  store i32 0, i32* %6, align 4
  br label %55

25:                                               ; preds = %17
  %26 = load i32, i32* %8, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* %8, align 4
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %36

31:                                               ; preds = %28, %25
  %32 = load i32*, i32** %7, align 8
  %33 = call i64 @db_last(i32* %32, i32* %12)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store i32 1, i32* %6, align 4
  br label %55

36:                                               ; preds = %31, %28
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 1
  br i1 %41, label %45, label %42

42:                                               ; preds = %39, %36
  %43 = load i32, i32* %12, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %42, %39
  %46 = load i32*, i32** %7, align 8
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @db_err(i32* %46, i32 %47)
  store i32 1, i32* %6, align 4
  br label %55

49:                                               ; preds = %42
  %50 = load i32*, i32** %11, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = load i32*, i32** %11, align 8
  store i32 1, i32* %53, align 4
  br label %54

54:                                               ; preds = %52, %49
  store i32 1, i32* %6, align 4
  br label %55

55:                                               ; preds = %54, %45, %35, %24
  %56 = load i32, i32* %6, align 4
  ret i32 %56
}

declare dso_local i32 @db_get(i32*, i32, i32, i32**, i64*) #1

declare dso_local i64 @db_last(i32*, i32*) #1

declare dso_local i32 @db_err(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
