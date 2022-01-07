; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/cpsw/extr_if_cpsw.c_cpsw_add_slots.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/cpsw/extr_if_cpsw.c_cpsw_add_slots.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpsw_softc = type { i32, i32, i32, i32 }
%struct.cpsw_queue = type { i32, i32, i32 }
%struct.cpsw_slot = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"failed to create dmamap\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@next = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpsw_softc*, %struct.cpsw_queue*, i32)* @cpsw_add_slots to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpsw_add_slots(%struct.cpsw_softc* %0, %struct.cpsw_queue* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cpsw_softc*, align 8
  %6 = alloca %struct.cpsw_queue*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.cpsw_slot*, align 8
  %10 = alloca i32, align 4
  store %struct.cpsw_softc* %0, %struct.cpsw_softc** %5, align 8
  store %struct.cpsw_queue* %1, %struct.cpsw_queue** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.cpsw_softc*, %struct.cpsw_softc** %5, align 8
  %12 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @nitems(i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %7, align 4
  br label %19

19:                                               ; preds = %17, %3
  store i32 0, i32* %10, align 4
  br label %20

20:                                               ; preds = %63, %19
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %66

24:                                               ; preds = %20
  %25 = load %struct.cpsw_softc*, %struct.cpsw_softc** %5, align 8
  %26 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %25, i32 0, i32 0
  %27 = call %struct.cpsw_slot* @STAILQ_FIRST(i32* %26)
  store %struct.cpsw_slot* %27, %struct.cpsw_slot** %9, align 8
  %28 = load %struct.cpsw_slot*, %struct.cpsw_slot** %9, align 8
  %29 = icmp eq %struct.cpsw_slot* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %67

31:                                               ; preds = %24
  %32 = load %struct.cpsw_softc*, %struct.cpsw_softc** %5, align 8
  %33 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.cpsw_slot*, %struct.cpsw_slot** %9, align 8
  %36 = getelementptr inbounds %struct.cpsw_slot, %struct.cpsw_slot* %35, i32 0, i32 0
  %37 = call i64 @bus_dmamap_create(i32 %34, i32 0, i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %31
  %40 = load %struct.cpsw_softc*, %struct.cpsw_softc** %5, align 8
  %41 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @device_printf(i32 %42, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* @ENOMEM, align 4
  store i32 %44, i32* %4, align 4
  br label %67

45:                                               ; preds = %31
  %46 = load %struct.cpsw_softc*, %struct.cpsw_softc** %5, align 8
  %47 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %46, i32 0, i32 0
  %48 = load i32, i32* @next, align 4
  %49 = call i32 @STAILQ_REMOVE_HEAD(i32* %47, i32 %48)
  %50 = load %struct.cpsw_queue*, %struct.cpsw_queue** %6, align 8
  %51 = getelementptr inbounds %struct.cpsw_queue, %struct.cpsw_queue* %50, i32 0, i32 2
  %52 = load %struct.cpsw_slot*, %struct.cpsw_slot** %9, align 8
  %53 = load i32, i32* @next, align 4
  %54 = call i32 @STAILQ_INSERT_TAIL(i32* %51, %struct.cpsw_slot* %52, i32 %53)
  %55 = load %struct.cpsw_queue*, %struct.cpsw_queue** %6, align 8
  %56 = getelementptr inbounds %struct.cpsw_queue, %struct.cpsw_queue* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 4
  %59 = load %struct.cpsw_queue*, %struct.cpsw_queue** %6, align 8
  %60 = getelementptr inbounds %struct.cpsw_queue, %struct.cpsw_queue* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %60, align 4
  br label %63

63:                                               ; preds = %45
  %64 = load i32, i32* %10, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %10, align 4
  br label %20

66:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %67

67:                                               ; preds = %66, %39, %30
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i32 @nitems(i32) #1

declare dso_local %struct.cpsw_slot* @STAILQ_FIRST(i32*) #1

declare dso_local i64 @bus_dmamap_create(i32, i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @STAILQ_REMOVE_HEAD(i32*, i32) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.cpsw_slot*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
