; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpi_support/extr_atk0110.c_aibs_sensor_added.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpi_support/extr_atk0110.c_aibs_sensor_added.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aibs_softc = type { i64, i32 }
%struct.sysctl_oid = type { i32 }
%struct.aibs_sensor = type { i64, i64, i64, i64 }

@.str = private unnamed_addr constant [3 x i8] c"%i\00", align 1
@CTLTYPE_INT = common dso_local global i32 0, align 4
@CTLFLAG_RD = common dso_local global i32 0, align 4
@aibs_sysctl_ggrp = common dso_local global i32 0, align 4
@aibs_sysctl = common dso_local global i32 0, align 4
@AIBS_SENS_TYPE_TEMP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"IK\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aibs_softc*, %struct.sysctl_oid*, i8*, i32, %struct.aibs_sensor*, i8*)* @aibs_sensor_added to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aibs_sensor_added(%struct.aibs_softc* %0, %struct.sysctl_oid* %1, i8* %2, i32 %3, %struct.aibs_sensor* %4, i8* %5) #0 {
  %7 = alloca %struct.aibs_softc*, align 8
  %8 = alloca %struct.sysctl_oid*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.aibs_sensor*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca [8 x i8], align 1
  store %struct.aibs_softc* %0, %struct.aibs_softc** %7, align 8
  store %struct.sysctl_oid* %1, %struct.sysctl_oid** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.aibs_sensor* %4, %struct.aibs_sensor** %11, align 8
  store i8* %5, i8** %12, align 8
  %14 = getelementptr inbounds [8 x i8], [8 x i8]* %13, i64 0, i64 0
  %15 = load i32, i32* %10, align 4
  %16 = call i32 @snprintf(i8* %14, i32 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load %struct.aibs_softc*, %struct.aibs_softc** %7, align 8
  %18 = getelementptr inbounds %struct.aibs_softc, %struct.aibs_softc* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @device_get_sysctl_ctx(i32 %19)
  %21 = load %struct.sysctl_oid*, %struct.sysctl_oid** %8, align 8
  %22 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %21)
  %23 = load i32, i32* %10, align 4
  %24 = getelementptr inbounds [8 x i8], [8 x i8]* %13, i64 0, i64 0
  %25 = load i32, i32* @CTLTYPE_INT, align 4
  %26 = load i32, i32* @CTLFLAG_RD, align 4
  %27 = or i32 %25, %26
  %28 = load %struct.aibs_softc*, %struct.aibs_softc** %7, align 8
  %29 = load %struct.aibs_sensor*, %struct.aibs_sensor** %11, align 8
  %30 = ptrtoint %struct.aibs_sensor* %29 to i64
  %31 = load %struct.aibs_softc*, %struct.aibs_softc** %7, align 8
  %32 = getelementptr inbounds %struct.aibs_softc, %struct.aibs_softc* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %6
  %36 = load i32, i32* @aibs_sysctl_ggrp, align 4
  br label %39

37:                                               ; preds = %6
  %38 = load i32, i32* @aibs_sysctl, align 4
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi i32 [ %36, %35 ], [ %38, %37 ]
  %41 = load %struct.aibs_sensor*, %struct.aibs_sensor** %11, align 8
  %42 = getelementptr inbounds %struct.aibs_sensor, %struct.aibs_sensor* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @AIBS_SENS_TYPE_TEMP, align 8
  %45 = icmp eq i64 %43, %44
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %48 = load i8*, i8** %12, align 8
  %49 = call i32 @SYSCTL_ADD_PROC(i32 %20, i32 %22, i32 %23, i8* %24, i32 %27, %struct.aibs_softc* %28, i64 %30, i32 %40, i8* %47, i8* %48)
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @SYSCTL_ADD_PROC(i32, i32, i32, i8*, i32, %struct.aibs_softc*, i64, i32, i8*, i8*) #1

declare dso_local i32 @device_get_sysctl_ctx(i32) #1

declare dso_local i32 @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
