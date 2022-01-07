; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_soctherm.c_soctherm_init_sysctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_soctherm.c_soctherm_init_sysctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soctherm_softc = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.sysctl_oid = type { i32 }

@soctherm_sysctl_ctx = common dso_local global i32 0, align 4
@_hw = common dso_local global i32 0, align 4
@OID_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"temperature\00", align 1
@CTLFLAG_RD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ENXIO = common dso_local global i32 0, align 4
@CTLTYPE_INT = common dso_local global i32 0, align 4
@soctherm_sysctl_temperature = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"IK\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"SoC Temperature\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.soctherm_softc*)* @soctherm_init_sysctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @soctherm_init_sysctl(%struct.soctherm_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.soctherm_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sysctl_oid*, align 8
  %6 = alloca %struct.sysctl_oid*, align 8
  store %struct.soctherm_softc* %0, %struct.soctherm_softc** %3, align 8
  %7 = call i32 @sysctl_ctx_init(i32* @soctherm_sysctl_ctx)
  %8 = load i32, i32* @_hw, align 4
  %9 = call i32 @SYSCTL_STATIC_CHILDREN(i32 %8)
  %10 = load i32, i32* @OID_AUTO, align 4
  %11 = load i32, i32* @CTLFLAG_RD, align 4
  %12 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(i32* @soctherm_sysctl_ctx, i32 %9, i32 %10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %11, i32* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  store %struct.sysctl_oid* %12, %struct.sysctl_oid** %5, align 8
  %13 = load %struct.sysctl_oid*, %struct.sysctl_oid** %5, align 8
  %14 = icmp eq %struct.sysctl_oid* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* @ENXIO, align 4
  store i32 %16, i32* %2, align 4
  br label %53

17:                                               ; preds = %1
  %18 = load %struct.soctherm_softc*, %struct.soctherm_softc** %3, align 8
  %19 = getelementptr inbounds %struct.soctherm_softc, %struct.soctherm_softc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sub nsw i32 %20, 1
  store i32 %21, i32* %4, align 4
  br label %22

22:                                               ; preds = %49, %17
  %23 = load i32, i32* %4, align 4
  %24 = icmp sge i32 %23, 0
  br i1 %24, label %25, label %52

25:                                               ; preds = %22
  %26 = load %struct.sysctl_oid*, %struct.sysctl_oid** %5, align 8
  %27 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %26)
  %28 = load i32, i32* @OID_AUTO, align 4
  %29 = load %struct.soctherm_softc*, %struct.soctherm_softc** %3, align 8
  %30 = getelementptr inbounds %struct.soctherm_softc, %struct.soctherm_softc* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @CTLTYPE_INT, align 4
  %38 = load i32, i32* @CTLFLAG_RD, align 4
  %39 = or i32 %37, %38
  %40 = load %struct.soctherm_softc*, %struct.soctherm_softc** %3, align 8
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @soctherm_sysctl_temperature, align 4
  %43 = call %struct.sysctl_oid* @SYSCTL_ADD_PROC(i32* @soctherm_sysctl_ctx, i32 %27, i32 %28, i32 %36, i32 %39, %struct.soctherm_softc* %40, i32 %41, i32 %42, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  store %struct.sysctl_oid* %43, %struct.sysctl_oid** %6, align 8
  %44 = load %struct.sysctl_oid*, %struct.sysctl_oid** %6, align 8
  %45 = icmp eq %struct.sysctl_oid* %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %25
  %47 = load i32, i32* @ENXIO, align 4
  store i32 %47, i32* %2, align 4
  br label %53

48:                                               ; preds = %25
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %4, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %4, align 4
  br label %22

52:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %53

53:                                               ; preds = %52, %46, %15
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @sysctl_ctx_init(i32*) #1

declare dso_local %struct.sysctl_oid* @SYSCTL_ADD_NODE(i32*, i32, i32, i8*, i32, i32*, i8*) #1

declare dso_local i32 @SYSCTL_STATIC_CHILDREN(i32) #1

declare dso_local %struct.sysctl_oid* @SYSCTL_ADD_PROC(i32*, i32, i32, i32, i32, %struct.soctherm_softc*, i32, i32, i8*, i8*) #1

declare dso_local i32 @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
