; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_pathmatch.c___archive_pathmatch_w.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_pathmatch.c___archive_pathmatch_w.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PATHMATCH_NO_ANCHOR_START = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__archive_pathmatch_w(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32*, i32** %5, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %3
  %11 = load i32*, i32** %5, align 8
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %10, %3
  %15 = load i32*, i32** %6, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %14
  %18 = load i32*, i32** %6, align 8
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 0
  br label %21

21:                                               ; preds = %17, %14
  %22 = phi i1 [ true, %14 ], [ %20, %17 ]
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %4, align 4
  br label %106

24:                                               ; preds = %10
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 94
  br i1 %27, label %28, label %35

28:                                               ; preds = %24
  %29 = load i32*, i32** %5, align 8
  %30 = getelementptr inbounds i32, i32* %29, i32 1
  store i32* %30, i32** %5, align 8
  %31 = load i32, i32* @PATHMATCH_NO_ANCHOR_START, align 4
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %7, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %7, align 4
  br label %35

35:                                               ; preds = %28, %24
  %36 = load i32*, i32** %5, align 8
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %37, 47
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = load i32*, i32** %6, align 8
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 47
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store i32 0, i32* %4, align 4
  br label %106

44:                                               ; preds = %39, %35
  %45 = load i32*, i32** %5, align 8
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %46, 42
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = load i32*, i32** %5, align 8
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %50, 47
  br i1 %51, label %52, label %73

52:                                               ; preds = %48, %44
  br label %53

53:                                               ; preds = %57, %52
  %54 = load i32*, i32** %5, align 8
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %55, 47
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load i32*, i32** %5, align 8
  %59 = getelementptr inbounds i32, i32* %58, i32 1
  store i32* %59, i32** %5, align 8
  br label %53

60:                                               ; preds = %53
  br label %61

61:                                               ; preds = %65, %60
  %62 = load i32*, i32** %6, align 8
  %63 = load i32, i32* %62, align 4
  %64 = icmp eq i32 %63, 47
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = load i32*, i32** %6, align 8
  %67 = getelementptr inbounds i32, i32* %66, i32 1
  store i32* %67, i32** %6, align 8
  br label %61

68:                                               ; preds = %61
  %69 = load i32*, i32** %5, align 8
  %70 = load i32*, i32** %6, align 8
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @pm_w(i32* %69, i32* %70, i32 %71)
  store i32 %72, i32* %4, align 4
  br label %106

73:                                               ; preds = %48
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* @PATHMATCH_NO_ANCHOR_START, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %101

78:                                               ; preds = %73
  br label %79

79:                                               ; preds = %97, %78
  %80 = load i32*, i32** %6, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %82, label %100

82:                                               ; preds = %79
  %83 = load i32*, i32** %6, align 8
  %84 = load i32, i32* %83, align 4
  %85 = icmp eq i32 %84, 47
  br i1 %85, label %86, label %89

86:                                               ; preds = %82
  %87 = load i32*, i32** %6, align 8
  %88 = getelementptr inbounds i32, i32* %87, i32 1
  store i32* %88, i32** %6, align 8
  br label %89

89:                                               ; preds = %86, %82
  %90 = load i32*, i32** %5, align 8
  %91 = load i32*, i32** %6, align 8
  %92 = load i32, i32* %7, align 4
  %93 = call i32 @pm_w(i32* %90, i32* %91, i32 %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %89
  store i32 1, i32* %4, align 4
  br label %106

96:                                               ; preds = %89
  br label %97

97:                                               ; preds = %96
  %98 = load i32*, i32** %6, align 8
  %99 = call i32* @wcschr(i32* %98, i32 47)
  store i32* %99, i32** %6, align 8
  br label %79

100:                                              ; preds = %79
  store i32 0, i32* %4, align 4
  br label %106

101:                                              ; preds = %73
  %102 = load i32*, i32** %5, align 8
  %103 = load i32*, i32** %6, align 8
  %104 = load i32, i32* %7, align 4
  %105 = call i32 @pm_w(i32* %102, i32* %103, i32 %104)
  store i32 %105, i32* %4, align 4
  br label %106

106:                                              ; preds = %101, %100, %95, %68, %43, %21
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

declare dso_local i32 @pm_w(i32*, i32*, i32) #1

declare dso_local i32* @wcschr(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
