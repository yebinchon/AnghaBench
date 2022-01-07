; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/executer/extr_exstore.c_AcpiExStoreObjectToIndex.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/executer/extr_exstore.c_AcpiExStoreObjectToIndex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_16__, %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__ }
%struct.TYPE_16__ = type { i32, i64, %struct.TYPE_17__*, %struct.TYPE_17__**, i32 }
%struct.TYPE_15__ = type { i32* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32 }

@AE_OK = common dso_local global i32 0, align 4
@ExStoreObjectToIndex = common dso_local global i32 0, align 4
@ACPI_TYPE_LOCAL_REFERENCE = common dso_local global i32 0, align 4
@ACPI_REFCLASS_TABLE = common dso_local global i32 0, align 4
@AE_AML_OPERAND_TYPE = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"Source must be type [Integer/Buffer/String], found [%s]\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"Target is not of type [Package/BufferField]\00", align 1
@AE_AML_TARGET_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, %struct.TYPE_17__*, i32*)* @AcpiExStoreObjectToIndex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AcpiExStoreObjectToIndex(%struct.TYPE_17__* %0, %struct.TYPE_17__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load i32, i32* @AE_OK, align 4
  store i32 %13, i32* %8, align 4
  store i32 0, i32* %11, align 4
  %14 = load i32, i32* @ExStoreObjectToIndex, align 4
  %15 = call i32 @ACPI_FUNCTION_TRACE(i32 %14)
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %152 [
    i32 129, label %20
    i32 131, label %98
  ]

20:                                               ; preds = %3
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 3
  %24 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %23, align 8
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %24, align 8
  store %struct.TYPE_17__* %25, %struct.TYPE_17__** %9, align 8
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @ACPI_TYPE_LOCAL_REFERENCE, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %43

32:                                               ; preds = %20
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @ACPI_REFCLASS_TABLE, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %32
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %41 = call i32 @AcpiUtAddReference(%struct.TYPE_17__* %40)
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  store %struct.TYPE_17__* %42, %struct.TYPE_17__** %10, align 8
  br label %54

43:                                               ; preds = %32, %20
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %45 = load i32*, i32** %7, align 8
  %46 = call i32 @AcpiUtCopyIobjectToIobject(%struct.TYPE_17__* %44, %struct.TYPE_17__** %10, i32* %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @ACPI_FAILURE(i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %43
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @return_ACPI_STATUS(i32 %51)
  br label %53

53:                                               ; preds = %50, %43
  br label %54

54:                                               ; preds = %53, %39
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %56 = icmp ne %struct.TYPE_17__* %55, null
  br i1 %56, label %57, label %75

57:                                               ; preds = %54
  store i32 0, i32* %12, align 4
  br label %58

58:                                               ; preds = %71, %57
  %59 = load i32, i32* %12, align 4
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 2
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = icmp slt i32 %59, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %58
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %70 = call i32 @AcpiUtRemoveReference(%struct.TYPE_17__* %69)
  br label %71

71:                                               ; preds = %68
  %72 = load i32, i32* %12, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %12, align 4
  br label %58

74:                                               ; preds = %58
  br label %75

75:                                               ; preds = %74, %54
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 3
  %80 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %79, align 8
  store %struct.TYPE_17__* %76, %struct.TYPE_17__** %80, align 8
  store i32 1, i32* %12, align 4
  br label %81

81:                                               ; preds = %94, %75
  %82 = load i32, i32* %12, align 4
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 2
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 3
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = icmp slt i32 %82, %89
  br i1 %90, label %91, label %97

91:                                               ; preds = %81
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %93 = call i32 @AcpiUtAddReference(%struct.TYPE_17__* %92)
  br label %94

94:                                               ; preds = %91
  %95 = load i32, i32* %12, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %12, align 4
  br label %81

97:                                               ; preds = %81
  br label %156

98:                                               ; preds = %3
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 2
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %101, align 8
  store %struct.TYPE_17__* %102, %struct.TYPE_17__** %9, align 8
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i32 0, i32 3
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, 132
  br i1 %107, label %108, label %117

108:                                              ; preds = %98
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 3
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = icmp ne i32 %112, 128
  br i1 %113, label %114, label %117

114:                                              ; preds = %108
  %115 = load i32, i32* @AE_AML_OPERAND_TYPE, align 4
  %116 = call i32 @return_ACPI_STATUS(i32 %115)
  br label %117

117:                                              ; preds = %114, %108, %98
  %118 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %118, i32 0, i32 3
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  switch i32 %121, label %134 [
    i32 130, label %122
    i32 132, label %127
    i32 128, label %127
  ]

122:                                              ; preds = %117
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  store i32 %126, i32* %11, align 4
  br label %141

127:                                              ; preds = %117, %117
  %128 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 0
  %133 = load i32, i32* %132, align 4
  store i32 %133, i32* %11, align 4
  br label %141

134:                                              ; preds = %117
  %135 = load i32, i32* @AE_INFO, align 4
  %136 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %137 = call i32 @AcpiUtGetObjectTypeName(%struct.TYPE_17__* %136)
  %138 = call i32 @ACPI_ERROR(i32 %137)
  %139 = load i32, i32* @AE_AML_OPERAND_TYPE, align 4
  %140 = call i32 @return_ACPI_STATUS(i32 %139)
  br label %141

141:                                              ; preds = %134, %127, %122
  %142 = load i32, i32* %11, align 4
  %143 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %144 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %144, i32 0, i32 0
  %146 = load i32*, i32** %145, align 8
  %147 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = getelementptr inbounds i32, i32* %146, i64 %150
  store i32 %142, i32* %151, align 4
  br label %156

152:                                              ; preds = %3
  %153 = load i32, i32* @AE_INFO, align 4
  %154 = call i32 @ACPI_ERROR(i32 ptrtoint ([44 x i8]* @.str.1 to i32))
  %155 = load i32, i32* @AE_AML_TARGET_TYPE, align 4
  store i32 %155, i32* %8, align 4
  br label %156

156:                                              ; preds = %152, %141, %97
  %157 = load i32, i32* %8, align 4
  %158 = call i32 @return_ACPI_STATUS(i32 %157)
  %159 = load i32, i32* %4, align 4
  ret i32 %159
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @AcpiUtAddReference(%struct.TYPE_17__*) #1

declare dso_local i32 @AcpiUtCopyIobjectToIobject(%struct.TYPE_17__*, %struct.TYPE_17__**, i32*) #1

declare dso_local i32 @ACPI_FAILURE(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @AcpiUtRemoveReference(%struct.TYPE_17__*) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local i32 @AcpiUtGetObjectTypeName(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
