; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/extr_paramgrill.c_invRangeMap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/extr_paramgrill.c_invRangeMap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mintable = common dso_local global i64* null, align 8
@maxtable = common dso_local global i32* null, align 8
@TLEN_RANGE = common dso_local global i32 0, align 4
@tlen_table = common dso_local global i64* null, align 8
@.str = private unnamed_addr constant [27 x i8] c"Error, not a valid param\0A \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64)* @invRangeMap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @invRangeMap(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i64*, i64** @mintable, align 8
  %10 = load i64, i64* %4, align 8
  %11 = getelementptr inbounds i64, i64* %9, i64 %10
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* %5, align 8
  %14 = call i32 @MAX(i64 %12, i64 %13)
  %15 = load i32*, i32** @maxtable, align 8
  %16 = load i64, i64* %4, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @MIN(i32 %14, i32 %18)
  store i64 %19, i64* %5, align 8
  %20 = load i64, i64* %4, align 8
  switch i64 %20, label %70 [
    i64 128, label %21
    i64 135, label %21
    i64 133, label %21
    i64 131, label %21
    i64 132, label %21
    i64 130, label %21
    i64 129, label %29
    i64 134, label %65
    i64 136, label %69
  ]

21:                                               ; preds = %2, %2, %2, %2, %2, %2
  %22 = load i64, i64* %5, align 8
  %23 = load i64*, i64** @mintable, align 8
  %24 = load i64, i64* %4, align 8
  %25 = getelementptr inbounds i64, i64* %23, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = sub nsw i64 %22, %26
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %3, align 4
  br label %74

29:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  %30 = load i32, i32* @TLEN_RANGE, align 4
  store i32 %30, i32* %7, align 4
  br label %31

31:                                               ; preds = %62, %29
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %63

35:                                               ; preds = %31
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %36, %37
  %39 = sdiv i32 %38, 2
  store i32 %39, i32* %8, align 4
  %40 = load i64*, i64** @tlen_table, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i64, i64* %40, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %5, align 8
  %46 = icmp slt i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %35
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %47, %35
  %51 = load i64*, i64** @tlen_table, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %51, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %5, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %50
  %59 = load i32, i32* %8, align 4
  store i32 %59, i32* %3, align 4
  br label %74

60:                                               ; preds = %50
  %61 = load i32, i32* %8, align 4
  store i32 %61, i32* %7, align 4
  br label %62

62:                                               ; preds = %60
  br label %31

63:                                               ; preds = %31
  %64 = load i32, i32* %6, align 4
  store i32 %64, i32* %3, align 4
  br label %74

65:                                               ; preds = %2
  %66 = load i64, i64* %5, align 8
  %67 = trunc i64 %66 to i32
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %3, align 4
  br label %74

69:                                               ; preds = %2
  br label %70

70:                                               ; preds = %2, %69
  br label %71

71:                                               ; preds = %70
  %72 = call i32 @DISPLAY(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %73 = call i32 @assert(i32 0)
  store i32 -2, i32* %3, align 4
  br label %74

74:                                               ; preds = %71, %65, %63, %58, %21
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i64 @MIN(i32, i32) #1

declare dso_local i32 @MAX(i64, i64) #1

declare dso_local i32 @DISPLAY(i8*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
