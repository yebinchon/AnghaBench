; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_mv_common.c_mv_fdt_pm.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_mv_common.c_mv_fdt_pm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32* }

@CPU_PM_CTRL = common dso_local global i32 0, align 4
@fdt_pm_mask_table = common dso_local global %struct.TYPE_2__* null, align 8
@dev_mask = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mv_fdt_pm(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 1, i32* %5, align 4
  %7 = load i32, i32* @CPU_PM_CTRL, align 4
  %8 = call i32 @read_cpu_ctrl(i32 %7)
  store i32 %8, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %61, %1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fdt_pm_mask_table, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %64

17:                                               ; preds = %9
  %18 = load i32, i32* @dev_mask, align 4
  %19 = load i32, i32* %4, align 4
  %20 = shl i32 1, %19
  %21 = and i32 %18, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  br label %61

24:                                               ; preds = %17
  %25 = load i32, i32* %2, align 4
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fdt_pm_mask_table, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @ofw_bus_node_is_compatible(i32 %25, i32* %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %51

35:                                               ; preds = %24
  %36 = load i32, i32* %3, align 4
  %37 = xor i32 %36, -1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fdt_pm_mask_table, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = and i32 %37, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %35
  %47 = load i32, i32* %4, align 4
  %48 = shl i32 1, %47
  %49 = load i32, i32* @dev_mask, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* @dev_mask, align 4
  store i32 0, i32* %5, align 4
  br label %64

51:                                               ; preds = %35, %24
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %51
  %55 = load i32, i32* %4, align 4
  %56 = shl i32 1, %55
  %57 = load i32, i32* @dev_mask, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* @dev_mask, align 4
  br label %64

59:                                               ; preds = %51
  br label %60

60:                                               ; preds = %59
  br label %61

61:                                               ; preds = %60, %23
  %62 = load i32, i32* %4, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %4, align 4
  br label %9

64:                                               ; preds = %54, %46, %9
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local i32 @read_cpu_ctrl(i32) #1

declare dso_local i32 @ofw_bus_node_is_compatible(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
