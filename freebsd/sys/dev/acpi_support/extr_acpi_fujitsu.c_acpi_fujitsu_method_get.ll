; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpi_support/extr_acpi_fujitsu.c_acpi_fujitsu_method_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpi_support/extr_acpi_fujitsu.c_acpi_fujitsu_method_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_fujitsu_softc = type { i32, i32, i32, %struct.int_nameval, %struct.int_nameval, %struct.int_nameval, %struct.int_nameval, %struct.int_nameval, %struct.int_nameval, %struct.int_nameval, %struct.int_nameval }
%struct.int_nameval = type { i32, i32, i32 }

@fujitsu = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Couldn't query method (%s)\0A\00", align 1
@VOLUME_MUTE_BIT = common dso_local global i32 0, align 4
@GENERAL_SETTING_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_fujitsu_softc*, i32)* @acpi_fujitsu_method_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_fujitsu_method_get(%struct.acpi_fujitsu_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_fujitsu_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.int_nameval, align 4
  %7 = alloca i32, align 4
  store %struct.acpi_fujitsu_softc* %0, %struct.acpi_fujitsu_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @fujitsu, align 4
  %9 = call i32 @ACPI_SERIAL_ASSERT(i32 %8)
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %51 [
    i32 136, label %11
    i32 135, label %16
    i32 133, label %21
    i32 131, label %26
    i32 130, label %26
    i32 134, label %31
    i32 132, label %36
    i32 129, label %41
    i32 128, label %46
  ]

11:                                               ; preds = %2
  %12 = load %struct.acpi_fujitsu_softc*, %struct.acpi_fujitsu_softc** %4, align 8
  %13 = getelementptr inbounds %struct.acpi_fujitsu_softc, %struct.acpi_fujitsu_softc* %12, i32 0, i32 10
  %14 = bitcast %struct.int_nameval* %6 to i8*
  %15 = bitcast %struct.int_nameval* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 %15, i64 12, i1 false)
  br label %53

16:                                               ; preds = %2
  %17 = load %struct.acpi_fujitsu_softc*, %struct.acpi_fujitsu_softc** %4, align 8
  %18 = getelementptr inbounds %struct.acpi_fujitsu_softc, %struct.acpi_fujitsu_softc* %17, i32 0, i32 9
  %19 = bitcast %struct.int_nameval* %6 to i8*
  %20 = bitcast %struct.int_nameval* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %19, i8* align 4 %20, i64 12, i1 false)
  br label %53

21:                                               ; preds = %2
  %22 = load %struct.acpi_fujitsu_softc*, %struct.acpi_fujitsu_softc** %4, align 8
  %23 = getelementptr inbounds %struct.acpi_fujitsu_softc, %struct.acpi_fujitsu_softc* %22, i32 0, i32 8
  %24 = bitcast %struct.int_nameval* %6 to i8*
  %25 = bitcast %struct.int_nameval* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %24, i8* align 4 %25, i64 12, i1 false)
  br label %53

26:                                               ; preds = %2, %2
  %27 = load %struct.acpi_fujitsu_softc*, %struct.acpi_fujitsu_softc** %4, align 8
  %28 = getelementptr inbounds %struct.acpi_fujitsu_softc, %struct.acpi_fujitsu_softc* %27, i32 0, i32 7
  %29 = bitcast %struct.int_nameval* %6 to i8*
  %30 = bitcast %struct.int_nameval* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %29, i8* align 4 %30, i64 12, i1 false)
  br label %53

31:                                               ; preds = %2
  %32 = load %struct.acpi_fujitsu_softc*, %struct.acpi_fujitsu_softc** %4, align 8
  %33 = getelementptr inbounds %struct.acpi_fujitsu_softc, %struct.acpi_fujitsu_softc* %32, i32 0, i32 6
  %34 = bitcast %struct.int_nameval* %6 to i8*
  %35 = bitcast %struct.int_nameval* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %34, i8* align 4 %35, i64 12, i1 false)
  br label %53

36:                                               ; preds = %2
  %37 = load %struct.acpi_fujitsu_softc*, %struct.acpi_fujitsu_softc** %4, align 8
  %38 = getelementptr inbounds %struct.acpi_fujitsu_softc, %struct.acpi_fujitsu_softc* %37, i32 0, i32 5
  %39 = bitcast %struct.int_nameval* %6 to i8*
  %40 = bitcast %struct.int_nameval* %38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %39, i8* align 4 %40, i64 12, i1 false)
  br label %53

