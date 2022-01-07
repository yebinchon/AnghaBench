; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aacraid/extr_aacraid_debug.c_aacraid_get_fw_debug_buffer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aacraid/extr_aacraid_debug.c_aacraid_get_fw_debug_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aac_softc = type { i64, i32, i64, i64, i64, i32 }

@AAC_MONKER_GETDRVPROP = common dso_local global i32 0, align 4
@aacraid_debug_flags = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aacraid_get_fw_debug_buffer(%struct.aac_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.aac_softc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.aac_softc* %0, %struct.aac_softc** %3, align 8
  store i64 0, i64* %4, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %9 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %10 = load i32, i32* @AAC_MONKER_GETDRVPROP, align 4
  %11 = call i32 @aacraid_sync_command(%struct.aac_softc* %9, i32 %10, i32 0, i32 0, i32 0, i32 0, i32* null, i32* null)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %59, label %13

13:                                               ; preds = %1
  %14 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %15 = call i64 @AAC_GET_MAILBOX(%struct.aac_softc* %14, i32 1)
  store i64 %15, i64* %4, align 8
  %16 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %17 = call i64 @AAC_GET_MAILBOX(%struct.aac_softc* %16, i32 2)
  store i64 %17, i64* %5, align 8
  %18 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %19 = call i64 @AAC_GET_MAILBOX(%struct.aac_softc* %18, i32 3)
  store i64 %19, i64* %6, align 8
  %20 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %21 = call i64 @AAC_GET_MAILBOX(%struct.aac_softc* %20, i32 4)
  store i64 %21, i64* %7, align 8
  %22 = load i64, i64* %6, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %58

24:                                               ; preds = %13
  %25 = load i64, i64* %4, align 8
  %26 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %27 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @rman_get_start(i32 %28)
  %30 = sub nsw i64 %25, %29
  store i64 %30, i64* %8, align 8
  %31 = load i64, i64* %5, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %57

33:                                               ; preds = %24
  %34 = load i64, i64* %8, align 8
  %35 = load i64, i64* %6, align 8
  %36 = add i64 %34, %35
  %37 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %38 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @rman_get_size(i32 %39)
  %41 = icmp ult i64 %36, %40
  br i1 %41, label %42, label %57

42:                                               ; preds = %33
  %43 = load i64, i64* %8, align 8
  %44 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %45 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  %46 = load i64, i64* %7, align 8
  %47 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %48 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %47, i32 0, i32 4
  store i64 %46, i64* %48, align 8
  %49 = load i64, i64* %6, align 8
  %50 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %51 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %50, i32 0, i32 3
  store i64 %49, i64* %51, align 8
  %52 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %53 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %52, i32 0, i32 2
  store i64 0, i64* %53, align 8
  %54 = load i32, i32* @aacraid_debug_flags, align 4
  %55 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %56 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 8
  store i32 1, i32* %2, align 4
  br label %60

57:                                               ; preds = %33, %24
  br label %58

58:                                               ; preds = %57, %13
  br label %59

59:                                               ; preds = %58, %1
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %59, %42
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @aacraid_sync_command(%struct.aac_softc*, i32, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i64 @AAC_GET_MAILBOX(%struct.aac_softc*, i32) #1

declare dso_local i64 @rman_get_start(i32) #1

declare dso_local i64 @rman_get_size(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
