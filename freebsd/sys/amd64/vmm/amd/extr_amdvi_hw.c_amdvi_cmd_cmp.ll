; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/amd/extr_amdvi_hw.c_amdvi_cmd_cmp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/amd/extr_amdvi_hw.c_amdvi_cmd_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdvi_softc = type { i32 }
%struct.amdvi_cmd = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"Cmd is NULL\00", align 1
@AMDVI_CMP_WAIT_OPCODE = common dso_local global i32 0, align 4
@AMDVI_CMP_WAIT_STORE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdvi_softc*, i32)* @amdvi_cmd_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amdvi_cmd_cmp(%struct.amdvi_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.amdvi_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.amdvi_cmd*, align 8
  %6 = alloca i32, align 4
  store %struct.amdvi_softc* %0, %struct.amdvi_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.amdvi_softc*, %struct.amdvi_softc** %3, align 8
  %8 = call %struct.amdvi_cmd* @amdvi_get_cmd_tail(%struct.amdvi_softc* %7)
  store %struct.amdvi_cmd* %8, %struct.amdvi_cmd** %5, align 8
  %9 = load %struct.amdvi_cmd*, %struct.amdvi_cmd** %5, align 8
  %10 = icmp ne %struct.amdvi_cmd* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @KASSERT(i32 %11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.amdvi_softc*, %struct.amdvi_softc** %3, align 8
  %14 = getelementptr inbounds %struct.amdvi_softc, %struct.amdvi_softc* %13, i32 0, i32 0
  %15 = call i32 @vtophys(i32* %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* @AMDVI_CMP_WAIT_OPCODE, align 4
  %17 = load %struct.amdvi_cmd*, %struct.amdvi_cmd** %5, align 8
  %18 = getelementptr inbounds %struct.amdvi_cmd, %struct.amdvi_cmd* %17, i32 0, i32 3
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* %6, align 4
  %20 = and i32 %19, -8
  %21 = load i32, i32* @AMDVI_CMP_WAIT_STORE, align 4
  %22 = or i32 %20, %21
  %23 = load %struct.amdvi_cmd*, %struct.amdvi_cmd** %5, align 8
  %24 = getelementptr inbounds %struct.amdvi_cmd, %struct.amdvi_cmd* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* %6, align 4
  %26 = ashr i32 %25, 32
  %27 = and i32 %26, 1048575
  %28 = load %struct.amdvi_cmd*, %struct.amdvi_cmd** %5, align 8
  %29 = getelementptr inbounds %struct.amdvi_cmd, %struct.amdvi_cmd* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* %4, align 4
  %31 = load %struct.amdvi_cmd*, %struct.amdvi_cmd** %5, align 8
  %32 = getelementptr inbounds %struct.amdvi_cmd, %struct.amdvi_cmd* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  %33 = load %struct.amdvi_softc*, %struct.amdvi_softc** %3, align 8
  %34 = call i32 @amdvi_update_cmd_tail(%struct.amdvi_softc* %33)
  ret void
}

declare dso_local %struct.amdvi_cmd* @amdvi_get_cmd_tail(%struct.amdvi_softc*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @vtophys(i32*) #1

declare dso_local i32 @amdvi_update_cmd_tail(%struct.amdvi_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
