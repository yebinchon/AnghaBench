; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpi_support/extr_acpi_fujitsu.c_acpi_fujitsu_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpi_support/extr_acpi_fujitsu.c_acpi_fujitsu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32* }
%struct.acpi_fujitsu_softc = type { i32, i32, i32, %struct.TYPE_20__, %struct.TYPE_19__, %struct.TYPE_18__, %struct.TYPE_17__, %struct.TYPE_16__, %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_20__ = type { i8*, i32 }
%struct.TYPE_19__ = type { i8*, i32 }
%struct.TYPE_18__ = type { i8*, i32 }
%struct.TYPE_17__ = type { i8*, i32 }
%struct.TYPE_16__ = type { i8*, i32 }
%struct.TYPE_15__ = type { i8*, i32 }
%struct.TYPE_14__ = type { i8* }
%struct.TYPE_13__ = type { i8* }
%struct.TYPE_12__ = type { i8* }
%struct.acpi_softc = type { i32 }

@fujitsu = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"_STA\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"GBLL\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"GBLS\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"GHKS\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"GMOU\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"GSIF\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"GVOL\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"RBLL\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"RVOL\00", align 1
@OID_AUTO = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [8 x i8] c"fujitsu\00", align 1
@CTLFLAG_RD = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@sysctl_table = common dso_local global %struct.TYPE_11__* null, align 8
@CTLTYPE_INT = common dso_local global i32 0, align 4
@CTLFLAG_RW = common dso_local global i32 0, align 4
@CTLFLAG_ANYBODY = common dso_local global i32 0, align 4
@acpi_fujitsu_sysctl = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"Couldn't init hotkey states\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_fujitsu_softc*)* @acpi_fujitsu_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_fujitsu_init(%struct.acpi_fujitsu_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_fujitsu_softc*, align 8
  %4 = alloca %struct.acpi_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.acpi_fujitsu_softc* %0, %struct.acpi_fujitsu_softc** %3, align 8
  %7 = load i32, i32* @fujitsu, align 4
  %8 = call i32 @ACPI_SERIAL_ASSERT(i32 %7)
  %9 = load %struct.acpi_fujitsu_softc*, %struct.acpi_fujitsu_softc** %3, align 8
  %10 = getelementptr inbounds %struct.acpi_fujitsu_softc, %struct.acpi_fujitsu_softc* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  %12 = load %struct.acpi_fujitsu_softc*, %struct.acpi_fujitsu_softc** %3, align 8
  %13 = getelementptr inbounds %struct.acpi_fujitsu_softc, %struct.acpi_fujitsu_softc* %12, i32 0, i32 7
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %14, align 8
  %15 = load %struct.acpi_fujitsu_softc*, %struct.acpi_fujitsu_softc** %3, align 8
  %16 = getelementptr inbounds %struct.acpi_fujitsu_softc, %struct.acpi_fujitsu_softc* %15, i32 0, i32 6
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %17, align 8
  %18 = load %struct.acpi_fujitsu_softc*, %struct.acpi_fujitsu_softc** %3, align 8
  %19 = getelementptr inbounds %struct.acpi_fujitsu_softc, %struct.acpi_fujitsu_softc* %18, i32 0, i32 10
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %20, align 8
  %21 = load %struct.acpi_fujitsu_softc*, %struct.acpi_fujitsu_softc** %3, align 8
  %22 = getelementptr inbounds %struct.acpi_fujitsu_softc, %struct.acpi_fujitsu_softc* %21, i32 0, i32 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8** %23, align 8
  %24 = load %struct.acpi_fujitsu_softc*, %struct.acpi_fujitsu_softc** %3, align 8
  %25 = getelementptr inbounds %struct.acpi_fujitsu_softc, %struct.acpi_fujitsu_softc* %24, i32 0, i32 9
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8** %26, align 8
  %27 = load %struct.acpi_fujitsu_softc*, %struct.acpi_fujitsu_softc** %3, align 8
  %28 = getelementptr inbounds %struct.acpi_fujitsu_softc, %struct.acpi_fujitsu_softc* %27, i32 0, i32 5
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8** %29, align 8
  %30 = load %struct.acpi_fujitsu_softc*, %struct.acpi_fujitsu_softc** %3, align 8
  %31 = getelementptr inbounds %struct.acpi_fujitsu_softc, %struct.acpi_fujitsu_softc* %30, i32 0, i32 10
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %32, align 8
  %33 = load %struct.acpi_fujitsu_softc*, %struct.acpi_fujitsu_softc** %3, align 8
  %34 = getelementptr inbounds %struct.acpi_fujitsu_softc, %struct.acpi_fujitsu_softc* %33, i32 0, i32 9
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8** %35, align 8
  %36 = load %struct.acpi_fujitsu_softc*, %struct.acpi_fujitsu_softc** %3, align 8
  %37 = getelementptr inbounds %struct.acpi_fujitsu_softc, %struct.acpi_fujitsu_softc* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %37, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8** %38, align 8
  %39 = load %struct.acpi_fujitsu_softc*, %struct.acpi_fujitsu_softc** %3, align 8
  %40 = getelementptr inbounds %struct.acpi_fujitsu_softc, %struct.acpi_fujitsu_softc* %39, i32 0, i32 4
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %40, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8** %41, align 8
  %42 = load %struct.acpi_fujitsu_softc*, %struct.acpi_fujitsu_softc** %3, align 8
  %43 = call i32 @acpi_fujitsu_check_hardware(%struct.acpi_fujitsu_softc* %42)
  %44 = load %struct.acpi_fujitsu_softc*, %struct.acpi_fujitsu_softc** %3, align 8
  %45 = getelementptr inbounds %struct.acpi_fujitsu_softc, %struct.acpi_fujitsu_softc* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call %struct.acpi_softc* @acpi_device_get_parent_softc(i32 %46)
  store %struct.acpi_softc* %47, %struct.acpi_softc** %4, align 8
  %48 = load %struct.acpi_fujitsu_softc*, %struct.acpi_fujitsu_softc** %3, align 8
  %49 = getelementptr inbounds %struct.acpi_fujitsu_softc, %struct.acpi_fujitsu_softc* %48, i32 0, i32 2
  %50 = call i32 @sysctl_ctx_init(i32* %49)
  %51 = load %struct.acpi_fujitsu_softc*, %struct.acpi_fujitsu_softc** %3, align 8
  %52 = getelementptr inbounds %struct.acpi_fujitsu_softc, %struct.acpi_fujitsu_softc* %51, i32 0, i32 2
  %53 = load %struct.acpi_softc*, %struct.acpi_softc** %4, align 8
  %54 = getelementptr inbounds %struct.acpi_softc, %struct.acpi_softc* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @SYSCTL_CHILDREN(i32 %55)
  %57 = load i32, i32* @OID_AUTO, align 4
  %58 = load i32, i32* @CTLFLAG_RD, align 4
  %59 = call i32 @SYSCTL_ADD_NODE(i32* %52, i32 %56, i32 %57, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 %58, i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0))
  %60 = load %struct.acpi_fujitsu_softc*, %struct.acpi_fujitsu_softc** %3, align 8
  %61 = getelementptr inbounds %struct.acpi_fujitsu_softc, %struct.acpi_fujitsu_softc* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  store i32 0, i32* %5, align 4
  br label %62

