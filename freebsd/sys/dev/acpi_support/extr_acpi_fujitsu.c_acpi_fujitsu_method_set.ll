; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpi_support/extr_acpi_fujitsu.c_acpi_fujitsu_method_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpi_support/extr_acpi_fujitsu.c_acpi_fujitsu_method_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_fujitsu_softc = type { i32, i32, i32, %struct.int_nameval, %struct.int_nameval, %struct.int_nameval, %struct.int_nameval }
%struct.int_nameval = type { i32, i32 }

@fujitsu = common dso_local global i32 0, align 4
@BRIGHT_CHANGED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"SBLL\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"SBL2\00", align 1
@MOUSE_CHANGED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"SMOU\00", align 1
@VOLUME_CHANGED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"SVOL\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@VOLUME_MUTE_BIT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"Couldn't update %s\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_fujitsu_softc*, i32, i32)* @acpi_fujitsu_method_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_fujitsu_method_set(%struct.acpi_fujitsu_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.acpi_fujitsu_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.int_nameval, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.acpi_fujitsu_softc* %0, %struct.acpi_fujitsu_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* @fujitsu, align 4
  %13 = call i32 @ACPI_SERIAL_ASSERT(i32 %12)
  %14 = load i32, i32* %6, align 4
  switch i32 %14, label %39 [
    i32 132, label %15
    i32 131, label %21
    i32 130, label %27
    i32 129, label %33
    i32 128, label %33
  ]

15:                                               ; preds = %3
  %16 = load i32, i32* @BRIGHT_CHANGED, align 4
  store i32 %16, i32* %11, align 4
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  %17 = load %struct.acpi_fujitsu_softc*, %struct.acpi_fujitsu_softc** %5, align 8
  %18 = getelementptr inbounds %struct.acpi_fujitsu_softc, %struct.acpi_fujitsu_softc* %17, i32 0, i32 6
  %19 = bitcast %struct.int_nameval* %8 to i8*
  %20 = bitcast %struct.int_nameval* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %19, i8* align 4 %20, i64 8, i1 false)
  br label %41

21:                                               ; preds = %3
  %22 = load i32, i32* @BRIGHT_CHANGED, align 4
  store i32 %22, i32* %11, align 4
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %10, align 8
  %23 = load %struct.acpi_fujitsu_softc*, %struct.acpi_fujitsu_softc** %5, align 8
  %24 = getelementptr inbounds %struct.acpi_fujitsu_softc, %struct.acpi_fujitsu_softc* %23, i32 0, i32 5
  %25 = bitcast %struct.int_nameval* %8 to i8*
  %26 = bitcast %struct.int_nameval* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %25, i8* align 4 %26, i64 8, i1 false)
  br label %41

27:                                               ; preds = %3
  %28 = load i32, i32* @MOUSE_CHANGED, align 4
  store i32 %28, i32* %11, align 4
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %10, align 8
  %29 = load %struct.acpi_fujitsu_softc*, %struct.acpi_fujitsu_softc** %5, align 8
  %30 = getelementptr inbounds %struct.acpi_fujitsu_softc, %struct.acpi_fujitsu_softc* %29, i32 0, i32 4
  %31 = bitcast %struct.int_nameval* %8 to i8*
  %32 = bitcast %struct.int_nameval* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %31, i8* align 4 %32, i64 8, i1 false)
  br label %41

33:                                               ; preds = %3, %3
  %34 = load i32, i32* @VOLUME_CHANGED, align 4
  store i32 %34, i32* %11, align 4
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %10, align 8
  %35 = load %struct.acpi_fujitsu_softc*, %struct.acpi_fujitsu_softc** %5, align 8
  %36 = getelementptr inbounds %struct.acpi_fujitsu_softc, %struct.acpi_fujitsu_softc* %35, i32 0, i32 3
  %37 = bitcast %struct.int_nameval* %8 to i8*
  %38 = bitcast %struct.int_nameval* %36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %37, i8* align 4 %38, i64 8, i1 false)
  br label %41

39:                                               ; preds = %3
  %40 = load i32, i32* @EINVAL, align 4
  store i32 %40, i32* %4, align 4
  br label %92

41:                                               ; preds = %33, %27, %21, %15
  %42 = getelementptr inbounds %struct.int_nameval, %struct.int_nameval* %8, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %41
  %46 = load i32, i32* @EINVAL, align 4
  store i32 %46, i32* %4, align 4
  br label %92

47:                                               ; preds = %41
  %48 = load i32, i32* %6, align 4
  %49 = icmp eq i32 %48, 128
  br i1 %49, label %50, label %71

50:                                               ; preds = %47
  %51 = load i32, i32* %7, align 4
  %52 = icmp eq i32 %51, 1
  br i1 %52, label %53, label %58

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.int_nameval, %struct.int_nameval* %8, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @VOLUME_MUTE_BIT, align 4
  %57 = or i32 %55, %56
  store i32 %57, i32* %7, align 4
  br label %70

58:                                               ; preds = %50
  %59 = load i32, i32* %7, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.int_nameval, %struct.int_nameval* %8, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @VOLUME_MUTE_BIT, align 4
  %65 = xor i32 %64, -1
  %66 = and i32 %63, %65
  store i32 %66, i32* %7, align 4
  br label %69

67:                                               ; preds = %58
  %68 = load i32, i32* @EINVAL, align 4
  store i32 %68, i32* %4, align 4
  br label %92

69:                                               ; preds = %61
  br label %70

70:                                               ; preds = %69, %53
  br label %71

71:                                               ; preds = %70, %47
  %72 = load %struct.acpi_fujitsu_softc*, %struct.acpi_fujitsu_softc** %5, align 8
  %73 = getelementptr inbounds %struct.acpi_fujitsu_softc, %struct.acpi_fujitsu_softc* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load i8*, i8** %10, align 8
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @acpi_SetInteger(i32 %74, i8* %75, i32 %76)
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* %9, align 4
  %79 = call i64 @ACPI_FAILURE(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %71
  %82 = load %struct.acpi_fujitsu_softc*, %struct.acpi_fujitsu_softc** %5, align 8
  %83 = getelementptr inbounds %struct.acpi_fujitsu_softc, %struct.acpi_fujitsu_softc* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i8*, i8** %10, align 8
  %86 = call i32 @device_printf(i32 %84, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8* %85)
  %87 = load i32, i32* @FALSE, align 4
  store i32 %87, i32* %4, align 4
  br label %92

88:                                               ; preds = %71
  %89 = load i32, i32* %11, align 4
  %90 = load %struct.acpi_fujitsu_softc*, %struct.acpi_fujitsu_softc** %5, align 8
  %91 = getelementptr inbounds %struct.acpi_fujitsu_softc, %struct.acpi_fujitsu_softc* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 4
  store i32 0, i32* %4, align 4
  br label %92

92:                                               ; preds = %88, %81, %67, %45, %39
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local i32 @ACPI_SERIAL_ASSERT(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @acpi_SetInteger(i32, i8*, i32) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
