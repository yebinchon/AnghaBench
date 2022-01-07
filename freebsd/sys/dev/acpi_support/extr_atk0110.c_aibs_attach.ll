; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpi_support/extr_atk0110.c_aibs_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpi_support/extr_atk0110.c_aibs_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aibs_softc = type { i32, i32*, i32*, i32*, i32, i32 }

@AIBS_SENS_TYPE_VOLT = common dso_local global i32 0, align 4
@AIBS_SENS_TYPE_TEMP = common dso_local global i32 0, align 4
@AIBS_SENS_TYPE_FAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @aibs_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aibs_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.aibs_softc*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.aibs_softc* @device_get_softc(i32 %6)
  store %struct.aibs_softc* %7, %struct.aibs_softc** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.aibs_softc*, %struct.aibs_softc** %4, align 8
  %10 = getelementptr inbounds %struct.aibs_softc, %struct.aibs_softc* %9, i32 0, i32 5
  store i32 %8, i32* %10, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @acpi_get_handle(i32 %11)
  %13 = load %struct.aibs_softc*, %struct.aibs_softc** %4, align 8
  %14 = getelementptr inbounds %struct.aibs_softc, %struct.aibs_softc* %13, i32 0, i32 4
  store i32 %12, i32* %14, align 8
  %15 = load %struct.aibs_softc*, %struct.aibs_softc** %4, align 8
  %16 = getelementptr inbounds %struct.aibs_softc, %struct.aibs_softc* %15, i32 0, i32 0
  store i32 0, i32* %16, align 8
  %17 = load %struct.aibs_softc*, %struct.aibs_softc** %4, align 8
  %18 = load i32, i32* @AIBS_SENS_TYPE_VOLT, align 4
  %19 = call i32 @aibs_attach_sif(%struct.aibs_softc* %17, i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %1
  %23 = load %struct.aibs_softc*, %struct.aibs_softc** %4, align 8
  %24 = load i32, i32* @AIBS_SENS_TYPE_TEMP, align 4
  %25 = call i32 @aibs_attach_sif(%struct.aibs_softc* %23, i32 %24)
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %22, %1
  %27 = load i32, i32* %5, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load %struct.aibs_softc*, %struct.aibs_softc** %4, align 8
  %31 = load i32, i32* @AIBS_SENS_TYPE_FAN, align 4
  %32 = call i32 @aibs_attach_sif(%struct.aibs_softc* %30, i32 %31)
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %29, %26
  %34 = load i32, i32* %5, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %75

37:                                               ; preds = %33
  %38 = load %struct.aibs_softc*, %struct.aibs_softc** %4, align 8
  %39 = getelementptr inbounds %struct.aibs_softc, %struct.aibs_softc* %38, i32 0, i32 3
  %40 = load i32*, i32** %39, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load %struct.aibs_softc*, %struct.aibs_softc** %4, align 8
  %44 = getelementptr inbounds %struct.aibs_softc, %struct.aibs_softc* %43, i32 0, i32 3
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @sysctl_remove_oid(i32* %45, i32 1, i32 1)
  br label %47

47:                                               ; preds = %42, %37
  %48 = load %struct.aibs_softc*, %struct.aibs_softc** %4, align 8
  %49 = getelementptr inbounds %struct.aibs_softc, %struct.aibs_softc* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = load %struct.aibs_softc*, %struct.aibs_softc** %4, align 8
  %54 = getelementptr inbounds %struct.aibs_softc, %struct.aibs_softc* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @sysctl_remove_oid(i32* %55, i32 1, i32 1)
  br label %57

57:                                               ; preds = %52, %47
  %58 = load %struct.aibs_softc*, %struct.aibs_softc** %4, align 8
  %59 = getelementptr inbounds %struct.aibs_softc, %struct.aibs_softc* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = load %struct.aibs_softc*, %struct.aibs_softc** %4, align 8
  %64 = getelementptr inbounds %struct.aibs_softc, %struct.aibs_softc* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = call i32 @sysctl_remove_oid(i32* %65, i32 1, i32 1)
  br label %67

67:                                               ; preds = %62, %57
  %68 = load i32, i32* %3, align 4
  %69 = call i32 @aibs_detach(i32 %68)
  %70 = load %struct.aibs_softc*, %struct.aibs_softc** %4, align 8
  %71 = getelementptr inbounds %struct.aibs_softc, %struct.aibs_softc* %70, i32 0, i32 0
  store i32 1, i32* %71, align 8
  %72 = load %struct.aibs_softc*, %struct.aibs_softc** %4, align 8
  %73 = call i32 @aibs_attach_ggrp(%struct.aibs_softc* %72)
  store i32 %73, i32* %5, align 4
  %74 = load i32, i32* %5, align 4
  store i32 %74, i32* %2, align 4
  br label %75

75:                                               ; preds = %67, %36
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local %struct.aibs_softc* @device_get_softc(i32) #1

declare dso_local i32 @acpi_get_handle(i32) #1

declare dso_local i32 @aibs_attach_sif(%struct.aibs_softc*, i32) #1

declare dso_local i32 @sysctl_remove_oid(i32*, i32, i32) #1

declare dso_local i32 @aibs_detach(i32) #1

declare dso_local i32 @aibs_attach_ggrp(%struct.aibs_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
