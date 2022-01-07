; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpi_support/extr_atk0110.c_aibs_add_sensor.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpi_support/extr_atk0110.c_aibs_add_sensor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aibs_softc = type { i32, i64 }
%struct.TYPE_11__ = type { i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i8* }
%struct.aibs_sensor = type { i32, i32, i32, i32 }

@ACPI_TYPE_PACKAGE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"sensor object is not a package: %i type\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@ACPI_TYPE_INTEGER = common dso_local global i64 0, align 8
@ACPI_TYPE_STRING = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"unexpected package content\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"unknown sensor type 0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aibs_softc*, %struct.TYPE_11__*, %struct.aibs_sensor*, i8**)* @aibs_add_sensor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aibs_add_sensor(%struct.aibs_softc* %0, %struct.TYPE_11__* %1, %struct.aibs_sensor* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.aibs_softc*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.aibs_sensor*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  store %struct.aibs_softc* %0, %struct.aibs_softc** %6, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %7, align 8
  store %struct.aibs_sensor* %2, %struct.aibs_sensor** %8, align 8
  store i8** %3, i8*** %9, align 8
  %11 = load %struct.aibs_softc*, %struct.aibs_softc** %6, align 8
  %12 = getelementptr inbounds %struct.aibs_softc, %struct.aibs_softc* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store i32 4, i32* %10, align 4
  br label %17

16:                                               ; preds = %4
  store i32 2, i32* %10, align 4
  br label %17

17:                                               ; preds = %16, %15
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @ACPI_TYPE_PACKAGE, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %32

23:                                               ; preds = %17
  %24 = load %struct.aibs_softc*, %struct.aibs_softc** %6, align 8
  %25 = getelementptr inbounds %struct.aibs_softc, %struct.aibs_softc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 (i32, i8*, ...) @device_printf(i32 %26, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %29)
  %31 = load i32, i32* @ENXIO, align 4
  store i32 %31, i32* %5, align 4
  br label %182

32:                                               ; preds = %17
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i64 0
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %10, align 4
  %39 = add nsw i32 %38, 3
  %40 = icmp ne i32 %37, %39
  br i1 %40, label %99, label %41

41:                                               ; preds = %32
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i64 0
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %99, label %51

51:                                               ; preds = %41
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i64 1
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @ACPI_TYPE_STRING, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %99, label %61

61:                                               ; preds = %51
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %64, align 8
  %66 = load i32, i32* %10, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %99, label %73

73:                                               ; preds = %61
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %76, align 8
  %78 = load i32, i32* %10, align 4
  %79 = add nsw i32 %78, 1
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %99, label %86

86:                                               ; preds = %73
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %89, align 8
  %91 = load i32, i32* %10, align 4
  %92 = add nsw i32 %91, 2
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %105

99:                                               ; preds = %86, %73, %61, %51, %41, %32
  %100 = load %struct.aibs_softc*, %struct.aibs_softc** %6, align 8
  %101 = getelementptr inbounds %struct.aibs_softc, %struct.aibs_softc* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i32 (i32, i8*, ...) @device_printf(i32 %102, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %104 = load i32, i32* @ENXIO, align 4
  store i32 %104, i32* %5, align 4
  br label %182

105:                                              ; preds = %86
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 1
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i64 0
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.aibs_sensor*, %struct.aibs_sensor** %8, align 8
  %115 = getelementptr inbounds %struct.aibs_sensor, %struct.aibs_sensor* %114, i32 0, i32 1
  store i32 %113, i32* %115, align 4
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 1
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i64 1
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 0
  %123 = load i8*, i8** %122, align 8
  %124 = load i8**, i8*** %9, align 8
  store i8* %123, i8** %124, align 8
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 1
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %127, align 8
  %129 = load i32, i32* %10, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.aibs_sensor*, %struct.aibs_sensor** %8, align 8
  %136 = getelementptr inbounds %struct.aibs_sensor, %struct.aibs_sensor* %135, i32 0, i32 2
  store i32 %134, i32* %136, align 4
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 1
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %139, align 8
  %141 = load i32, i32* %10, align 4
  %142 = add nsw i32 %141, 1
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.aibs_sensor*, %struct.aibs_sensor** %8, align 8
  %149 = getelementptr inbounds %struct.aibs_sensor, %struct.aibs_sensor* %148, i32 0, i32 3
  store i32 %147, i32* %149, align 4
  %150 = load %struct.aibs_softc*, %struct.aibs_softc** %6, align 8
  %151 = getelementptr inbounds %struct.aibs_softc, %struct.aibs_softc* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %162

154:                                              ; preds = %105
  %155 = load %struct.aibs_sensor*, %struct.aibs_sensor** %8, align 8
  %156 = getelementptr inbounds %struct.aibs_sensor, %struct.aibs_sensor* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.aibs_sensor*, %struct.aibs_sensor** %8, align 8
  %159 = getelementptr inbounds %struct.aibs_sensor, %struct.aibs_sensor* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 4
  %161 = add nsw i32 %160, %157
  store i32 %161, i32* %159, align 4
  br label %162

162:                                              ; preds = %154, %105
  %163 = load %struct.aibs_sensor*, %struct.aibs_sensor** %8, align 8
  %164 = getelementptr inbounds %struct.aibs_sensor, %struct.aibs_sensor* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @AIBS_SENS_TYPE(i32 %165)
  %167 = load %struct.aibs_sensor*, %struct.aibs_sensor** %8, align 8
  %168 = getelementptr inbounds %struct.aibs_sensor, %struct.aibs_sensor* %167, i32 0, i32 0
  store i32 %166, i32* %168, align 4
  %169 = load %struct.aibs_sensor*, %struct.aibs_sensor** %8, align 8
  %170 = getelementptr inbounds %struct.aibs_sensor, %struct.aibs_sensor* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  switch i32 %171, label %173 [
    i32 128, label %172
    i32 129, label %172
    i32 130, label %172
  ]

172:                                              ; preds = %162, %162, %162
  store i32 0, i32* %5, align 4
  br label %182

173:                                              ; preds = %162
  %174 = load %struct.aibs_softc*, %struct.aibs_softc** %6, align 8
  %175 = getelementptr inbounds %struct.aibs_softc, %struct.aibs_softc* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = load %struct.aibs_sensor*, %struct.aibs_sensor** %8, align 8
  %178 = getelementptr inbounds %struct.aibs_sensor, %struct.aibs_sensor* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = call i32 (i32, i8*, ...) @device_printf(i32 %176, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %179)
  %181 = load i32, i32* @ENXIO, align 4
  store i32 %181, i32* %5, align 4
  br label %182

182:                                              ; preds = %173, %172, %99, %23
  %183 = load i32, i32* %5, align 4
  ret i32 %183
}

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @AIBS_SENS_TYPE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
