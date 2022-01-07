; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_gicv3_its.c_its_cmd_wait_completion.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_gicv3_its.c_its_cmd_wait_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.its_cmd = type { i32 }
%struct.gicv3_its_softc = type { i32 }

@GITS_CREADR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Timeout while waiting for CMD completion.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.its_cmd*, %struct.its_cmd*)* @its_cmd_wait_completion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @its_cmd_wait_completion(i32 %0, %struct.its_cmd* %1, %struct.its_cmd* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.its_cmd*, align 8
  %6 = alloca %struct.its_cmd*, align 8
  %7 = alloca %struct.gicv3_its_softc*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store %struct.its_cmd* %1, %struct.its_cmd** %5, align 8
  store %struct.its_cmd* %2, %struct.its_cmd** %6, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call %struct.gicv3_its_softc* @device_get_softc(i32 %12)
  store %struct.gicv3_its_softc* %13, %struct.gicv3_its_softc** %7, align 8
  store i64 1000000, i64* %11, align 8
  %14 = load %struct.gicv3_its_softc*, %struct.gicv3_its_softc** %7, align 8
  %15 = load %struct.its_cmd*, %struct.its_cmd** %5, align 8
  %16 = call i64 @its_cmd_cwriter_offset(%struct.gicv3_its_softc* %14, %struct.its_cmd* %15)
  store i64 %16, i64* %8, align 8
  %17 = load %struct.gicv3_its_softc*, %struct.gicv3_its_softc** %7, align 8
  %18 = load %struct.its_cmd*, %struct.its_cmd** %6, align 8
  %19 = call i64 @its_cmd_cwriter_offset(%struct.gicv3_its_softc* %17, %struct.its_cmd* %18)
  store i64 %19, i64* %9, align 8
  br label %20

20:                                               ; preds = %54, %3
  %21 = load %struct.gicv3_its_softc*, %struct.gicv3_its_softc** %7, align 8
  %22 = load i32, i32* @GITS_CREADR, align 4
  %23 = call i64 @gic_its_read_8(%struct.gicv3_its_softc* %21, i32 %22)
  store i64 %23, i64* %10, align 8
  %24 = load i64, i64* %8, align 8
  %25 = load i64, i64* %9, align 8
  %26 = icmp slt i64 %24, %25
  br i1 %26, label %27, label %37

27:                                               ; preds = %20
  %28 = load i64, i64* %10, align 8
  %29 = load i64, i64* %8, align 8
  %30 = icmp slt i64 %28, %29
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = load i64, i64* %10, align 8
  %33 = load i64, i64* %9, align 8
  %34 = icmp sge i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %31, %27
  br label %56

36:                                               ; preds = %31
  br label %47

37:                                               ; preds = %20
  %38 = load i64, i64* %10, align 8
  %39 = load i64, i64* %8, align 8
  %40 = icmp slt i64 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %37
  %42 = load i64, i64* %10, align 8
  %43 = load i64, i64* %9, align 8
  %44 = icmp sge i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  br label %56

46:                                               ; preds = %41, %37
  br label %47

47:                                               ; preds = %46, %36
  %48 = load i64, i64* %11, align 8
  %49 = add i64 %48, -1
  store i64 %49, i64* %11, align 8
  %50 = icmp eq i64 %48, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @device_printf(i32 %52, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %56

54:                                               ; preds = %47
  %55 = call i32 @DELAY(i32 1)
  br label %20

56:                                               ; preds = %51, %45, %35
  ret void
}

declare dso_local %struct.gicv3_its_softc* @device_get_softc(i32) #1

declare dso_local i64 @its_cmd_cwriter_offset(%struct.gicv3_its_softc*, %struct.its_cmd*) #1

declare dso_local i64 @gic_its_read_8(%struct.gicv3_its_softc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
