; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_mv_ts.c_ts_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_mv_ts.c_ts_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvts_softc = type { i32, i32 }
%struct.sysctl_ctx_list = type { i32 }

@mvts_res = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"could not allocate resources\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@OID_AUTO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"temperature\00", align 1
@CTLTYPE_INT = common dso_local global i32 0, align 4
@CTLFLAG_RD = common dso_local global i32 0, align 4
@ts_sysctl_handler = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"IK\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Current Temperature\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ts_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ts_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.mvts_softc*, align 8
  %5 = alloca %struct.sysctl_ctx_list*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.mvts_softc* @device_get_softc(i32 %7)
  store %struct.mvts_softc* %8, %struct.mvts_softc** %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.mvts_softc*, %struct.mvts_softc** %4, align 8
  %11 = getelementptr inbounds %struct.mvts_softc, %struct.mvts_softc* %10, i32 0, i32 1
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @mvts_res, align 4
  %14 = load %struct.mvts_softc*, %struct.mvts_softc** %4, align 8
  %15 = getelementptr inbounds %struct.mvts_softc, %struct.mvts_softc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @bus_alloc_resources(i32 %12, i32 %13, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %1
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @device_printf(i32 %21, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @ENXIO, align 4
  store i32 %23, i32* %2, align 4
  br label %38

24:                                               ; preds = %1
  %25 = load i32, i32* %3, align 4
  %26 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %25)
  store %struct.sysctl_ctx_list* %26, %struct.sysctl_ctx_list** %5, align 8
  %27 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %5, align 8
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @device_get_sysctl_tree(i32 %28)
  %30 = call i32 @SYSCTL_CHILDREN(i32 %29)
  %31 = load i32, i32* @OID_AUTO, align 4
  %32 = load i32, i32* @CTLTYPE_INT, align 4
  %33 = load i32, i32* @CTLFLAG_RD, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @ts_sysctl_handler, align 4
  %37 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %27, i32 %30, i32 %31, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %34, i32 %35, i32 0, i32 %36, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %24, %20
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local %struct.mvts_softc* @device_get_softc(i32) #1

declare dso_local i32 @bus_alloc_resources(i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32) #1

declare dso_local i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list*, i32, i32, i8*, i32, i32, i32, i32, i8*, i8*) #1

declare dso_local i32 @SYSCTL_CHILDREN(i32) #1

declare dso_local i32 @device_get_sysctl_tree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
