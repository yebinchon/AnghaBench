; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/one-true-awk/extr_b.c_hexstr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/one-true-awk/extr_b.c_hexstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hexstr(i32** %0) #0 {
  %2 = alloca i32**, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32** %0, i32*** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32**, i32*** %2, align 8
  %7 = load i32*, i32** %6, align 8
  store i32* %7, i32** %3, align 8
  br label %8

8:                                                ; preds = %65, %1
  %9 = load i32, i32* %5, align 4
  %10 = icmp slt i32 %9, 2
  br i1 %10, label %11, label %16

11:                                               ; preds = %8
  %12 = load i32*, i32** %3, align 8
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @isxdigit(i32 %13)
  %15 = icmp ne i64 %14, 0
  br label %16

16:                                               ; preds = %11, %8
  %17 = phi i1 [ false, %8 ], [ %15, %11 ]
  br i1 %17, label %18, label %70

18:                                               ; preds = %16
  %19 = load i32*, i32** %3, align 8
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @isdigit(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %18
  %24 = load i32, i32* %4, align 4
  %25 = mul nsw i32 16, %24
  %26 = load i32*, i32** %3, align 8
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %25, %27
  %29 = sub nsw i32 %28, 48
  store i32 %29, i32* %4, align 4
  br label %64

30:                                               ; preds = %18
  %31 = load i32*, i32** %3, align 8
  %32 = load i32, i32* %31, align 4
  %33 = icmp sge i32 %32, 97
  br i1 %33, label %34, label %46

34:                                               ; preds = %30
  %35 = load i32*, i32** %3, align 8
  %36 = load i32, i32* %35, align 4
  %37 = icmp sle i32 %36, 102
  br i1 %37, label %38, label %46

38:                                               ; preds = %34
  %39 = load i32, i32* %4, align 4
  %40 = mul nsw i32 16, %39
  %41 = load i32*, i32** %3, align 8
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %40, %42
  %44 = sub nsw i32 %43, 97
  %45 = add nsw i32 %44, 10
  store i32 %45, i32* %4, align 4
  br label %63

46:                                               ; preds = %34, %30
  %47 = load i32*, i32** %3, align 8
  %48 = load i32, i32* %47, align 4
  %49 = icmp sge i32 %48, 65
  br i1 %49, label %50, label %62

50:                                               ; preds = %46
  %51 = load i32*, i32** %3, align 8
  %52 = load i32, i32* %51, align 4
  %53 = icmp sle i32 %52, 70
  br i1 %53, label %54, label %62

54:                                               ; preds = %50
  %55 = load i32, i32* %4, align 4
  %56 = mul nsw i32 16, %55
  %57 = load i32*, i32** %3, align 8
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %56, %58
  %60 = sub nsw i32 %59, 65
  %61 = add nsw i32 %60, 10
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %54, %50, %46
  br label %63

63:                                               ; preds = %62, %38
  br label %64

64:                                               ; preds = %63, %23
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %5, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %5, align 4
  %68 = load i32*, i32** %3, align 8
  %69 = getelementptr inbounds i32, i32* %68, i32 1
  store i32* %69, i32** %3, align 8
  br label %8

70:                                               ; preds = %16
  %71 = load i32*, i32** %3, align 8
  %72 = load i32**, i32*** %2, align 8
  store i32* %71, i32** %72, align 8
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i64 @isxdigit(i32) #1

declare dso_local i64 @isdigit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
