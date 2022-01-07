; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/twl/extr_twl_vreg.c_twl_vreg_add_regulator.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/twl/extr_twl_vreg.c_twl_vreg_add_regulator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twl_regulator_entry = type { i8*, i32, i32, i32*, i32, i8*, i8* }
%struct.twl_vreg_softc = type { i32, i32 }
%struct.sysctl_ctx_list = type { i32 }
%struct.sysctl_oid = type { i32 }

@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@TWL_VREG_MAX_NAMELEN = common dso_local global i32 0, align 4
@OID_AUTO = common dso_local global i32 0, align 4
@CTLTYPE_INT = common dso_local global i32 0, align 4
@CTLFLAG_RD = common dso_local global i32 0, align 4
@twl_vreg_sysctl_voltage = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"voltage regulator\00", align 1
@entries = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.twl_regulator_entry* (%struct.twl_vreg_softc*, i8*, i8*, i8*, i32, i32*, i32)* @twl_vreg_add_regulator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.twl_regulator_entry* @twl_vreg_add_regulator(%struct.twl_vreg_softc* %0, i8* %1, i8* %2, i8* %3, i32 %4, i32* %5, i32 %6) #0 {
  %8 = alloca %struct.twl_regulator_entry*, align 8
  %9 = alloca %struct.twl_vreg_softc*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.sysctl_ctx_list*, align 8
  %17 = alloca %struct.sysctl_oid*, align 8
  %18 = alloca %struct.twl_regulator_entry*, align 8
  store %struct.twl_vreg_softc* %0, %struct.twl_vreg_softc** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  %19 = load %struct.twl_vreg_softc*, %struct.twl_vreg_softc** %9, align 8
  %20 = getelementptr inbounds %struct.twl_vreg_softc, %struct.twl_vreg_softc* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %21)
  store %struct.sysctl_ctx_list* %22, %struct.sysctl_ctx_list** %16, align 8
  %23 = load %struct.twl_vreg_softc*, %struct.twl_vreg_softc** %9, align 8
  %24 = getelementptr inbounds %struct.twl_vreg_softc, %struct.twl_vreg_softc* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.sysctl_oid* @device_get_sysctl_tree(i32 %25)
  store %struct.sysctl_oid* %26, %struct.sysctl_oid** %17, align 8
  %27 = load i32, i32* @M_DEVBUF, align 4
  %28 = load i32, i32* @M_NOWAIT, align 4
  %29 = load i32, i32* @M_ZERO, align 4
  %30 = or i32 %28, %29
  %31 = call %struct.twl_regulator_entry* @malloc(i32 48, i32 %27, i32 %30)
  store %struct.twl_regulator_entry* %31, %struct.twl_regulator_entry** %18, align 8
  %32 = load %struct.twl_regulator_entry*, %struct.twl_regulator_entry** %18, align 8
  %33 = icmp eq %struct.twl_regulator_entry* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %7
  store %struct.twl_regulator_entry* null, %struct.twl_regulator_entry** %8, align 8
  br label %83

