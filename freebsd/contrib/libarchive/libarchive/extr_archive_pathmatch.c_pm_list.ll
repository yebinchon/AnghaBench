; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_pathmatch.c_pm_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_pathmatch.c_pm_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8, i32)* @pm_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm_list(i8* %0, i8* %1, i8 signext %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8, align 1
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8 %2, i8* %8, align 1
  store i32 %3, i32* %9, align 4
  %16 = load i8*, i8** %6, align 8
  store i8* %16, i8** %10, align 8
  store i8 0, i8* %11, align 1
  store i32 1, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load i8*, i8** %10, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 33
  br i1 %21, label %27, label %22

22:                                               ; preds = %4
  %23 = load i8*, i8** %10, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 94
  br i1 %26, label %27, label %34

27:                                               ; preds = %22, %4
  %28 = load i8*, i8** %10, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = icmp ult i8* %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  store i32 0, i32* %13, align 4
  store i32 1, i32* %14, align 4
  %32 = load i8*, i8** %10, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %10, align 8
  br label %34

34:                                               ; preds = %31, %27, %22
  br label %35

35:                                               ; preds = %104, %34
  %36 = load i8*, i8** %10, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = icmp ult i8* %36, %37
  br i1 %38, label %39, label %108

39:                                               ; preds = %35
  store i8 0, i8* %12, align 1
  %40 = load i8*, i8** %10, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  switch i32 %42, label %92 [
    i32 45, label %43
    i32 92, label %89
  ]

43:                                               ; preds = %39
  %44 = load i8, i8* %11, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %43
  %48 = load i8*, i8** %10, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 -1
  %51 = icmp eq i8* %48, %50
  br i1 %51, label %52, label %62

52:                                               ; preds = %47, %43
  %53 = load i8*, i8** %10, align 8
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = load i8, i8* %8, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %55, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %52
  %60 = load i32, i32* %13, align 4
  store i32 %60, i32* %5, align 4
  br label %110

61:                                               ; preds = %52
  br label %88

62:                                               ; preds = %47
  %63 = load i8*, i8** %10, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %10, align 8
  %65 = load i8, i8* %64, align 1
  store i8 %65, i8* %15, align 1
  %66 = load i8, i8* %15, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 92
  br i1 %68, label %69, label %73

69:                                               ; preds = %62
  %70 = load i8*, i8** %10, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %10, align 8
  %72 = load i8, i8* %71, align 1
  store i8 %72, i8* %15, align 1
  br label %73

73:                                               ; preds = %69, %62
  %74 = load i8, i8* %11, align 1
  %75 = sext i8 %74 to i32
  %76 = load i8, i8* %8, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp sle i32 %75, %77
  br i1 %78, label %79, label %87

79:                                               ; preds = %73
  %80 = load i8, i8* %8, align 1
  %81 = sext i8 %80 to i32
  %82 = load i8, i8* %15, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp sle i32 %81, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %79
  %86 = load i32, i32* %13, align 4
  store i32 %86, i32* %5, align 4
  br label %110

87:                                               ; preds = %79, %73
  br label %88

88:                                               ; preds = %87, %61
  br label %104

89:                                               ; preds = %39
  %90 = load i8*, i8** %10, align 8
  %91 = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %91, i8** %10, align 8
  br label %92

92:                                               ; preds = %39, %89
  %93 = load i8*, i8** %10, align 8
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = load i8, i8* %8, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp eq i32 %95, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %92
  %100 = load i32, i32* %13, align 4
  store i32 %100, i32* %5, align 4
  br label %110

101:                                              ; preds = %92
  %102 = load i8*, i8** %10, align 8
  %103 = load i8, i8* %102, align 1
  store i8 %103, i8* %12, align 1
  br label %104

104:                                              ; preds = %101, %88
  %105 = load i8, i8* %12, align 1
  store i8 %105, i8* %11, align 1
  %106 = load i8*, i8** %10, align 8
  %107 = getelementptr inbounds i8, i8* %106, i32 1
  store i8* %107, i8** %10, align 8
  br label %35

108:                                              ; preds = %35
  %109 = load i32, i32* %14, align 4
  store i32 %109, i32* %5, align 4
  br label %110

110:                                              ; preds = %108, %99, %85, %59
  %111 = load i32, i32* %5, align 4
  ret i32 %111
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