41:                                               ; preds = %2
  %42 = load %struct.acpi_fujitsu_softc*, %struct.acpi_fujitsu_softc** %4, align 8
  %43 = getelementptr inbounds %struct.acpi_fujitsu_softc, %struct.acpi_fujitsu_softc* %42, i32 0, i32 4
  %44 = bitcast %struct.int_nameval* %6 to i8*
  %45 = bitcast %struct.int_nameval* %43 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %44, i8* align 4 %45, i64 12, i1 false)
  br label %53

46:                                               ; preds = %2
  %47 = load %struct.acpi_fujitsu_softc*, %struct.acpi_fujitsu_softc** %4, align 8
  %48 = getelementptr inbounds %struct.acpi_fujitsu_softc, %struct.acpi_fujitsu_softc* %47, i32 0, i32 3
  %49 = bitcast %struct.int_nameval* %6 to i8*
  %50 = bitcast %struct.int_nameval* %48 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %49, i8* align 4 %50, i64 12, i1 false)
  br label %53

51:                                               ; preds = %2
  %52 = load i32, i32* @FALSE, align 4
  store i32 %52, i32* %3, align 4
  br label %100

53:                                               ; preds = %46, %41, %36, %31, %26, %21, %16, %11
  %54 = getelementptr inbounds %struct.int_nameval, %struct.int_nameval* %6, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %53
  %58 = load i32, i32* @EINVAL, align 4
  store i32 %58, i32* %3, align 4
  br label %100

59:                                               ; preds = %53
  %60 = load %struct.acpi_fujitsu_softc*, %struct.acpi_fujitsu_softc** %4, align 8
  %61 = getelementptr inbounds %struct.acpi_fujitsu_softc, %struct.acpi_fujitsu_softc* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = getelementptr inbounds %struct.int_nameval, %struct.int_nameval* %6, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds %struct.int_nameval, %struct.int_nameval* %6, i32 0, i32 0
  %66 = call i32 @acpi_GetInteger(i32 %62, i32 %64, i32* %65)
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = call i64 @ACPI_FAILURE(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %59
  %71 = load %struct.acpi_fujitsu_softc*, %struct.acpi_fujitsu_softc** %4, align 8
  %72 = getelementptr inbounds %struct.acpi_fujitsu_softc, %struct.acpi_fujitsu_softc* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = getelementptr inbounds %struct.int_nameval, %struct.int_nameval* %6, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @device_printf(i32 %73, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* @FALSE, align 4
  store i32 %77, i32* %3, align 4
  br label %100

78:                                               ; preds = %59
  %79 = load i32, i32* %5, align 4
  %80 = icmp eq i32 %79, 130
  br i1 %80, label %81, label %93

81:                                               ; preds = %78
  %82 = getelementptr inbounds %struct.int_nameval, %struct.int_nameval* %6, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @VOLUME_MUTE_BIT, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  %87 = zext i1 %86 to i32
  %88 = load %struct.acpi_fujitsu_softc*, %struct.acpi_fujitsu_softc** %4, align 8
  %89 = getelementptr inbounds %struct.acpi_fujitsu_softc, %struct.acpi_fujitsu_softc* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 4
  %90 = load %struct.acpi_fujitsu_softc*, %struct.acpi_fujitsu_softc** %4, align 8
  %91 = getelementptr inbounds %struct.acpi_fujitsu_softc, %struct.acpi_fujitsu_softc* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %3, align 4
  br label %100

93:                                               ; preds = %78
  %94 = load i32, i32* @GENERAL_SETTING_BITS, align 4
  %95 = getelementptr inbounds %struct.int_nameval, %struct.int_nameval* %6, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = and i32 %96, %94
  store i32 %97, i32* %95, align 4
  %98 = getelementptr inbounds %struct.int_nameval, %struct.int_nameval* %6, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %3, align 4
  br label %100

100:                                              ; preds = %93, %81, %70, %57, %51
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local i32 @ACPI_SERIAL_ASSERT(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @acpi_GetInteger(i32, i32, i32*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
