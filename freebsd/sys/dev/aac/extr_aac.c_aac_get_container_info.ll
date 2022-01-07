; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aac/extr_aac.c_aac_get_container_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aac/extr_aac.c_aac_get_container_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aac_mntinforesp = type { i32 }
%struct.aac_softc = type { i32, i32 }
%struct.aac_fib = type { i32* }
%struct.aac_mntinfo = type { i32, i32, i32 }

@AAC_FLAGS_LBA_64BIT = common dso_local global i32 0, align 4
@VM_NameServe64 = common dso_local global i32 0, align 4
@VM_NameServe = common dso_local global i32 0, align 4
@FT_FILESYS = common dso_local global i32 0, align 4
@ContainerCommand = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Error probing container %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.aac_mntinforesp* (%struct.aac_softc*, %struct.aac_fib*, i32)* @aac_get_container_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.aac_mntinforesp* @aac_get_container_info(%struct.aac_softc* %0, %struct.aac_fib* %1, i32 %2) #0 {
  %4 = alloca %struct.aac_mntinforesp*, align 8
  %5 = alloca %struct.aac_softc*, align 8
  %6 = alloca %struct.aac_fib*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.aac_mntinfo*, align 8
  store %struct.aac_softc* %0, %struct.aac_softc** %5, align 8
  store %struct.aac_fib* %1, %struct.aac_fib** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.aac_fib*, %struct.aac_fib** %6, align 8
  %10 = getelementptr inbounds %struct.aac_fib, %struct.aac_fib* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = bitcast i32* %12 to %struct.aac_mntinfo*
  store %struct.aac_mntinfo* %13, %struct.aac_mntinfo** %8, align 8
  %14 = load %struct.aac_softc*, %struct.aac_softc** %5, align 8
  %15 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @AAC_FLAGS_LBA_64BIT, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* @VM_NameServe64, align 4
  br label %24

22:                                               ; preds = %3
  %23 = load i32, i32* @VM_NameServe, align 4
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i32 [ %21, %20 ], [ %23, %22 ]
  %26 = load %struct.aac_mntinfo*, %struct.aac_mntinfo** %8, align 8
  %27 = getelementptr inbounds %struct.aac_mntinfo, %struct.aac_mntinfo* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @FT_FILESYS, align 4
  %29 = load %struct.aac_mntinfo*, %struct.aac_mntinfo** %8, align 8
  %30 = getelementptr inbounds %struct.aac_mntinfo, %struct.aac_mntinfo* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.aac_mntinfo*, %struct.aac_mntinfo** %8, align 8
  %33 = getelementptr inbounds %struct.aac_mntinfo, %struct.aac_mntinfo* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.aac_softc*, %struct.aac_softc** %5, align 8
  %35 = load i32, i32* @ContainerCommand, align 4
  %36 = load %struct.aac_fib*, %struct.aac_fib** %6, align 8
  %37 = call i64 @aac_sync_fib(%struct.aac_softc* %34, i32 %35, i32 0, %struct.aac_fib* %36, i32 12)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %24
  %40 = load %struct.aac_softc*, %struct.aac_softc** %5, align 8
  %41 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @device_printf(i32 %42, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %43)
  store %struct.aac_mntinforesp* null, %struct.aac_mntinforesp** %4, align 8
  br label %51

45:                                               ; preds = %24
  %46 = load %struct.aac_fib*, %struct.aac_fib** %6, align 8
  %47 = getelementptr inbounds %struct.aac_fib, %struct.aac_fib* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = bitcast i32* %49 to %struct.aac_mntinforesp*
  store %struct.aac_mntinforesp* %50, %struct.aac_mntinforesp** %4, align 8
  br label %51

51:                                               ; preds = %45, %39
  %52 = load %struct.aac_mntinforesp*, %struct.aac_mntinforesp** %4, align 8
  ret %struct.aac_mntinforesp* %52
}

declare dso_local i64 @aac_sync_fib(%struct.aac_softc*, i32, i32, %struct.aac_fib*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
