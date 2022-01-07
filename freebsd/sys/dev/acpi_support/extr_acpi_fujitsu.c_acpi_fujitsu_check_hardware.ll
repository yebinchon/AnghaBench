; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpi_support/extr_acpi_fujitsu.c_acpi_fujitsu_check_hardware.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpi_support/extr_acpi_fujitsu.c_acpi_fujitsu_check_hardware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_fujitsu_softc = type { %struct.TYPE_16__, i32, %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__, i32 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32 }

@fujitsu = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Couldn't query bitmask value\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_fujitsu_softc*)* @acpi_fujitsu_check_hardware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_fujitsu_check_hardware(%struct.acpi_fujitsu_softc* %0) #0 {
  %2 = alloca %struct.acpi_fujitsu_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.acpi_fujitsu_softc* %0, %struct.acpi_fujitsu_softc** %2, align 8
  %4 = load i32, i32* @fujitsu, align 4
  %5 = call i32 @ACPI_SERIAL_ASSERT(i32 %4)
  %6 = load %struct.acpi_fujitsu_softc*, %struct.acpi_fujitsu_softc** %2, align 8
  %7 = getelementptr inbounds %struct.acpi_fujitsu_softc, %struct.acpi_fujitsu_softc* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.acpi_fujitsu_softc*, %struct.acpi_fujitsu_softc** %2, align 8
  %10 = getelementptr inbounds %struct.acpi_fujitsu_softc, %struct.acpi_fujitsu_softc* %9, i32 0, i32 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.acpi_fujitsu_softc*, %struct.acpi_fujitsu_softc** %2, align 8
  %14 = getelementptr inbounds %struct.acpi_fujitsu_softc, %struct.acpi_fujitsu_softc* %13, i32 0, i32 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = call i32 @acpi_GetInteger(i32 %8, i32 %12, i32* %15)
  %17 = call i64 @ACPI_FAILURE(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %1
  %20 = load %struct.acpi_fujitsu_softc*, %struct.acpi_fujitsu_softc** %2, align 8
  %21 = getelementptr inbounds %struct.acpi_fujitsu_softc, %struct.acpi_fujitsu_softc* %20, i32 0, i32 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 1
  store i32 0, i32* %22, align 4
  %23 = load %struct.acpi_fujitsu_softc*, %struct.acpi_fujitsu_softc** %2, align 8
  %24 = getelementptr inbounds %struct.acpi_fujitsu_softc, %struct.acpi_fujitsu_softc* %23, i32 0, i32 9
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @device_printf(i32 %25, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %31

27:                                               ; preds = %1
  %28 = load %struct.acpi_fujitsu_softc*, %struct.acpi_fujitsu_softc** %2, align 8
  %29 = getelementptr inbounds %struct.acpi_fujitsu_softc, %struct.acpi_fujitsu_softc* %28, i32 0, i32 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 1
  store i32 1, i32* %30, align 4
  br label %31

31:                                               ; preds = %27, %19
  %32 = load %struct.acpi_fujitsu_softc*, %struct.acpi_fujitsu_softc** %2, align 8
  %33 = getelementptr inbounds %struct.acpi_fujitsu_softc, %struct.acpi_fujitsu_softc* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.acpi_fujitsu_softc*, %struct.acpi_fujitsu_softc** %2, align 8
  %36 = getelementptr inbounds %struct.acpi_fujitsu_softc, %struct.acpi_fujitsu_softc* %35, i32 0, i32 7
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @acpi_GetInteger(i32 %34, i32 %38, i32* %3)
  %40 = call i64 @ACPI_FAILURE(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %31
  %43 = load %struct.acpi_fujitsu_softc*, %struct.acpi_fujitsu_softc** %2, align 8
  %44 = getelementptr inbounds %struct.acpi_fujitsu_softc, %struct.acpi_fujitsu_softc* %43, i32 0, i32 7
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  store i32 0, i32* %45, align 4
  br label %50

46:                                               ; preds = %31
  %47 = load %struct.acpi_fujitsu_softc*, %struct.acpi_fujitsu_softc** %2, align 8
  %48 = getelementptr inbounds %struct.acpi_fujitsu_softc, %struct.acpi_fujitsu_softc* %47, i32 0, i32 7
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  store i32 1, i32* %49, align 4
  br label %50

50:                                               ; preds = %46, %42
  %51 = load %struct.acpi_fujitsu_softc*, %struct.acpi_fujitsu_softc** %2, align 8
  %52 = getelementptr inbounds %struct.acpi_fujitsu_softc, %struct.acpi_fujitsu_softc* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.acpi_fujitsu_softc*, %struct.acpi_fujitsu_softc** %2, align 8
  %55 = getelementptr inbounds %struct.acpi_fujitsu_softc, %struct.acpi_fujitsu_softc* %54, i32 0, i32 6
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @acpi_GetInteger(i32 %53, i32 %57, i32* %3)
  %59 = call i64 @ACPI_FAILURE(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %50
  %62 = load %struct.acpi_fujitsu_softc*, %struct.acpi_fujitsu_softc** %2, align 8
  %63 = getelementptr inbounds %struct.acpi_fujitsu_softc, %struct.acpi_fujitsu_softc* %62, i32 0, i32 6
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  store i32 0, i32* %64, align 4
  br label %69

65:                                               ; preds = %50
  %66 = load %struct.acpi_fujitsu_softc*, %struct.acpi_fujitsu_softc** %2, align 8
  %67 = getelementptr inbounds %struct.acpi_fujitsu_softc, %struct.acpi_fujitsu_softc* %66, i32 0, i32 6
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  store i32 1, i32* %68, align 4
  br label %69

69:                                               ; preds = %65, %61
  %70 = load %struct.acpi_fujitsu_softc*, %struct.acpi_fujitsu_softc** %2, align 8
  %71 = getelementptr inbounds %struct.acpi_fujitsu_softc, %struct.acpi_fujitsu_softc* %70, i32 0, i32 6
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %86, label %75

75:                                               ; preds = %69
  %76 = load %struct.acpi_fujitsu_softc*, %struct.acpi_fujitsu_softc** %2, align 8
  %77 = getelementptr inbounds %struct.acpi_fujitsu_softc, %struct.acpi_fujitsu_softc* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.acpi_fujitsu_softc*, %struct.acpi_fujitsu_softc** %2, align 8
  %80 = getelementptr inbounds %struct.acpi_fujitsu_softc, %struct.acpi_fujitsu_softc* %79, i32 0, i32 5
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @acpi_GetInteger(i32 %78, i32 %82, i32* %3)
  %84 = call i64 @ACPI_FAILURE(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %75, %69
  %87 = load %struct.acpi_fujitsu_softc*, %struct.acpi_fujitsu_softc** %2, align 8
  %88 = getelementptr inbounds %struct.acpi_fujitsu_softc, %struct.acpi_fujitsu_softc* %87, i32 0, i32 5
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 0
  store i32 0, i32* %89, align 4
  br label %94

90:                                               ; preds = %75
  %91 = load %struct.acpi_fujitsu_softc*, %struct.acpi_fujitsu_softc** %2, align 8
  %92 = getelementptr inbounds %struct.acpi_fujitsu_softc, %struct.acpi_fujitsu_softc* %91, i32 0, i32 5
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 0
  store i32 1, i32* %93, align 4
  br label %94

94:                                               ; preds = %90, %86
  %95 = load %struct.acpi_fujitsu_softc*, %struct.acpi_fujitsu_softc** %2, align 8
  %96 = getelementptr inbounds %struct.acpi_fujitsu_softc, %struct.acpi_fujitsu_softc* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.acpi_fujitsu_softc*, %struct.acpi_fujitsu_softc** %2, align 8
  %99 = getelementptr inbounds %struct.acpi_fujitsu_softc, %struct.acpi_fujitsu_softc* %98, i32 0, i32 4
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @acpi_GetInteger(i32 %97, i32 %101, i32* %3)
  %103 = call i64 @ACPI_FAILURE(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %94
  %106 = load %struct.acpi_fujitsu_softc*, %struct.acpi_fujitsu_softc** %2, align 8
  %107 = getelementptr inbounds %struct.acpi_fujitsu_softc, %struct.acpi_fujitsu_softc* %106, i32 0, i32 4
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 0
  store i32 0, i32* %108, align 4
  br label %113

109:                                              ; preds = %94
  %110 = load %struct.acpi_fujitsu_softc*, %struct.acpi_fujitsu_softc** %2, align 8
  %111 = getelementptr inbounds %struct.acpi_fujitsu_softc, %struct.acpi_fujitsu_softc* %110, i32 0, i32 4
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 0
  store i32 1, i32* %112, align 4
  br label %113

113:                                              ; preds = %109, %105
  %114 = load %struct.acpi_fujitsu_softc*, %struct.acpi_fujitsu_softc** %2, align 8
  %115 = getelementptr inbounds %struct.acpi_fujitsu_softc, %struct.acpi_fujitsu_softc* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.acpi_fujitsu_softc*, %struct.acpi_fujitsu_softc** %2, align 8
  %118 = getelementptr inbounds %struct.acpi_fujitsu_softc, %struct.acpi_fujitsu_softc* %117, i32 0, i32 3
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @acpi_GetInteger(i32 %116, i32 %120, i32* %3)
  %122 = call i64 @ACPI_FAILURE(i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %113
  %125 = load %struct.acpi_fujitsu_softc*, %struct.acpi_fujitsu_softc** %2, align 8
  %126 = getelementptr inbounds %struct.acpi_fujitsu_softc, %struct.acpi_fujitsu_softc* %125, i32 0, i32 3
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 0
  store i32 0, i32* %127, align 4
  br label %132

128:                                              ; preds = %113
  %129 = load %struct.acpi_fujitsu_softc*, %struct.acpi_fujitsu_softc** %2, align 8
  %130 = getelementptr inbounds %struct.acpi_fujitsu_softc, %struct.acpi_fujitsu_softc* %129, i32 0, i32 3
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 0
  store i32 1, i32* %131, align 4
  br label %132

132:                                              ; preds = %128, %124
  %133 = load %struct.acpi_fujitsu_softc*, %struct.acpi_fujitsu_softc** %2, align 8
  %134 = getelementptr inbounds %struct.acpi_fujitsu_softc, %struct.acpi_fujitsu_softc* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.acpi_fujitsu_softc*, %struct.acpi_fujitsu_softc** %2, align 8
  %137 = getelementptr inbounds %struct.acpi_fujitsu_softc, %struct.acpi_fujitsu_softc* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @acpi_GetInteger(i32 %135, i32 %139, i32* %3)
  %141 = call i64 @ACPI_FAILURE(i32 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %132
  %144 = load %struct.acpi_fujitsu_softc*, %struct.acpi_fujitsu_softc** %2, align 8
  %145 = getelementptr inbounds %struct.acpi_fujitsu_softc, %struct.acpi_fujitsu_softc* %144, i32 0, i32 2
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %145, i32 0, i32 0
  store i32 0, i32* %146, align 4
  br label %151

147:                                              ; preds = %132
  %148 = load %struct.acpi_fujitsu_softc*, %struct.acpi_fujitsu_softc** %2, align 8
  %149 = getelementptr inbounds %struct.acpi_fujitsu_softc, %struct.acpi_fujitsu_softc* %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %149, i32 0, i32 0
  store i32 1, i32* %150, align 4
  br label %151

151:                                              ; preds = %147, %143
  %152 = load %struct.acpi_fujitsu_softc*, %struct.acpi_fujitsu_softc** %2, align 8
  %153 = getelementptr inbounds %struct.acpi_fujitsu_softc, %struct.acpi_fujitsu_softc* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.acpi_fujitsu_softc*, %struct.acpi_fujitsu_softc** %2, align 8
  %156 = getelementptr inbounds %struct.acpi_fujitsu_softc, %struct.acpi_fujitsu_softc* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @acpi_GetInteger(i32 %154, i32 %158, i32* %3)
  %160 = call i64 @ACPI_FAILURE(i32 %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %151
  %163 = load %struct.acpi_fujitsu_softc*, %struct.acpi_fujitsu_softc** %2, align 8
  %164 = getelementptr inbounds %struct.acpi_fujitsu_softc, %struct.acpi_fujitsu_softc* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %164, i32 0, i32 0
  store i32 0, i32* %165, align 4
  br label %170

166:                                              ; preds = %151
  %167 = load %struct.acpi_fujitsu_softc*, %struct.acpi_fujitsu_softc** %2, align 8
  %168 = getelementptr inbounds %struct.acpi_fujitsu_softc, %struct.acpi_fujitsu_softc* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %168, i32 0, i32 0
  store i32 1, i32* %169, align 4
  br label %170

170:                                              ; preds = %166, %162
  %171 = load i32, i32* @TRUE, align 4
  ret i32 %171
}

declare dso_local i32 @ACPI_SERIAL_ASSERT(i32) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @acpi_GetInteger(i32, i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
