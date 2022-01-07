; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpi_support/extr_atk0110.c_aibs_attach_ggrp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpi_support/extr_atk0110.c_aibs_attach_ggrp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aibs_softc = type { i32, %struct.sysctl_oid*, %struct.sysctl_oid*, %struct.sysctl_oid*, %struct.aibs_sensor*, i32 }
%struct.sysctl_oid = type { i32 }
%struct.aibs_sensor = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_10__, i32, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32, i32* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_12__* }

@.str = private unnamed_addr constant [5 x i8] c"GITM\00", align 1
@bootverbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"GITM not found\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@AIBS_GROUP_SENSORS = common dso_local global i32 0, align 4
@ACPI_TYPE_INTEGER = common dso_local global i32 0, align 4
@ACPI_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"GGRP\00", align 1
@ACPI_TYPE_PACKAGE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"GGRP not found\0A\00", align 1
@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"volt\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"temp\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"fan\00", align 1
@.str.7 = private unnamed_addr constant [48 x i8] c"add_sensor succeeded for unknown sensor type %d\00", align 1
@CTLFLAG_RD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aibs_softc*)* @aibs_attach_ggrp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aibs_attach_ggrp(%struct.aibs_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.aibs_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_12__, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.TYPE_11__, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.aibs_sensor*, align 8
  %19 = alloca %struct.sysctl_oid**, align 8
  store %struct.aibs_softc* %0, %struct.aibs_softc** %3, align 8
  %20 = load %struct.aibs_softc*, %struct.aibs_softc** %3, align 8
  %21 = getelementptr inbounds %struct.aibs_softc, %struct.aibs_softc* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @AcpiGetHandle(i32 %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %6)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i64 @ACPI_FAILURE(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %1
  %28 = load i64, i64* @bootverbose, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = load %struct.aibs_softc*, %struct.aibs_softc** %3, align 8
  %32 = getelementptr inbounds %struct.aibs_softc, %struct.aibs_softc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @device_printf(i32 %33, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %35

35:                                               ; preds = %30, %27
  %36 = load i32, i32* @ENXIO, align 4
  store i32 %36, i32* %2, align 4
  br label %165

37:                                               ; preds = %1
  %38 = load i32, i32* @AIBS_GROUP_SENSORS, align 4
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* @ACPI_TYPE_INTEGER, align 4
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 1
  store i32 %41, i32* %42, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  store i32 1, i32* %43, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 1
  store %struct.TYPE_12__* %7, %struct.TYPE_12__** %44, align 8
  %45 = load i32, i32* @ACPI_ALLOCATE_BUFFER, align 4
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 1
  store i32 %45, i32* %46, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 0
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %47, align 8
  %48 = load %struct.aibs_softc*, %struct.aibs_softc** %3, align 8
  %49 = getelementptr inbounds %struct.aibs_softc, %struct.aibs_softc* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @ACPI_TYPE_PACKAGE, align 4
  %52 = call i32 @AcpiEvaluateObjectTyped(i32 %50, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_11__* %9, %struct.TYPE_13__* %5, i32 %51)
  store i32 %52, i32* %4, align 4
  %53 = load i32, i32* %4, align 4
  %54 = call i64 @ACPI_FAILURE(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %37
  %57 = load %struct.aibs_softc*, %struct.aibs_softc** %3, align 8
  %58 = getelementptr inbounds %struct.aibs_softc, %struct.aibs_softc* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @device_printf(i32 %59, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %61 = load i32, i32* @ENXIO, align 4
  store i32 %61, i32* %2, align 4
  br label %165

62:                                               ; preds = %37
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 0
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %63, align 8
  store %struct.TYPE_12__* %64, %struct.TYPE_12__** %8, align 8
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = sext i32 %68 to i64
  %70 = mul i64 4, %69
  %71 = trunc i64 %70 to i32
  %72 = load i32, i32* @M_DEVBUF, align 4
  %73 = load i32, i32* @M_WAITOK, align 4
  %74 = load i32, i32* @M_ZERO, align 4
  %75 = or i32 %73, %74
  %76 = call %struct.aibs_sensor* @malloc(i32 %71, i32 %72, i32 %75)
  %77 = load %struct.aibs_softc*, %struct.aibs_softc** %3, align 8
  %78 = getelementptr inbounds %struct.aibs_softc, %struct.aibs_softc* %77, i32 0, i32 4
  store %struct.aibs_sensor* %76, %struct.aibs_sensor** %78, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %10, align 4
  br label %79

79:                                               ; preds = %158, %62
  %80 = load i32, i32* %10, align 4
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp slt i32 %80, %84
  br i1 %85, label %86, label %161

86:                                               ; preds = %79
  %87 = load %struct.aibs_softc*, %struct.aibs_softc** %3, align 8
  %88 = getelementptr inbounds %struct.aibs_softc, %struct.aibs_softc* %87, i32 0, i32 4
  %89 = load %struct.aibs_sensor*, %struct.aibs_sensor** %88, align 8
  %90 = load i32, i32* %10, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.aibs_sensor, %struct.aibs_sensor* %89, i64 %91
  store %struct.aibs_sensor* %92, %struct.aibs_sensor** %18, align 8
  %93 = load %struct.aibs_softc*, %struct.aibs_softc** %3, align 8
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %10, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load %struct.aibs_sensor*, %struct.aibs_sensor** %18, align 8
  %102 = call i32 @aibs_add_sensor(%struct.aibs_softc* %93, i32* %100, %struct.aibs_sensor* %101, i8** %17)
  store i32 %102, i32* %14, align 4
  %103 = load i32, i32* %14, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %86
  br label %158

106:                                              ; preds = %86
  %107 = load %struct.aibs_sensor*, %struct.aibs_sensor** %18, align 8
  %108 = getelementptr inbounds %struct.aibs_sensor, %struct.aibs_sensor* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  switch i32 %109, label %119 [
    i32 128, label %110
    i32 129, label %113
    i32 130, label %116
  ]

110:                                              ; preds = %106
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8** %16, align 8
  %111 = load %struct.aibs_softc*, %struct.aibs_softc** %3, align 8
  %112 = getelementptr inbounds %struct.aibs_softc, %struct.aibs_softc* %111, i32 0, i32 3
  store %struct.sysctl_oid** %112, %struct.sysctl_oid*** %19, align 8
  store i32* %12, i32** %15, align 8
  br label %124

113:                                              ; preds = %106
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8** %16, align 8
  %114 = load %struct.aibs_softc*, %struct.aibs_softc** %3, align 8
  %115 = getelementptr inbounds %struct.aibs_softc, %struct.aibs_softc* %114, i32 0, i32 2
  store %struct.sysctl_oid** %115, %struct.sysctl_oid*** %19, align 8
  store i32* %11, i32** %15, align 8
  br label %124

116:                                              ; preds = %106
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8** %16, align 8
  %117 = load %struct.aibs_softc*, %struct.aibs_softc** %3, align 8
  %118 = getelementptr inbounds %struct.aibs_softc, %struct.aibs_softc* %117, i32 0, i32 1
  store %struct.sysctl_oid** %118, %struct.sysctl_oid*** %19, align 8
  store i32* %13, i32** %15, align 8
  br label %124

119:                                              ; preds = %106
  %120 = load %struct.aibs_sensor*, %struct.aibs_sensor** %18, align 8
  %121 = getelementptr inbounds %struct.aibs_sensor, %struct.aibs_sensor* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @panic(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0), i32 %122)
  br label %124

124:                                              ; preds = %119, %116, %113, %110
  %125 = load %struct.sysctl_oid**, %struct.sysctl_oid*** %19, align 8
  %126 = load %struct.sysctl_oid*, %struct.sysctl_oid** %125, align 8
  %127 = icmp eq %struct.sysctl_oid* %126, null
  br i1 %127, label %128, label %145

128:                                              ; preds = %124
  %129 = load %struct.aibs_softc*, %struct.aibs_softc** %3, align 8
  %130 = getelementptr inbounds %struct.aibs_softc, %struct.aibs_softc* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @device_get_sysctl_ctx(i32 %131)
  %133 = load %struct.aibs_softc*, %struct.aibs_softc** %3, align 8
  %134 = getelementptr inbounds %struct.aibs_softc, %struct.aibs_softc* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @device_get_sysctl_tree(i32 %135)
  %137 = call i32 @SYSCTL_CHILDREN(i32 %136)
  %138 = load %struct.aibs_sensor*, %struct.aibs_sensor** %18, align 8
  %139 = getelementptr inbounds %struct.aibs_sensor, %struct.aibs_sensor* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load i8*, i8** %16, align 8
  %142 = load i32, i32* @CTLFLAG_RD, align 4
  %143 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(i32 %132, i32 %137, i32 %140, i8* %141, i32 %142, i32* null, i32* null)
  %144 = load %struct.sysctl_oid**, %struct.sysctl_oid*** %19, align 8
  store %struct.sysctl_oid* %143, %struct.sysctl_oid** %144, align 8
  br label %145

145:                                              ; preds = %128, %124
  %146 = load %struct.aibs_softc*, %struct.aibs_softc** %3, align 8
  %147 = load %struct.sysctl_oid**, %struct.sysctl_oid*** %19, align 8
  %148 = load %struct.sysctl_oid*, %struct.sysctl_oid** %147, align 8
  %149 = load i8*, i8** %16, align 8
  %150 = load i32*, i32** %15, align 8
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.aibs_sensor*, %struct.aibs_sensor** %18, align 8
  %153 = load i8*, i8** %17, align 8
  %154 = call i32 @aibs_sensor_added(%struct.aibs_softc* %146, %struct.sysctl_oid* %148, i8* %149, i32 %151, %struct.aibs_sensor* %152, i8* %153)
  %155 = load i32*, i32** %15, align 8
  %156 = load i32, i32* %155, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %155, align 4
  br label %158

158:                                              ; preds = %145, %105
  %159 = load i32, i32* %10, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %10, align 4
  br label %79

161:                                              ; preds = %79
  %162 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 0
  %163 = load %struct.TYPE_12__*, %struct.TYPE_12__** %162, align 8
  %164 = call i32 @AcpiOsFree(%struct.TYPE_12__* %163)
  store i32 0, i32* %2, align 4
  br label %165

165:                                              ; preds = %161, %56, %35
  %166 = load i32, i32* %2, align 4
  ret i32 %166
}

declare dso_local i32 @AcpiGetHandle(i32, i8*, i32*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @AcpiEvaluateObjectTyped(i32, i8*, %struct.TYPE_11__*, %struct.TYPE_13__*, i32) #1

declare dso_local %struct.aibs_sensor* @malloc(i32, i32, i32) #1

declare dso_local i32 @aibs_add_sensor(%struct.aibs_softc*, i32*, %struct.aibs_sensor*, i8**) #1

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local %struct.sysctl_oid* @SYSCTL_ADD_NODE(i32, i32, i32, i8*, i32, i32*, i32*) #1

declare dso_local i32 @device_get_sysctl_ctx(i32) #1

declare dso_local i32 @SYSCTL_CHILDREN(i32) #1

declare dso_local i32 @device_get_sysctl_tree(i32) #1

declare dso_local i32 @aibs_sensor_added(%struct.aibs_softc*, %struct.sysctl_oid*, i8*, i32, %struct.aibs_sensor*, i8*) #1

declare dso_local i32 @AcpiOsFree(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
