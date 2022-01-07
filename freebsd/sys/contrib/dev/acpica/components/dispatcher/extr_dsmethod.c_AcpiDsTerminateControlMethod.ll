; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/dispatcher/extr_dsmethod.c_AcpiDsTerminateControlMethod.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/dispatcher/extr_dsmethod.c_AcpiDsTerminateControlMethod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32, i32, i64, i32, i64, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64, i32, i32, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_22__*, %struct.TYPE_15__* }
%struct.TYPE_22__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_15__ = type { i32 }

@DsTerminateControlMethod = common dso_local global i32 0, align 4
@return_VOID = common dso_local global i32 0, align 4
@ACPI_METHOD_MODULE_LEVEL = common dso_local global i32 0, align 4
@ACPI_METHOD_MODIFIED_NAMESPACE = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Invalid zero thread count in method\00", align 1
@ACPI_DB_DISPATCH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"*** Completed execution of one thread, %u threads remaining\0A\00", align 1
@ACPI_METHOD_SERIALIZED_PENDING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [70 x i8] c"Marking method %4.4s as Serialized because of AE_ALREADY_EXISTS error\00", align 1
@ACPI_METHOD_SERIALIZED = common dso_local global i32 0, align 4
@ACPI_METHOD_IGNORE_SYNC_LEVEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AcpiDsTerminateControlMethod(%struct.TYPE_21__* %0, %struct.TYPE_20__* %1) #0 {
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %3, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %4, align 8
  %5 = load i32, i32* @DsTerminateControlMethod, align 4
  %6 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %7 = call i32 @ACPI_FUNCTION_TRACE_PTR(i32 %5, %struct.TYPE_20__* %6)
  %8 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %9 = icmp ne %struct.TYPE_21__* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @return_VOID, align 4
  br label %12

12:                                               ; preds = %10, %2
  %13 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %14 = icmp ne %struct.TYPE_20__* %13, null
  br i1 %14, label %15, label %112

15:                                               ; preds = %12
  %16 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %17 = call i32 @AcpiDsMethodDataDeleteAll(%struct.TYPE_20__* %16)
  %18 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @ACPI_METHOD_MODULE_LEVEL, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %61, label %25

25:                                               ; preds = %15
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %61

31:                                               ; preds = %25
  %32 = call i32 (...) @AcpiExExitInterpreter()
  %33 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_22__*, %struct.TYPE_22__** %34, align 8
  %36 = call i32 @AcpiNsDeleteNamespaceSubtree(%struct.TYPE_22__* %35)
  %37 = call i32 (...) @AcpiExEnterInterpreter()
  %38 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @ACPI_METHOD_MODIFIED_NAMESPACE, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %60

45:                                               ; preds = %31
  %46 = call i32 (...) @AcpiExExitInterpreter()
  %47 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @AcpiNsDeleteNamespaceByOwner(i32 %50)
  %52 = call i32 (...) @AcpiExEnterInterpreter()
  %53 = load i32, i32* @ACPI_METHOD_MODIFIED_NAMESPACE, align 4
  %54 = xor i32 %53, -1
  %55 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = and i32 %58, %54
  store i32 %59, i32* %57, align 8
  br label %60

60:                                               ; preds = %45, %31
  br label %61

61:                                               ; preds = %60, %25, %15
  %62 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %63, i32 0, i32 5
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %64, align 8
  %66 = icmp ne %struct.TYPE_17__* %65, null
  br i1 %66, label %67, label %111

67:                                               ; preds = %61
  %68 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %69, i32 0, i32 5
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = add nsw i32 %74, -1
  store i32 %75, i32* %73, align 8
  %76 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %77, i32 0, i32 5
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %110, label %84

84:                                               ; preds = %67
  %85 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %86, i32 0, i32 5
  %88 = load %struct.TYPE_17__*, %struct.TYPE_17__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 0
  store i32 %91, i32* %95, align 4
  %96 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %97, i32 0, i32 5
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @AcpiOsReleaseMutex(i32 %102)
  %104 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %105, i32 0, i32 5
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 0
  store i64 0, i64* %109, align 8
  br label %110

