; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_edma3.c_ti_edma3_param_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_edma3.c_ti_edma3_param_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }
%struct.ti_edma3cc_param_set = type { i32 }

@ti_edma3_sc = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ti_edma3_param_write(i32 %0, %struct.ti_edma3cc_param_set* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ti_edma3cc_param_set*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.ti_edma3cc_param_set* %1, %struct.ti_edma3cc_param_set** %4, align 8
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ti_edma3_sc, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @TI_EDMA3CC_OPT(i32 %10)
  %12 = load %struct.ti_edma3cc_param_set*, %struct.ti_edma3cc_param_set** %4, align 8
  %13 = bitcast %struct.ti_edma3cc_param_set* %12 to i32*
  %14 = call i32 @bus_write_region_4(i32 %9, i32 %11, i32* %13, i32 8)
  ret void
}

declare dso_local i32 @bus_write_region_4(i32, i32, i32*, i32) #1

declare dso_local i32 @TI_EDMA3CC_OPT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
