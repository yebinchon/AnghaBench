; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_aml8726_machdep.c_platform_gpio_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_aml8726_machdep.c_platform_gpio_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }

@aml8726_aobus_kva_base = common dso_local global i64 0, align 8
@aml8726_soc_hw_rev = common dso_local global i32 0, align 4
@cpufunc_nullop = common dso_local global i64 0, align 8
@cpufuncs = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @platform_gpio_init() #0 {
  %1 = call i64 @devmap_ptov(i32 -938475520, i32 1048576)
  store i64 %1, i64* @aml8726_aobus_kva_base, align 8
  %2 = call i32 (...) @aml8726_identify_soc()
  %3 = load i32, i32* @aml8726_soc_hw_rev, align 4
  switch i32 %3, label %7 [
    i32 128, label %4
  ]

4:                                                ; preds = %0
  %5 = load i64, i64* @cpufunc_nullop, align 8
  %6 = inttoptr i64 %5 to i8*
  store i8* %6, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpufuncs, i32 0, i32 0), align 8
  br label %8

7:                                                ; preds = %0
  br label %8

8:                                                ; preds = %7, %4
  %9 = call i32 (...) @aml8726_fixup_busfreq()
  ret void
}

declare dso_local i64 @devmap_ptov(i32, i32) #1

declare dso_local i32 @aml8726_identify_soc(...) #1

declare dso_local i32 @aml8726_fixup_busfreq(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