62:                                               ; preds = %141, %1
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** @sysctl_table, align 8
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %144

70:                                               ; preds = %62
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** @sysctl_table, align 8
  %72 = load i32, i32* %5, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  switch i32 %76, label %107 [
    i32 132, label %77
    i32 134, label %82
    i32 133, label %87
    i32 131, label %92
    i32 130, label %92
    i32 128, label %97
    i32 129, label %102
  ]

77:                                               ; preds = %70
  %78 = load %struct.acpi_fujitsu_softc*, %struct.acpi_fujitsu_softc** %3, align 8
  %79 = getelementptr inbounds %struct.acpi_fujitsu_softc, %struct.acpi_fujitsu_softc* %78, i32 0, i32 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  store i32 %81, i32* %6, align 4
  br label %108

82:                                               ; preds = %70
  %83 = load %struct.acpi_fujitsu_softc*, %struct.acpi_fujitsu_softc** %3, align 8
  %84 = getelementptr inbounds %struct.acpi_fujitsu_softc, %struct.acpi_fujitsu_softc* %83, i32 0, i32 7
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  store i32 %86, i32* %6, align 4
  br label %108

87:                                               ; preds = %70
  %88 = load %struct.acpi_fujitsu_softc*, %struct.acpi_fujitsu_softc** %3, align 8
  %89 = getelementptr inbounds %struct.acpi_fujitsu_softc, %struct.acpi_fujitsu_softc* %88, i32 0, i32 6
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  store i32 %91, i32* %6, align 4
  br label %108

92:                                               ; preds = %70, %70
  %93 = load %struct.acpi_fujitsu_softc*, %struct.acpi_fujitsu_softc** %3, align 8
  %94 = getelementptr inbounds %struct.acpi_fujitsu_softc, %struct.acpi_fujitsu_softc* %93, i32 0, i32 5
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  store i32 %96, i32* %6, align 4
  br label %108

