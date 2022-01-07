; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/amd/extr_amdvi_hw.c_amdvi_get_cmd_tail.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/amd/extr_amdvi_hw.c_amdvi_get_cmd_tail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdvi_cmd = type { i32 }
%struct.amdvi_softc = type { i32*, %struct.amdvi_ctrl* }
%struct.amdvi_ctrl = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"softc is NULL\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"cmd is NULL\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"ctrl is NULL\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.amdvi_cmd* (%struct.amdvi_softc*)* @amdvi_get_cmd_tail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.amdvi_cmd* @amdvi_get_cmd_tail(%struct.amdvi_softc* %0) #0 {
  %2 = alloca %struct.amdvi_softc*, align 8
  %3 = alloca %struct.amdvi_ctrl*, align 8
  %4 = alloca %struct.amdvi_cmd*, align 8
  store %struct.amdvi_softc* %0, %struct.amdvi_softc** %2, align 8
  %5 = load %struct.amdvi_softc*, %struct.amdvi_softc** %2, align 8
  %6 = call i32 @KASSERT(%struct.amdvi_softc* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.amdvi_softc*, %struct.amdvi_softc** %2, align 8
  %8 = getelementptr inbounds %struct.amdvi_softc, %struct.amdvi_softc* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  %11 = zext i1 %10 to i32
  %12 = sext i32 %11 to i64
  %13 = inttoptr i64 %12 to %struct.amdvi_softc*
  %14 = call i32 @KASSERT(%struct.amdvi_softc* %13, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %15 = load %struct.amdvi_softc*, %struct.amdvi_softc** %2, align 8
  %16 = getelementptr inbounds %struct.amdvi_softc, %struct.amdvi_softc* %15, i32 0, i32 1
  %17 = load %struct.amdvi_ctrl*, %struct.amdvi_ctrl** %16, align 8
  store %struct.amdvi_ctrl* %17, %struct.amdvi_ctrl** %3, align 8
  %18 = load %struct.amdvi_ctrl*, %struct.amdvi_ctrl** %3, align 8
  %19 = icmp ne %struct.amdvi_ctrl* %18, null
  %20 = zext i1 %19 to i32
  %21 = sext i32 %20 to i64
  %22 = inttoptr i64 %21 to %struct.amdvi_softc*
  %23 = call i32 @KASSERT(%struct.amdvi_softc* %22, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %24 = load %struct.amdvi_softc*, %struct.amdvi_softc** %2, align 8
  %25 = getelementptr inbounds %struct.amdvi_softc, %struct.amdvi_softc* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load %struct.amdvi_ctrl*, %struct.amdvi_ctrl** %3, align 8
  %28 = getelementptr inbounds %struct.amdvi_ctrl, %struct.amdvi_ctrl* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %26, i64 %30
  %32 = bitcast i32* %31 to %struct.amdvi_cmd*
  store %struct.amdvi_cmd* %32, %struct.amdvi_cmd** %4, align 8
  %33 = load %struct.amdvi_cmd*, %struct.amdvi_cmd** %4, align 8
  ret %struct.amdvi_cmd* %33
}

declare dso_local i32 @KASSERT(%struct.amdvi_softc*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
