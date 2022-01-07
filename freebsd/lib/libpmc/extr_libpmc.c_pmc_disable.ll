; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libpmc/extr_libpmc.c_pmc_disable.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libpmc/extr_libpmc.c_pmc_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmc_op_pmcadmin = type { i32, i32, i32 }

@PMC_STATE_DISABLED = common dso_local global i32 0, align 4
@PMCADMIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pmc_disable(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.pmc_op_pmcadmin, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = getelementptr inbounds %struct.pmc_op_pmcadmin, %struct.pmc_op_pmcadmin* %5, i32 0, i32 0
  store i32 %6, i32* %7, align 4
  %8 = load i32, i32* %4, align 4
  %9 = getelementptr inbounds %struct.pmc_op_pmcadmin, %struct.pmc_op_pmcadmin* %5, i32 0, i32 1
  store i32 %8, i32* %9, align 4
  %10 = load i32, i32* @PMC_STATE_DISABLED, align 4
  %11 = getelementptr inbounds %struct.pmc_op_pmcadmin, %struct.pmc_op_pmcadmin* %5, i32 0, i32 2
  store i32 %10, i32* %11, align 4
  %12 = load i32, i32* @PMCADMIN, align 4
  %13 = call i32 @PMC_CALL(i32 %12, %struct.pmc_op_pmcadmin* %5)
  ret i32 %13
}

declare dso_local i32 @PMC_CALL(i32, %struct.pmc_op_pmcadmin*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
