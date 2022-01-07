; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_fbd.c_bcm_fb_sysctl_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_fbd.c_bcm_fb_sysctl_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcmsc_softc = type { i32 }
%struct.sysctl_ctx_list = type { i32 }
%struct.sysctl_oid = type { i32 }
%struct.sysctl_oid_list = type { i32 }

@OID_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"resync\00", align 1
@CTLFLAG_RW = common dso_local global i32 0, align 4
@CTLTYPE_UINT = common dso_local global i32 0, align 4
@bcm_fb_resync_sysctl = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"IU\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Set to resync framebuffer with VC\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcmsc_softc*)* @bcm_fb_sysctl_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm_fb_sysctl_init(%struct.bcmsc_softc* %0) #0 {
  %2 = alloca %struct.bcmsc_softc*, align 8
  %3 = alloca %struct.sysctl_ctx_list*, align 8
  %4 = alloca %struct.sysctl_oid*, align 8
  %5 = alloca %struct.sysctl_oid_list*, align 8
  store %struct.bcmsc_softc* %0, %struct.bcmsc_softc** %2, align 8
  %6 = load %struct.bcmsc_softc*, %struct.bcmsc_softc** %2, align 8
  %7 = getelementptr inbounds %struct.bcmsc_softc, %struct.bcmsc_softc* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %8)
  store %struct.sysctl_ctx_list* %9, %struct.sysctl_ctx_list** %3, align 8
  %10 = load %struct.bcmsc_softc*, %struct.bcmsc_softc** %2, align 8
  %11 = getelementptr inbounds %struct.bcmsc_softc, %struct.bcmsc_softc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.sysctl_oid* @device_get_sysctl_tree(i32 %12)
  store %struct.sysctl_oid* %13, %struct.sysctl_oid** %4, align 8
  %14 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %15 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %14)
  store %struct.sysctl_oid_list* %15, %struct.sysctl_oid_list** %5, align 8
  %16 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %17 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %18 = load i32, i32* @OID_AUTO, align 4
  %19 = load i32, i32* @CTLFLAG_RW, align 4
  %20 = load i32, i32* @CTLTYPE_UINT, align 4
  %21 = or i32 %19, %20
  %22 = load %struct.bcmsc_softc*, %struct.bcmsc_softc** %2, align 8
  %23 = load i32, i32* @bcm_fb_resync_sysctl, align 4
  %24 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %16, %struct.sysctl_oid_list* %17, i32 %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %21, %struct.bcmsc_softc* %22, i32 4, i32 %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32) #1

declare dso_local %struct.sysctl_oid* @device_get_sysctl_tree(i32) #1

declare dso_local %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

declare dso_local i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, %struct.bcmsc_softc*, i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
