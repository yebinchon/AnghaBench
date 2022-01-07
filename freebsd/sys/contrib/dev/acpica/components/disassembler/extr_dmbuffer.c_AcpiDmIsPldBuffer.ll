; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/disassembler/extr_dmbuffer.c_AcpiDmIsPldBuffer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/disassembler/extr_dmbuffer.c_AcpiDmIsPldBuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i32, %struct.TYPE_11__*, %struct.TYPE_10__*, %struct.TYPE_7__, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i64, %struct.TYPE_10__* }

@AML_BYTE_OP = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@ACPI_PLD_REV1_BUFFER_SIZE = common dso_local global i64 0, align 8
@ACPI_PLD_REV2_BUFFER_SIZE = common dso_local global i64 0, align 8
@AML_NAME_OP = common dso_local global i64 0, align 8
@METHOD_NAME__PLD = common dso_local global i32 0, align 4
@ACPI_PARSEOP_IGNORE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@AML_PACKAGE_OP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AcpiDmIsPldBuffer(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 4
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  store %struct.TYPE_10__* %14, %struct.TYPE_10__** %5, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @AML_BYTE_OP, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* @FALSE, align 4
  store i32 %22, i32* %2, align 4
  br label %153

23:                                               ; preds = %1
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %8, align 8
  %29 = load i64, i64* %8, align 8
  %30 = load i64, i64* @ACPI_PLD_REV1_BUFFER_SIZE, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %23
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* @ACPI_PLD_REV2_BUFFER_SIZE, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load i32, i32* @FALSE, align 4
  store i32 %37, i32* %2, align 4
  br label %153

38:                                               ; preds = %32, %23
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 5
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %41, align 8
  store %struct.TYPE_10__* %42, %struct.TYPE_10__** %6, align 8
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %44 = icmp ne %struct.TYPE_10__* %43, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %38
  %46 = load i32, i32* @FALSE, align 4
  store i32 %46, i32* %2, align 4
  br label %153

47:                                               ; preds = %38
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 4
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %9, align 8
  %53 = load i64, i64* %9, align 8
  %54 = load i64, i64* @ACPI_PLD_REV1_BUFFER_SIZE, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %47
  %57 = load i64, i64* %9, align 8
  %58 = load i64, i64* @ACPI_PLD_REV2_BUFFER_SIZE, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = load i32, i32* @FALSE, align 4
  store i32 %61, i32* %2, align 4
  br label %153

62:                                               ; preds = %56, %47
  %63 = load i64, i64* %8, align 8
  %64 = load i64, i64* %9, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %62
  %67 = load i32, i32* @FALSE, align 4
  store i32 %67, i32* %2, align 4
  br label %153

68:                                               ; preds = %62
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 3
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %71, align 8
  store %struct.TYPE_10__* %72, %struct.TYPE_10__** %7, align 8
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %74 = icmp ne %struct.TYPE_10__* %73, null
  br i1 %74, label %77, label %75

75:                                               ; preds = %68
  %76 = load i32, i32* @FALSE, align 4
  store i32 %76, i32* %2, align 4
  br label %153

77:                                               ; preds = %68
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @AML_NAME_OP, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %106

84:                                               ; preds = %77
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 2
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %87, align 8
  store %struct.TYPE_11__* %88, %struct.TYPE_11__** %4, align 8
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @METHOD_NAME__PLD, align 4
  %94 = call i64 @ACPI_COMPARE_NAMESEG(i32 %92, i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %104

96:                                               ; preds = %84
  %97 = load i32, i32* @ACPI_PARSEOP_IGNORE, align 4
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = or i32 %101, %97
  store i32 %102, i32* %100, align 8
  %103 = load i32, i32* @TRUE, align 4
  store i32 %103, i32* %2, align 4
  br label %153

104:                                              ; preds = %84
  %105 = load i32, i32* @FALSE, align 4
  store i32 %105, i32* %2, align 4
  br label %153

106:                                              ; preds = %77
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @AML_PACKAGE_OP, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %151

113:                                              ; preds = %106
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 3
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %116, align 8
  store %struct.TYPE_10__* %117, %struct.TYPE_10__** %7, align 8
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %119 = icmp ne %struct.TYPE_10__* %118, null
  br i1 %119, label %122, label %120

120:                                              ; preds = %113
  %121 = load i32, i32* @FALSE, align 4
  store i32 %121, i32* %2, align 4
  br label %153

122:                                              ; preds = %113
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @AML_NAME_OP, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %150

129:                                              ; preds = %122
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 2
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %132, align 8
  store %struct.TYPE_11__* %133, %struct.TYPE_11__** %4, align 8
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @METHOD_NAME__PLD, align 4
  %139 = call i64 @ACPI_COMPARE_NAMESEG(i32 %137, i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %149

141:                                              ; preds = %129
  %142 = load i32, i32* @ACPI_PARSEOP_IGNORE, align 4
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = or i32 %146, %142
  store i32 %147, i32* %145, align 8
  %148 = load i32, i32* @TRUE, align 4
  store i32 %148, i32* %2, align 4
  br label %153

149:                                              ; preds = %129
  br label %150

150:                                              ; preds = %149, %122
  br label %151

151:                                              ; preds = %150, %106
  %152 = load i32, i32* @FALSE, align 4
  store i32 %152, i32* %2, align 4
  br label %153

153:                                              ; preds = %151, %141, %120, %104, %96, %75, %66, %60, %45, %36, %21
  %154 = load i32, i32* %2, align 4
  ret i32 %154
}

declare dso_local i64 @ACPI_COMPARE_NAMESEG(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
