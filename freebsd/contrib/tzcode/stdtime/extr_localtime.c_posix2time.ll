; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tzcode/stdtime/extr_localtime.c_posix2time.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tzcode/stdtime/extr_localtime.c_posix2time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @posix2time(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %6 = call i32 (...) @tzset()
  %7 = load i64, i64* %3, align 8
  %8 = call i64 @leapcorr(i64* %3)
  %9 = add nsw i64 %7, %8
  store i64 %9, i64* %4, align 8
  %10 = load i64, i64* %4, align 8
  %11 = call i64 @leapcorr(i64* %4)
  %12 = sub nsw i64 %10, %11
  store i64 %12, i64* %5, align 8
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* %3, align 8
  %15 = icmp slt i64 %13, %14
  br i1 %15, label %16, label %35

16:                                               ; preds = %1
  br label %17

17:                                               ; preds = %23, %16
  %18 = load i64, i64* %4, align 8
  %19 = add nsw i64 %18, 1
  store i64 %19, i64* %4, align 8
  %20 = load i64, i64* %4, align 8
  %21 = call i64 @leapcorr(i64* %4)
  %22 = sub nsw i64 %20, %21
  store i64 %22, i64* %5, align 8
  br label %23

23:                                               ; preds = %17
  %24 = load i64, i64* %5, align 8
  %25 = load i64, i64* %3, align 8
  %26 = icmp slt i64 %24, %25
  br i1 %26, label %17, label %27

27:                                               ; preds = %23
  %28 = load i64, i64* %3, align 8
  %29 = load i64, i64* %5, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i64, i64* %4, align 8
  %33 = sub nsw i64 %32, 1
  store i64 %33, i64* %2, align 8
  br label %61

34:                                               ; preds = %27
  br label %59

35:                                               ; preds = %1
  %36 = load i64, i64* %5, align 8
  %37 = load i64, i64* %3, align 8
  %38 = icmp sgt i64 %36, %37
  br i1 %38, label %39, label %58

39:                                               ; preds = %35
  br label %40

40:                                               ; preds = %46, %39
  %41 = load i64, i64* %4, align 8
  %42 = add nsw i64 %41, -1
  store i64 %42, i64* %4, align 8
  %43 = load i64, i64* %4, align 8
  %44 = call i64 @leapcorr(i64* %4)
  %45 = sub nsw i64 %43, %44
  store i64 %45, i64* %5, align 8
  br label %46

46:                                               ; preds = %40
  %47 = load i64, i64* %5, align 8
  %48 = load i64, i64* %3, align 8
  %49 = icmp sgt i64 %47, %48
  br i1 %49, label %40, label %50

50:                                               ; preds = %46
  %51 = load i64, i64* %3, align 8
  %52 = load i64, i64* %5, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load i64, i64* %4, align 8
  %56 = add nsw i64 %55, 1
  store i64 %56, i64* %2, align 8
  br label %61

57:                                               ; preds = %50
  br label %58

58:                                               ; preds = %57, %35
  br label %59

59:                                               ; preds = %58, %34
  %60 = load i64, i64* %4, align 8
  store i64 %60, i64* %2, align 8
  br label %61

61:                                               ; preds = %59, %54, %31
  %62 = load i64, i64* %2, align 8
  ret i64 %62
}

declare dso_local i32 @tzset(...) #1

declare dso_local i64 @leapcorr(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
