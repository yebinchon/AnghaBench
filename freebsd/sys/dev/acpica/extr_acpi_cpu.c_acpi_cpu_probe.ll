; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_cpu.c_acpi_cpu_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_cpu.c_acpi_cpu_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32*, i32 }
%struct.TYPE_7__ = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@acpi_cpu_probe.cpudev_ids = internal global [2 x i8*] [i8* inttoptr (i64 128 to i8*), i8* null], align 16
@.str = private unnamed_addr constant [4 x i8] c"cpu\00", align 1
@acpi_cpu_disabled = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@ACPI_TYPE_PROCESSOR = common dso_local global i64 0, align 8
@ACPI_TYPE_DEVICE = common dso_local global i64 0, align 8
@cpu_softc = common dso_local global i32** null, align 8
@mp_maxid = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ACPI_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"probe failed to get Processor obj - %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Processor object has bad type %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"_UID\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"Device object has bad value - %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"ACPI CPU\00", align 1
@bootverbose = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @acpi_cpu_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_cpu_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %11 = call i64 @acpi_disabled(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i64, i64* @acpi_cpu_disabled, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %13, %1
  %17 = load i32, i32* @ENXIO, align 4
  store i32 %17, i32* %2, align 4
  br label %154

18:                                               ; preds = %13
  %19 = load i32, i32* %3, align 4
  %20 = call i64 @acpi_get_type(i32 %19)
  store i64 %20, i64* %10, align 8
  %21 = load i64, i64* %10, align 8
  %22 = load i64, i64* @ACPI_TYPE_PROCESSOR, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %18
  %25 = load i64, i64* %10, align 8
  %26 = load i64, i64* @ACPI_TYPE_DEVICE, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i32, i32* @ENXIO, align 4
  store i32 %29, i32* %2, align 4
  br label %154

30:                                               ; preds = %24, %18
  %31 = load i64, i64* %10, align 8
  %32 = load i64, i64* @ACPI_TYPE_DEVICE, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %30
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @device_get_parent(i32 %35)
  %37 = load i32, i32* %3, align 4
  %38 = call i64 @ACPI_ID_PROBE(i32 %36, i32 %37, i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @acpi_cpu_probe.cpudev_ids, i64 0, i64 0), i32* null)
  %39 = icmp sge i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32, i32* @ENXIO, align 4
  store i32 %41, i32* %2, align 4
  br label %154

