; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_ic.c_arm_unmask_irq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_ic.c_arm_unmask_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }

@mv_ic_sc = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @arm_unmask_irq(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = icmp ult i64 %4, 32
  br i1 %5, label %6, label %15

6:                                                ; preds = %1
  %7 = call i32 (...) @mv_ic_get_mask()
  store i32 %7, i32* %3, align 4
  %8 = load i64, i64* %2, align 8
  %9 = trunc i64 %8 to i32
  %10 = shl i32 1, %9
  %11 = load i32, i32* %3, align 4
  %12 = or i32 %11, %10
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @mv_ic_set_mask(i32 %13)
  br label %53

15:                                               ; preds = %1
  %16 = load i64, i64* %2, align 8
  %17 = icmp ult i64 %16, 64
  br i1 %17, label %18, label %33

18:                                               ; preds = %15
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mv_ic_sc, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %18
  %24 = call i32 (...) @mv_ic_get_mask_hi()
  store i32 %24, i32* %3, align 4
  %25 = load i64, i64* %2, align 8
  %26 = sub i64 %25, 32
  %27 = trunc i64 %26 to i32
  %28 = shl i32 1, %27
  %29 = load i32, i32* %3, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @mv_ic_set_mask_hi(i32 %31)
  br label %52

33:                                               ; preds = %18, %15
  %34 = load i64, i64* %2, align 8
  %35 = icmp ult i64 %34, 96
  br i1 %35, label %36, label %51

36:                                               ; preds = %33
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mv_ic_sc, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %36
  %42 = call i32 (...) @mv_ic_get_mask_error()
  store i32 %42, i32* %3, align 4
  %43 = load i64, i64* %2, align 8
  %44 = sub i64 %43, 64
  %45 = trunc i64 %44 to i32
  %46 = shl i32 1, %45
  %47 = load i32, i32* %3, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %3, align 4
  %49 = load i32, i32* %3, align 4
  %50 = call i32 @mv_ic_set_mask_error(i32 %49)
  br label %51

51:                                               ; preds = %41, %36, %33
  br label %52

52:                                               ; preds = %51, %23
  br label %53

53:                                               ; preds = %52, %6
  ret void
}

declare dso_local i32 @mv_ic_get_mask(...) #1

declare dso_local i32 @mv_ic_set_mask(i32) #1

declare dso_local i32 @mv_ic_get_mask_hi(...) #1

declare dso_local i32 @mv_ic_set_mask_hi(i32) #1

declare dso_local i32 @mv_ic_get_mask_error(...) #1

declare dso_local i32 @mv_ic_set_mask_error(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
