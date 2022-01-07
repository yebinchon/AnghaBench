; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpi_support/extr_acpi_rapidstart.c_acpi_rapidstart_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpi_support/extr_acpi_rapidstart.c_acpi_rapidstart_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32*, i32* }
%struct.acpi_rapidstart_softc = type { i32, i32 }

@acpi_rapidstart_oids = common dso_local global %struct.TYPE_2__* null, align 8
@CTLTYPE_INT = common dso_local global i32 0, align 4
@CTLFLAG_RW = common dso_local global i32 0, align 4
@sysctl_acpi_rapidstart_gen_handler = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"I\00", align 1
@CTLFLAG_RD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @acpi_rapidstart_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_rapidstart_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_rapidstart_softc*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.acpi_rapidstart_softc* @device_get_softc(i32 %5)
  store %struct.acpi_rapidstart_softc* %6, %struct.acpi_rapidstart_softc** %3, align 8
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @device_get_sysctl_ctx(i32 %7)
  %9 = load %struct.acpi_rapidstart_softc*, %struct.acpi_rapidstart_softc** %3, align 8
  %10 = getelementptr inbounds %struct.acpi_rapidstart_softc, %struct.acpi_rapidstart_softc* %9, i32 0, i32 1
  store i32 %8, i32* %10, align 4
  %11 = load i32, i32* %2, align 4
  %12 = call i32 @device_get_sysctl_tree(i32 %11)
  %13 = load %struct.acpi_rapidstart_softc*, %struct.acpi_rapidstart_softc** %3, align 8
  %14 = getelementptr inbounds %struct.acpi_rapidstart_softc, %struct.acpi_rapidstart_softc* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %84, %1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @acpi_rapidstart_oids, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %87

23:                                               ; preds = %15
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @acpi_rapidstart_oids, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %57

31:                                               ; preds = %23
  %32 = load i32, i32* %2, align 4
  %33 = call i32 @device_get_sysctl_ctx(i32 %32)
  %34 = load i32, i32* %2, align 4
  %35 = call i32 @device_get_sysctl_tree(i32 %34)
  %36 = call i32 @SYSCTL_CHILDREN(i32 %35)
  %37 = load i32, i32* %4, align 4
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @acpi_rapidstart_oids, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* @CTLTYPE_INT, align 4
  %45 = load i32, i32* @CTLFLAG_RW, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* %2, align 4
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @sysctl_acpi_rapidstart_gen_handler, align 4
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** @acpi_rapidstart_oids, align 8
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @SYSCTL_ADD_PROC(i32 %33, i32 %36, i32 %37, i32* %43, i32 %46, i32 %47, i32 %48, i32 %49, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %55)
  br label %83

57:                                               ; preds = %23
  %58 = load i32, i32* %2, align 4
  %59 = call i32 @device_get_sysctl_ctx(i32 %58)
  %60 = load i32, i32* %2, align 4
  %61 = call i32 @device_get_sysctl_tree(i32 %60)
  %62 = call i32 @SYSCTL_CHILDREN(i32 %61)
  %63 = load i32, i32* %4, align 4
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** @acpi_rapidstart_oids, align 8
  %65 = load i32, i32* %4, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* @CTLTYPE_INT, align 4
  %71 = load i32, i32* @CTLFLAG_RD, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* %2, align 4
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* @sysctl_acpi_rapidstart_gen_handler, align 4
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** @acpi_rapidstart_oids, align 8
  %77 = load i32, i32* %4, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @SYSCTL_ADD_PROC(i32 %59, i32 %62, i32 %63, i32* %69, i32 %72, i32 %73, i32 %74, i32 %75, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %81)
  br label %83

83:                                               ; preds = %57, %31
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %4, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %4, align 4
  br label %15

87:                                               ; preds = %15
  ret i32 0
}

declare dso_local %struct.acpi_rapidstart_softc* @device_get_softc(i32) #1

declare dso_local i32 @device_get_sysctl_ctx(i32) #1

declare dso_local i32 @device_get_sysctl_tree(i32) #1

declare dso_local i32 @SYSCTL_ADD_PROC(i32, i32, i32, i32*, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @SYSCTL_CHILDREN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
