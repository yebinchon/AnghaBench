; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslload.c_LdNamespace2Begin.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslload.c_LdNamespace2Begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64, i32, i8*, i32, %struct.TYPE_16__*, i32, %struct.TYPE_17__*, i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_15__ = type { i32 }

@FALSE = common dso_local global i64 0, align 8
@ACPI_DB_DISPATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"Op %p [%s]\0A\00", align 1
@AE_OK = common dso_local global i64 0, align 8
@PARSEOP_DEFAULT_ARG = common dso_local global i64 0, align 8
@OP_IS_RESOURCE_DESC = common dso_local global i32 0, align 4
@ACPI_TYPE_LOCAL_RESOURCE = common dso_local global i32 0, align 4
@PARSEOP_NAME = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@PARSEOP_ALIAS = common dso_local global i64 0, align 8
@ACPI_TYPE_ANY = common dso_local global i32 0, align 4
@ACPI_IMODE_EXECUTE = common dso_local global i32 0, align 4
@ACPI_NS_SEARCH_PARENT = common dso_local global i32 0, align 4
@ACPI_NS_DONT_OPEN_SCOPE = common dso_local global i32 0, align 4
@AE_NOT_FOUND = common dso_local global i64 0, align 8
@ACPI_NAMESEG_SIZE = common dso_local global i64 0, align 8
@ASL_ERROR = common dso_local global i32 0, align 4
@ASL_MSG_NOT_FOUND = common dso_local global i32 0, align 4
@ASL_MSG_NAMEPATH_NOT_EXIST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Failure from namespace lookup\00", align 1
@ACPI_OPERAND_OBJECT = common dso_local global i32 0, align 4
@ACPI_IMODE_LOAD_PASS1 = common dso_local global i32 0, align 4
@ACPI_NS_NO_UPSEARCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_16__*, i32, i8*)* @LdNamespace2Begin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @LdNamespace2Begin(%struct.TYPE_16__* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_16__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %17, %struct.TYPE_15__** %8, align 8
  %18 = load i64, i64* @FALSE, align 8
  store i64 %18, i64* %12, align 8
  %19 = call i32 @ACPI_FUNCTION_NAME(i64 (%struct.TYPE_16__*, i32, i8*)* @LdNamespace2Begin)
  %20 = load i32, i32* @ACPI_DB_DISPATCH, align 4
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 7
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @ACPI_DEBUG_PRINT(i32 %25)
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 6
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %29, align 8
  store %struct.TYPE_17__* %30, %struct.TYPE_17__** %10, align 8
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %32 = icmp ne %struct.TYPE_17__* %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %3
  %34 = load i64, i64* @AE_OK, align 8
  store i64 %34, i64* %4, align 8
  br label %185

35:                                               ; preds = %3
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @PARSEOP_DEFAULT_ARG, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %51

42:                                               ; preds = %35
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @OP_IS_RESOURCE_DESC, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %42
  %50 = load i32, i32* @ACPI_TYPE_LOCAL_RESOURCE, align 4
  store i32 %50, i32* %11, align 4
  br label %57

51:                                               ; preds = %42, %35
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @AslMapNamedOpcodeToDataType(i32 %55)
  store i32 %56, i32* %11, align 4
  br label %57

57:                                               ; preds = %51, %49
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @PARSEOP_NAME, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %75

64:                                               ; preds = %57
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @OP_IS_RESOURCE_DESC, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %64
  %73 = load i64, i64* @TRUE, align 8
  store i64 %73, i64* %12, align 8
  br label %74

74:                                               ; preds = %72, %64
  br label %75

75:                                               ; preds = %74, %57
  %76 = load i64, i64* %12, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %75
  %79 = load i32, i32* %11, align 4
  %80 = call i64 @AcpiNsOpensScope(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %94

82:                                               ; preds = %78, %75
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %84 = load i32, i32* %11, align 4
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %86 = call i64 @AcpiDsScopeStackPush(%struct.TYPE_17__* %83, i32 %84, %struct.TYPE_15__* %85)
  store i64 %86, i64* %9, align 8
  %87 = load i64, i64* %9, align 8
  %88 = call i64 @ACPI_FAILURE(i64 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %82
  %91 = load i64, i64* %9, align 8
  %92 = call i32 @return_ACPI_STATUS(i64 %91)
  br label %93

93:                                               ; preds = %90, %82
  br label %94

94:                                               ; preds = %93, %78
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @PARSEOP_ALIAS, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %183

101:                                              ; preds = %94
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 4
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %104, align 8
  store %struct.TYPE_16__* %105, %struct.TYPE_16__** %13, align 8
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 2
  %109 = load i8*, i8** %108, align 8
  store i8* %109, i8** %14, align 8
  %110 = load i8*, i8** %14, align 8
  %111 = icmp ne i8* %110, null
  br i1 %111, label %124, label %112

112:                                              ; preds = %101
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 8
  %117 = call i64 @UtInternalizeName(i32 %116, i8** %14)
  store i64 %117, i64* %9, align 8
  %118 = load i64, i64* %9, align 8
  %119 = call i64 @ACPI_FAILURE(i64 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %112
  %122 = load i64, i64* %9, align 8
  store i64 %122, i64* %4, align 8
  br label %185

123:                                              ; preds = %112
  br label %124

124:                                              ; preds = %123, %101
  %125 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i8*, i8** %14, align 8
  %129 = load i32, i32* @ACPI_TYPE_ANY, align 4
  %130 = load i32, i32* @ACPI_IMODE_EXECUTE, align 4
  %131 = load i32, i32* @ACPI_NS_SEARCH_PARENT, align 4
  %132 = load i32, i32* @ACPI_NS_DONT_OPEN_SCOPE, align 4
  %133 = or i32 %131, %132
  %134 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %135 = call i64 @AcpiNsLookup(i32 %127, i8* %128, i32 %129, i32 %130, i32 %133, %struct.TYPE_15__* %134, %struct.TYPE_17__** %15)
  store i64 %135, i64* %9, align 8
  %136 = load i64, i64* %9, align 8
  %137 = call i64 @ACPI_FAILURE(i64 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %177

139:                                              ; preds = %124
  %140 = load i64, i64* %9, align 8
  %141 = load i64, i64* @AE_NOT_FOUND, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %171

143:                                              ; preds = %139
  %144 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %145 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 8
  %148 = call i64 @strlen(i32 %147)
  %149 = load i64, i64* @ACPI_NAMESEG_SIZE, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %160

151:                                              ; preds = %143
  %152 = load i32, i32* @ASL_ERROR, align 4
  %153 = load i32, i32* @ASL_MSG_NOT_FOUND, align 4
  %154 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %155 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %156 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 8
  %159 = call i32 @AslError(i32 %152, i32 %153, %struct.TYPE_16__* %154, i32 %158)
  br label %169

160:                                              ; preds = %143
  %161 = load i32, i32* @ASL_ERROR, align 4
  %162 = load i32, i32* @ASL_MSG_NAMEPATH_NOT_EXIST, align 4
  %163 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %164 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %165 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 8
  %168 = call i32 @AslError(i32 %161, i32 %162, %struct.TYPE_16__* %163, i32 %167)
  br label %169

169:                                              ; preds = %160, %151
  %170 = load i64, i64* %9, align 8
  store i64 %170, i64* %4, align 8
  br label %185

171:                                              ; preds = %139
  %172 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %173 = load i64, i64* %9, align 8
  %174 = load i64, i64* @FALSE, align 8
  %175 = call i32 @AslCoreSubsystemError(%struct.TYPE_16__* %172, i64 %173, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i64 %174)
  %176 = load i64, i64* @AE_OK, align 8
  store i64 %176, i64* %4, align 8
  br label %185

177:                                              ; preds = %124
  %178 = load i32, i32* @ACPI_OPERAND_OBJECT, align 4
  %179 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %180 = call i32 @ACPI_CAST_PTR(i32 %178, %struct.TYPE_17__* %179)
  %181 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %182 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %181, i32 0, i32 0
  store i32 %180, i32* %182, align 4
  br label %183

183:                                              ; preds = %177, %94
  %184 = load i64, i64* @AE_OK, align 8
  store i64 %184, i64* %4, align 8
  br label %185

185:                                              ; preds = %183, %171, %169, %121, %33
  %186 = load i64, i64* %4, align 8
  ret i64 %186
}

declare dso_local i32 @ACPI_FUNCTION_NAME(i64 (%struct.TYPE_16__*, i32, i8*)*) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @AslMapNamedOpcodeToDataType(i32) #1

declare dso_local i64 @AcpiNsOpensScope(i32) #1

declare dso_local i64 @AcpiDsScopeStackPush(%struct.TYPE_17__*, i32, %struct.TYPE_15__*) #1

declare dso_local i64 @ACPI_FAILURE(i64) #1

declare dso_local i32 @return_ACPI_STATUS(i64) #1

declare dso_local i64 @UtInternalizeName(i32, i8**) #1

declare dso_local i64 @AcpiNsLookup(i32, i8*, i32, i32, i32, %struct.TYPE_15__*, %struct.TYPE_17__**) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @AslError(i32, i32, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @AslCoreSubsystemError(%struct.TYPE_16__*, i64, i8*, i64) #1

declare dso_local i32 @ACPI_CAST_PTR(i32, %struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
