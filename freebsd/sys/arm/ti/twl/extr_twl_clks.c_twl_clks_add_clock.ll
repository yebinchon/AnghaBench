; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/twl/extr_twl_clks.c_twl_clks_add_clock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/twl/extr_twl_clks.c_twl_clks_add_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twl_clk_entry = type { i8*, i32, i8*, i8* }
%struct.twl_clks_softc = type { i32, i32 }
%struct.sysctl_ctx_list = type { i32 }
%struct.sysctl_oid = type { i32 }

@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@TWL_CLKS_MAX_NAMELEN = common dso_local global i32 0, align 4
@OID_AUTO = common dso_local global i32 0, align 4
@CTLTYPE_INT = common dso_local global i32 0, align 4
@CTLFLAG_RD = common dso_local global i32 0, align 4
@twl_clks_sysctl_clock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"external clock\00", align 1
@link = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.twl_clk_entry* (%struct.twl_clks_softc*, i8*, i8*, i8*)* @twl_clks_add_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.twl_clk_entry* @twl_clks_add_clock(%struct.twl_clks_softc* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.twl_clk_entry*, align 8
  %6 = alloca %struct.twl_clks_softc*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.sysctl_ctx_list*, align 8
  %11 = alloca %struct.sysctl_oid*, align 8
  %12 = alloca %struct.twl_clk_entry*, align 8
  store %struct.twl_clks_softc* %0, %struct.twl_clks_softc** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load %struct.twl_clks_softc*, %struct.twl_clks_softc** %6, align 8
  %14 = getelementptr inbounds %struct.twl_clks_softc, %struct.twl_clks_softc* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %15)
  store %struct.sysctl_ctx_list* %16, %struct.sysctl_ctx_list** %10, align 8
  %17 = load %struct.twl_clks_softc*, %struct.twl_clks_softc** %6, align 8
  %18 = getelementptr inbounds %struct.twl_clks_softc, %struct.twl_clks_softc* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.sysctl_oid* @device_get_sysctl_tree(i32 %19)
  store %struct.sysctl_oid* %20, %struct.sysctl_oid** %11, align 8
  %21 = load %struct.twl_clks_softc*, %struct.twl_clks_softc** %6, align 8
  %22 = call i32 @TWL_CLKS_ASSERT_LOCKED(%struct.twl_clks_softc* %21)
  %23 = load i32, i32* @M_DEVBUF, align 4
  %24 = load i32, i32* @M_NOWAIT, align 4
  %25 = load i32, i32* @M_ZERO, align 4
  %26 = or i32 %24, %25
  %27 = call %struct.twl_clk_entry* @malloc(i32 32, i32 %23, i32 %26)
  store %struct.twl_clk_entry* %27, %struct.twl_clk_entry** %12, align 8
  %28 = load %struct.twl_clk_entry*, %struct.twl_clk_entry** %12, align 8
  %29 = icmp eq %struct.twl_clk_entry* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %4
  store %struct.twl_clk_entry* null, %struct.twl_clk_entry** %5, align 8
  br label %70

31:                                               ; preds = %4
  %32 = load %struct.twl_clk_entry*, %struct.twl_clk_entry** %12, align 8
  %33 = getelementptr inbounds %struct.twl_clk_entry, %struct.twl_clk_entry* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = load i32, i32* @TWL_CLKS_MAX_NAMELEN, align 4
  %37 = call i32 @strncpy(i8* %34, i8* %35, i32 %36)
  %38 = load %struct.twl_clk_entry*, %struct.twl_clk_entry** %12, align 8
  %39 = getelementptr inbounds %struct.twl_clk_entry, %struct.twl_clk_entry* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = load i32, i32* @TWL_CLKS_MAX_NAMELEN, align 4
  %42 = sub nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %40, i64 %43
  store i8 0, i8* %44, align 1
  %45 = load i8*, i8** %8, align 8
  %46 = load %struct.twl_clk_entry*, %struct.twl_clk_entry** %12, align 8
  %47 = getelementptr inbounds %struct.twl_clk_entry, %struct.twl_clk_entry* %46, i32 0, i32 3
  store i8* %45, i8** %47, align 8
  %48 = load i8*, i8** %9, align 8
  %49 = load %struct.twl_clk_entry*, %struct.twl_clk_entry** %12, align 8
  %50 = getelementptr inbounds %struct.twl_clk_entry, %struct.twl_clk_entry* %49, i32 0, i32 2
  store i8* %48, i8** %50, align 8
  %51 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %10, align 8
  %52 = load %struct.sysctl_oid*, %struct.sysctl_oid** %11, align 8
  %53 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %52)
  %54 = load i32, i32* @OID_AUTO, align 4
  %55 = load i8*, i8** %7, align 8
  %56 = load i32, i32* @CTLTYPE_INT, align 4
  %57 = load i32, i32* @CTLFLAG_RD, align 4
  %58 = or i32 %56, %57
  %59 = load %struct.twl_clks_softc*, %struct.twl_clks_softc** %6, align 8
  %60 = load i32, i32* @twl_clks_sysctl_clock, align 4
  %61 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %51, i32 %53, i32 %54, i8* %55, i32 %58, %struct.twl_clks_softc* %59, i32 0, i32 %60, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %62 = load %struct.twl_clk_entry*, %struct.twl_clk_entry** %12, align 8
  %63 = getelementptr inbounds %struct.twl_clk_entry, %struct.twl_clk_entry* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 8
  %64 = load %struct.twl_clks_softc*, %struct.twl_clks_softc** %6, align 8
  %65 = getelementptr inbounds %struct.twl_clks_softc, %struct.twl_clks_softc* %64, i32 0, i32 0
  %66 = load %struct.twl_clk_entry*, %struct.twl_clk_entry** %12, align 8
  %67 = load i32, i32* @link, align 4
  %68 = call i32 @LIST_INSERT_HEAD(i32* %65, %struct.twl_clk_entry* %66, i32 %67)
  %69 = load %struct.twl_clk_entry*, %struct.twl_clk_entry** %12, align 8
  store %struct.twl_clk_entry* %69, %struct.twl_clk_entry** %5, align 8
  br label %70

70:                                               ; preds = %31, %30
  %71 = load %struct.twl_clk_entry*, %struct.twl_clk_entry** %5, align 8
  ret %struct.twl_clk_entry* %71
}

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32) #1

declare dso_local %struct.sysctl_oid* @device_get_sysctl_tree(i32) #1

declare dso_local i32 @TWL_CLKS_ASSERT_LOCKED(%struct.twl_clks_softc*) #1

declare dso_local %struct.twl_clk_entry* @malloc(i32, i32, i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list*, i32, i32, i8*, i32, %struct.twl_clks_softc*, i32, i32, i8*, i8*) #1

declare dso_local i32 @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.twl_clk_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
