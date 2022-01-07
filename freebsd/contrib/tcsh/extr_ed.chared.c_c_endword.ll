; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.chared.c_c_endword.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.chared.c_c_endword.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64* (i64*, i64*, i32, i64*)* @c_endword to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64* @c_endword(i64* %0, i64* %1, i32 %2, i64* %3) #0 {
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  store i64* %0, i64** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64* %3, i64** %8, align 8
  store i64 0, i64* %9, align 8
  %10 = load i64*, i64** %5, align 8
  %11 = getelementptr inbounds i64, i64* %10, i32 1
  store i64* %11, i64** %5, align 8
  br label %12

12:                                               ; preds = %90, %4
  %13 = load i32, i32* %7, align 4
  %14 = add nsw i32 %13, -1
  store i32 %14, i32* %7, align 4
  %15 = icmp ne i32 %13, 0
  br i1 %15, label %16, label %91

16:                                               ; preds = %12
  br label %17

17:                                               ; preds = %33, %16
  %18 = load i64*, i64** %5, align 8
  %19 = load i64*, i64** %6, align 8
  %20 = icmp ult i64* %18, %19
  br i1 %20, label %21, label %36

21:                                               ; preds = %17
  %22 = load i64*, i64** %8, align 8
  %23 = load i64*, i64** %5, align 8
  %24 = load i64, i64* %23, align 8
  %25 = call i64 @Strchr(i64* %22, i64 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %21
  %28 = load i64*, i64** %5, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 -1
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 92
  br i1 %31, label %32, label %33

32:                                               ; preds = %27, %21
  br label %36

33:                                               ; preds = %27
  %34 = load i64*, i64** %5, align 8
  %35 = getelementptr inbounds i64, i64* %34, i32 1
  store i64* %35, i64** %5, align 8
  br label %17

36:                                               ; preds = %32, %17
  br label %37

37:                                               ; preds = %87, %36
  %38 = load i64*, i64** %5, align 8
  %39 = load i64*, i64** %6, align 8
  %40 = icmp ult i64* %38, %39
  br i1 %40, label %41, label %90

41:                                               ; preds = %37
  %42 = load i64*, i64** %5, align 8
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %43, 39
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = load i64*, i64** %5, align 8
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %47, 34
  br i1 %48, label %49, label %72

49:                                               ; preds = %45, %41
  %50 = load i64, i64* %9, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %49
  %53 = load i64*, i64** %5, align 8
  %54 = getelementptr inbounds i64, i64* %53, i64 -1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 92
  br i1 %56, label %57, label %71

57:                                               ; preds = %52, %49
  %58 = load i64, i64* %9, align 8
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load i64*, i64** %5, align 8
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %9, align 8
  br label %70

63:                                               ; preds = %57
  %64 = load i64, i64* %9, align 8
  %65 = load i64*, i64** %5, align 8
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %64, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  store i64 0, i64* %9, align 8
  br label %69

69:                                               ; preds = %68, %63
  br label %70

70:                                               ; preds = %69, %60
  br label %71

71:                                               ; preds = %70, %52
  br label %72

72:                                               ; preds = %71, %45
  %73 = load i64, i64* %9, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %87, label %75

75:                                               ; preds = %72
  %76 = load i64*, i64** %8, align 8
  %77 = load i64*, i64** %5, align 8
  %78 = load i64, i64* %77, align 8
  %79 = call i64 @Strchr(i64* %76, i64 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %75
  %82 = load i64*, i64** %5, align 8
  %83 = getelementptr inbounds i64, i64* %82, i64 -1
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 92
  br i1 %85, label %86, label %87

86:                                               ; preds = %81
  br label %90

87:                                               ; preds = %81, %75, %72
  %88 = load i64*, i64** %5, align 8
  %89 = getelementptr inbounds i64, i64* %88, i32 1
  store i64* %89, i64** %5, align 8
  br label %37

90:                                               ; preds = %86, %37
  br label %12

91:                                               ; preds = %12
  %92 = load i64*, i64** %5, align 8
  %93 = getelementptr inbounds i64, i64* %92, i32 -1
  store i64* %93, i64** %5, align 8
  %94 = load i64*, i64** %5, align 8
  ret i64* %94
}

declare dso_local i64 @Strchr(i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