97:                                               ; preds = %70
  %98 = load %struct.acpi_fujitsu_softc*, %struct.acpi_fujitsu_softc** %3, align 8
  %99 = getelementptr inbounds %struct.acpi_fujitsu_softc, %struct.acpi_fujitsu_softc* %98, i32 0, i32 4
  %100 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  store i32 %101, i32* %6, align 4
  br label %108

102:                                              ; preds = %70
  %103 = load %struct.acpi_fujitsu_softc*, %struct.acpi_fujitsu_softc** %3, align 8
  %104 = getelementptr inbounds %struct.acpi_fujitsu_softc, %struct.acpi_fujitsu_softc* %103, i32 0, i32 3
  %105 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  store i32 %106, i32* %6, align 4
  br label %108

107:                                              ; preds = %70
  store i32 1, i32* %6, align 4
  br label %108

108:                                              ; preds = %107, %102, %97, %92, %87, %82, %77
  %109 = load i32, i32* %6, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %108
  br label %141

112:                                              ; preds = %108
  %113 = load %struct.acpi_fujitsu_softc*, %struct.acpi_fujitsu_softc** %3, align 8
  %114 = getelementptr inbounds %struct.acpi_fujitsu_softc, %struct.acpi_fujitsu_softc* %113, i32 0, i32 2
  %115 = load %struct.acpi_fujitsu_softc*, %struct.acpi_fujitsu_softc** %3, align 8
  %116 = getelementptr inbounds %struct.acpi_fujitsu_softc, %struct.acpi_fujitsu_softc* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @SYSCTL_CHILDREN(i32 %117)
  %119 = load i32, i32* @OID_AUTO, align 4
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** @sysctl_table, align 8
  %121 = load i32, i32* %5, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 2
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* @CTLTYPE_INT, align 4
  %127 = load i32, i32* @CTLFLAG_RW, align 4
  %128 = or i32 %126, %127
  %129 = load i32, i32* @CTLFLAG_ANYBODY, align 4
  %130 = or i32 %128, %129
  %131 = load %struct.acpi_fujitsu_softc*, %struct.acpi_fujitsu_softc** %3, align 8
  %132 = load i32, i32* %5, align 4
  %133 = load i32, i32* @acpi_fujitsu_sysctl, align 4
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** @sysctl_table, align 8
  %135 = load i32, i32* %5, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @SYSCTL_ADD_PROC(i32* %114, i32 %118, i32 %119, i32* %125, i32 %130, %struct.acpi_fujitsu_softc* %131, i32 %132, i32 %133, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), i32 %139)
  br label %141

141:                                              ; preds = %112, %111
  %142 = load i32, i32* %5, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %5, align 4
  br label %62

144:                                              ; preds = %62
  %145 = load %struct.acpi_fujitsu_softc*, %struct.acpi_fujitsu_softc** %3, align 8
  %146 = call i32 @acpi_fujitsu_update(%struct.acpi_fujitsu_softc* %145)
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %154, label %148

148:                                              ; preds = %144
  %149 = load %struct.acpi_fujitsu_softc*, %struct.acpi_fujitsu_softc** %3, align 8
  %150 = getelementptr inbounds %struct.acpi_fujitsu_softc, %struct.acpi_fujitsu_softc* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @device_printf(i32 %151, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0))
  %153 = load i32, i32* @FALSE, align 4
  store i32 %153, i32* %2, align 4
  br label %156

154:                                              ; preds = %144
  %155 = load i32, i32* @TRUE, align 4
  store i32 %155, i32* %2, align 4
  br label %156

156:                                              ; preds = %154, %148
  %157 = load i32, i32* %2, align 4
  ret i32 %157
}

declare dso_local i32 @ACPI_SERIAL_ASSERT(i32) #1

declare dso_local i32 @acpi_fujitsu_check_hardware(%struct.acpi_fujitsu_softc*) #1

declare dso_local %struct.acpi_softc* @acpi_device_get_parent_softc(i32) #1

declare dso_local i32 @sysctl_ctx_init(i32*) #1

declare dso_local i32 @SYSCTL_ADD_NODE(i32*, i32, i32, i8*, i32, i32, i8*) #1

declare dso_local i32 @SYSCTL_CHILDREN(i32) #1

declare dso_local i32 @SYSCTL_ADD_PROC(i32*, i32, i32, i32*, i32, %struct.acpi_fujitsu_softc*, i32, i32, i8*, i32) #1

declare dso_local i32 @acpi_fujitsu_update(%struct.acpi_fujitsu_softc*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
