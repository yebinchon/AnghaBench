; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aac/extr_aac.c_aac_rev_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aac/extr_aac.c_aac_rev_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aac_softc = type { i32 }
%struct.aac_rev_check = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.aac_rev_check_resp = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@HBA_FLAGS_DBG_FUNCTION_ENTRY_B = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@HBA_FLAGS_DBG_IOCTL_COMMANDS_B = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"Userland revision= %d\0A\00", align 1
@AAC_DRIVER_MAJOR_VERSION = common dso_local global i32 0, align 4
@AAC_DRIVER_MINOR_VERSION = common dso_local global i32 0, align 4
@AAC_DRIVER_TYPE = common dso_local global i32 0, align 4
@AAC_DRIVER_BUGFIX_LEVEL = common dso_local global i32 0, align 4
@AAC_DRIVER_BUILD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aac_softc*, i32)* @aac_rev_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aac_rev_check(%struct.aac_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.aac_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.aac_rev_check, align 4
  %7 = alloca %struct.aac_rev_check_resp, align 4
  %8 = alloca i32, align 4
  store %struct.aac_softc* %0, %struct.aac_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %10 = load i8*, i8** @HBA_FLAGS_DBG_FUNCTION_ENTRY_B, align 8
  %11 = call i32 (%struct.aac_softc*, i8*, i8*, ...) @fwprintf(%struct.aac_softc* %9, i8* %10, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* %5, align 4
  %13 = ptrtoint %struct.aac_rev_check* %6 to i32
  %14 = call i32 @copyin(i32 %12, i32 %13, i32 4)
  store i32 %14, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %3, align 4
  br label %52

18:                                               ; preds = %2
  %19 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %20 = load i8*, i8** @HBA_FLAGS_DBG_IOCTL_COMMANDS_B, align 8
  %21 = getelementptr inbounds %struct.aac_rev_check, %struct.aac_rev_check* %6, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 (%struct.aac_softc*, i8*, i8*, ...) @fwprintf(%struct.aac_softc* %19, i8* %20, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  %25 = getelementptr inbounds %struct.aac_rev_check_resp, %struct.aac_rev_check_resp* %7, i32 0, i32 0
  store i32 1, i32* %25, align 4
  %26 = load i32, i32* @AAC_DRIVER_MAJOR_VERSION, align 4
  %27 = getelementptr inbounds %struct.aac_rev_check_resp, %struct.aac_rev_check_resp* %7, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 3
  store i32 %26, i32* %30, align 4
  %31 = load i32, i32* @AAC_DRIVER_MINOR_VERSION, align 4
  %32 = getelementptr inbounds %struct.aac_rev_check_resp, %struct.aac_rev_check_resp* %7, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 2
  store i32 %31, i32* %35, align 4
  %36 = load i32, i32* @AAC_DRIVER_TYPE, align 4
  %37 = getelementptr inbounds %struct.aac_rev_check_resp, %struct.aac_rev_check_resp* %7, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  store i32 %36, i32* %40, align 4
  %41 = load i32, i32* @AAC_DRIVER_BUGFIX_LEVEL, align 4
  %42 = getelementptr inbounds %struct.aac_rev_check_resp, %struct.aac_rev_check_resp* %7, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  store i32 %41, i32* %45, align 4
  %46 = load i32, i32* @AAC_DRIVER_BUILD, align 4
  %47 = getelementptr inbounds %struct.aac_rev_check_resp, %struct.aac_rev_check_resp* %7, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  %49 = ptrtoint %struct.aac_rev_check_resp* %7 to i32
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @copyout(i32 %49, i32 %50, i32 24)
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %18, %16
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @fwprintf(%struct.aac_softc*, i8*, i8*, ...) #1

declare dso_local i32 @copyin(i32, i32, i32) #1

declare dso_local i32 @copyout(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
