; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/util/extr_kern.c_hardupdate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/util/extr_kern.c_hardupdate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@SHIFT_UPDATE = common dso_local global i64 0, align 8
@time_offset = common dso_local global i64 0, align 8
@timex = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@time_reftime = common dso_local global i64 0, align 8
@MAXSEC = common dso_local global i64 0, align 8
@time_constant = common dso_local global i64 0, align 8
@time_freq = common dso_local global i64 0, align 8
@time_tolerance = common dso_local global i64 0, align 8
@SHIFT_KF = common dso_local global i64 0, align 8
@time_status = common dso_local global i64 0, align 8
@TIME_BAD = common dso_local global i64 0, align 8
@TIME_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hardupdate(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = load i64, i64* @SHIFT_UPDATE, align 8
  %7 = shl i64 %5, %6
  store i64 %7, i64* @time_offset, align 8
  %8 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @timex, i32 0, i32 0), align 8
  %9 = load i64, i64* @time_reftime, align 8
  %10 = sub nsw i64 %8, %9
  store i64 %10, i64* %4, align 8
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @timex, i32 0, i32 0), align 8
  store i64 %11, i64* @time_reftime, align 8
  %12 = load i64, i64* %4, align 8
  %13 = load i64, i64* @MAXSEC, align 8
  %14 = icmp sgt i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i64 0, i64* %4, align 8
  br label %16

16:                                               ; preds = %15, %1
  %17 = load i64, i64* %2, align 8
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %16
  %20 = load i64, i64* %2, align 8
  %21 = sub nsw i64 0, %20
  %22 = load i64, i64* %4, align 8
  %23 = mul nsw i64 %21, %22
  %24 = load i64, i64* @time_constant, align 8
  %25 = load i64, i64* @time_constant, align 8
  %26 = add nsw i64 %24, %25
  %27 = ashr i64 %23, %26
  %28 = load i64, i64* @time_freq, align 8
  %29 = sub nsw i64 %28, %27
  store i64 %29, i64* @time_freq, align 8
  br label %40

30:                                               ; preds = %16
  %31 = load i64, i64* %2, align 8
  %32 = load i64, i64* %4, align 8
  %33 = mul nsw i64 %31, %32
  %34 = load i64, i64* @time_constant, align 8
  %35 = load i64, i64* @time_constant, align 8
  %36 = add nsw i64 %34, %35
  %37 = ashr i64 %33, %36
  %38 = load i64, i64* @time_freq, align 8
  %39 = add nsw i64 %38, %37
  store i64 %39, i64* @time_freq, align 8
  br label %40

40:                                               ; preds = %30, %19
  %41 = load i64, i64* @time_tolerance, align 8
  %42 = load i64, i64* @SHIFT_KF, align 8
  %43 = shl i64 %41, %42
  store i64 %43, i64* %3, align 8
  %44 = load i64, i64* @time_freq, align 8
  %45 = load i64, i64* %3, align 8
  %46 = icmp sgt i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = load i64, i64* %3, align 8
  store i64 %48, i64* @time_freq, align 8
  br label %58

49:                                               ; preds = %40
  %50 = load i64, i64* @time_freq, align 8
  %51 = load i64, i64* %3, align 8
  %52 = sub nsw i64 0, %51
  %53 = icmp slt i64 %50, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i64, i64* %3, align 8
  %56 = sub nsw i64 0, %55
  store i64 %56, i64* @time_freq, align 8
  br label %57

57:                                               ; preds = %54, %49
  br label %58

58:                                               ; preds = %57, %47
  %59 = load i64, i64* @time_status, align 8
  %60 = load i64, i64* @TIME_BAD, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = load i64, i64* @TIME_OK, align 8
  store i64 %63, i64* @time_status, align 8
  br label %64

64:                                               ; preds = %62, %58
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
