; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aac/extr_aac.c_aac_free_commands.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aac/extr_aac.c_aac_free_commands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aac_softc = type { i32, i32, i32, i32, i32 }
%struct.aac_fibmap = type { i32, i32, %struct.aac_command* }
%struct.aac_command = type { i32 }

@HBA_FLAGS_DBG_FUNCTION_ENTRY_B = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@fm_link = common dso_local global i32 0, align 4
@M_AACBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aac_softc*)* @aac_free_commands to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aac_free_commands(%struct.aac_softc* %0) #0 {
  %2 = alloca %struct.aac_softc*, align 8
  %3 = alloca %struct.aac_fibmap*, align 8
  %4 = alloca %struct.aac_command*, align 8
  %5 = alloca i32, align 4
  store %struct.aac_softc* %0, %struct.aac_softc** %2, align 8
  %6 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %7 = load i8*, i8** @HBA_FLAGS_DBG_FUNCTION_ENTRY_B, align 8
  %8 = call i32 @fwprintf(%struct.aac_softc* %6, i8* %7, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  br label %9

9:                                                ; preds = %51, %1
  %10 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %11 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %10, i32 0, i32 4
  %12 = call %struct.aac_fibmap* @TAILQ_FIRST(i32* %11)
  store %struct.aac_fibmap* %12, %struct.aac_fibmap** %3, align 8
  %13 = icmp ne %struct.aac_fibmap* %12, null
  br i1 %13, label %14, label %72

14:                                               ; preds = %9
  %15 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %16 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %15, i32 0, i32 4
  %17 = load %struct.aac_fibmap*, %struct.aac_fibmap** %3, align 8
  %18 = load i32, i32* @fm_link, align 4
  %19 = call i32 @TAILQ_REMOVE(i32* %16, %struct.aac_fibmap* %17, i32 %18)
  store i32 0, i32* %5, align 4
  br label %20

20:                                               ; preds = %48, %14
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %23 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %20
  %27 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %28 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* %28, align 4
  %31 = icmp ne i32 %29, 0
  br label %32

32:                                               ; preds = %26, %20
  %33 = phi i1 [ false, %20 ], [ %31, %26 ]
  br i1 %33, label %34, label %51

34:                                               ; preds = %32
  %35 = load %struct.aac_fibmap*, %struct.aac_fibmap** %3, align 8
  %36 = getelementptr inbounds %struct.aac_fibmap, %struct.aac_fibmap* %35, i32 0, i32 2
  %37 = load %struct.aac_command*, %struct.aac_command** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %37, i64 %39
  store %struct.aac_command* %40, %struct.aac_command** %4, align 8
  %41 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %42 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.aac_command*, %struct.aac_command** %4, align 8
  %45 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @bus_dmamap_destroy(i32 %43, i32 %46)
  br label %48

48:                                               ; preds = %34
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %5, align 4
  br label %20

51:                                               ; preds = %32
  %52 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %53 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.aac_fibmap*, %struct.aac_fibmap** %3, align 8
  %56 = getelementptr inbounds %struct.aac_fibmap, %struct.aac_fibmap* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @bus_dmamap_unload(i32 %54, i32 %57)
  %59 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %60 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.aac_fibmap*, %struct.aac_fibmap** %3, align 8
  %63 = getelementptr inbounds %struct.aac_fibmap, %struct.aac_fibmap* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.aac_fibmap*, %struct.aac_fibmap** %3, align 8
  %66 = getelementptr inbounds %struct.aac_fibmap, %struct.aac_fibmap* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @bus_dmamem_free(i32 %61, i32 %64, i32 %67)
  %69 = load %struct.aac_fibmap*, %struct.aac_fibmap** %3, align 8
  %70 = load i32, i32* @M_AACBUF, align 4
  %71 = call i32 @free(%struct.aac_fibmap* %69, i32 %70)
  br label %9

72:                                               ; preds = %9
  ret void
}

declare dso_local i32 @fwprintf(%struct.aac_softc*, i8*, i8*) #1

declare dso_local %struct.aac_fibmap* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.aac_fibmap*, i32) #1

declare dso_local i32 @bus_dmamap_destroy(i32, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @bus_dmamem_free(i32, i32, i32) #1

declare dso_local i32 @free(%struct.aac_fibmap*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
