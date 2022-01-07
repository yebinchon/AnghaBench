; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aac/extr_aac.c_aac_unmap_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aac/extr_aac.c_aac_unmap_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aac_command = type { i32, i64, i32, %struct.aac_softc* }
%struct.aac_softc = type { i32 }

@HBA_FLAGS_DBG_FUNCTION_ENTRY_B = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@AAC_CMD_MAPPED = common dso_local global i32 0, align 4
@AAC_CMD_DATAIN = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@AAC_CMD_DATAOUT = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aac_command*)* @aac_unmap_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aac_unmap_command(%struct.aac_command* %0) #0 {
  %2 = alloca %struct.aac_command*, align 8
  %3 = alloca %struct.aac_softc*, align 8
  store %struct.aac_command* %0, %struct.aac_command** %2, align 8
  %4 = load %struct.aac_command*, %struct.aac_command** %2, align 8
  %5 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %4, i32 0, i32 3
  %6 = load %struct.aac_softc*, %struct.aac_softc** %5, align 8
  store %struct.aac_softc* %6, %struct.aac_softc** %3, align 8
  %7 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %8 = load i8*, i8** @HBA_FLAGS_DBG_FUNCTION_ENTRY_B, align 8
  %9 = call i32 @fwprintf(%struct.aac_softc* %7, i8* %8, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.aac_command*, %struct.aac_command** %2, align 8
  %11 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @AAC_CMD_MAPPED, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  br label %69

17:                                               ; preds = %1
  %18 = load %struct.aac_command*, %struct.aac_command** %2, align 8
  %19 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %62

22:                                               ; preds = %17
  %23 = load %struct.aac_command*, %struct.aac_command** %2, align 8
  %24 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @AAC_CMD_DATAIN, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %22
  %30 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %31 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.aac_command*, %struct.aac_command** %2, align 8
  %34 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %37 = call i32 @bus_dmamap_sync(i32 %32, i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %29, %22
  %39 = load %struct.aac_command*, %struct.aac_command** %2, align 8
  %40 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @AAC_CMD_DATAOUT, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %38
  %46 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %47 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.aac_command*, %struct.aac_command** %2, align 8
  %50 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %53 = call i32 @bus_dmamap_sync(i32 %48, i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %45, %38
  %55 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %56 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.aac_command*, %struct.aac_command** %2, align 8
  %59 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @bus_dmamap_unload(i32 %57, i32 %60)
  br label %62

62:                                               ; preds = %54, %17
  %63 = load i32, i32* @AAC_CMD_MAPPED, align 4
  %64 = xor i32 %63, -1
  %65 = load %struct.aac_command*, %struct.aac_command** %2, align 8
  %66 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = and i32 %67, %64
  store i32 %68, i32* %66, align 8
  br label %69

69:                                               ; preds = %62, %16
  ret void
}

declare dso_local i32 @fwprintf(%struct.aac_softc*, i8*, i8*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
