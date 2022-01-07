; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/one-true-awk/extr_b.c_quoted.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/one-true-awk/extr_b.c_quoted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @quoted(i32** %0) #0 {
  %2 = alloca i32**, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32** %0, i32*** %2, align 8
  %6 = load i32**, i32*** %2, align 8
  %7 = load i32*, i32** %6, align 8
  store i32* %7, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = getelementptr inbounds i32, i32* %8, i32 1
  store i32* %9, i32** %3, align 8
  %10 = load i32, i32* %8, align 4
  store i32 %10, i32* %4, align 4
  %11 = icmp eq i32 %10, 116
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 9, i32* %4, align 4
  br label %79

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  %15 = icmp eq i32 %14, 110
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store i32 10, i32* %4, align 4
  br label %78

17:                                               ; preds = %13
  %18 = load i32, i32* %4, align 4
  %19 = icmp eq i32 %18, 102
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i32 12, i32* %4, align 4
  br label %77

21:                                               ; preds = %17
  %22 = load i32, i32* %4, align 4
  %23 = icmp eq i32 %22, 114
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i32 13, i32* %4, align 4
  br label %76

25:                                               ; preds = %21
  %26 = load i32, i32* %4, align 4
  %27 = icmp eq i32 %26, 98
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32 8, i32* %4, align 4
  br label %75

29:                                               ; preds = %25
  %30 = load i32, i32* %4, align 4
  %31 = icmp eq i32 %30, 92
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 92, i32* %4, align 4
  br label %74

33:                                               ; preds = %29
  %34 = load i32, i32* %4, align 4
  %35 = icmp eq i32 %34, 120
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = call i32 @hexstr(i32** %3)
  store i32 %37, i32* %4, align 4
  br label %73

38:                                               ; preds = %33
  %39 = load i32, i32* %4, align 4
  %40 = call i64 @isoctdigit(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %72

42:                                               ; preds = %38
  %43 = load i32, i32* %4, align 4
  %44 = sub nsw i32 %43, 48
  store i32 %44, i32* %5, align 4
  %45 = load i32*, i32** %3, align 8
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @isoctdigit(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %70

49:                                               ; preds = %42
  %50 = load i32, i32* %5, align 4
  %51 = mul nsw i32 8, %50
  %52 = load i32*, i32** %3, align 8
  %53 = getelementptr inbounds i32, i32* %52, i32 1
  store i32* %53, i32** %3, align 8
  %54 = load i32, i32* %52, align 4
  %55 = add nsw i32 %51, %54
  %56 = sub nsw i32 %55, 48
  store i32 %56, i32* %5, align 4
  %57 = load i32*, i32** %3, align 8
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @isoctdigit(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %49
  %62 = load i32, i32* %5, align 4
  %63 = mul nsw i32 8, %62
  %64 = load i32*, i32** %3, align 8
  %65 = getelementptr inbounds i32, i32* %64, i32 1
  store i32* %65, i32** %3, align 8
  %66 = load i32, i32* %64, align 4
  %67 = add nsw i32 %63, %66
  %68 = sub nsw i32 %67, 48
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %61, %49
  br label %70

70:                                               ; preds = %69, %42
  %71 = load i32, i32* %5, align 4
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %70, %38
  br label %73

73:                                               ; preds = %72, %36
  br label %74

74:                                               ; preds = %73, %32
  br label %75

75:                                               ; preds = %74, %28
  br label %76

76:                                               ; preds = %75, %24
  br label %77

77:                                               ; preds = %76, %20
  br label %78

78:                                               ; preds = %77, %16
  br label %79

79:                                               ; preds = %78, %12
  %80 = load i32*, i32** %3, align 8
  %81 = load i32**, i32*** %2, align 8
  store i32* %80, i32** %81, align 8
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i32 @hexstr(i32**) #1

declare dso_local i64 @isoctdigit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