42:                                               ; preds = %34, %30
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @acpi_get_handle(i32 %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32**, i32*** @cpu_softc, align 8
  %46 = icmp eq i32** %45, null
  br i1 %46, label %47, label %58

47:                                               ; preds = %42
  %48 = load i32, i32* @mp_maxid, align 4
  %49 = add nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = mul i64 8, %50
  %52 = trunc i64 %51 to i32
  %53 = load i32, i32* @M_TEMP, align 4
  %54 = load i32, i32* @M_WAITOK, align 4
  %55 = load i32, i32* @M_ZERO, align 4
  %56 = or i32 %54, %55
  %57 = call i32** @malloc(i32 %52, i32 %53, i32 %56)
  store i32** %57, i32*** @cpu_softc, align 8
  br label %58

58:                                               ; preds = %47, %42
  %59 = load i64, i64* %10, align 8
  %60 = load i64, i64* @ACPI_TYPE_PROCESSOR, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %102

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  store i32* null, i32** %63, align 8
  %64 = load i32, i32* @ACPI_ALLOCATE_BUFFER, align 4
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 1
  store i32 %64, i32* %65, align 8
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @AcpiEvaluateObject(i32 %66, i32* null, i32* null, %struct.TYPE_8__* %6)
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %9, align 4
  %69 = call i64 @ACPI_FAILURE(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %62
  %72 = load i32, i32* %3, align 4
  %73 = load i32, i32* %9, align 4
  %74 = call i64 @AcpiFormatException(i32 %73)
  %75 = call i32 @device_printf(i32 %72, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i64 %74)
  %76 = load i32, i32* @ENXIO, align 4
  store i32 %76, i32* %2, align 4
  br label %154

77:                                               ; preds = %62
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = bitcast i32* %79 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %80, %struct.TYPE_7__** %8, align 8
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @ACPI_TYPE_PROCESSOR, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %95

86:                                               ; preds = %77
  %87 = load i32, i32* %3, align 4
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = call i32 @device_printf(i32 %87, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i64 %90)
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %93 = call i32 @AcpiOsFree(%struct.TYPE_7__* %92)
  %94 = load i32, i32* @ENXIO, align 4
  store i32 %94, i32* %2, align 4
  br label %154

95:                                               ; preds = %77
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  store i32 %99, i32* %4, align 4
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %101 = call i32 @AcpiOsFree(%struct.TYPE_7__* %100)
  br label %115

102:                                              ; preds = %58
  %103 = load i32, i32* %7, align 4
  %104 = call i32 @acpi_GetInteger(i32 %103, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32* %4)
  store i32 %104, i32* %9, align 4
  %105 = load i32, i32* %9, align 4
  %106 = call i64 @ACPI_FAILURE(i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %102
  %109 = load i32, i32* %3, align 4
  %110 = load i32, i32* %9, align 4
  %111 = call i64 @AcpiFormatException(i32 %110)
  %112 = call i32 @device_printf(i32 %109, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i64 %111)
  %113 = load i32, i32* @ENXIO, align 4
  store i32 %113, i32* %2, align 4
  br label %154

114:                                              ; preds = %102
  br label %115

115:                                              ; preds = %114, %95
  %116 = load i32, i32* %3, align 4
  %117 = call i64 @acpi_pcpu_get_id(i32 %116, i32* %4, i32* %5)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %115
  %120 = load i32, i32* @ENXIO, align 4
  store i32 %120, i32* %2, align 4
  br label %154

121:                                              ; preds = %115
  %122 = load i32**, i32*** @cpu_softc, align 8
  %123 = load i32, i32* %5, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32*, i32** %122, i64 %124
  %126 = load i32*, i32** %125, align 8
  %127 = icmp ne i32* %126, null
  br i1 %127, label %128, label %130

128:                                              ; preds = %121
  %129 = load i32, i32* @ENXIO, align 4
  store i32 %129, i32* %2, align 4
  br label %154

130:                                              ; preds = %121
  %131 = load i32**, i32*** @cpu_softc, align 8
  %132 = load i32, i32* %5, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32*, i32** %131, i64 %133
  store i32* inttoptr (i64 1 to i32*), i32** %134, align 8
  %135 = load i32, i32* %3, align 4
  %136 = load i32, i32* %5, align 4
  %137 = sext i32 %136 to i64
  %138 = inttoptr i64 %137 to i8*
  %139 = call i32 @acpi_set_private(i32 %135, i8* %138)
  %140 = load i32, i32* %3, align 4
  %141 = call i32 @device_set_desc(i32 %140, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %142 = load i32, i32* @bootverbose, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %153, label %144

144:                                              ; preds = %130
  %145 = load i32, i32* %3, align 4
  %146 = call i64 @device_get_unit(i32 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %153

148:                                              ; preds = %144
  %149 = load i32, i32* %3, align 4
  %150 = call i32 @device_quiet(i32 %149)
  %151 = load i32, i32* %3, align 4
  %152 = call i32 @device_quiet_children(i32 %151)
  br label %153

153:                                              ; preds = %148, %144, %130
  store i32 0, i32* %2, align 4
  br label %154

154:                                              ; preds = %153, %128, %119, %108, %86, %71, %40, %28, %16
  %155 = load i32, i32* %2, align 4
  ret i32 %155
}

declare dso_local i64 @acpi_disabled(i8*) #1

declare dso_local i64 @acpi_get_type(i32) #1

declare dso_local i64 @ACPI_ID_PROBE(i32, i32, i8**, i32*) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @acpi_get_handle(i32) #1

declare dso_local i32** @malloc(i32, i32, i32) #1

declare dso_local i32 @AcpiEvaluateObject(i32, i32*, i32*, %struct.TYPE_8__*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i64) #1

declare dso_local i64 @AcpiFormatException(i32) #1

declare dso_local i32 @AcpiOsFree(%struct.TYPE_7__*) #1

declare dso_local i32 @acpi_GetInteger(i32, i8*, i32*) #1

declare dso_local i64 @acpi_pcpu_get_id(i32, i32*, i32*) #1

declare dso_local i32 @acpi_set_private(i32, i8*) #1

declare dso_local i32 @device_set_desc(i32, i8*) #1

declare dso_local i64 @device_get_unit(i32) #1

declare dso_local i32 @device_quiet(i32) #1

declare dso_local i32 @device_quiet_children(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
