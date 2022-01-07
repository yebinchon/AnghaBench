; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_pathmatch.c_pm_list_w.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_pathmatch.c_pm_list_w.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32)* @pm_list_w to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm_list_w(i32* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load i32*, i32** %6, align 8
  store i32* %16, i32** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 1, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load i32*, i32** %10, align 8
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 33
  br i1 %20, label %25, label %21

21:                                               ; preds = %4
  %22 = load i32*, i32** %10, align 8
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 94
  br i1 %24, label %25, label %32

25:                                               ; preds = %21, %4
  %26 = load i32*, i32** %10, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = icmp ult i32* %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  store i32 0, i32* %13, align 4
  store i32 1, i32* %14, align 4
  %30 = load i32*, i32** %10, align 8
  %31 = getelementptr inbounds i32, i32* %30, i32 1
  store i32* %31, i32** %10, align 8
  br label %32

32:                                               ; preds = %29, %25, %21
  br label %33

33:                                               ; preds = %91, %32
  %34 = load i32*, i32** %10, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = icmp ult i32* %34, %35
  br i1 %36, label %37, label %95

37:                                               ; preds = %33
  store i32 0, i32* %12, align 4
  %38 = load i32*, i32** %10, align 8
  %39 = load i32, i32* %38, align 4
  switch i32 %39, label %81 [
    i32 45, label %40
    i32 92, label %78
  ]

40:                                               ; preds = %37
  %41 = load i32, i32* %11, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %40
  %44 = load i32*, i32** %10, align 8
  %45 = load i32*, i32** %7, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 -1
  %47 = icmp eq i32* %44, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %43, %40
  %49 = load i32*, i32** %10, align 8
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = load i32, i32* %13, align 4
  store i32 %54, i32* %5, align 4
  br label %97

55:                                               ; preds = %48
  br label %77

56:                                               ; preds = %43
  %57 = load i32*, i32** %10, align 8
  %58 = getelementptr inbounds i32, i32* %57, i32 1
  store i32* %58, i32** %10, align 8
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %15, align 4
  %60 = load i32, i32* %15, align 4
  %61 = icmp eq i32 %60, 92
  br i1 %61, label %62, label %66

62:                                               ; preds = %56
  %63 = load i32*, i32** %10, align 8
  %64 = getelementptr inbounds i32, i32* %63, i32 1
  store i32* %64, i32** %10, align 8
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %15, align 4
  br label %66

66:                                               ; preds = %62, %56
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp sle i32 %67, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %66
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* %15, align 4
  %73 = icmp sle i32 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  %75 = load i32, i32* %13, align 4
  store i32 %75, i32* %5, align 4
  br label %97

76:                                               ; preds = %70, %66
  br label %77

77:                                               ; preds = %76, %55
  br label %91

78:                                               ; preds = %37
  %79 = load i32*, i32** %10, align 8
  %80 = getelementptr inbounds i32, i32* %79, i32 1
  store i32* %80, i32** %10, align 8
  br label %81

81:                                               ; preds = %37, %78
  %82 = load i32*, i32** %10, align 8
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %8, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %81
  %87 = load i32, i32* %13, align 4
  store i32 %87, i32* %5, align 4
  br label %97

88:                                               ; preds = %81
  %89 = load i32*, i32** %10, align 8
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* %12, align 4
  br label %91

91:                                               ; preds = %88, %77
  %92 = load i32, i32* %12, align 4
  store i32 %92, i32* %11, align 4
  %93 = load i32*, i32** %10, align 8
  %94 = getelementptr inbounds i32, i32* %93, i32 1
  store i32* %94, i32** %10, align 8
  br label %33

95:                                               ; preds = %33
  %96 = load i32, i32* %14, align 4
  store i32 %96, i32* %5, align 4
  br label %97

97:                                               ; preds = %95, %86, %74, %53
  %98 = load i32, i32* %5, align 4
  ret i32 %98
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
