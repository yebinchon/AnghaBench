; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_cmbat.c_acpi_cmbat_get_bst.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_cmbat.c_acpi_cmbat_get_bst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_cmbat_softc = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32*, i32 }

@cmbat = common dso_local global i32 0, align 4
@ACPI_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"_BST\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"error fetching current battery status -- %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"battery status corrupted\0A\00", align 1
@ACPI_BATT_STAT_BST_MASK = common dso_local global i32 0, align 4
@ACPI_BATT_STAT_INVALID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [55 x i8] c"battery reports simultaneous charging and discharging\0A\00", align 1
@ACPI_BATT_STAT_CRITICAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"critically low charge!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @acpi_cmbat_get_bst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_cmbat_get_bst(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.acpi_cmbat_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %9 = load i32, i32* @cmbat, align 4
  %10 = call i32 @ACPI_SERIAL_ASSERT(i32 %9)
  %11 = load i8*, i8** %2, align 8
  store i8* %11, i8** %8, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = call %struct.acpi_cmbat_softc* @device_get_softc(i8* %12)
  store %struct.acpi_cmbat_softc* %13, %struct.acpi_cmbat_softc** %3, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = call i32 @acpi_get_handle(i8* %14)
  store i32 %15, i32* %6, align 4
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  store i32* null, i32** %16, align 8
  %17 = load i32, i32* @ACPI_ALLOCATE_BUFFER, align 4
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  store i32 %17, i32* %18, align 8
  %19 = load %struct.acpi_cmbat_softc*, %struct.acpi_cmbat_softc** %3, align 8
  %20 = getelementptr inbounds %struct.acpi_cmbat_softc, %struct.acpi_cmbat_softc* %19, i32 0, i32 2
  %21 = call i32 @acpi_cmbat_info_expired(i32* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %1
  br label %135

24:                                               ; preds = %1
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @AcpiEvaluateObject(i32 %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* null, %struct.TYPE_5__* %7)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i64 @ACPI_FAILURE(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %24
  %31 = load i8*, i8** %8, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = call i32 @acpi_device_get_parent_softc(i8* %32)
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @AcpiFormatException(i32 %34)
  %36 = call i32 (i8*, i32, i8*, ...) @ACPI_VPRINT(i8* %31, i32 %33, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  br label %135

37:                                               ; preds = %24
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  store i32* %39, i32** %5, align 8
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 @ACPI_PKG_VALID(i32* %40, i32 4)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %37
  %44 = load i8*, i8** %8, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = call i32 @acpi_device_get_parent_softc(i8* %45)
  %47 = call i32 (i8*, i32, i8*, ...) @ACPI_VPRINT(i8* %44, i32 %46, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %135

48:                                               ; preds = %37
  %49 = load i32*, i32** %5, align 8
  %50 = load %struct.acpi_cmbat_softc*, %struct.acpi_cmbat_softc** %3, align 8
  %51 = getelementptr inbounds %struct.acpi_cmbat_softc, %struct.acpi_cmbat_softc* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = call i64 @acpi_PkgInt32(i32* %49, i32 0, i32* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  br label %135

56:                                               ; preds = %48
  %57 = load i32*, i32** %5, align 8
  %58 = load %struct.acpi_cmbat_softc*, %struct.acpi_cmbat_softc** %3, align 8
  %59 = getelementptr inbounds %struct.acpi_cmbat_softc, %struct.acpi_cmbat_softc* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = call i64 @acpi_PkgInt32(i32* %57, i32 1, i32* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %56
  br label %135

64:                                               ; preds = %56
  %65 = load i32*, i32** %5, align 8
  %66 = load %struct.acpi_cmbat_softc*, %struct.acpi_cmbat_softc** %3, align 8
  %67 = getelementptr inbounds %struct.acpi_cmbat_softc, %struct.acpi_cmbat_softc* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 2
  %69 = call i64 @acpi_PkgInt32(i32* %65, i32 2, i32* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %64
  br label %135

72:                                               ; preds = %64
  %73 = load i32*, i32** %5, align 8
  %74 = load %struct.acpi_cmbat_softc*, %struct.acpi_cmbat_softc** %3, align 8
  %75 = getelementptr inbounds %struct.acpi_cmbat_softc, %struct.acpi_cmbat_softc* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 3
  %77 = call i64 @acpi_PkgInt32(i32* %73, i32 3, i32* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %72
  br label %135

80:                                               ; preds = %72
  %81 = load %struct.acpi_cmbat_softc*, %struct.acpi_cmbat_softc** %3, align 8
  %82 = getelementptr inbounds %struct.acpi_cmbat_softc, %struct.acpi_cmbat_softc* %81, i32 0, i32 2
  %83 = call i32 @acpi_cmbat_info_updated(i32* %82)
  %84 = load i32, i32* @ACPI_BATT_STAT_BST_MASK, align 4
  %85 = load %struct.acpi_cmbat_softc*, %struct.acpi_cmbat_softc** %3, align 8
  %86 = getelementptr inbounds %struct.acpi_cmbat_softc, %struct.acpi_cmbat_softc* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = and i32 %88, %84
  store i32 %89, i32* %87, align 4
  %90 = load %struct.acpi_cmbat_softc*, %struct.acpi_cmbat_softc** %3, align 8
  %91 = getelementptr inbounds %struct.acpi_cmbat_softc, %struct.acpi_cmbat_softc* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @ACPI_BATT_STAT_INVALID, align 4
  %95 = and i32 %93, %94
  %96 = load i32, i32* @ACPI_BATT_STAT_INVALID, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %103

98:                                               ; preds = %80
  %99 = load i8*, i8** %8, align 8
  %100 = load i8*, i8** %8, align 8
  %101 = call i32 @acpi_device_get_parent_softc(i8* %100)
  %102 = call i32 (i8*, i32, i8*, ...) @ACPI_VPRINT(i8* %99, i32 %101, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0))
  br label %103

103:                                              ; preds = %98, %80
  %104 = load %struct.acpi_cmbat_softc*, %struct.acpi_cmbat_softc** %3, align 8
  %105 = getelementptr inbounds %struct.acpi_cmbat_softc, %struct.acpi_cmbat_softc* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @ACPI_BATT_STAT_CRITICAL, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %127

111:                                              ; preds = %103
  %112 = load %struct.acpi_cmbat_softc*, %struct.acpi_cmbat_softc** %3, align 8
  %113 = getelementptr inbounds %struct.acpi_cmbat_softc, %struct.acpi_cmbat_softc* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @ACPI_BATT_STAT_CRITICAL, align 4
  %116 = and i32 %114, %115
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %126

118:                                              ; preds = %111
  %119 = load i32, i32* @ACPI_BATT_STAT_CRITICAL, align 4
  %120 = load %struct.acpi_cmbat_softc*, %struct.acpi_cmbat_softc** %3, align 8
  %121 = getelementptr inbounds %struct.acpi_cmbat_softc, %struct.acpi_cmbat_softc* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = or i32 %122, %119
  store i32 %123, i32* %121, align 4
  %124 = load i8*, i8** %8, align 8
  %125 = call i32 @device_printf(i8* %124, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  br label %126

126:                                              ; preds = %118, %111
  br label %134

127:                                              ; preds = %103
  %128 = load i32, i32* @ACPI_BATT_STAT_CRITICAL, align 4
  %129 = xor i32 %128, -1
  %130 = load %struct.acpi_cmbat_softc*, %struct.acpi_cmbat_softc** %3, align 8
  %131 = getelementptr inbounds %struct.acpi_cmbat_softc, %struct.acpi_cmbat_softc* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = and i32 %132, %129
  store i32 %133, i32* %131, align 4
  br label %134

134:                                              ; preds = %127, %126
  br label %135

135:                                              ; preds = %134, %79, %71, %63, %55, %43, %30, %23
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %137 = load i32*, i32** %136, align 8
  %138 = icmp ne i32* %137, null
  br i1 %138, label %139, label %143

139:                                              ; preds = %135
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = call i32 @AcpiOsFree(i32* %141)
  br label %143

143:                                              ; preds = %139, %135
  ret void
}

declare dso_local i32 @ACPI_SERIAL_ASSERT(i32) #1

declare dso_local %struct.acpi_cmbat_softc* @device_get_softc(i8*) #1

declare dso_local i32 @acpi_get_handle(i8*) #1

declare dso_local i32 @acpi_cmbat_info_expired(i32*) #1

declare dso_local i32 @AcpiEvaluateObject(i32, i8*, i32*, %struct.TYPE_5__*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @ACPI_VPRINT(i8*, i32, i8*, ...) #1

declare dso_local i32 @acpi_device_get_parent_softc(i8*) #1

declare dso_local i32 @AcpiFormatException(i32) #1

declare dso_local i32 @ACPI_PKG_VALID(i32*, i32) #1

declare dso_local i64 @acpi_PkgInt32(i32*, i32, i32*) #1

declare dso_local i32 @acpi_cmbat_info_updated(i32*) #1

declare dso_local i32 @device_printf(i8*, i8*) #1

declare dso_local i32 @AcpiOsFree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
