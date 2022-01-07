; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/tegra124/extr_tegra124_coretemp.c_tegra124_coretemp_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/tegra124/extr_tegra124_coretemp.c_tegra124_coretemp_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra124_coretemp_softc = type { i32, i32, i32 }
%struct.sysctl_oid = type { i32 }
%struct.sysctl_ctx_list = type { i32 }

@OID_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"coretemp\00", align 1
@CTLFLAG_RD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Per-CPU thermal information\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"temperature\00", align 1
@CTLTYPE_INT = common dso_local global i32 0, align 4
@CTLFLAG_MPSAFE = common dso_local global i32 0, align 4
@CORETEMP_TEMP = common dso_local global i32 0, align 4
@coretemp_get_val_sysctl = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"IK\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"Current temperature\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"delta\00", align 1
@CORETEMP_DELTA = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.7 = private unnamed_addr constant [53 x i8] c"Delta between TCC activation and current temperature\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"resolution\00", align 1
@CORETEMP_RESOLUTION = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [33 x i8] c"Resolution of CPU thermal sensor\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"tjmax\00", align 1
@CORETEMP_TJMAX = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [27 x i8] c"TCC activation temperature\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @tegra124_coretemp_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra124_coretemp_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.tegra124_coretemp_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sysctl_oid*, align 8
  %7 = alloca %struct.sysctl_ctx_list*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.tegra124_coretemp_softc* @device_get_softc(i32 %9)
  store %struct.tegra124_coretemp_softc* %10, %struct.tegra124_coretemp_softc** %4, align 8
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.tegra124_coretemp_softc*, %struct.tegra124_coretemp_softc** %4, align 8
  %13 = getelementptr inbounds %struct.tegra124_coretemp_softc, %struct.tegra124_coretemp_softc* %12, i32 0, i32 2
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @device_get_unit(i32 %14)
  %16 = load %struct.tegra124_coretemp_softc*, %struct.tegra124_coretemp_softc** %4, align 8
  %17 = getelementptr inbounds %struct.tegra124_coretemp_softc, %struct.tegra124_coretemp_softc* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load %struct.tegra124_coretemp_softc*, %struct.tegra124_coretemp_softc** %4, align 8
  %19 = getelementptr inbounds %struct.tegra124_coretemp_softc, %struct.tegra124_coretemp_softc* %18, i32 0, i32 0
  store i32 102000, i32* %19, align 4
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @device_get_parent(i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = load %struct.tegra124_coretemp_softc*, %struct.tegra124_coretemp_softc** %4, align 8
  %23 = call i32 @tegra124_coretemp_ofw_parse(%struct.tegra124_coretemp_softc* %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %1
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %2, align 4
  br label %91

28:                                               ; preds = %1
  %29 = load i32, i32* %3, align 4
  %30 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %29)
  store %struct.sysctl_ctx_list* %30, %struct.sysctl_ctx_list** %7, align 8
  %31 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %7, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call %struct.sysctl_oid* @device_get_sysctl_tree(i32 %32)
  %34 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %33)
  %35 = load i32, i32* @OID_AUTO, align 4
  %36 = load i32, i32* @CTLFLAG_RD, align 4
  %37 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list* %31, i32 %34, i32 %35, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %36, i32* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  store %struct.sysctl_oid* %37, %struct.sysctl_oid** %6, align 8
  %38 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %7, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call %struct.sysctl_oid* @device_get_sysctl_tree(i32 %39)
  %41 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %40)
  %42 = load i32, i32* @OID_AUTO, align 4
  %43 = load i32, i32* @CTLTYPE_INT, align 4
  %44 = load i32, i32* @CTLFLAG_RD, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @CTLFLAG_MPSAFE, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* @CORETEMP_TEMP, align 4
  %50 = load i32, i32* @coretemp_get_val_sysctl, align 4
  %51 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %38, i32 %41, i32 %42, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %47, i32 %48, i32 %49, i32 %50, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %52 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %7, align 8
  %53 = load %struct.sysctl_oid*, %struct.sysctl_oid** %6, align 8
  %54 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %53)
  %55 = load i32, i32* @OID_AUTO, align 4
  %56 = load i32, i32* @CTLTYPE_INT, align 4
  %57 = load i32, i32* @CTLFLAG_RD, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @CTLFLAG_MPSAFE, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* %3, align 4
  %62 = load i32, i32* @CORETEMP_DELTA, align 4
  %63 = load i32, i32* @coretemp_get_val_sysctl, align 4
  %64 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %52, i32 %54, i32 %55, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %60, i32 %61, i32 %62, i32 %63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0))
  %65 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %7, align 8
  %66 = load %struct.sysctl_oid*, %struct.sysctl_oid** %6, align 8
  %67 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %66)
  %68 = load i32, i32* @OID_AUTO, align 4
  %69 = load i32, i32* @CTLTYPE_INT, align 4
  %70 = load i32, i32* @CTLFLAG_RD, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @CTLFLAG_MPSAFE, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* %3, align 4
  %75 = load i32, i32* @CORETEMP_RESOLUTION, align 4
  %76 = load i32, i32* @coretemp_get_val_sysctl, align 4
  %77 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %65, i32 %67, i32 %68, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i32 %73, i32 %74, i32 %75, i32 %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0))
  %78 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %7, align 8
  %79 = load %struct.sysctl_oid*, %struct.sysctl_oid** %6, align 8
  %80 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %79)
  %81 = load i32, i32* @OID_AUTO, align 4
  %82 = load i32, i32* @CTLTYPE_INT, align 4
  %83 = load i32, i32* @CTLFLAG_RD, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* @CTLFLAG_MPSAFE, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* %3, align 4
  %88 = load i32, i32* @CORETEMP_TJMAX, align 4
  %89 = load i32, i32* @coretemp_get_val_sysctl, align 4
  %90 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %78, i32 %80, i32 %81, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i32 %86, i32 %87, i32 %88, i32 %89, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %91

91:                                               ; preds = %28, %26
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local %struct.tegra124_coretemp_softc* @device_get_softc(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @tegra124_coretemp_ofw_parse(%struct.tegra124_coretemp_softc*) #1

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32) #1

declare dso_local %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list*, i32, i32, i8*, i32, i32*, i8*) #1

declare dso_local i32 @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

declare dso_local %struct.sysctl_oid* @device_get_sysctl_tree(i32) #1

declare dso_local i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list*, i32, i32, i8*, i32, i32, i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
