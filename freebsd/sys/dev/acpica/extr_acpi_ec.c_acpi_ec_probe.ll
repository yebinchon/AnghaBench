; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_ec.c_acpi_ec_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_ec.c_acpi_ec_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32*, i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_8__ = type { i32 }
%struct.acpi_ec_params = type { i32, i64, i32*, i64 }

@acpi_ec_probe.ec_ids = internal global [2 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* null], align 16
@.str = private unnamed_addr constant [8 x i8] c"PNP0C09\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@ACPI_TYPE_DEVICE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"ec\00", align 1
@M_TEMP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ACPI_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"_UID\00", align 1
@acpi_ec_devclass = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"_GLK\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"_GPE\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"can't evaluate _GPE - %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"_GPE has invalid type %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"Embedded Controller: GPE %#x%s%s\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c", GLK\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [7 x i8] c", ECDT\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @acpi_ec_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_ec_probe(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_11__, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca [64 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.acpi_ec_params*, align 8
  store i32* %0, i32** %3, align 8
  %13 = load i32, i32* @ENXIO, align 4
  store i32 %13, i32* %11, align 4
  %14 = load i32*, i32** %3, align 8
  %15 = call i64 @acpi_get_type(i32* %14)
  %16 = load i64, i64* @ACPI_TYPE_DEVICE, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = call i64 @acpi_disabled(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18, %1
  %22 = load i32, i32* %11, align 4
  store i32 %22, i32* %2, align 4
  br label %195

23:                                               ; preds = %18
  %24 = load i32*, i32** %3, align 8
  %25 = call i64 @device_is_devclass_fixed(i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %23
  store i32 1, i32* %10, align 4
  %28 = load i32*, i32** %3, align 8
  %29 = call %struct.acpi_ec_params* @acpi_get_private(i32* %28)
  store %struct.acpi_ec_params* %29, %struct.acpi_ec_params** %12, align 8
  %30 = load %struct.acpi_ec_params*, %struct.acpi_ec_params** %12, align 8
  %31 = icmp ne %struct.acpi_ec_params* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i32 0, i32* %11, align 4
  br label %33

33:                                               ; preds = %32, %27
  br label %167

34:                                               ; preds = %23
  store i32 0, i32* %10, align 4
  br label %35

35:                                               ; preds = %34
  %36 = load i32*, i32** %3, align 8
  %37 = call i32 @device_get_parent(i32* %36)
  %38 = load i32*, i32** %3, align 8
  %39 = call i32 @ACPI_ID_PROBE(i32 %37, i32* %38, i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @acpi_ec_probe.ec_ids, i64 0, i64 0), i32* null)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  %43 = load i32, i32* %11, align 4
  store i32 %43, i32* %2, align 4
  br label %195

44:                                               ; preds = %35
  %45 = load i32, i32* @M_TEMP, align 4
  %46 = load i32, i32* @M_WAITOK, align 4
  %47 = load i32, i32* @M_ZERO, align 4
  %48 = or i32 %46, %47
  %49 = call %struct.acpi_ec_params* @malloc(i32 32, i32 %45, i32 %48)
  store %struct.acpi_ec_params* %49, %struct.acpi_ec_params** %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 0
  store i32* null, i32** %50, align 8
  %51 = load i32, i32* @ACPI_ALLOCATE_BUFFER, align 4
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 1
  store i32 %51, i32* %52, align 8
  %53 = load i32*, i32** %3, align 8
  %54 = call i32 @acpi_get_handle(i32* %53)
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  %56 = load %struct.acpi_ec_params*, %struct.acpi_ec_params** %12, align 8
  %57 = getelementptr inbounds %struct.acpi_ec_params, %struct.acpi_ec_params* %56, i32 0, i32 3
  %58 = call i32 @acpi_GetInteger(i32 %55, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i64* %57)
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = call i64 @ACPI_FAILURE(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %44
  %63 = load %struct.acpi_ec_params*, %struct.acpi_ec_params** %12, align 8
  %64 = getelementptr inbounds %struct.acpi_ec_params, %struct.acpi_ec_params* %63, i32 0, i32 3
  store i64 0, i64* %64, align 8
  br label %65

65:                                               ; preds = %62, %44
  %66 = load i32, i32* @acpi_ec_devclass, align 4
  %67 = load %struct.acpi_ec_params*, %struct.acpi_ec_params** %12, align 8
  %68 = getelementptr inbounds %struct.acpi_ec_params, %struct.acpi_ec_params* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = call i32* @devclass_get_device(i32 %66, i64 %69)
  store i32* %70, i32** %8, align 8
  %71 = load i32*, i32** %8, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %81

73:                                               ; preds = %65
  %74 = load i32*, i32** %8, align 8
  %75 = call i64 @device_is_alive(i32* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %73
  %78 = load i32*, i32** %3, align 8
  %79 = call i32 @device_disable(i32* %78)
  %80 = load i32, i32* @ENXIO, align 4
  store i32 %80, i32* %11, align 4
  br label %167

81:                                               ; preds = %73, %65
  %82 = load i32, i32* %5, align 4
  %83 = load %struct.acpi_ec_params*, %struct.acpi_ec_params** %12, align 8
  %84 = getelementptr inbounds %struct.acpi_ec_params, %struct.acpi_ec_params* %83, i32 0, i32 1
  %85 = call i32 @acpi_GetInteger(i32 %82, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i64* %84)
  store i32 %85, i32* %7, align 4
  %86 = load i32, i32* %7, align 4
  %87 = call i64 @ACPI_FAILURE(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %81
  %90 = load %struct.acpi_ec_params*, %struct.acpi_ec_params** %12, align 8
  %91 = getelementptr inbounds %struct.acpi_ec_params, %struct.acpi_ec_params* %90, i32 0, i32 1
  store i64 0, i64* %91, align 8
  br label %92

92:                                               ; preds = %89, %81
  %93 = load i32, i32* %5, align 4
  %94 = call i32 @AcpiEvaluateObject(i32 %93, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32* null, %struct.TYPE_11__* %4)
  store i32 %94, i32* %7, align 4
  %95 = load i32, i32* %7, align 4
  %96 = call i64 @ACPI_FAILURE(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %92
  %99 = load i32*, i32** %3, align 8
  %100 = load i32, i32* %7, align 4
  %101 = call i32 @AcpiFormatException(i32 %100)
  %102 = call i32 @device_printf(i32* %99, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %101)
  br label %167

103:                                              ; preds = %92
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = bitcast i32* %105 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %106, %struct.TYPE_10__** %6, align 8
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %108 = icmp eq %struct.TYPE_10__* %107, null
  br i1 %108, label %109, label %110

109:                                              ; preds = %103
  br label %167

110:                                              ; preds = %103
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  switch i32 %113, label %149 [
    i32 129, label %114
    i32 128, label %123
  ]

114:                                              ; preds = %110
  %115 = load %struct.acpi_ec_params*, %struct.acpi_ec_params** %12, align 8
  %116 = getelementptr inbounds %struct.acpi_ec_params, %struct.acpi_ec_params* %115, i32 0, i32 2
  store i32* null, i32** %116, align 8
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.acpi_ec_params*, %struct.acpi_ec_params** %12, align 8
  %122 = getelementptr inbounds %struct.acpi_ec_params, %struct.acpi_ec_params* %121, i32 0, i32 0
  store i32 %120, i32* %122, align 8
  br label %155

123:                                              ; preds = %110
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %125 = call i32 @ACPI_PKG_VALID(%struct.TYPE_10__* %124, i32 2)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %128, label %127

127:                                              ; preds = %123
  br label %167

128:                                              ; preds = %123
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 0
  %134 = call i32* @acpi_GetReference(i32* null, i32* %133)
  %135 = load %struct.acpi_ec_params*, %struct.acpi_ec_params** %12, align 8
  %136 = getelementptr inbounds %struct.acpi_ec_params, %struct.acpi_ec_params* %135, i32 0, i32 2
  store i32* %134, i32** %136, align 8
  %137 = load %struct.acpi_ec_params*, %struct.acpi_ec_params** %12, align 8
  %138 = getelementptr inbounds %struct.acpi_ec_params, %struct.acpi_ec_params* %137, i32 0, i32 2
  %139 = load i32*, i32** %138, align 8
  %140 = icmp eq i32* %139, null
  br i1 %140, label %147, label %141

141:                                              ; preds = %128
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %143 = load %struct.acpi_ec_params*, %struct.acpi_ec_params** %12, align 8
  %144 = getelementptr inbounds %struct.acpi_ec_params, %struct.acpi_ec_params* %143, i32 0, i32 0
  %145 = call i32 @acpi_PkgInt32(%struct.TYPE_10__* %142, i32 1, i32* %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %141, %128
  br label %167

148:                                              ; preds = %141
  br label %155

149:                                              ; preds = %110
  %150 = load i32*, i32** %3, align 8
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @device_printf(i32* %150, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i32 %153)
  br label %167

155:                                              ; preds = %148, %114
  %156 = load i32*, i32** %3, align 8
  %157 = load %struct.acpi_ec_params*, %struct.acpi_ec_params** %12, align 8
  %158 = call i32 @acpi_set_private(i32* %156, %struct.acpi_ec_params* %157)
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 0
  %160 = load i32*, i32** %159, align 8
  %161 = icmp ne i32* %160, null
  br i1 %161, label %162, label %166

162:                                              ; preds = %155
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 0
  %164 = load i32*, i32** %163, align 8
  %165 = call i32 @AcpiOsFree(i32* %164)
  br label %166

166:                                              ; preds = %162, %155
  br label %167

167:                                              ; preds = %166, %149, %147, %127, %109, %98, %77, %33
  %168 = load i32, i32* %11, align 4
  %169 = icmp sle i32 %168, 0
  br i1 %169, label %170, label %189

170:                                              ; preds = %167
  %171 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %172 = load %struct.acpi_ec_params*, %struct.acpi_ec_params** %12, align 8
  %173 = getelementptr inbounds %struct.acpi_ec_params, %struct.acpi_ec_params* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = load %struct.acpi_ec_params*, %struct.acpi_ec_params** %12, align 8
  %176 = getelementptr inbounds %struct.acpi_ec_params, %struct.acpi_ec_params* %175, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = icmp ne i64 %177, 0
  %179 = zext i1 %178 to i64
  %180 = select i1 %178, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0)
  %181 = load i32, i32* %10, align 4
  %182 = icmp ne i32 %181, 0
  %183 = zext i1 %182 to i64
  %184 = select i1 %182, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0)
  %185 = call i32 @snprintf(i8* %171, i32 64, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i32 %174, i8* %180, i8* %184)
  %186 = load i32*, i32** %3, align 8
  %187 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %188 = call i32 @device_set_desc_copy(i32* %186, i8* %187)
  br label %193

189:                                              ; preds = %167
  %190 = load %struct.acpi_ec_params*, %struct.acpi_ec_params** %12, align 8
  %191 = load i32, i32* @M_TEMP, align 4
  %192 = call i32 @free(%struct.acpi_ec_params* %190, i32 %191)
  br label %193

193:                                              ; preds = %189, %170
  %194 = load i32, i32* %11, align 4
  store i32 %194, i32* %2, align 4
  br label %195

195:                                              ; preds = %193, %42, %21
  %196 = load i32, i32* %2, align 4
  ret i32 %196
}

declare dso_local i64 @acpi_get_type(i32*) #1

declare dso_local i64 @acpi_disabled(i8*) #1

declare dso_local i64 @device_is_devclass_fixed(i32*) #1

declare dso_local %struct.acpi_ec_params* @acpi_get_private(i32*) #1

declare dso_local i32 @ACPI_ID_PROBE(i32, i32*, i8**, i32*) #1

declare dso_local i32 @device_get_parent(i32*) #1

declare dso_local %struct.acpi_ec_params* @malloc(i32, i32, i32) #1

declare dso_local i32 @acpi_get_handle(i32*) #1

declare dso_local i32 @acpi_GetInteger(i32, i8*, i64*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32* @devclass_get_device(i32, i64) #1

declare dso_local i64 @device_is_alive(i32*) #1

declare dso_local i32 @device_disable(i32*) #1

declare dso_local i32 @AcpiEvaluateObject(i32, i8*, i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @device_printf(i32*, i8*, i32) #1

declare dso_local i32 @AcpiFormatException(i32) #1

declare dso_local i32 @ACPI_PKG_VALID(%struct.TYPE_10__*, i32) #1

declare dso_local i32* @acpi_GetReference(i32*, i32*) #1

declare dso_local i32 @acpi_PkgInt32(%struct.TYPE_10__*, i32, i32*) #1

declare dso_local i32 @acpi_set_private(i32*, %struct.acpi_ec_params*) #1

declare dso_local i32 @AcpiOsFree(i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i8*, i8*) #1

declare dso_local i32 @device_set_desc_copy(i32*, i8*) #1

declare dso_local i32 @free(%struct.acpi_ec_params*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
