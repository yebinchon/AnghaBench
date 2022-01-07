; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/cpsw/extr_if_cpsw.c_cpsw_add_watchdog_sysctls.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/cpsw/extr_if_cpsw.c_cpsw_add_watchdog_sysctls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysctl_ctx_list = type { i32 }
%struct.sysctl_oid = type { i32 }
%struct.cpsw_softc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sysctl_oid_list = type { i32 }

@OID_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"resets\00", align 1
@CTLFLAG_RD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Total number of watchdog resets\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sysctl_ctx_list*, %struct.sysctl_oid*, %struct.cpsw_softc*)* @cpsw_add_watchdog_sysctls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpsw_add_watchdog_sysctls(%struct.sysctl_ctx_list* %0, %struct.sysctl_oid* %1, %struct.cpsw_softc* %2) #0 {
  %4 = alloca %struct.sysctl_ctx_list*, align 8
  %5 = alloca %struct.sysctl_oid*, align 8
  %6 = alloca %struct.cpsw_softc*, align 8
  %7 = alloca %struct.sysctl_oid_list*, align 8
  store %struct.sysctl_ctx_list* %0, %struct.sysctl_ctx_list** %4, align 8
  store %struct.sysctl_oid* %1, %struct.sysctl_oid** %5, align 8
  store %struct.cpsw_softc* %2, %struct.cpsw_softc** %6, align 8
  %8 = load %struct.sysctl_oid*, %struct.sysctl_oid** %5, align 8
  %9 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %8)
  store %struct.sysctl_oid_list* %9, %struct.sysctl_oid_list** %7, align 8
  %10 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %11 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %7, align 8
  %12 = load i32, i32* @OID_AUTO, align 4
  %13 = load i32, i32* @CTLFLAG_RD, align 4
  %14 = load %struct.cpsw_softc*, %struct.cpsw_softc** %6, align 8
  %15 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = call i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list* %10, %struct.sysctl_oid_list* %11, i32 %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %13, i32* %16, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

declare dso_local i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
