; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.chared.c_c_preword.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.chared.c_c_preword.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64* (i64*, i64*, i32, i64*)* @c_preword to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64* @c_preword(i64* %0, i64* %1, i32 %2, i64* %3) #0 {
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  store i64* %0, i64** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64* %3, i64** %8, align 8
  br label %11

11:                                               ; preds = %71, %4
  %12 = load i32, i32* %7, align 4
  %13 = add nsw i32 %12, -1
  store i32 %13, i32* %7, align 4
  %14 = icmp ne i32 %12, 0
  br i1 %14, label %15, label %73

15:                                               ; preds = %11
  %16 = load i64*, i64** %6, align 8
  store i64* %16, i64** %9, align 8
  br label %17

17:                                               ; preds = %33, %15
  %18 = load i64*, i64** %9, align 8
  %19 = load i64*, i64** %5, align 8
  %20 = icmp ult i64* %18, %19
  br i1 %20, label %21, label %36

21:                                               ; preds = %17
  %22 = load i64*, i64** %8, align 8
  %23 = load i64*, i64** %9, align 8
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @Strchr(i64* %22, i64 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %21
  %28 = load i64*, i64** %9, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 -1
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 92
  br i1 %31, label %32, label %33

32:                                               ; preds = %27, %21
  br label %36

33:                                               ; preds = %27
  %34 = load i64*, i64** %9, align 8
  %35 = getelementptr inbounds i64, i64* %34, i32 1
  store i64* %35, i64** %9, align 8
  br label %17

36:                                               ; preds = %32, %17
  %37 = load i64*, i64** %9, align 8
  store i64* %37, i64** %10, align 8
  br label %38

38:                                               ; preds = %70, %36
  %39 = load i64*, i64** %10, align 8
  %40 = load i64*, i64** %5, align 8
  %41 = icmp ult i64* %39, %40
  br i1 %41, label %42, label %71

42:                                               ; preds = %38
  %43 = load i64*, i64** %10, align 8
  store i64* %43, i64** %9, align 8
  %44 = load i64*, i64** %9, align 8
  %45 = getelementptr inbounds i64, i64* %44, i64 -1
  %46 = load i64*, i64** %5, align 8
  %47 = load i64*, i64** %8, align 8
  %48 = call i64* @c_endword(i64* %45, i64* %46, i32 1, i64* %47)
  store i64* %48, i64** %10, align 8
  %49 = load i64*, i64** %10, align 8
  %50 = getelementptr inbounds i64, i64* %49, i32 1
  store i64* %50, i64** %10, align 8
  br label %51

51:                                               ; preds = %67, %42
  %52 = load i64*, i64** %10, align 8
  %53 = load i64*, i64** %5, align 8
  %54 = icmp ule i64* %52, %53
  br i1 %54, label %55, label %70

55:                                               ; preds = %51
  %56 = load i64*, i64** %8, align 8
  %57 = load i64*, i64** %10, align 8
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @Strchr(i64* %56, i64 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %55
  %62 = load i64*, i64** %10, align 8
  %63 = getelementptr inbounds i64, i64* %62, i64 -1
  %64 = load i64, i64* %63, align 8
  %65 = icmp eq i64 %64, 92
  br i1 %65, label %66, label %67

66:                                               ; preds = %61, %55
  br label %70

67:                                               ; preds = %61
  %68 = load i64*, i64** %10, align 8
  %69 = getelementptr inbounds i64, i64* %68, i32 1
  store i64* %69, i64** %10, align 8
  br label %51

70:                                               ; preds = %66, %51
  br label %38

71:                                               ; preds = %38
  %72 = load i64*, i64** %9, align 8
  store i64* %72, i64** %5, align 8
  br label %11

73:                                               ; preds = %11
  %74 = load i64*, i64** %5, align 8
  %75 = load i64*, i64** %6, align 8
  %76 = icmp ult i64* %74, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %73
  %78 = load i64*, i64** %6, align 8
  store i64* %78, i64** %5, align 8
  br label %79

79:                                               ; preds = %77, %73
  %80 = load i64*, i64** %5, align 8
  ret i64* %80
}

declare dso_local i32 @Strchr(i64*, i64) #1

declare dso_local i64* @c_endword(i64*, i64*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
