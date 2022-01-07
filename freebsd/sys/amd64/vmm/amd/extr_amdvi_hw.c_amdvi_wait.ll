; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/amd/extr_amdvi_hw.c_amdvi_wait.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/amd/extr_amdvi_hw.c_amdvi_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdvi_softc = type { i32, %struct.amdvi_ctrl* }
%struct.amdvi_ctrl = type { i32, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"softc is NULL\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"ctrl is NULL\00", align 1
@AMDVI_CTRL_EN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"Error: completion failed tail:0x%x, head:0x%x.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdvi_softc*)* @amdvi_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amdvi_wait(%struct.amdvi_softc* %0) #0 {
  %2 = alloca %struct.amdvi_softc*, align 8
  %3 = alloca %struct.amdvi_ctrl*, align 8
  %4 = alloca i32, align 4
  store %struct.amdvi_softc* %0, %struct.amdvi_softc** %2, align 8
  %5 = load %struct.amdvi_softc*, %struct.amdvi_softc** %2, align 8
  %6 = call i32 @KASSERT(%struct.amdvi_softc* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.amdvi_softc*, %struct.amdvi_softc** %2, align 8
  %8 = getelementptr inbounds %struct.amdvi_softc, %struct.amdvi_softc* %7, i32 0, i32 1
  %9 = load %struct.amdvi_ctrl*, %struct.amdvi_ctrl** %8, align 8
  store %struct.amdvi_ctrl* %9, %struct.amdvi_ctrl** %3, align 8
  %10 = load %struct.amdvi_ctrl*, %struct.amdvi_ctrl** %3, align 8
  %11 = icmp ne %struct.amdvi_ctrl* %10, null
  %12 = zext i1 %11 to i32
  %13 = sext i32 %12 to i64
  %14 = inttoptr i64 %13 to %struct.amdvi_softc*
  %15 = call i32 @KASSERT(%struct.amdvi_softc* %14, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %16 = load %struct.amdvi_ctrl*, %struct.amdvi_ctrl** %3, align 8
  %17 = getelementptr inbounds %struct.amdvi_ctrl, %struct.amdvi_ctrl* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @AMDVI_CTRL_EN, align 4
  %20 = and i32 %18, %19
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  br label %49

23:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %24

24:                                               ; preds = %33, %23
  %25 = load i32, i32* %4, align 4
  %26 = icmp slt i32 %25, 10
  br i1 %26, label %27, label %36

27:                                               ; preds = %24
  %28 = load %struct.amdvi_softc*, %struct.amdvi_softc** %2, align 8
  %29 = call i64 @amdvi_cmp_wait(%struct.amdvi_softc* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  br label %49

32:                                               ; preds = %27
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %4, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %4, align 4
  br label %24

36:                                               ; preds = %24
  %37 = load %struct.amdvi_softc*, %struct.amdvi_softc** %2, align 8
  %38 = getelementptr inbounds %struct.amdvi_softc, %struct.amdvi_softc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.amdvi_ctrl*, %struct.amdvi_ctrl** %3, align 8
  %41 = getelementptr inbounds %struct.amdvi_ctrl, %struct.amdvi_ctrl* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.amdvi_ctrl*, %struct.amdvi_ctrl** %3, align 8
  %44 = getelementptr inbounds %struct.amdvi_ctrl, %struct.amdvi_ctrl* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @device_printf(i32 %39, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %42, i32 %45)
  %47 = load %struct.amdvi_softc*, %struct.amdvi_softc** %2, align 8
  %48 = call i32 @amdvi_dump_cmds(%struct.amdvi_softc* %47)
  br label %49

49:                                               ; preds = %36, %31, %22
  ret void
}

declare dso_local i32 @KASSERT(%struct.amdvi_softc*, i8*) #1

declare dso_local i64 @amdvi_cmp_wait(%struct.amdvi_softc*) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32) #1

declare dso_local i32 @amdvi_dump_cmds(%struct.amdvi_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
