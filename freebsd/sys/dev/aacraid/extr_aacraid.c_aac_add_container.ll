; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aacraid/extr_aacraid.c_aac_add_container.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aacraid/extr_aacraid.c_aac_add_container.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aac_softc = type { i32 }
%struct.aac_mntinforesp = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.aac_container = type { i32, i32, i32 }

@HBA_FLAGS_DBG_FUNCTION_ENTRY_B = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ST_OK = common dso_local global i64 0, align 8
@CT_NONE = common dso_local global i64 0, align 8
@M_AACRAIDBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"Out of memory?!\00", align 1
@co_link = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aac_softc*, %struct.aac_mntinforesp*, i32, i32)* @aac_add_container to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aac_add_container(%struct.aac_softc* %0, %struct.aac_mntinforesp* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.aac_softc*, align 8
  %6 = alloca %struct.aac_mntinforesp*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.aac_container*, align 8
  store %struct.aac_softc* %0, %struct.aac_softc** %5, align 8
  store %struct.aac_mntinforesp* %1, %struct.aac_mntinforesp** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.aac_softc*, %struct.aac_softc** %5, align 8
  %11 = load i8*, i8** @HBA_FLAGS_DBG_FUNCTION_ENTRY_B, align 8
  %12 = call i32 @fwprintf(%struct.aac_softc* %10, i8* %11, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.aac_mntinforesp*, %struct.aac_mntinforesp** %6, align 8
  %14 = getelementptr inbounds %struct.aac_mntinforesp, %struct.aac_mntinforesp* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @ST_OK, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %57

18:                                               ; preds = %4
  %19 = load %struct.aac_mntinforesp*, %struct.aac_mntinforesp** %6, align 8
  %20 = getelementptr inbounds %struct.aac_mntinforesp, %struct.aac_mntinforesp* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @CT_NONE, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %57

27:                                               ; preds = %18
  %28 = load i32, i32* @M_AACRAIDBUF, align 4
  %29 = load i32, i32* @M_NOWAIT, align 4
  %30 = load i32, i32* @M_ZERO, align 4
  %31 = or i32 %29, %30
  %32 = call i64 @malloc(i32 12, i32 %28, i32 %31)
  %33 = inttoptr i64 %32 to %struct.aac_container*
  store %struct.aac_container* %33, %struct.aac_container** %9, align 8
  %34 = load %struct.aac_container*, %struct.aac_container** %9, align 8
  %35 = icmp eq %struct.aac_container* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %27
  %37 = call i32 @panic(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %27
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.aac_container*, %struct.aac_container** %9, align 8
  %41 = getelementptr inbounds %struct.aac_container, %struct.aac_container* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load %struct.aac_mntinforesp*, %struct.aac_mntinforesp** %6, align 8
  %43 = getelementptr inbounds %struct.aac_mntinforesp, %struct.aac_mntinforesp* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 0
  %46 = load %struct.aac_container*, %struct.aac_container** %9, align 8
  %47 = getelementptr inbounds %struct.aac_container, %struct.aac_container* %46, i32 0, i32 2
  %48 = call i32 @bcopy(%struct.TYPE_2__* %45, i32* %47, i32 4)
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.aac_container*, %struct.aac_container** %9, align 8
  %51 = getelementptr inbounds %struct.aac_container, %struct.aac_container* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load %struct.aac_softc*, %struct.aac_softc** %5, align 8
  %53 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %52, i32 0, i32 0
  %54 = load %struct.aac_container*, %struct.aac_container** %9, align 8
  %55 = load i32, i32* @co_link, align 4
  %56 = call i32 @TAILQ_INSERT_TAIL(i32* %53, %struct.aac_container* %54, i32 %55)
  br label %57

57:                                               ; preds = %38, %18, %4
  ret void
}

declare dso_local i32 @fwprintf(%struct.aac_softc*, i8*, i8*) #1

declare dso_local i64 @malloc(i32, i32, i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @bcopy(%struct.TYPE_2__*, i32*, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.aac_container*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
