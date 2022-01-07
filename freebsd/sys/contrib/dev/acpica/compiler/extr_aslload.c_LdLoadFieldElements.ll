; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslload.c_LdLoadFieldElements.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslload.c_LdLoadFieldElements.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, %struct.TYPE_17__*, %struct.TYPE_18__*, i32, %struct.TYPE_14__, i32 }
%struct.TYPE_18__ = type { i32, %struct.TYPE_17__*, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_16__ = type { i32 }

@ACPI_IMODE_EXECUTE = common dso_local global i32 0, align 4
@ACPI_NS_DONT_OPEN_SCOPE = common dso_local global i32 0, align 4
@AE_NOT_FOUND = common dso_local global i64 0, align 8
@OP_NOT_FOUND_DURING_LOAD = common dso_local global i32 0, align 4
@AE_BAD_PARAMETER = common dso_local global i64 0, align 8
@ACPI_TYPE_LOCAL_REGION_FIELD = common dso_local global i32 0, align 4
@ACPI_IMODE_LOAD_PASS1 = common dso_local global i32 0, align 4
@ACPI_NS_NO_UPSEARCH = common dso_local global i32 0, align 4
@ACPI_NS_ERROR_IF_FOUND = common dso_local global i32 0, align 4
@AE_ALREADY_EXISTS = common dso_local global i64 0, align 8
@ASL_ERROR = common dso_local global i32 0, align 4
@ASL_MSG_CORE_EXCEPTION = common dso_local global i32 0, align 4
@ANOBJ_IS_EXTERNAL = common dso_local global i32 0, align 4
@ASL_WARNING = common dso_local global i32 0, align 4
@ASL_MSG_NAME_EXISTS = common dso_local global i32 0, align 4
@ASL_MSG_FOUND_HERE = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, %struct.TYPE_17__*, %struct.TYPE_16__*)* @LdLoadFieldElements to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @LdLoadFieldElements(i32 %0, %struct.TYPE_17__* %1, %struct.TYPE_16__* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %6, align 8
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %7, align 8
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %8, align 8
  %12 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %13 = call %struct.TYPE_17__* @UtGetArg(%struct.TYPE_17__* %12, i32 0)
  store %struct.TYPE_17__* %13, %struct.TYPE_17__** %9, align 8
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %15 = icmp ne %struct.TYPE_17__* %14, null
  br i1 %15, label %16, label %40

16:                                               ; preds = %3
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @ACPI_IMODE_EXECUTE, align 4
  %27 = load i32, i32* @ACPI_NS_DONT_OPEN_SCOPE, align 4
  %28 = call i64 @AcpiNsLookup(i32 %19, i32 %24, i32 %25, i32 %26, i32 %27, i32* null, %struct.TYPE_18__** %10)
  store i64 %28, i64* %11, align 8
  %29 = load i64, i64* %11, align 8
  %30 = load i64, i64* @AE_NOT_FOUND, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %16
  %33 = load i32, i32* @OP_NOT_FOUND_DURING_LOAD, align 4
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 8
  %38 = or i32 %37, %33
  store i32 %38, i32* %36, align 8
  br label %39

39:                                               ; preds = %32, %16
  br label %40

40:                                               ; preds = %39, %3
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  switch i32 %44, label %54 [
    i32 133, label %45
    i32 131, label %48
    i32 132, label %51
  ]

45:                                               ; preds = %40
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %47 = call %struct.TYPE_17__* @UtGetArg(%struct.TYPE_17__* %46, i32 6)
  store %struct.TYPE_17__* %47, %struct.TYPE_17__** %8, align 8
  br label %56

48:                                               ; preds = %40
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %50 = call %struct.TYPE_17__* @UtGetArg(%struct.TYPE_17__* %49, i32 5)
  store %struct.TYPE_17__* %50, %struct.TYPE_17__** %8, align 8
  br label %56

51:                                               ; preds = %40
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %53 = call %struct.TYPE_17__* @UtGetArg(%struct.TYPE_17__* %52, i32 4)
  store %struct.TYPE_17__* %53, %struct.TYPE_17__** %8, align 8
  br label %56

54:                                               ; preds = %40
  %55 = load i64, i64* @AE_BAD_PARAMETER, align 8
  store i64 %55, i64* %4, align 8
  br label %160

56:                                               ; preds = %51, %48, %45
  br label %57

57:                                               ; preds = %153, %56
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %59 = icmp ne %struct.TYPE_17__* %58, null
  br i1 %59, label %60, label %158

60:                                               ; preds = %57
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  switch i32 %64, label %66 [
    i32 128, label %65
    i32 130, label %65
    i32 129, label %65
  ]

65:                                               ; preds = %60, %60, %60
  br label %153

66:                                               ; preds = %60
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 4
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @ACPI_TYPE_LOCAL_REGION_FIELD, align 4
  %76 = load i32, i32* @ACPI_IMODE_LOAD_PASS1, align 4
  %77 = load i32, i32* @ACPI_NS_NO_UPSEARCH, align 4
  %78 = load i32, i32* @ACPI_NS_DONT_OPEN_SCOPE, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @ACPI_NS_ERROR_IF_FOUND, align 4
  %81 = or i32 %79, %80
  %82 = call i64 @AcpiNsLookup(i32 %69, i32 %74, i32 %75, i32 %76, i32 %81, i32* null, %struct.TYPE_18__** %10)
  store i64 %82, i64* %11, align 8
  %83 = load i64, i64* %11, align 8
  %84 = call i32 @ACPI_FAILURE(i64 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %144

86:                                               ; preds = %66
  %87 = load i64, i64* %11, align 8
  %88 = load i64, i64* @AE_ALREADY_EXISTS, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %101

90:                                               ; preds = %86
  %91 = load i32, i32* @ASL_ERROR, align 4
  %92 = load i32, i32* @ASL_MSG_CORE_EXCEPTION, align 4
  %93 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 4
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @AslError(i32 %91, i32 %92, %struct.TYPE_17__* %93, i32 %98)
  %100 = load i64, i64* %11, align 8
  store i64 %100, i64* %4, align 8
  br label %160

101:                                              ; preds = %86
  %102 = load i64, i64* %11, align 8
  %103 = load i64, i64* @AE_ALREADY_EXISTS, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %122

105:                                              ; preds = %101
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @ANOBJ_IS_EXTERNAL, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %122

112:                                              ; preds = %105
  %113 = load i32, i32* @ACPI_TYPE_LOCAL_REGION_FIELD, align 4
  %114 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %115 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %114, i32 0, i32 2
  store i32 %113, i32* %115, align 8
  %116 = load i32, i32* @ANOBJ_IS_EXTERNAL, align 4
  %117 = xor i32 %116, -1
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = and i32 %120, %117
  store i32 %121, i32* %119, align 8
  br label %142

122:                                              ; preds = %105, %101
  %123 = load i32, i32* @ASL_WARNING, align 4
  %124 = load i32, i32* @ASL_MSG_NAME_EXISTS, align 4
  %125 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 4
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @ASL_MSG_FOUND_HERE, align 4
  %132 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %133 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %132, i32 0, i32 1
  %134 = load %struct.TYPE_17__*, %struct.TYPE_17__** %133, align 8
  %135 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %136 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %135, i32 0, i32 1
  %137 = load %struct.TYPE_17__*, %struct.TYPE_17__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @AslDualParseOpError(i32 %123, i32 %124, %struct.TYPE_17__* %125, i32 %130, i32 %131, %struct.TYPE_17__* %134, i32 %140)
  br label %142

142:                                              ; preds = %122, %112
  br label %143

143:                                              ; preds = %142
  br label %152

144:                                              ; preds = %66
  %145 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %146 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %147 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %147, i32 0, i32 2
  store %struct.TYPE_18__* %145, %struct.TYPE_18__** %148, align 8
  %149 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %150 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %151 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %150, i32 0, i32 1
  store %struct.TYPE_17__* %149, %struct.TYPE_17__** %151, align 8
  br label %152

152:                                              ; preds = %144, %143
  br label %153

153:                                              ; preds = %152, %65
  %154 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %155, i32 0, i32 1
  %157 = load %struct.TYPE_17__*, %struct.TYPE_17__** %156, align 8
  store %struct.TYPE_17__* %157, %struct.TYPE_17__** %8, align 8
  br label %57

158:                                              ; preds = %57
  %159 = load i64, i64* @AE_OK, align 8
  store i64 %159, i64* %4, align 8
  br label %160

160:                                              ; preds = %158, %90, %54
  %161 = load i64, i64* %4, align 8
  ret i64 %161
}

declare dso_local %struct.TYPE_17__* @UtGetArg(%struct.TYPE_17__*, i32) #1

declare dso_local i64 @AcpiNsLookup(i32, i32, i32, i32, i32, i32*, %struct.TYPE_18__**) #1

declare dso_local i32 @ACPI_FAILURE(i64) #1

declare dso_local i32 @AslError(i32, i32, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @AslDualParseOpError(i32, i32, %struct.TYPE_17__*, i32, i32, %struct.TYPE_17__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