110:                                              ; preds = %84, %67
  br label %111

111:                                              ; preds = %110, %61
  br label %112

112:                                              ; preds = %111, %12
  %113 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %112
  %119 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = add nsw i32 %122, -1
  store i32 %123, i32* %121, align 4
  br label %127

124:                                              ; preds = %112
  %125 = load i32, i32* @AE_INFO, align 4
  %126 = call i32 @ACPI_ERROR(i32 ptrtoint ([36 x i8]* @.str to i32))
  br label %127

127:                                              ; preds = %124, %118
  %128 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %140

133:                                              ; preds = %127
  %134 = load i32, i32* @ACPI_DB_DISPATCH, align 4
  %135 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @ACPI_DEBUG_PRINT(i32 %138)
  br label %194

140:                                              ; preds = %127
  %141 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @ACPI_METHOD_SERIALIZED_PENDING, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %180

148:                                              ; preds = %140
  %149 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %150 = icmp ne %struct.TYPE_20__* %149, null
  br i1 %150, label %151, label %161

151:                                              ; preds = %148
  %152 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %152, i32 0, i32 0
  %154 = load %struct.TYPE_22__*, %struct.TYPE_22__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = sext i32 %157 to i64
  %159 = inttoptr i64 %158 to i8*
  %160 = call i32 @ACPI_INFO(i8* %159)
  br label %161

161:                                              ; preds = %151, %148
  %162 = load i32, i32* @ACPI_METHOD_SERIALIZED_PENDING, align 4
  %163 = xor i32 %162, -1
  %164 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = and i32 %167, %163
  store i32 %168, i32* %166, align 8
  %169 = load i32, i32* @ACPI_METHOD_SERIALIZED, align 4
  %170 = load i32, i32* @ACPI_METHOD_IGNORE_SYNC_LEVEL, align 4
  %171 = or i32 %169, %170
  %172 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = or i32 %175, %171
  store i32 %176, i32* %174, align 8
  %177 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %178 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %178, i32 0, i32 4
  store i64 0, i64* %179, align 8
  br label %180

180:                                              ; preds = %161, %140
  %181 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %182 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* @ACPI_METHOD_MODULE_LEVEL, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %193, label %188

188:                                              ; preds = %180
  %189 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %190 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %190, i32 0, i32 3
  %192 = call i32 @AcpiUtReleaseOwnerId(i32* %191)
  br label %193

193:                                              ; preds = %188, %180
  br label %194

194:                                              ; preds = %193, %133
  %195 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %196, i32 0, i32 2
  %198 = load i64, i64* %197, align 8
  %199 = inttoptr i64 %198 to i32*
  %200 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %201 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %202 = call i32 @AcpiExStopTraceMethod(i32* %199, %struct.TYPE_21__* %200, %struct.TYPE_20__* %201)
  %203 = load i32, i32* @return_VOID, align 4
  ret void
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_PTR(i32, %struct.TYPE_20__*) #1

declare dso_local i32 @AcpiDsMethodDataDeleteAll(%struct.TYPE_20__*) #1

declare dso_local i32 @AcpiExExitInterpreter(...) #1

declare dso_local i32 @AcpiNsDeleteNamespaceSubtree(%struct.TYPE_22__*) #1

declare dso_local i32 @AcpiExEnterInterpreter(...) #1

declare dso_local i32 @AcpiNsDeleteNamespaceByOwner(i32) #1

declare dso_local i32 @AcpiOsReleaseMutex(i32) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @ACPI_INFO(i8*) #1

declare dso_local i32 @AcpiUtReleaseOwnerId(i32*) #1

declare dso_local i32 @AcpiExStopTraceMethod(i32*, %struct.TYPE_21__*, %struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
