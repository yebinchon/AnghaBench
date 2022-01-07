; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/common/extr_dmtables.c_AdParseTable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/common/extr_dmtables.c_AdParseTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32* }
%struct.TYPE_23__ = type { i64 }
%struct.TYPE_18__ = type { i32* }
%struct.TYPE_21__ = type { i64, i64 }
%struct.TYPE_20__ = type { i32 }

@AE_OK = common dso_local global i32 0, align 4
@AE_NOT_EXIST = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Pass 1 parse of [%4.4s]\0A\00", align 1
@AcpiGbl_ParseOpRoot = common dso_local global %struct.TYPE_22__* null, align 8
@AE_NO_MEMORY = common dso_local global i32 0, align 4
@ACPI_IMODE_LOAD_PASS1 = common dso_local global i32 0, align 4
@ACPI_PARSE_DELETE_TREE = common dso_local global i32 0, align 4
@ACPI_PARSE_DISASSEMBLE = common dso_local global i32 0, align 4
@AcpiGbl_RootTableList = common dso_local global %struct.TYPE_23__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"Pass 2 parse of [%4.4s]\0A\00", align 1
@ACPI_IMODE_LOAD_PASS2 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [61 x i8] c"Parsing Deferred Opcodes (Methods/Buffers/Packages/Regions)\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"Parsing completed\0A\00", align 1
@AcpiGbl_CaptureComments = common dso_local global i64 0, align 8
@AcpiGbl_FileTreeRoot = common dso_local global %struct.TYPE_18__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AdParseTable(%struct.TYPE_21__* %0, i32* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_20__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load i32, i32* @AE_OK, align 4
  store i32 %15, i32* %10, align 4
  %16 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %17 = icmp ne %struct.TYPE_21__* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @AE_NOT_EXIST, align 4
  store i32 %19, i32* %5, align 4
  br label %149

20:                                               ; preds = %4
  %21 = load i32, i32* @stderr, align 4
  %22 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to i8*
  %26 = call i32 (i32, i8*, ...) @fprintf(i32 %21, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %25)
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = sub i64 %29, 16
  store i64 %30, i64* %13, align 8
  %31 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %32 = bitcast %struct.TYPE_21__* %31 to i32*
  %33 = getelementptr inbounds i32, i32* %32, i64 16
  store i32* %33, i32** %12, align 8
  %34 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %35 = load i32*, i32** %12, align 8
  %36 = load i64, i64* %13, align 8
  %37 = call i32 @ASL_CV_INIT_FILETREE(%struct.TYPE_21__* %34, i32* %35, i64 %36)
  %38 = load i32*, i32** %12, align 8
  %39 = call %struct.TYPE_22__* @AcpiPsCreateScopeOp(i32* %38)
  store %struct.TYPE_22__* %39, %struct.TYPE_22__** @AcpiGbl_ParseOpRoot, align 8
  %40 = load %struct.TYPE_22__*, %struct.TYPE_22__** @AcpiGbl_ParseOpRoot, align 8
  %41 = icmp ne %struct.TYPE_22__* %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %20
  %43 = load i32, i32* @AE_NO_MEMORY, align 4
  store i32 %43, i32* %5, align 4
  br label %149

44:                                               ; preds = %20
  %45 = load %struct.TYPE_22__*, %struct.TYPE_22__** @AcpiGbl_ParseOpRoot, align 8
  %46 = call %struct.TYPE_20__* @AcpiDsCreateWalkState(i32 0, %struct.TYPE_22__* %45, i32* null, i32* null)
  store %struct.TYPE_20__* %46, %struct.TYPE_20__** %11, align 8
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %48 = icmp ne %struct.TYPE_20__* %47, null
  br i1 %48, label %51, label %49

49:                                               ; preds = %44
  %50 = load i32, i32* @AE_NO_MEMORY, align 4
  store i32 %50, i32* %5, align 4
  br label %149

51:                                               ; preds = %44
  %52 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %53 = load %struct.TYPE_22__*, %struct.TYPE_22__** @AcpiGbl_ParseOpRoot, align 8
  %54 = load i32*, i32** %12, align 8
  %55 = load i64, i64* %13, align 8
  %56 = load i32, i32* @ACPI_IMODE_LOAD_PASS1, align 4
  %57 = call i32 @AcpiDsInitAmlWalk(%struct.TYPE_20__* %52, %struct.TYPE_22__* %53, i32* null, i32* %54, i64 %55, i32* null, i32 %56)
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %10, align 4
  %59 = call i64 @ACPI_FAILURE(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %51
  %62 = load i32, i32* %10, align 4
  store i32 %62, i32* %5, align 4
  br label %149

63:                                               ; preds = %51
  %64 = load i32, i32* @ACPI_PARSE_DELETE_TREE, align 4
  %65 = xor i32 %64, -1
  %66 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %68, %65
  store i32 %69, i32* %67, align 4
  %70 = load i32, i32* @ACPI_PARSE_DISASSEMBLE, align 4
  %71 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %72 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 4
  %75 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %76 = call i32 @AcpiPsParseAml(%struct.TYPE_20__* %75)
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %10, align 4
  %78 = call i64 @ACPI_FAILURE(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %63
  %81 = load i32, i32* %10, align 4
  store i32 %81, i32* %5, align 4
  br label %149

82:                                               ; preds = %63
  %83 = load i64, i64* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @AcpiGbl_RootTableList, i32 0, i32 0), align 8
  %84 = sub nsw i64 %83, 1
  store i64 %84, i64* %14, align 8
  %85 = load i64, i64* %8, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %117

87:                                               ; preds = %82
  %88 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %89 = call i32 @AdStoreTable(%struct.TYPE_21__* %88, i64* %14)
  store i32 %89, i32* %10, align 4
  %90 = load i32, i32* %10, align 4
  %91 = call i64 @ACPI_FAILURE(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %87
  %94 = load i32, i32* %10, align 4
  store i32 %94, i32* %5, align 4
  br label %149

95:                                               ; preds = %87
  %96 = load i64, i64* %14, align 8
  %97 = call i32 @AcpiTbAllocateOwnerId(i64 %96)
  store i32 %97, i32* %10, align 4
  %98 = load i32, i32* %10, align 4
  %99 = call i64 @ACPI_FAILURE(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %95
  %102 = load i32, i32* %10, align 4
  store i32 %102, i32* %5, align 4
  br label %149

103:                                              ; preds = %95
  %104 = load i32*, i32** %7, align 8
  %105 = icmp ne i32* %104, null
  br i1 %105, label %106, label %116

106:                                              ; preds = %103
  %107 = load i64, i64* %14, align 8
  %108 = load i32*, i32** %7, align 8
  %109 = call i32 @AcpiTbGetOwnerId(i64 %107, i32* %108)
  store i32 %109, i32* %10, align 4
  %110 = load i32, i32* %10, align 4
  %111 = call i64 @ACPI_FAILURE(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %106
  %114 = load i32, i32* %10, align 4
  store i32 %114, i32* %5, align 4
  br label %149

115:                                              ; preds = %106
  br label %116

116:                                              ; preds = %115, %103
  br label %117

117:                                              ; preds = %116, %82
  %118 = load i32, i32* @stderr, align 4
  %119 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = inttoptr i64 %121 to i8*
  %123 = call i32 (i32, i8*, ...) @fprintf(i32 %118, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %122)
  %124 = load i32, i32* @ACPI_IMODE_LOAD_PASS2, align 4
  %125 = load i64, i64* %14, align 8
  %126 = call i32 @AcpiNsOneCompleteParse(i32 %124, i64 %125, i32* null)
  store i32 %126, i32* %10, align 4
  %127 = load i32, i32* %10, align 4
  %128 = call i64 @ACPI_FAILURE(i32 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %117
  %131 = load i32, i32* %10, align 4
  store i32 %131, i32* %5, align 4
  br label %149

132:                                              ; preds = %117
  %133 = load i64, i64* %9, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %132
  %136 = load i32, i32* @AE_OK, align 4
  store i32 %136, i32* %5, align 4
  br label %149

137:                                              ; preds = %132
  %138 = load i32, i32* @stderr, align 4
  %139 = call i32 (i32, i8*, ...) @fprintf(i32 %138, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0))
  %140 = load %struct.TYPE_22__*, %struct.TYPE_22__** @AcpiGbl_ParseOpRoot, align 8
  %141 = call i32 @AcpiDmParseDeferredOps(%struct.TYPE_22__* %140)
  %142 = load i32, i32* @stderr, align 4
  %143 = call i32 (i32, i8*, ...) @fprintf(i32 %142, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %144 = load %struct.TYPE_22__*, %struct.TYPE_22__** @AcpiGbl_ParseOpRoot, align 8
  %145 = call i32 @AcpiDmFindResources(%struct.TYPE_22__* %144)
  %146 = load i32, i32* @stderr, align 4
  %147 = call i32 (i32, i8*, ...) @fprintf(i32 %146, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %148 = load i32, i32* @AE_OK, align 4
  store i32 %148, i32* %5, align 4
  br label %149

149:                                              ; preds = %137, %135, %130, %113, %101, %93, %80, %61, %49, %42, %18
  %150 = load i32, i32* %5, align 4
  ret i32 %150
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @ASL_CV_INIT_FILETREE(%struct.TYPE_21__*, i32*, i64) #1

declare dso_local %struct.TYPE_22__* @AcpiPsCreateScopeOp(i32*) #1

declare dso_local %struct.TYPE_20__* @AcpiDsCreateWalkState(i32, %struct.TYPE_22__*, i32*, i32*) #1

declare dso_local i32 @AcpiDsInitAmlWalk(%struct.TYPE_20__*, %struct.TYPE_22__*, i32*, i32*, i64, i32*, i32) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @AcpiPsParseAml(%struct.TYPE_20__*) #1

declare dso_local i32 @AdStoreTable(%struct.TYPE_21__*, i64*) #1

declare dso_local i32 @AcpiTbAllocateOwnerId(i64) #1

declare dso_local i32 @AcpiTbGetOwnerId(i64, i32*) #1

declare dso_local i32 @AcpiNsOneCompleteParse(i32, i64, i32*) #1

declare dso_local i32 @AcpiDmParseDeferredOps(%struct.TYPE_22__*) #1

declare dso_local i32 @AcpiDmFindResources(%struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
