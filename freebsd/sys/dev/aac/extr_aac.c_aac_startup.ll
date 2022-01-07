; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aac/extr_aac.c_aac_startup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aac/extr_aac.c_aac_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aac_softc = type { i32, i32, i32, i32 }
%struct.aac_fib = type { i32 }
%struct.aac_mntinforesp = type { i32 }

@HBA_FLAGS_DBG_FUNCTION_ENTRY_B = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@AAC_MAX_CONTAINERS = common dso_local global i32 0, align 4
@AAC_STATE_SUSPEND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"bus_generic_attach failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @aac_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aac_startup(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.aac_softc*, align 8
  %4 = alloca %struct.aac_fib*, align 8
  %5 = alloca %struct.aac_mntinforesp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.aac_softc*
  store %struct.aac_softc* %9, %struct.aac_softc** %3, align 8
  %10 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %11 = load i8*, i8** @HBA_FLAGS_DBG_FUNCTION_ENTRY_B, align 8
  %12 = call i32 @fwprintf(%struct.aac_softc* %10, i8* %11, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %14 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %13, i32 0, i32 3
  %15 = call i32 @mtx_lock(i32* %14)
  %16 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %17 = call i32 @aac_alloc_sync_fib(%struct.aac_softc* %16, %struct.aac_fib** %4)
  br label %18

18:                                               ; preds = %46, %1
  %19 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %20 = load %struct.aac_fib*, %struct.aac_fib** %4, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call %struct.aac_mntinforesp* @aac_get_container_info(%struct.aac_softc* %19, %struct.aac_fib* %20, i32 %21)
  store %struct.aac_mntinforesp* %22, %struct.aac_mntinforesp** %5, align 8
  %23 = icmp eq %struct.aac_mntinforesp* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %38

25:                                               ; preds = %18
  %26 = load i32, i32* %7, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load %struct.aac_mntinforesp*, %struct.aac_mntinforesp** %5, align 8
  %30 = getelementptr inbounds %struct.aac_mntinforesp, %struct.aac_mntinforesp* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %6, align 4
  br label %32

32:                                               ; preds = %28, %25
  %33 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %34 = load %struct.aac_mntinforesp*, %struct.aac_mntinforesp** %5, align 8
  %35 = call i32 @aac_add_container(%struct.aac_softc* %33, %struct.aac_mntinforesp* %34, i32 0)
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %7, align 4
  br label %38

38:                                               ; preds = %32, %24
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @AAC_MAX_CONTAINERS, align 4
  %45 = icmp slt i32 %43, %44
  br label %46

46:                                               ; preds = %42, %38
  %47 = phi i1 [ false, %38 ], [ %45, %42 ]
  br i1 %47, label %18, label %48

48:                                               ; preds = %46
  %49 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %50 = call i32 @aac_release_sync_fib(%struct.aac_softc* %49)
  %51 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %52 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %51, i32 0, i32 3
  %53 = call i32 @mtx_unlock(i32* %52)
  %54 = load i32, i32* @AAC_STATE_SUSPEND, align 4
  %55 = xor i32 %54, -1
  %56 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %57 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, %55
  store i32 %59, i32* %57, align 4
  %60 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %61 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @bus_generic_attach(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %48
  %66 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %67 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @device_printf(i32 %68, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %70

70:                                               ; preds = %65, %48
  %71 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %72 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %71, i32 0, i32 0
  %73 = call i32 @config_intrhook_disestablish(i32* %72)
  %74 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %75 = call i32 @AAC_UNMASK_INTERRUPTS(%struct.aac_softc* %74)
  ret void
}

declare dso_local i32 @fwprintf(%struct.aac_softc*, i8*, i8*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @aac_alloc_sync_fib(%struct.aac_softc*, %struct.aac_fib**) #1

declare dso_local %struct.aac_mntinforesp* @aac_get_container_info(%struct.aac_softc*, %struct.aac_fib*, i32) #1

declare dso_local i32 @aac_add_container(%struct.aac_softc*, %struct.aac_mntinforesp*, i32) #1

declare dso_local i32 @aac_release_sync_fib(%struct.aac_softc*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i64 @bus_generic_attach(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @config_intrhook_disestablish(i32*) #1

declare dso_local i32 @AAC_UNMASK_INTERRUPTS(%struct.aac_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
