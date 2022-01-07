; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdtime/extr_strftime.c__yconv.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdtime/extr_strftime.c__yconv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"-0\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%02d\00", align 1
@DIVISOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i32, i32, i32, i8*, i8*, i32)* @_yconv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @_yconv(i32 %0, i32 %1, i32 %2, i32 %3, i8* %4, i8* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  store i32 %6, i32* %14, align 4
  %17 = load i32, i32* %8, align 4
  %18 = srem i32 %17, 100
  %19 = load i32, i32* %9, align 4
  %20 = srem i32 %19, 100
  %21 = add nsw i32 %18, %20
  store i32 %21, i32* %16, align 4
  %22 = load i32, i32* %8, align 4
  %23 = sdiv i32 %22, 100
  %24 = load i32, i32* %9, align 4
  %25 = sdiv i32 %24, 100
  %26 = add nsw i32 %23, %25
  %27 = load i32, i32* %16, align 4
  %28 = sdiv i32 %27, 100
  %29 = add nsw i32 %26, %28
  store i32 %29, i32* %15, align 4
  %30 = load i32, i32* %16, align 4
  %31 = srem i32 %30, 100
  store i32 %31, i32* %16, align 4
  %32 = load i32, i32* %16, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %7
  %35 = load i32, i32* %15, align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = load i32, i32* %16, align 4
  %39 = add nsw i32 %38, 100
  store i32 %39, i32* %16, align 4
  %40 = load i32, i32* %15, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %15, align 4
  br label %54

42:                                               ; preds = %34, %7
  %43 = load i32, i32* %15, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %42
  %46 = load i32, i32* %16, align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %45
  %49 = load i32, i32* %16, align 4
  %50 = sub nsw i32 %49, 100
  store i32 %50, i32* %16, align 4
  %51 = load i32, i32* %15, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %15, align 4
  br label %53

53:                                               ; preds = %48, %45, %42
  br label %54

54:                                               ; preds = %53, %37
  %55 = load i32, i32* %10, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %74

57:                                               ; preds = %54
  %58 = load i32, i32* %15, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %57
  %61 = load i32, i32* %16, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %60
  %64 = load i8*, i8** %12, align 8
  %65 = load i8*, i8** %13, align 8
  %66 = call i8* @_add(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %64, i8* %65)
  store i8* %66, i8** %12, align 8
  br label %73

67:                                               ; preds = %60, %57
  %68 = load i32, i32* %15, align 4
  %69 = load i8*, i8** %12, align 8
  %70 = load i8*, i8** %13, align 8
  %71 = load i32, i32* %14, align 4
  %72 = call i8* @_conv(i32 %68, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %69, i8* %70, i32 %71)
  store i8* %72, i8** %12, align 8
  br label %73

73:                                               ; preds = %67, %63
  br label %74

74:                                               ; preds = %73, %54
  %75 = load i32, i32* %11, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %91

77:                                               ; preds = %74
  %78 = load i32, i32* %16, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load i32, i32* %16, align 4
  %82 = sub nsw i32 0, %81
  br label %85

83:                                               ; preds = %77
  %84 = load i32, i32* %16, align 4
  br label %85

85:                                               ; preds = %83, %80
  %86 = phi i32 [ %82, %80 ], [ %84, %83 ]
  %87 = load i8*, i8** %12, align 8
  %88 = load i8*, i8** %13, align 8
  %89 = load i32, i32* %14, align 4
  %90 = call i8* @_conv(i32 %86, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %87, i8* %88, i32 %89)
  store i8* %90, i8** %12, align 8
  br label %91

91:                                               ; preds = %85, %74
  %92 = load i8*, i8** %12, align 8
  ret i8* %92
}

declare dso_local i8* @_add(i8*, i8*, i8*) #1

declare dso_local i8* @_conv(i32, i8*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
