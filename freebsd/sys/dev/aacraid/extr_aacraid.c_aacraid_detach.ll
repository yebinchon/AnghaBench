; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aacraid/extr_aacraid.c_aacraid_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aacraid/extr_aacraid.c_aacraid_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aac_softc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.aac_container = type { i32 }
%struct.aac_sim = type { i32 }

@HBA_FLAGS_DBG_FUNCTION_ENTRY_B = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@aac_daemon = common dso_local global i32 0, align 4
@co_link = common dso_local global i32 0, align 4
@M_AACRAIDBUF = common dso_local global i32 0, align 4
@sim_link = common dso_local global i32 0, align 4
@AAC_AIFFLAGS_RUNNING = common dso_local global i32 0, align 4
@AAC_AIFFLAGS_EXIT = common dso_local global i32 0, align 4
@PUSER = common dso_local global i32 0, align 4
@PCATCH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"aac_dch\00", align 1
@hz = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Cannot shutdown AIF thread\00", align 1
@shutdown_final = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aacraid_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.aac_softc*, align 8
  %5 = alloca %struct.aac_container*, align 8
  %6 = alloca %struct.aac_sim*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.aac_softc* @device_get_softc(i32 %8)
  store %struct.aac_softc* %9, %struct.aac_softc** %4, align 8
  %10 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %11 = load i8*, i8** @HBA_FLAGS_DBG_FUNCTION_ENTRY_B, align 8
  %12 = call i32 @fwprintf(%struct.aac_softc* %10, i8* %11, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @aac_daemon, align 4
  %14 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %15 = bitcast %struct.aac_softc* %14 to i8*
  %16 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %17 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %16, i32 0, i32 7
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @untimeout(i32 %13, i8* %15, i32 %18)
  br label %20

20:                                               ; preds = %26, %1
  %21 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %22 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %21, i32 0, i32 6
  %23 = call %struct.aac_sim* @TAILQ_FIRST(i32* %22)
  %24 = bitcast %struct.aac_sim* %23 to %struct.aac_container*
  store %struct.aac_container* %24, %struct.aac_container** %5, align 8
  %25 = icmp ne %struct.aac_container* %24, null
  br i1 %25, label %26, label %37

26:                                               ; preds = %20
  %27 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %28 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %27, i32 0, i32 6
  %29 = load %struct.aac_container*, %struct.aac_container** %5, align 8
  %30 = bitcast %struct.aac_container* %29 to %struct.aac_sim*
  %31 = load i32, i32* @co_link, align 4
  %32 = call i32 @TAILQ_REMOVE(i32* %28, %struct.aac_sim* %30, i32 %31)
  %33 = load %struct.aac_container*, %struct.aac_container** %5, align 8
  %34 = bitcast %struct.aac_container* %33 to %struct.aac_sim*
  %35 = load i32, i32* @M_AACRAIDBUF, align 4
  %36 = call i32 @free(%struct.aac_sim* %34, i32 %35)
  br label %20

37:                                               ; preds = %20
  br label %38

38:                                               ; preds = %58, %37
  %39 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %40 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %39, i32 0, i32 5
  %41 = call %struct.aac_sim* @TAILQ_FIRST(i32* %40)
  store %struct.aac_sim* %41, %struct.aac_sim** %6, align 8
  %42 = icmp ne %struct.aac_sim* %41, null
  br i1 %42, label %43, label %62

43:                                               ; preds = %38
  %44 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %45 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %44, i32 0, i32 5
  %46 = load %struct.aac_sim*, %struct.aac_sim** %6, align 8
  %47 = load i32, i32* @sim_link, align 4
  %48 = call i32 @TAILQ_REMOVE(i32* %45, %struct.aac_sim* %46, i32 %47)
  %49 = load i32, i32* %3, align 4
  %50 = load %struct.aac_sim*, %struct.aac_sim** %6, align 8
  %51 = getelementptr inbounds %struct.aac_sim, %struct.aac_sim* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @device_delete_child(i32 %49, i32 %52)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %43
  %57 = load i32, i32* %7, align 4
  store i32 %57, i32* %2, align 4
  br label %114

58:                                               ; preds = %43
  %59 = load %struct.aac_sim*, %struct.aac_sim** %6, align 8
  %60 = load i32, i32* @M_AACRAIDBUF, align 4
  %61 = call i32 @free(%struct.aac_sim* %59, i32 %60)
  br label %38

62:                                               ; preds = %38
  %63 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %64 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @AAC_AIFFLAGS_RUNNING, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %88

69:                                               ; preds = %62
  %70 = load i32, i32* @AAC_AIFFLAGS_EXIT, align 4
  %71 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %72 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 4
  %75 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %76 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @wakeup(i32 %77)
  %79 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %80 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @PUSER, align 4
  %83 = load i32, i32* @PCATCH, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* @hz, align 4
  %86 = mul nsw i32 30, %85
  %87 = call i32 @tsleep(i32 %81, i32 %84, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %86)
  br label %88

88:                                               ; preds = %69, %62
  %89 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %90 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @AAC_AIFFLAGS_RUNNING, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %88
  %96 = call i32 @panic(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %97

97:                                               ; preds = %95, %88
  %98 = load i32, i32* %3, align 4
  %99 = call i32 @aacraid_shutdown(i32 %98)
  store i32 %99, i32* %7, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %97
  %102 = load i32, i32* %7, align 4
  store i32 %102, i32* %2, align 4
  br label %114

103:                                              ; preds = %97
  %104 = load i32, i32* @shutdown_final, align 4
  %105 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %106 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @EVENTHANDLER_DEREGISTER(i32 %104, i32 %107)
  %109 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %110 = call i32 @aacraid_free(%struct.aac_softc* %109)
  %111 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %112 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %111, i32 0, i32 1
  %113 = call i32 @mtx_destroy(i32* %112)
  store i32 0, i32* %2, align 4
  br label %114

114:                                              ; preds = %103, %101, %56
  %115 = load i32, i32* %2, align 4
  ret i32 %115
}

declare dso_local %struct.aac_softc* @device_get_softc(i32) #1

declare dso_local i32 @fwprintf(%struct.aac_softc*, i8*, i8*) #1

declare dso_local i32 @untimeout(i32, i8*, i32) #1

declare dso_local %struct.aac_sim* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.aac_sim*, i32) #1

declare dso_local i32 @free(%struct.aac_sim*, i32) #1

declare dso_local i32 @device_delete_child(i32, i32) #1

declare dso_local i32 @wakeup(i32) #1

declare dso_local i32 @tsleep(i32, i32, i8*, i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @aacraid_shutdown(i32) #1

declare dso_local i32 @EVENTHANDLER_DEREGISTER(i32, i32) #1

declare dso_local i32 @aacraid_free(%struct.aac_softc*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
