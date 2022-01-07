; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_trap.c_trap_is_smap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_trap.c_trap_is_smap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trapframe = type { i32, i32 }

@cpu_stdext_feature = common dso_local global i32 0, align 4
@CPUID_STDEXT_SMAP = common dso_local global i32 0, align 4
@PGEX_P = common dso_local global i32 0, align 4
@PGEX_U = common dso_local global i32 0, align 4
@PGEX_I = common dso_local global i32 0, align 4
@PGEX_RSV = common dso_local global i32 0, align 4
@PSL_AC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trapframe*)* @trap_is_smap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trap_is_smap(%struct.trapframe* %0) #0 {
  %2 = alloca %struct.trapframe*, align 8
  store %struct.trapframe* %0, %struct.trapframe** %2, align 8
  %3 = load i32, i32* @cpu_stdext_feature, align 4
  %4 = load i32, i32* @CPUID_STDEXT_SMAP, align 4
  %5 = and i32 %3, %4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %28

7:                                                ; preds = %1
  %8 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %9 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @PGEX_P, align 4
  %12 = load i32, i32* @PGEX_U, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @PGEX_I, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @PGEX_RSV, align 4
  %17 = or i32 %15, %16
  %18 = and i32 %10, %17
  %19 = load i32, i32* @PGEX_P, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %7
  %22 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %23 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @PSL_AC, align 4
  %26 = and i32 %24, %25
  %27 = icmp eq i32 %26, 0
  br label %28

28:                                               ; preds = %21, %7, %1
  %29 = phi i1 [ false, %7 ], [ false, %1 ], [ %27, %21 ]
  %30 = zext i1 %29 to i32
  ret i32 %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
