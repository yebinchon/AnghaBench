; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpi_support/extr_acpi_sony.c_acpi_sony_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpi_support/extr_acpi_sony.c_acpi_sony_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32*, i32* }
%struct.acpi_sony_softc = type { i32 }

@ACPI_SONY_GET_PID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"PID %x\0A\00", align 1
@acpi_sony_oids = common dso_local global %struct.TYPE_2__* null, align 8
@CTLTYPE_INT = common dso_local global i32 0, align 4
@CTLFLAG_RW = common dso_local global i32 0, align 4
@sysctl_acpi_sony_gen_handler = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@CTLFLAG_RD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @acpi_sony_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_sony_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_sony_softc*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.acpi_sony_softc* @device_get_softc(i32 %5)
  store %struct.acpi_sony_softc* %6, %struct.acpi_sony_softc** %3, align 8
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @acpi_get_handle(i32 %7)
  %9 = load i32, i32* @ACPI_SONY_GET_PID, align 4
  %10 = load %struct.acpi_sony_softc*, %struct.acpi_sony_softc** %3, align 8
  %11 = getelementptr inbounds %struct.acpi_sony_softc, %struct.acpi_sony_softc* %10, i32 0, i32 0
  %12 = call i32 @acpi_GetInteger(i32 %8, i32 %9, i32* %11)
  %13 = load i32, i32* %2, align 4
  %14 = load %struct.acpi_sony_softc*, %struct.acpi_sony_softc** %3, align 8
  %15 = getelementptr inbounds %struct.acpi_sony_softc, %struct.acpi_sony_softc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @device_printf(i32 %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %16)
  store i32 0, i32* %4, align 4
  br label %18

18:                                               ; preds = %87, %1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @acpi_sony_oids, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %90

26:                                               ; preds = %18
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @acpi_sony_oids, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %60

34:                                               ; preds = %26
  %35 = load i32, i32* %2, align 4
  %36 = call i32 @device_get_sysctl_ctx(i32 %35)
  %37 = load i32, i32* %2, align 4
  %38 = call i32 @device_get_sysctl_tree(i32 %37)
  %39 = call i32 @SYSCTL_CHILDREN(i32 %38)
  %40 = load i32, i32* %4, align 4
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @acpi_sony_oids, align 8
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* @CTLTYPE_INT, align 4
  %48 = load i32, i32* @CTLFLAG_RW, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* %2, align 4
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* @sysctl_acpi_sony_gen_handler, align 4
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** @acpi_sony_oids, align 8
  %54 = load i32, i32* %4, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @SYSCTL_ADD_PROC(i32 %36, i32 %39, i32 %40, i32* %46, i32 %49, i32 %50, i32 %51, i32 %52, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  br label %86

60:                                               ; preds = %26
  %61 = load i32, i32* %2, align 4
  %62 = call i32 @device_get_sysctl_ctx(i32 %61)
  %63 = load i32, i32* %2, align 4
  %64 = call i32 @device_get_sysctl_tree(i32 %63)
  %65 = call i32 @SYSCTL_CHILDREN(i32 %64)
  %66 = load i32, i32* %4, align 4
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** @acpi_sony_oids, align 8
  %68 = load i32, i32* %4, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* @CTLTYPE_INT, align 4
  %74 = load i32, i32* @CTLFLAG_RD, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* %2, align 4
  %77 = load i32, i32* %4, align 4
  %78 = load i32, i32* @sysctl_acpi_sony_gen_handler, align 4
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** @acpi_sony_oids, align 8
  %80 = load i32, i32* %4, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @SYSCTL_ADD_PROC(i32 %62, i32 %65, i32 %66, i32* %72, i32 %75, i32 %76, i32 %77, i32 %78, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %84)
  br label %86

86:                                               ; preds = %60, %34
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %4, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %4, align 4
  br label %18

90:                                               ; preds = %18
  ret i32 0
}

declare dso_local %struct.acpi_sony_softc* @device_get_softc(i32) #1

declare dso_local i32 @acpi_GetInteger(i32, i32, i32*) #1

declare dso_local i32 @acpi_get_handle(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @SYSCTL_ADD_PROC(i32, i32, i32, i32*, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @device_get_sysctl_ctx(i32) #1

declare dso_local i32 @SYSCTL_CHILDREN(i32) #1

declare dso_local i32 @device_get_sysctl_tree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
