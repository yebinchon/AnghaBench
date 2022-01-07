; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aacraid/extr_aacraid.c_aac_src_get_istatus.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aacraid/extr_aacraid.c_aac_src_get_istatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aac_softc = type { i64 }

@HBA_FLAGS_DBG_FUNCTION_ENTRY_B = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@AAC_SRC_ODBR_MSI = common dso_local global i32 0, align 4
@AAC_MSI_SYNC_STATUS = common dso_local global i32 0, align 4
@AAC_DB_SYNC_COMMAND = common dso_local global i32 0, align 4
@AAC_SRC_ODBR_R = common dso_local global i32 0, align 4
@AAC_SRC_ODR_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aac_softc*)* @aac_src_get_istatus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aac_src_get_istatus(%struct.aac_softc* %0) #0 {
  %2 = alloca %struct.aac_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.aac_softc* %0, %struct.aac_softc** %2, align 8
  %4 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %5 = load i8*, i8** @HBA_FLAGS_DBG_FUNCTION_ENTRY_B, align 8
  %6 = call i32 @fwprintf(%struct.aac_softc* %4, i8* %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %8 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %23

11:                                               ; preds = %1
  %12 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %13 = load i32, i32* @AAC_SRC_ODBR_MSI, align 4
  %14 = call i32 @AAC_MEM0_GETREG4(%struct.aac_softc* %12, i32 %13)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @AAC_MSI_SYNC_STATUS, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %11
  %20 = load i32, i32* @AAC_DB_SYNC_COMMAND, align 4
  store i32 %20, i32* %3, align 4
  br label %22

21:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %21, %19
  br label %29

23:                                               ; preds = %1
  %24 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %25 = load i32, i32* @AAC_SRC_ODBR_R, align 4
  %26 = call i32 @AAC_MEM0_GETREG4(%struct.aac_softc* %24, i32 %25)
  %27 = load i32, i32* @AAC_SRC_ODR_SHIFT, align 4
  %28 = ashr i32 %26, %27
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %23, %22
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @fwprintf(%struct.aac_softc*, i8*, i8*) #1

declare dso_local i32 @AAC_MEM0_GETREG4(%struct.aac_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
