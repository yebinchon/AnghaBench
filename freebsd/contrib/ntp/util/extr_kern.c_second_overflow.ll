; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/util/extr_kern.c_second_overflow.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/util/extr_kern.c_second_overflow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@time_tolerance = common dso_local global i64 0, align 8
@time_maxerror = common dso_local global i32 0, align 4
@time_offset = common dso_local global i32 0, align 4
@SHIFT_KG = common dso_local global i32 0, align 4
@time_constant = common dso_local global i32 0, align 4
@SHIFT_SCALE = common dso_local global i32 0, align 4
@SHIFT_HZ = common dso_local global i32 0, align 4
@SHIFT_UPDATE = common dso_local global i32 0, align 4
@time_adj = common dso_local global i32 0, align 4
@time_freq = common dso_local global i32 0, align 4
@SHIFT_KF = common dso_local global i32 0, align 4
@fixtick = common dso_local global i32 0, align 4
@timex = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@time_status = common dso_local global i32 0, align 4
@TIME_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @second_overflow() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @time_tolerance, align 8
  %3 = load i32, i32* @time_maxerror, align 4
  %4 = sext i32 %3 to i64
  %5 = add nsw i64 %4, %2
  %6 = trunc i64 %5 to i32
  store i32 %6, i32* @time_maxerror, align 4
  %7 = load i32, i32* @time_offset, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %27

9:                                                ; preds = %0
  %10 = load i32, i32* @time_offset, align 4
  %11 = sub nsw i32 0, %10
  %12 = load i32, i32* @SHIFT_KG, align 4
  %13 = load i32, i32* @time_constant, align 4
  %14 = add nsw i32 %12, %13
  %15 = ashr i32 %11, %14
  store i32 %15, i32* %1, align 4
  %16 = load i32, i32* %1, align 4
  %17 = load i32, i32* @time_offset, align 4
  %18 = add nsw i32 %17, %16
  store i32 %18, i32* @time_offset, align 4
  %19 = load i32, i32* %1, align 4
  %20 = load i32, i32* @SHIFT_SCALE, align 4
  %21 = load i32, i32* @SHIFT_HZ, align 4
  %22 = sub nsw i32 %20, %21
  %23 = load i32, i32* @SHIFT_UPDATE, align 4
  %24 = sub nsw i32 %22, %23
  %25 = shl i32 %19, %24
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* @time_adj, align 4
  br label %43

27:                                               ; preds = %0
  %28 = load i32, i32* @time_offset, align 4
  %29 = load i32, i32* @SHIFT_KG, align 4
  %30 = load i32, i32* @time_constant, align 4
  %31 = add nsw i32 %29, %30
  %32 = ashr i32 %28, %31
  store i32 %32, i32* %1, align 4
  %33 = load i32, i32* %1, align 4
  %34 = load i32, i32* @time_offset, align 4
  %35 = sub nsw i32 %34, %33
  store i32 %35, i32* @time_offset, align 4
  %36 = load i32, i32* %1, align 4
  %37 = load i32, i32* @SHIFT_SCALE, align 4
  %38 = load i32, i32* @SHIFT_HZ, align 4
  %39 = sub nsw i32 %37, %38
  %40 = load i32, i32* @SHIFT_UPDATE, align 4
  %41 = sub nsw i32 %39, %40
  %42 = shl i32 %36, %41
  store i32 %42, i32* @time_adj, align 4
  br label %43

43:                                               ; preds = %27, %9
  %44 = load i32, i32* @time_freq, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %43
  %47 = load i32, i32* @time_freq, align 4
  %48 = sub nsw i32 0, %47
  %49 = load i32, i32* @SHIFT_KF, align 4
  %50 = load i32, i32* @SHIFT_HZ, align 4
  %51 = add nsw i32 %49, %50
  %52 = load i32, i32* @SHIFT_SCALE, align 4
  %53 = sub nsw i32 %51, %52
  %54 = ashr i32 %48, %53
  %55 = load i32, i32* @time_adj, align 4
  %56 = sub nsw i32 %55, %54
  store i32 %56, i32* @time_adj, align 4
  br label %67

57:                                               ; preds = %43
  %58 = load i32, i32* @time_freq, align 4
  %59 = load i32, i32* @SHIFT_KF, align 4
  %60 = load i32, i32* @SHIFT_HZ, align 4
  %61 = add nsw i32 %59, %60
  %62 = load i32, i32* @SHIFT_SCALE, align 4
  %63 = sub nsw i32 %61, %62
  %64 = ashr i32 %58, %63
  %65 = load i32, i32* @time_adj, align 4
  %66 = add nsw i32 %65, %64
  store i32 %66, i32* @time_adj, align 4
  br label %67

67:                                               ; preds = %57, %46
  %68 = load i32, i32* @fixtick, align 4
  %69 = load i32, i32* @SHIFT_SCALE, align 4
  %70 = load i32, i32* @SHIFT_HZ, align 4
  %71 = sub nsw i32 %69, %70
  %72 = shl i32 %68, %71
  %73 = load i32, i32* @time_adj, align 4
  %74 = add nsw i32 %73, %72
  store i32 %74, i32* @time_adj, align 4
  %75 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @timex, i32 0, i32 0), align 4
  %76 = srem i32 %75, 86400
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %90

78:                                               ; preds = %67
  %79 = load i32, i32* @time_status, align 4
  switch i32 %79, label %89 [
    i32 129, label %80
    i32 130, label %83
    i32 128, label %87
  ]

80:                                               ; preds = %78
  %81 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @timex, i32 0, i32 0), align 4
  %82 = add nsw i32 %81, -1
  store i32 %82, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @timex, i32 0, i32 0), align 4
  store i32 128, i32* @time_status, align 4
  br label %89

83:                                               ; preds = %78
  %84 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @timex, i32 0, i32 0), align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @timex, i32 0, i32 0), align 4
  %86 = load i32, i32* @TIME_OK, align 4
  store i32 %86, i32* @time_status, align 4
  br label %89

87:                                               ; preds = %78
  %88 = load i32, i32* @TIME_OK, align 4
  store i32 %88, i32* @time_status, align 4
  br label %89

89:                                               ; preds = %78, %87, %83, %80
  br label %90

90:                                               ; preds = %89, %67
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
