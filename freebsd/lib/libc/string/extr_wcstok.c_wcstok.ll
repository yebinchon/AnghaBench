; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/string/extr_wcstok.c_wcstok.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/string/extr_wcstok.c_wcstok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @wcstok(i32* noalias %0, i32* noalias %1, i32** noalias %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32** %2, i32*** %7, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %3
  %15 = load i32**, i32*** %7, align 8
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %5, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i32* null, i32** %4, align 8
  br label %71

19:                                               ; preds = %14, %3
  br label %20

20:                                               ; preds = %34, %19
  %21 = load i32*, i32** %5, align 8
  %22 = getelementptr inbounds i32, i32* %21, i32 1
  store i32* %22, i32** %5, align 8
  %23 = load i32, i32* %21, align 4
  store i32 %23, i32* %10, align 4
  %24 = load i32*, i32** %6, align 8
  store i32* %24, i32** %8, align 8
  br label %25

25:                                               ; preds = %35, %20
  %26 = load i32*, i32** %8, align 8
  %27 = getelementptr inbounds i32, i32* %26, i32 1
  store i32* %27, i32** %8, align 8
  %28 = load i32, i32* %26, align 4
  store i32 %28, i32* %11, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  br label %20

35:                                               ; preds = %30
  br label %25

36:                                               ; preds = %25
  %37 = load i32, i32* %10, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = load i32**, i32*** %7, align 8
  store i32* null, i32** %40, align 8
  store i32* null, i32** %4, align 8
  br label %71

41:                                               ; preds = %36
  %42 = load i32*, i32** %5, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 -1
  store i32* %43, i32** %9, align 8
  br label %44

44:                                               ; preds = %70, %41
  %45 = load i32*, i32** %5, align 8
  %46 = getelementptr inbounds i32, i32* %45, i32 1
  store i32* %46, i32** %5, align 8
  %47 = load i32, i32* %45, align 4
  store i32 %47, i32* %10, align 4
  %48 = load i32*, i32** %6, align 8
  store i32* %48, i32** %8, align 8
  br label %49

49:                                               ; preds = %67, %44
  %50 = load i32*, i32** %8, align 8
  %51 = getelementptr inbounds i32, i32* %50, i32 1
  store i32* %51, i32** %8, align 8
  %52 = load i32, i32* %50, align 4
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %10, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %66

55:                                               ; preds = %49
  %56 = load i32, i32* %10, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  store i32* null, i32** %5, align 8
  br label %62

59:                                               ; preds = %55
  %60 = load i32*, i32** %5, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 -1
  store i32 0, i32* %61, align 4
  br label %62

62:                                               ; preds = %59, %58
  %63 = load i32*, i32** %5, align 8
  %64 = load i32**, i32*** %7, align 8
  store i32* %63, i32** %64, align 8
  %65 = load i32*, i32** %9, align 8
  store i32* %65, i32** %4, align 8
  br label %71

66:                                               ; preds = %49
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %11, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %49, label %70

70:                                               ; preds = %67
  br label %44

71:                                               ; preds = %62, %39, %18
  %72 = load i32*, i32** %4, align 8
  ret i32* %72
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
