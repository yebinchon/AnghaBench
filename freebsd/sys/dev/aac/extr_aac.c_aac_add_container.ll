; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aac/extr_aac.c_aac_add_container.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aac/extr_aac.c_aac_add_container.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aac_softc = type { i32, i32, i32 }
%struct.aac_mntinforesp = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32, i32, i32 }
%struct.aac_container = type { i32, i32, i32* }

@ST_OK = common dso_local global i64 0, align 8
@CT_NONE = common dso_local global i64 0, align 8
@M_AACBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Out of memory?!\00", align 1
@HBA_FLAGS_DBG_INIT_B = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"id %x  name '%.16s'  size %u  type %d\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"aacd\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"device_add_child failed\0A\00", align 1
@aac_container_types = common dso_local global i32 0, align 4
@co_link = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aac_softc*, %struct.aac_mntinforesp*, i32)* @aac_add_container to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aac_add_container(%struct.aac_softc* %0, %struct.aac_mntinforesp* %1, i32 %2) #0 {
  %4 = alloca %struct.aac_softc*, align 8
  %5 = alloca %struct.aac_mntinforesp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.aac_container*, align 8
  %8 = alloca i32*, align 8
  store %struct.aac_softc* %0, %struct.aac_softc** %4, align 8
  store %struct.aac_mntinforesp* %1, %struct.aac_mntinforesp** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.aac_mntinforesp*, %struct.aac_mntinforesp** %5, align 8
  %10 = getelementptr inbounds %struct.aac_mntinforesp, %struct.aac_mntinforesp* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @ST_OK, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %111

14:                                               ; preds = %3
  %15 = load %struct.aac_mntinforesp*, %struct.aac_mntinforesp** %5, align 8
  %16 = getelementptr inbounds %struct.aac_mntinforesp, %struct.aac_mntinforesp* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @CT_NONE, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %111

23:                                               ; preds = %14
  %24 = load i32, i32* @M_AACBUF, align 4
  %25 = load i32, i32* @M_NOWAIT, align 4
  %26 = load i32, i32* @M_ZERO, align 4
  %27 = or i32 %25, %26
  %28 = call i64 @malloc(i32 16, i32 %24, i32 %27)
  %29 = inttoptr i64 %28 to %struct.aac_container*
  store %struct.aac_container* %29, %struct.aac_container** %7, align 8
  %30 = load %struct.aac_container*, %struct.aac_container** %7, align 8
  %31 = icmp eq %struct.aac_container* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %23
  %33 = call i32 @panic(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %23
  %35 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %36 = load i8*, i8** @HBA_FLAGS_DBG_INIT_B, align 8
  %37 = load %struct.aac_mntinforesp*, %struct.aac_mntinforesp** %5, align 8
  %38 = getelementptr inbounds %struct.aac_mntinforesp, %struct.aac_mntinforesp* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.aac_mntinforesp*, %struct.aac_mntinforesp** %5, align 8
  %44 = getelementptr inbounds %struct.aac_mntinforesp, %struct.aac_mntinforesp* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.aac_mntinforesp*, %struct.aac_mntinforesp** %5, align 8
  %50 = getelementptr inbounds %struct.aac_mntinforesp, %struct.aac_mntinforesp* %49, i32 0, i32 1
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.aac_mntinforesp*, %struct.aac_mntinforesp** %5, align 8
  %56 = getelementptr inbounds %struct.aac_mntinforesp, %struct.aac_mntinforesp* %55, i32 0, i32 1
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @fwprintf(%struct.aac_softc* %35, i8* %36, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %42, i32 %48, i32 %54, i64 %60)
  %62 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %63 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = call i32* @device_add_child(i32 %64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 -1)
  store i32* %65, i32** %8, align 8
  %66 = icmp eq i32* %65, null
  br i1 %66, label %67, label %72

67:                                               ; preds = %34
  %68 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %69 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @device_printf(i32 %70, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %76

72:                                               ; preds = %34
  %73 = load i32*, i32** %8, align 8
  %74 = load %struct.aac_container*, %struct.aac_container** %7, align 8
  %75 = call i32 @device_set_ivars(i32* %73, %struct.aac_container* %74)
  br label %76

76:                                               ; preds = %72, %67
  %77 = load i32*, i32** %8, align 8
  %78 = load i32, i32* @aac_container_types, align 4
  %79 = load %struct.aac_mntinforesp*, %struct.aac_mntinforesp** %5, align 8
  %80 = getelementptr inbounds %struct.aac_mntinforesp, %struct.aac_mntinforesp* %79, i32 0, i32 1
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i64 0
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @aac_describe_code(i32 %78, i64 %84)
  %86 = call i32 @device_set_desc(i32* %77, i32 %85)
  %87 = load i32*, i32** %8, align 8
  %88 = load %struct.aac_container*, %struct.aac_container** %7, align 8
  %89 = getelementptr inbounds %struct.aac_container, %struct.aac_container* %88, i32 0, i32 2
  store i32* %87, i32** %89, align 8
  %90 = load i32, i32* %6, align 4
  %91 = load %struct.aac_container*, %struct.aac_container** %7, align 8
  %92 = getelementptr inbounds %struct.aac_container, %struct.aac_container* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  %93 = load %struct.aac_mntinforesp*, %struct.aac_mntinforesp** %5, align 8
  %94 = getelementptr inbounds %struct.aac_mntinforesp, %struct.aac_mntinforesp* %93, i32 0, i32 1
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i64 0
  %97 = load %struct.aac_container*, %struct.aac_container** %7, align 8
  %98 = getelementptr inbounds %struct.aac_container, %struct.aac_container* %97, i32 0, i32 1
  %99 = call i32 @bcopy(%struct.TYPE_2__* %96, i32* %98, i32 4)
  %100 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %101 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %100, i32 0, i32 0
  %102 = call i32 @mtx_lock(i32* %101)
  %103 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %104 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %103, i32 0, i32 1
  %105 = load %struct.aac_container*, %struct.aac_container** %7, align 8
  %106 = load i32, i32* @co_link, align 4
  %107 = call i32 @TAILQ_INSERT_TAIL(i32* %104, %struct.aac_container* %105, i32 %106)
  %108 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %109 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %108, i32 0, i32 0
  %110 = call i32 @mtx_unlock(i32* %109)
  br label %111

111:                                              ; preds = %76, %14, %3
  ret void
}

declare dso_local i64 @malloc(i32, i32, i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @fwprintf(%struct.aac_softc*, i8*, i8*, i32, i32, i32, i64) #1

declare dso_local i32* @device_add_child(i32, i8*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @device_set_ivars(i32*, %struct.aac_container*) #1

declare dso_local i32 @device_set_desc(i32*, i32) #1

declare dso_local i32 @aac_describe_code(i32, i64) #1

declare dso_local i32 @bcopy(%struct.TYPE_2__*, i32*, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.aac_container*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
