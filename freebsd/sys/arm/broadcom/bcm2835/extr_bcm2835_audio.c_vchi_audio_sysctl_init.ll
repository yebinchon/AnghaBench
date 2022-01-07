; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_audio.c_vchi_audio_sysctl_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_audio.c_vchi_audio_sysctl_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm2835_audio_info = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }
%struct.sysctl_ctx_list = type { i32 }
%struct.sysctl_oid = type { i32 }
%struct.sysctl_oid_list = type { i32 }

@OID_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"dest\00", align 1
@CTLFLAG_RW = common dso_local global i32 0, align 4
@CTLTYPE_UINT = common dso_local global i32 0, align 4
@sysctl_bcm2835_audio_dest = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"IU\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"audio destination, 0 - auto, 1 - headphones, 2 - HDMI\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"callbacks\00", align 1
@CTLFLAG_RD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"callbacks total\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"submitted\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"last play submitted samples\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"retrieved\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"last play retrieved samples\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"underruns\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"callback underruns\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"freebuffer\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"starved\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"number of starved conditions\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcm2835_audio_info*)* @vchi_audio_sysctl_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vchi_audio_sysctl_init(%struct.bcm2835_audio_info* %0) #0 {
  %2 = alloca %struct.bcm2835_audio_info*, align 8
  %3 = alloca %struct.sysctl_ctx_list*, align 8
  %4 = alloca %struct.sysctl_oid*, align 8
  %5 = alloca %struct.sysctl_oid_list*, align 8
  store %struct.bcm2835_audio_info* %0, %struct.bcm2835_audio_info** %2, align 8
  %6 = load %struct.bcm2835_audio_info*, %struct.bcm2835_audio_info** %2, align 8
  %7 = getelementptr inbounds %struct.bcm2835_audio_info, %struct.bcm2835_audio_info* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %8)
  store %struct.sysctl_ctx_list* %9, %struct.sysctl_ctx_list** %3, align 8
  %10 = load %struct.bcm2835_audio_info*, %struct.bcm2835_audio_info** %2, align 8
  %11 = getelementptr inbounds %struct.bcm2835_audio_info, %struct.bcm2835_audio_info* %10, i32 0, i32 1
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
  %22 = load %struct.bcm2835_audio_info*, %struct.bcm2835_audio_info** %2, align 8
  %23 = load i32, i32* @sysctl_bcm2835_audio_dest, align 4
  %24 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %16, %struct.sysctl_oid_list* %17, i32 %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %21, %struct.bcm2835_audio_info* %22, i32 28, i32 %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0))
  %25 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %26 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %27 = load i32, i32* @OID_AUTO, align 4
  %28 = load i32, i32* @CTLFLAG_RD, align 4
  %29 = load %struct.bcm2835_audio_info*, %struct.bcm2835_audio_info** %2, align 8
  %30 = getelementptr inbounds %struct.bcm2835_audio_info, %struct.bcm2835_audio_info* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 5
  %32 = call i32 @SYSCTL_ADD_UQUAD(%struct.sysctl_ctx_list* %25, %struct.sysctl_oid_list* %26, i32 %27, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %28, i32* %31, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %33 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %34 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %35 = load i32, i32* @OID_AUTO, align 4
  %36 = load i32, i32* @CTLFLAG_RD, align 4
  %37 = load %struct.bcm2835_audio_info*, %struct.bcm2835_audio_info** %2, align 8
  %38 = getelementptr inbounds %struct.bcm2835_audio_info, %struct.bcm2835_audio_info* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 4
  %40 = call i32 @SYSCTL_ADD_UQUAD(%struct.sysctl_ctx_list* %33, %struct.sysctl_oid_list* %34, i32 %35, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 %36, i32* %39, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  %41 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %42 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %43 = load i32, i32* @OID_AUTO, align 4
  %44 = load i32, i32* @CTLFLAG_RD, align 4
  %45 = load %struct.bcm2835_audio_info*, %struct.bcm2835_audio_info** %2, align 8
  %46 = getelementptr inbounds %struct.bcm2835_audio_info, %struct.bcm2835_audio_info* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 3
  %48 = call i32 @SYSCTL_ADD_UQUAD(%struct.sysctl_ctx_list* %41, %struct.sysctl_oid_list* %42, i32 %43, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32 %44, i32* %47, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0))
  %49 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %50 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %51 = load i32, i32* @OID_AUTO, align 4
  %52 = load i32, i32* @CTLFLAG_RD, align 4
  %53 = load %struct.bcm2835_audio_info*, %struct.bcm2835_audio_info** %2, align 8
  %54 = getelementptr inbounds %struct.bcm2835_audio_info, %struct.bcm2835_audio_info* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 2
  %56 = call i32 @SYSCTL_ADD_UQUAD(%struct.sysctl_ctx_list* %49, %struct.sysctl_oid_list* %50, i32 %51, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i32 %52, i32* %55, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0))
  %57 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %58 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %59 = load i32, i32* @OID_AUTO, align 4
  %60 = load i32, i32* @CTLFLAG_RD, align 4
  %61 = load %struct.bcm2835_audio_info*, %struct.bcm2835_audio_info** %2, align 8
  %62 = getelementptr inbounds %struct.bcm2835_audio_info, %struct.bcm2835_audio_info* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load %struct.bcm2835_audio_info*, %struct.bcm2835_audio_info** %2, align 8
  %65 = getelementptr inbounds %struct.bcm2835_audio_info, %struct.bcm2835_audio_info* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list* %57, %struct.sysctl_oid_list* %58, i32 %59, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i32 %60, i32* %63, i32 %67, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %69 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %70 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %71 = load i32, i32* @OID_AUTO, align 4
  %72 = load i32, i32* @CTLFLAG_RD, align 4
  %73 = load %struct.bcm2835_audio_info*, %struct.bcm2835_audio_info** %2, align 8
  %74 = getelementptr inbounds %struct.bcm2835_audio_info, %struct.bcm2835_audio_info* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load %struct.bcm2835_audio_info*, %struct.bcm2835_audio_info** %2, align 8
  %77 = getelementptr inbounds %struct.bcm2835_audio_info, %struct.bcm2835_audio_info* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list* %69, %struct.sysctl_oid_list* %70, i32 %71, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i32 %72, i32* %75, i32 %79, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i64 0, i64 0))
  ret void
}

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32) #1

declare dso_local %struct.sysctl_oid* @device_get_sysctl_tree(i32) #1

declare dso_local %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

declare dso_local i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, %struct.bcm2835_audio_info*, i32, i32, i8*, i8*) #1

declare dso_local i32 @SYSCTL_ADD_UQUAD(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i8*) #1

declare dso_local i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
