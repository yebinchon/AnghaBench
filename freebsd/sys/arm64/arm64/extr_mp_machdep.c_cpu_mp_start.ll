; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_mp_machdep.c_cpu_mp_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_mp_machdep.c_cpu_mp_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32* }

@ap_boot_mtx = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"ap boot\00", align 1
@MTX_SPIN = common dso_local global i32 0, align 4
@all_cpus = common dso_local global i32 0, align 4
@arm64_bus_method = common dso_local global i32 0, align 4
@MP_QUIRK_CPULIST = common dso_local global i32 0, align 4
@cpu0 = common dso_local global i32 0, align 4
@cpu_init_fdt = common dso_local global i32 0, align 4
@fdt_quirks = common dso_local global %struct.TYPE_2__* null, align 8
@mp_quirks = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpu_mp_start() #0 {
  %1 = load i32, i32* @MTX_SPIN, align 4
  %2 = call i32 @mtx_init(i32* @ap_boot_mtx, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* null, i32 %1)
  %3 = call i32 @CPU_SET(i32 0, i32* @all_cpus)
  %4 = load i32, i32* @arm64_bus_method, align 4
  switch i32 %4, label %5 [
  ]

5:                                                ; preds = %0
  br label %6

6:                                                ; preds = %5
  ret void
}

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @CPU_SET(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
