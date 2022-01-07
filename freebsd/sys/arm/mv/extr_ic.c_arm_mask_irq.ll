; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_ic.c_arm_mask_irq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_ic.c_arm_mask_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }

@mv_ic_sc = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @arm_mask_irq(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = icmp ult i64 %4, 32
  br i1 %5, label %6, label %16

6:                                                ; preds = %1
  %7 = call i32 (...) @mv_ic_get_mask()
  store i32 %7, i32* %3, align 4
  %8 = load i64, i64* %2, align 8
  %9 = trunc i64 %8 to i32
  %10 = shl i32 1, %9
  %11 = xor i32 %10, -1
  %12 = load i32, i32* %3, align 4
  %13 = and i32 %12, %11
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @mv_ic_set_mask(i32 %14)
  br label %56

16:                                               ; preds = %1
  %17 = load i64, i64* %2, align 8
  %18 = icmp ult i64 %17, 64
  br i1 %18, label %19, label %35

19:                                               ; preds = %16
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mv_ic_sc, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %19
  %25 = call i32 (...) @mv_ic_get_mask_hi()
  store i32 %25, i32* %3, align 4
  %26 = load i64, i64* %2, align 8
  %27 = sub i64 %26, 32
  %28 = trunc i64 %27 to i32
  %29 = shl i32 1, %28
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %3, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @mv_ic_set_mask_hi(i32 %33)
  br label %55

35:                                               ; preds = %19, %16
  %36 = load i64, i64* %2, align 8
  %37 = icmp ult i64 %36, 96
  br i1 %37, label %38, label %54

38:                                               ; preds = %35
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mv_ic_sc, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %38
  %44 = call i32 (...) @mv_ic_get_mask_error()
  store i32 %44, i32* %3, align 4
  %45 = load i64, i64* %2, align 8
  %46 = sub i64 %45, 64
  %47 = trunc i64 %46 to i32
  %48 = shl i32 1, %47
  %49 = xor i32 %48, -1
  %50 = load i32, i32* %3, align 4
  %51 = and i32 %50, %49
  store i32 %51, i32* %3, align 4
  %52 = load i32, i32* %3, align 4
  %53 = call i32 @mv_ic_set_mask_error(i32 %52)
  br label %54

54:                                               ; preds = %43, %38, %35
  br label %55

55:                                               ; preds = %54, %24
  br label %56

56:                                               ; preds = %55, %6
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
