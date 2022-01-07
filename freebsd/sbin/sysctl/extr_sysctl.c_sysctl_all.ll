; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/sysctl/extr_sysctl.c_sysctl_all.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/sysctl/extr_sysctl.c_sysctl_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"sysctl(getnext) %d %zu\00", align 1
@bflag = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @sysctl_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sysctl_all(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [22 x i32], align 16
  %7 = alloca [22 x i32], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = getelementptr inbounds [22 x i32], [22 x i32]* %6, i64 0, i64 0
  store i32 0, i32* %12, align 16
  %13 = getelementptr inbounds [22 x i32], [22 x i32]* %6, i64 0, i64 1
  store i32 2, i32* %13, align 4
  store i64 2, i64* %10, align 8
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %2
  %17 = getelementptr inbounds [22 x i32], [22 x i32]* %6, i64 0, i64 0
  %18 = getelementptr inbounds i32, i32* %17, i64 2
  %19 = load i32*, i32** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = mul i64 %21, 4
  %23 = call i32 @memcpy(i32* %18, i32* %19, i64 %22)
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = load i64, i64* %10, align 8
  %27 = add i64 %26, %25
  store i64 %27, i64* %10, align 8
  br label %32

28:                                               ; preds = %2
  %29 = getelementptr inbounds [22 x i32], [22 x i32]* %6, i64 0, i64 2
  store i32 1, i32* %29, align 8
  %30 = load i64, i64* %10, align 8
  %31 = add i64 %30, 1
  store i64 %31, i64* %10, align 8
  br label %32

32:                                               ; preds = %28, %16
  br label %33

33:                                               ; preds = %93, %32
  store i64 88, i64* %11, align 8
  %34 = getelementptr inbounds [22 x i32], [22 x i32]* %6, i64 0, i64 0
  %35 = load i64, i64* %10, align 8
  %36 = getelementptr inbounds [22 x i32], [22 x i32]* %7, i64 0, i64 0
  %37 = call i32 @sysctl(i32* %34, i64 %35, i32* %36, i64* %11, i32 0, i32 0)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %33
  %41 = load i64, i64* @errno, align 8
  %42 = load i64, i64* @ENOENT, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %102

45:                                               ; preds = %40
  %46 = load i32, i32* %9, align 4
  %47 = load i64, i64* %11, align 8
  %48 = call i32 @err(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %46, i64 %47)
  br label %49

49:                                               ; preds = %45
  br label %50

50:                                               ; preds = %49, %33
  %51 = load i64, i64* %11, align 8
  %52 = udiv i64 %51, 4
  store i64 %52, i64* %11, align 8
  %53 = load i32, i32* %5, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %50
  %56 = load i64, i64* %11, align 8
  %57 = load i32, i32* %5, align 4
  %58 = zext i32 %57 to i64
  %59 = icmp ult i64 %56, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %55, %50
  store i32 0, i32* %3, align 4
  br label %102

61:                                               ; preds = %55
  store i32 0, i32* %8, align 4
  br label %62

62:                                               ; preds = %79, %61
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %5, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %82

66:                                               ; preds = %62
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [22 x i32], [22 x i32]* %7, i64 0, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load i32*, i32** %4, align 8
  %72 = load i32, i32* %8, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %70, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %66
  store i32 0, i32* %3, align 4
  br label %102

78:                                               ; preds = %66
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %8, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %8, align 4
  br label %62

82:                                               ; preds = %62
  %83 = getelementptr inbounds [22 x i32], [22 x i32]* %7, i64 0, i64 0
  %84 = load i64, i64* %11, align 8
  %85 = call i32 @show_var(i32* %83, i64 %84)
  store i32 %85, i32* %8, align 4
  %86 = load i32, i32* %8, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %93, label %88

88:                                               ; preds = %82
  %89 = load i32, i32* @bflag, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %93, label %91

91:                                               ; preds = %88
  %92 = call i32 @putchar(i8 signext 10)
  br label %93

93:                                               ; preds = %91, %88, %82
  %94 = getelementptr inbounds [22 x i32], [22 x i32]* %6, i64 0, i64 0
  %95 = getelementptr inbounds i32, i32* %94, i64 2
  %96 = getelementptr inbounds [22 x i32], [22 x i32]* %7, i64 0, i64 0
  %97 = load i64, i64* %11, align 8
  %98 = mul i64 %97, 4
  %99 = call i32 @memcpy(i32* %95, i32* %96, i64 %98)
  %100 = load i64, i64* %11, align 8
  %101 = add i64 2, %100
  store i64 %101, i64* %10, align 8
  br label %33

102:                                              ; preds = %77, %60, %44
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @sysctl(i32*, i64, i32*, i64*, i32, i32) #1

declare dso_local i32 @err(i32, i8*, i32, i64) #1

declare dso_local i32 @show_var(i32*, i64) #1

declare dso_local i32 @putchar(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
