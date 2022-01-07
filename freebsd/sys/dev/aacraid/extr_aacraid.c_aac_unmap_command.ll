; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aacraid/extr_aacraid.c_aac_unmap_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aacraid/extr_aacraid.c_aac_unmap_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aac_command = type { i32, i64, i64, i32, %struct.aac_softc* }
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
  %5 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %4, i32 0, i32 4
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
  br label %74

17:                                               ; preds = %1
  %18 = load %struct.aac_command*, %struct.aac_command** %2, align 8
  %19 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %67

22:                                               ; preds = %17
  %23 = load %struct.aac_command*, %struct.aac_command** %2, align 8
  %24 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %67

27:                                               ; preds = %22
  %28 = load %struct.aac_command*, %struct.aac_command** %2, align 8
  %29 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @AAC_CMD_DATAIN, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %27
  %35 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %36 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.aac_command*, %struct.aac_command** %2, align 8
  %39 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %42 = call i32 @bus_dmamap_sync(i32 %37, i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %34, %27
  %44 = load %struct.aac_command*, %struct.aac_command** %2, align 8
  %45 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @AAC_CMD_DATAOUT, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %43
  %51 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %52 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.aac_command*, %struct.aac_command** %2, align 8
  %55 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %58 = call i32 @bus_dmamap_sync(i32 %53, i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %50, %43
  %60 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %61 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.aac_command*, %struct.aac_command** %2, align 8
  %64 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @bus_dmamap_unload(i32 %62, i32 %65)
  br label %67

67:                                               ; preds = %59, %22, %17
  %68 = load i32, i32* @AAC_CMD_MAPPED, align 4
  %69 = xor i32 %68, -1
  %70 = load %struct.aac_command*, %struct.aac_command** %2, align 8
  %71 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = and i32 %72, %69
  store i32 %73, i32* %71, align 8
  br label %74

74:                                               ; preds = %67, %16
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
