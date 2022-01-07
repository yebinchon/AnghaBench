; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_gicv3_its.c_its_cmd_send.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_gicv3_its.c_its_cmd_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.its_cmd_desc = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.its_col* }
%struct.its_col = type { i64 }
%struct.gicv3_its_softc = type { i32, i32, %struct.its_cmd* }
%struct.its_cmd = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"could not allocate ITS command\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@ITS_TARGET_NONE = common dso_local global i64 0, align 8
@ITS_CMD_SYNC = common dso_local global i32 0, align 4
@GITS_CWRITER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.its_cmd_desc*)* @its_cmd_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @its_cmd_send(i32 %0, %struct.its_cmd_desc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.its_cmd_desc*, align 8
  %6 = alloca %struct.gicv3_its_softc*, align 8
  %7 = alloca %struct.its_cmd*, align 8
  %8 = alloca %struct.its_cmd*, align 8
  %9 = alloca %struct.its_cmd*, align 8
  %10 = alloca %struct.its_col, align 8
  %11 = alloca %struct.its_cmd_desc, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store %struct.its_cmd_desc* %1, %struct.its_cmd_desc** %5, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call %struct.gicv3_its_softc* @device_get_softc(i32 %14)
  store %struct.gicv3_its_softc* %15, %struct.gicv3_its_softc** %6, align 8
  %16 = load %struct.gicv3_its_softc*, %struct.gicv3_its_softc** %6, align 8
  %17 = getelementptr inbounds %struct.gicv3_its_softc, %struct.gicv3_its_softc* %16, i32 0, i32 1
  %18 = call i32 @mtx_lock_spin(i32* %17)
  %19 = load i32, i32* %4, align 4
  %20 = call %struct.its_cmd* @its_cmd_alloc_locked(i32 %19)
  store %struct.its_cmd* %20, %struct.its_cmd** %7, align 8
  %21 = load %struct.its_cmd*, %struct.its_cmd** %7, align 8
  %22 = icmp eq %struct.its_cmd* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %2
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @device_printf(i32 %24, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.gicv3_its_softc*, %struct.gicv3_its_softc** %6, align 8
  %27 = getelementptr inbounds %struct.gicv3_its_softc, %struct.gicv3_its_softc* %26, i32 0, i32 1
  %28 = call i32 @mtx_unlock_spin(i32* %27)
  %29 = load i32, i32* @EBUSY, align 4
  store i32 %29, i32* %3, align 4
  br label %83

30:                                               ; preds = %2
  %31 = load %struct.its_cmd*, %struct.its_cmd** %7, align 8
  %32 = load %struct.its_cmd_desc*, %struct.its_cmd_desc** %5, align 8
  %33 = call i64 @its_cmd_prepare(%struct.its_cmd* %31, %struct.its_cmd_desc* %32)
  store i64 %33, i64* %12, align 8
  %34 = load %struct.gicv3_its_softc*, %struct.gicv3_its_softc** %6, align 8
  %35 = load %struct.its_cmd*, %struct.its_cmd** %7, align 8
  %36 = call i32 @its_cmd_sync(%struct.gicv3_its_softc* %34, %struct.its_cmd* %35)
  %37 = load i64, i64* %12, align 8
  %38 = load i64, i64* @ITS_TARGET_NONE, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %58

40:                                               ; preds = %30
  %41 = load i32, i32* %4, align 4
  %42 = call %struct.its_cmd* @its_cmd_alloc_locked(i32 %41)
  store %struct.its_cmd* %42, %struct.its_cmd** %8, align 8
  %43 = load %struct.its_cmd*, %struct.its_cmd** %8, align 8
  %44 = icmp ne %struct.its_cmd* %43, null
  br i1 %44, label %45, label %57

45:                                               ; preds = %40
  %46 = load i32, i32* @ITS_CMD_SYNC, align 4
  %47 = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %11, i32 0, i32 1
  store i32 %46, i32* %47, align 8
  %48 = load i64, i64* %12, align 8
  %49 = getelementptr inbounds %struct.its_col, %struct.its_col* %10, i32 0, i32 0
  store i64 %48, i64* %49, align 8
  %50 = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %11, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  store %struct.its_col* %10, %struct.its_col** %51, align 8
  %52 = load %struct.its_cmd*, %struct.its_cmd** %8, align 8
  %53 = call i64 @its_cmd_prepare(%struct.its_cmd* %52, %struct.its_cmd_desc* %11)
  %54 = load %struct.gicv3_its_softc*, %struct.gicv3_its_softc** %6, align 8
  %55 = load %struct.its_cmd*, %struct.its_cmd** %8, align 8
  %56 = call i32 @its_cmd_sync(%struct.gicv3_its_softc* %54, %struct.its_cmd* %55)
  br label %57

57:                                               ; preds = %45, %40
  br label %58

58:                                               ; preds = %57, %30
  %59 = load %struct.gicv3_its_softc*, %struct.gicv3_its_softc** %6, align 8
  %60 = getelementptr inbounds %struct.gicv3_its_softc, %struct.gicv3_its_softc* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = sext i32 %61 to i64
  %63 = mul i64 %62, 4
  store i64 %63, i64* %13, align 8
  %64 = load %struct.gicv3_its_softc*, %struct.gicv3_its_softc** %6, align 8
  %65 = load i32, i32* @GITS_CWRITER, align 4
  %66 = load i64, i64* %13, align 8
  %67 = call i32 @gic_its_write_8(%struct.gicv3_its_softc* %64, i32 %65, i64 %66)
  %68 = load %struct.gicv3_its_softc*, %struct.gicv3_its_softc** %6, align 8
  %69 = getelementptr inbounds %struct.gicv3_its_softc, %struct.gicv3_its_softc* %68, i32 0, i32 2
  %70 = load %struct.its_cmd*, %struct.its_cmd** %69, align 8
  %71 = load %struct.gicv3_its_softc*, %struct.gicv3_its_softc** %6, align 8
  %72 = getelementptr inbounds %struct.gicv3_its_softc, %struct.gicv3_its_softc* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.its_cmd, %struct.its_cmd* %70, i64 %74
  store %struct.its_cmd* %75, %struct.its_cmd** %9, align 8
  %76 = load %struct.gicv3_its_softc*, %struct.gicv3_its_softc** %6, align 8
  %77 = getelementptr inbounds %struct.gicv3_its_softc, %struct.gicv3_its_softc* %76, i32 0, i32 1
  %78 = call i32 @mtx_unlock_spin(i32* %77)
  %79 = load i32, i32* %4, align 4
  %80 = load %struct.its_cmd*, %struct.its_cmd** %7, align 8
  %81 = load %struct.its_cmd*, %struct.its_cmd** %9, align 8
  %82 = call i32 @its_cmd_wait_completion(i32 %79, %struct.its_cmd* %80, %struct.its_cmd* %81)
  store i32 0, i32* %3, align 4
  br label %83

83:                                               ; preds = %58, %23
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local %struct.gicv3_its_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_lock_spin(i32*) #1

declare dso_local %struct.its_cmd* @its_cmd_alloc_locked(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @mtx_unlock_spin(i32*) #1

declare dso_local i64 @its_cmd_prepare(%struct.its_cmd*, %struct.its_cmd_desc*) #1

declare dso_local i32 @its_cmd_sync(%struct.gicv3_its_softc*, %struct.its_cmd*) #1

declare dso_local i32 @gic_its_write_8(%struct.gicv3_its_softc*, i32, i64) #1

declare dso_local i32 @its_cmd_wait_completion(i32, %struct.its_cmd*, %struct.its_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