35:                                               ; preds = %7
  %36 = load %struct.twl_regulator_entry*, %struct.twl_regulator_entry** %18, align 8
  %37 = getelementptr inbounds %struct.twl_regulator_entry, %struct.twl_regulator_entry* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = load i8*, i8** %10, align 8
  %40 = load i32, i32* @TWL_VREG_MAX_NAMELEN, align 4
  %41 = call i32 @strncpy(i8* %38, i8* %39, i32 %40)
  %42 = load %struct.twl_regulator_entry*, %struct.twl_regulator_entry** %18, align 8
  %43 = getelementptr inbounds %struct.twl_regulator_entry, %struct.twl_regulator_entry* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = load i32, i32* @TWL_VREG_MAX_NAMELEN, align 4
  %46 = sub nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %44, i64 %47
  store i8 0, i8* %48, align 1
  %49 = load i8*, i8** %11, align 8
  %50 = load %struct.twl_regulator_entry*, %struct.twl_regulator_entry** %18, align 8
  %51 = getelementptr inbounds %struct.twl_regulator_entry, %struct.twl_regulator_entry* %50, i32 0, i32 6
  store i8* %49, i8** %51, align 8
  %52 = load i8*, i8** %12, align 8
  %53 = load %struct.twl_regulator_entry*, %struct.twl_regulator_entry** %18, align 8
  %54 = getelementptr inbounds %struct.twl_regulator_entry, %struct.twl_regulator_entry* %53, i32 0, i32 5
  store i8* %52, i8** %54, align 8
  %55 = load i32, i32* %13, align 4
  %56 = load %struct.twl_regulator_entry*, %struct.twl_regulator_entry** %18, align 8
  %57 = getelementptr inbounds %struct.twl_regulator_entry, %struct.twl_regulator_entry* %56, i32 0, i32 4
  store i32 %55, i32* %57, align 8
  %58 = load i32*, i32** %14, align 8
  %59 = load %struct.twl_regulator_entry*, %struct.twl_regulator_entry** %18, align 8
  %60 = getelementptr inbounds %struct.twl_regulator_entry, %struct.twl_regulator_entry* %59, i32 0, i32 3
  store i32* %58, i32** %60, align 8
  %61 = load i32, i32* %15, align 4
  %62 = load %struct.twl_regulator_entry*, %struct.twl_regulator_entry** %18, align 8
  %63 = getelementptr inbounds %struct.twl_regulator_entry, %struct.twl_regulator_entry* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 4
  %64 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %16, align 8
  %65 = load %struct.sysctl_oid*, %struct.sysctl_oid** %17, align 8
  %66 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %65)
  %67 = load i32, i32* @OID_AUTO, align 4
  %68 = load i8*, i8** %10, align 8
  %69 = load i32, i32* @CTLTYPE_INT, align 4
  %70 = load i32, i32* @CTLFLAG_RD, align 4
  %71 = or i32 %69, %70
  %72 = load %struct.twl_vreg_softc*, %struct.twl_vreg_softc** %9, align 8
  %73 = load i32, i32* @twl_vreg_sysctl_voltage, align 4
  %74 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %64, i32 %66, i32 %67, i8* %68, i32 %71, %struct.twl_vreg_softc* %72, i32 0, i32 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %75 = load %struct.twl_regulator_entry*, %struct.twl_regulator_entry** %18, align 8
  %76 = getelementptr inbounds %struct.twl_regulator_entry, %struct.twl_regulator_entry* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 8
  %77 = load %struct.twl_vreg_softc*, %struct.twl_vreg_softc** %9, align 8
  %78 = getelementptr inbounds %struct.twl_vreg_softc, %struct.twl_vreg_softc* %77, i32 0, i32 0
  %79 = load %struct.twl_regulator_entry*, %struct.twl_regulator_entry** %18, align 8
  %80 = load i32, i32* @entries, align 4
  %81 = call i32 @LIST_INSERT_HEAD(i32* %78, %struct.twl_regulator_entry* %79, i32 %80)
  %82 = load %struct.twl_regulator_entry*, %struct.twl_regulator_entry** %18, align 8
  store %struct.twl_regulator_entry* %82, %struct.twl_regulator_entry** %8, align 8
  br label %83

83:                                               ; preds = %35, %34
  %84 = load %struct.twl_regulator_entry*, %struct.twl_regulator_entry** %8, align 8
  ret %struct.twl_regulator_entry* %84
}

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32) #1

declare dso_local %struct.sysctl_oid* @device_get_sysctl_tree(i32) #1

declare dso_local %struct.twl_regulator_entry* @malloc(i32, i32, i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list*, i32, i32, i8*, i32, %struct.twl_vreg_softc*, i32, i32, i8*, i8*) #1

declare dso_local i32 @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.twl_regulator_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
