; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/QM/extr_qman_low.h_qm_mc_commit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/QM/extr_qman_low.h_qm_mc_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qm_portal = type { %struct.qm_mc }
%struct.qm_mc = type { i64, i32, i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@mc_hw = common dso_local global i64 0, align 8
@mc_user = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qm_portal*, i32)* @qm_mc_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qm_mc_commit(%struct.qm_portal* %0, i32 %1) #0 {
  %3 = alloca %struct.qm_portal*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.qm_mc*, align 8
  store %struct.qm_portal* %0, %struct.qm_portal** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.qm_portal*, %struct.qm_portal** %3, align 8
  %7 = getelementptr inbounds %struct.qm_portal, %struct.qm_portal* %6, i32 0, i32 0
  store %struct.qm_mc* %7, %struct.qm_mc** %5, align 8
  %8 = call i32 (...) @rmb()
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.qm_mc*, %struct.qm_mc** %5, align 8
  %11 = getelementptr inbounds %struct.qm_mc, %struct.qm_mc* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = or i32 %9, %12
  %14 = load %struct.qm_mc*, %struct.qm_mc** %5, align 8
  %15 = getelementptr inbounds %struct.qm_mc, %struct.qm_mc* %14, i32 0, i32 4
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i32 %13, i32* %17, align 4
  %18 = load %struct.qm_mc*, %struct.qm_mc** %5, align 8
  %19 = getelementptr inbounds %struct.qm_mc, %struct.qm_mc* %18, i32 0, i32 4
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = call i32 @dcbf_64(%struct.TYPE_2__* %20)
  %22 = load %struct.qm_mc*, %struct.qm_mc** %5, align 8
  %23 = getelementptr inbounds %struct.qm_mc, %struct.qm_mc* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.qm_mc*, %struct.qm_mc** %5, align 8
  %26 = getelementptr inbounds %struct.qm_mc, %struct.qm_mc* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %24, %27
  %29 = call i32 @dcbit_ro(i64 %28)
  ret void
}

declare dso_local i32 @rmb(...) #1

declare dso_local i32 @dcbf_64(%struct.TYPE_2__*) #1

declare dso_local i32 @dcbit_ro(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
