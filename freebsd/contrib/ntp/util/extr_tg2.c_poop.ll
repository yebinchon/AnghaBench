; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/util/extr_tg2.c_poop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/util/extr_tg2.c_poop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OFF = common dso_local global i32 0, align 4
@u3000 = common dso_local global i32* null, align 8
@buffer = common dso_local global i32* null, align 8
@bufcnt = common dso_local global i64 0, align 8
@u6000 = common dso_local global i32* null, align 8
@BUFLNG = common dso_local global i64 0, align 8
@fd = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @poop(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @OFF, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %18, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* %6, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15, %4
  store i32 10, i32* %9, align 4
  br label %22

19:                                               ; preds = %15
  %20 = load i32, i32* %6, align 4
  %21 = sdiv i32 %20, 100
  store i32 %21, i32* %9, align 4
  br label %22

22:                                               ; preds = %19, %18
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %23

23:                                               ; preds = %101, %22
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %5, align 4
  %26 = mul nsw i32 %25, 8
  %27 = icmp slt i32 %24, %26
  br i1 %27, label %28, label %104

28:                                               ; preds = %23
  %29 = load i32, i32* %7, align 4
  switch i32 %29, label %82 [
    i32 129, label %30
    i32 128, label %56
  ]

30:                                               ; preds = %28
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %30
  %34 = load i32*, i32** @u3000, align 8
  %35 = load i32, i32* %11, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = xor i32 %38, -1
  %40 = load i32*, i32** @buffer, align 8
  %41 = load i64, i64* @bufcnt, align 8
  %42 = add nsw i64 %41, 1
  store i64 %42, i64* @bufcnt, align 8
  %43 = getelementptr inbounds i32, i32* %40, i64 %41
  store i32 %39, i32* %43, align 4
  br label %55

44:                                               ; preds = %30
  %45 = load i32*, i32** @u6000, align 8
  %46 = load i32, i32* %11, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = xor i32 %49, -1
  %51 = load i32*, i32** @buffer, align 8
  %52 = load i64, i64* @bufcnt, align 8
  %53 = add nsw i64 %52, 1
  store i64 %53, i64* @bufcnt, align 8
  %54 = getelementptr inbounds i32, i32* %51, i64 %52
  store i32 %50, i32* %54, align 4
  br label %55

55:                                               ; preds = %44, %33
  br label %87

56:                                               ; preds = %28
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %70

59:                                               ; preds = %56
  %60 = load i32*, i32** @u6000, align 8
  %61 = load i32, i32* %11, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = xor i32 %64, -1
  %66 = load i32*, i32** @buffer, align 8
  %67 = load i64, i64* @bufcnt, align 8
  %68 = add nsw i64 %67, 1
  store i64 %68, i64* @bufcnt, align 8
  %69 = getelementptr inbounds i32, i32* %66, i64 %67
  store i32 %65, i32* %69, align 4
  br label %81

70:                                               ; preds = %56
  %71 = load i32*, i32** @u3000, align 8
  %72 = load i32, i32* %11, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = xor i32 %75, -1
  %77 = load i32*, i32** @buffer, align 8
  %78 = load i64, i64* @bufcnt, align 8
  %79 = add nsw i64 %78, 1
  store i64 %79, i64* @bufcnt, align 8
  %80 = getelementptr inbounds i32, i32* %77, i64 %78
  store i32 %76, i32* %80, align 4
  br label %81

81:                                               ; preds = %70, %59
  br label %87

82:                                               ; preds = %28
  %83 = load i32*, i32** @buffer, align 8
  %84 = load i64, i64* @bufcnt, align 8
  %85 = add nsw i64 %84, 1
  store i64 %85, i64* @bufcnt, align 8
  %86 = getelementptr inbounds i32, i32* %83, i64 %84
  store i32 -1, i32* %86, align 4
  br label %87

87:                                               ; preds = %82, %81, %55
  %88 = load i64, i64* @bufcnt, align 8
  %89 = load i64, i64* @BUFLNG, align 8
  %90 = icmp sge i64 %88, %89
  br i1 %90, label %91, label %96

91:                                               ; preds = %87
  %92 = load i32, i32* @fd, align 4
  %93 = load i32*, i32** @buffer, align 8
  %94 = load i64, i64* @BUFLNG, align 8
  %95 = call i32 @write(i32 %92, i32* %93, i64 %94)
  store i64 0, i64* @bufcnt, align 8
  br label %96

96:                                               ; preds = %91, %87
  %97 = load i32, i32* %11, align 4
  %98 = load i32, i32* %9, align 4
  %99 = add nsw i32 %97, %98
  %100 = srem i32 %99, 80
  store i32 %100, i32* %11, align 4
  br label %101

101:                                              ; preds = %96
  %102 = load i32, i32* %10, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %10, align 4
  br label %23

104:                                              ; preds = %23
  ret void
}

declare dso_local i32 @write(i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
