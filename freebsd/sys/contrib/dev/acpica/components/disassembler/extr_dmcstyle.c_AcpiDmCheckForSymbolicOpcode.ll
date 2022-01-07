; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/disassembler/extr_dmcstyle.c_AcpiDmCheckForSymbolicOpcode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/disassembler/extr_dmcstyle.c_AcpiDmCheckForSymbolicOpcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, i64, i8*, %struct.TYPE_18__*, i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }

@AcpiGbl_CstyleDisassembly = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c" + \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c" - \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" * \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c" / \00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c" % \00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c" << \00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c" >> \00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c" & \00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c" | \00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c" ^ \00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c" && \00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c" == \00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c" > \00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c" < \00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c" || \00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c" != \00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c" <= \00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c" >= \00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@TRUE = common dso_local global i32 0, align 4
@ACPI_DASM_LNOT_SUFFIX = common dso_local global i64 0, align 8
@ACPI_DASM_LNOT_PREFIX = common dso_local global i64 0, align 8
@AML_STRING_OP = common dso_local global i32 0, align 4
@AML_BUFFER_OP = common dso_local global i32 0, align 4
@AML_PACKAGE_OP = common dso_local global i32 0, align 4
@AML_VARIABLE_PACKAGE_OP = common dso_local global i32 0, align 4
@ACPI_PARSEOP_CLOSING_PAREN = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [3 x i8] c" [\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"++\00", align 1
@AcpiGbl_DoDisassemblerOptimizations = common dso_local global i32 0, align 4
@ACPI_PARSEOP_LEGACY_ASL_ONLY = common dso_local global i32 0, align 4
@ACPI_PARSEOP_IGNORE = common dso_local global i32 0, align 4
@ACPI_PARSEOP_COMPOUND_ASSIGNMENT = common dso_local global i32 0, align 4
@ACPI_PARSEOP_ASSIGNMENT = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c" = (\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c" = \00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c" = ~\00", align 1
@.str.27 = private unnamed_addr constant [2 x i8] c"~\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AcpiDmCheckForSymbolicOpcode(%struct.TYPE_18__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* null, i8** %6, align 8
  %11 = load i32, i32* @AcpiGbl_CstyleDisassembly, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @FALSE, align 4
  store i32 %14, i32* %3, align 4
  br label %421

15:                                               ; preds = %2
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %17 = call %struct.TYPE_18__* @AcpiPsGetArg(%struct.TYPE_18__* %16, i32 0)
  store %struct.TYPE_18__* %17, %struct.TYPE_18__** %7, align 8
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %19 = icmp ne %struct.TYPE_18__* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %15
  %21 = load i32, i32* @FALSE, align 4
  store i32 %21, i32* %3, align 4
  br label %421

22:                                               ; preds = %15
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 3
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %25, align 8
  store %struct.TYPE_18__* %26, %struct.TYPE_18__** %8, align 8
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  switch i32 %30, label %124 [
    i32 148, label %31
    i32 128, label %32
    i32 132, label %33
    i32 142, label %34
    i32 133, label %35
    i32 131, label %36
    i32 130, label %37
    i32 147, label %38
    i32 145, label %39
    i32 144, label %40
    i32 139, label %41
    i32 138, label %42
    i32 137, label %43
    i32 136, label %44
    i32 134, label %45
    i32 135, label %46
    i32 140, label %78
    i32 143, label %121
    i32 141, label %122
    i32 146, label %123
    i32 129, label %123
  ]

31:                                               ; preds = %22
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  br label %126

32:                                               ; preds = %22
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  br label %126

33:                                               ; preds = %22
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %6, align 8
  br label %126

34:                                               ; preds = %22
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %6, align 8
  br label %126

35:                                               ; preds = %22
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8** %6, align 8
  br label %126

36:                                               ; preds = %22
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8** %6, align 8
  br label %126

37:                                               ; preds = %22
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8** %6, align 8
  br label %126

38:                                               ; preds = %22
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8** %6, align 8
  br label %126

39:                                               ; preds = %22
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8** %6, align 8
  br label %126

40:                                               ; preds = %22
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8** %6, align 8
  br label %126

41:                                               ; preds = %22
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i8** %6, align 8
  br label %126

42:                                               ; preds = %22
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8** %6, align 8
  br label %126

43:                                               ; preds = %22
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8** %6, align 8
  br label %126

44:                                               ; preds = %22
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i8** %6, align 8
  br label %126

45:                                               ; preds = %22
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8** %6, align 8
  br label %126

46:                                               ; preds = %22
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  switch i32 %50, label %54 [
    i32 138, label %51
    i32 137, label %52
    i32 136, label %53
  ]

51:                                               ; preds = %46
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i8** %6, align 8
  br label %57

52:                                               ; preds = %46
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), i8** %6, align 8
  br label %57

53:                                               ; preds = %46
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), i8** %6, align 8
  br label %57

54:                                               ; preds = %46
  %55 = call i32 @AcpiOsPrintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0))
  %56 = load i32, i32* @TRUE, align 4
  store i32 %56, i32* %3, align 4
  br label %421

57:                                               ; preds = %53, %52, %51
  %58 = load i64, i64* @ACPI_DASM_LNOT_SUFFIX, align 8
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 1
  store i64 %58, i64* %61, align 8
  %62 = load i64, i64* @ACPI_DASM_LNOT_PREFIX, align 8
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 1
  store i64 %62, i64* %65, align 8
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %67 = call %struct.TYPE_18__* @AcpiPsGetArg(%struct.TYPE_18__* %66, i32 0)
  store %struct.TYPE_18__* %67, %struct.TYPE_18__** %8, align 8
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %69 = icmp ne %struct.TYPE_18__* %68, null
  br i1 %69, label %72, label %70

70:                                               ; preds = %57
  %71 = load i32, i32* @FALSE, align 4
  store i32 %71, i32* %3, align 4
  br label %421

72:                                               ; preds = %57
  %73 = load i8*, i8** %6, align 8
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 2
  store i8* %73, i8** %76, align 8
  %77 = load i32, i32* @TRUE, align 4
  store i32 %77, i32* %3, align 4
  br label %421

78:                                               ; preds = %22
  %79 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @AML_STRING_OP, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %106, label %85

85:                                               ; preds = %78
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @AML_BUFFER_OP, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %106, label %92

92:                                               ; preds = %85
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @AML_PACKAGE_OP, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %106, label %99

99:                                               ; preds = %92
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @AML_VARIABLE_PACKAGE_OP, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %114

106:                                              ; preds = %99, %92, %85, %78
  %107 = load i32, i32* @ACPI_PARSEOP_CLOSING_PAREN, align 4
  %108 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 8
  %112 = or i32 %111, %107
  store i32 %112, i32* %110, align 8
  %113 = load i32, i32* @FALSE, align 4
  store i32 %113, i32* %3, align 4
  br label %421

114:                                              ; preds = %99
  %115 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %116, i32 0, i32 2
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), i8** %117, align 8
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %119, i32 0, i32 2
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0), i8** %120, align 8
  br label %126

121:                                              ; preds = %22
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0), i8** %6, align 8
  br label %126

122:                                              ; preds = %22
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i64 0, i64 0), i8** %6, align 8
  br label %126

123:                                              ; preds = %22, %22
  store i8* null, i8** %6, align 8
  br label %126

124:                                              ; preds = %22
  %125 = load i32, i32* @FALSE, align 4
  store i32 %125, i32* %3, align 4
  br label %421

126:                                              ; preds = %123, %122, %121, %114, %45, %44, %43, %42, %41, %40, %39, %38, %37, %36, %35, %34, %33, %32, %31
  %127 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @ACPI_DASM_LNOT_SUFFIX, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %135

133:                                              ; preds = %126
  %134 = load i32, i32* @TRUE, align 4
  store i32 %134, i32* %3, align 4
  br label %421

135:                                              ; preds = %126
  %136 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %137, i32 0, i32 2
  %139 = load i8*, i8** %138, align 8
  %140 = icmp ne i8* %139, null
  br i1 %140, label %146, label %141

141:                                              ; preds = %135
  %142 = load i8*, i8** %6, align 8
  %143 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %144, i32 0, i32 2
  store i8* %142, i8** %145, align 8
  br label %146

146:                                              ; preds = %141, %135
  %147 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  switch i32 %150, label %417 [
    i32 148, label %151
    i32 128, label %151
    i32 132, label %151
    i32 142, label %151
    i32 133, label %151
    i32 131, label %151
    i32 130, label %151
    i32 147, label %151
    i32 145, label %151
    i32 144, label %151
    i32 143, label %336
    i32 141, label %336
    i32 140, label %338
    i32 129, label %362
    i32 146, label %393
  ]

151:                                              ; preds = %146, %146, %146, %146, %146, %146, %146, %146, %146, %146
  %152 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %153 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %153, i32 0, i32 3
  %155 = load %struct.TYPE_18__*, %struct.TYPE_18__** %154, align 8
  store %struct.TYPE_18__* %155, %struct.TYPE_18__** %9, align 8
  %156 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = icmp eq i32 %159, 142
  br i1 %160, label %161, label %237

161:                                              ; preds = %151
  %162 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %163 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %163, i32 0, i32 3
  %165 = load %struct.TYPE_18__*, %struct.TYPE_18__** %164, align 8
  store %struct.TYPE_18__* %165, %struct.TYPE_18__** %10, align 8
  %166 = load i32, i32* @AcpiGbl_DoDisassemblerOptimizations, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %191, label %168

168:                                              ; preds = %161
  %169 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %170 = call i32 @AcpiDmIsValidTarget(%struct.TYPE_18__* %169)
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %183

172:                                              ; preds = %168
  %173 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %174 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %174, i32 0, i32 2
  store i8* null, i8** %175, align 8
  %176 = load i32, i32* @ACPI_PARSEOP_LEGACY_ASL_ONLY, align 4
  %177 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %178, i32 0, i32 4
  %180 = load i32, i32* %179, align 8
  %181 = or i32 %180, %176
  store i32 %181, i32* %179, align 8
  %182 = load i32, i32* @FALSE, align 4
  store i32 %182, i32* %3, align 4
  br label %421

183:                                              ; preds = %168
  %184 = load i32, i32* @ACPI_PARSEOP_IGNORE, align 4
  %185 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %186 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %186, i32 0, i32 4
  %188 = load i32, i32* %187, align 8
  %189 = or i32 %188, %184
  store i32 %189, i32* %187, align 8
  %190 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  store %struct.TYPE_18__* %190, %struct.TYPE_18__** %9, align 8
  br label %236

191:                                              ; preds = %161
  %192 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %193 = call i32 @AcpiDmIsValidTarget(%struct.TYPE_18__* %192)
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %210

195:                                              ; preds = %191
  %196 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %197 = call i32 @AcpiDmIsValidTarget(%struct.TYPE_18__* %196)
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %210

199:                                              ; preds = %195
  %200 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %201 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %201, i32 0, i32 2
  store i8* null, i8** %202, align 8
  %203 = load i32, i32* @ACPI_PARSEOP_LEGACY_ASL_ONLY, align 4
  %204 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %205 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %205, i32 0, i32 4
  %207 = load i32, i32* %206, align 8
  %208 = or i32 %207, %203
  store i32 %208, i32* %206, align 8
  %209 = load i32, i32* @FALSE, align 4
  store i32 %209, i32* %3, align 4
  br label %421

210:                                              ; preds = %195, %191
  %211 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %212 = call i32 @AcpiDmIsValidTarget(%struct.TYPE_18__* %211)
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %227

214:                                              ; preds = %210
  %215 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %216 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %216, i32 0, i32 0
  store i32 133, i32* %217, align 8
  %218 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %219 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %219, i32 0, i32 2
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8** %220, align 8
  %221 = load i32, i32* @ACPI_PARSEOP_IGNORE, align 4
  %222 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %223 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %223, i32 0, i32 4
  %225 = load i32, i32* %224, align 8
  %226 = or i32 %225, %221
  store i32 %226, i32* %224, align 8
  br label %235

227:                                              ; preds = %210
  %228 = load i32, i32* @ACPI_PARSEOP_IGNORE, align 4
  %229 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %230 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %230, i32 0, i32 4
  %232 = load i32, i32* %231, align 8
  %233 = or i32 %232, %228
  store i32 %233, i32* %231, align 8
  %234 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  store %struct.TYPE_18__* %234, %struct.TYPE_18__** %9, align 8
  br label %235

235:                                              ; preds = %227, %214
  br label %236

236:                                              ; preds = %235, %183
  br label %237

237:                                              ; preds = %236, %151
  %238 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %239 = icmp ne %struct.TYPE_18__* %238, null
  br i1 %239, label %242, label %240

240:                                              ; preds = %237
  %241 = load i32, i32* @FALSE, align 4
  store i32 %241, i32* %3, align 4
  br label %421

242:                                              ; preds = %237
  %243 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %244 = call i32 @AcpiDmIsValidTarget(%struct.TYPE_18__* %243)
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %247, label %246

246:                                              ; preds = %242
  br label %418

247:                                              ; preds = %242
  %248 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %249 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %250 = call i32 @AcpiDmPromoteTarget(%struct.TYPE_18__* %248, %struct.TYPE_18__* %249)
  %251 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %252 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  switch i32 %254, label %313 [
    i32 148, label %255
    i32 132, label %255
    i32 147, label %255
    i32 145, label %255
    i32 144, label %255
    i32 128, label %287
    i32 142, label %287
    i32 133, label %287
    i32 131, label %287
    i32 130, label %287
  ]

255:                                              ; preds = %247, %247, %247, %247, %247
  %256 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %257 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %258 = load i32, i32* @TRUE, align 4
  %259 = call i32 @AcpiDmIsTargetAnOperand(%struct.TYPE_18__* %256, %struct.TYPE_18__* %257, i32 %258)
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %267, label %261

261:                                              ; preds = %255
  %262 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %263 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %264 = load i32, i32* @TRUE, align 4
  %265 = call i32 @AcpiDmIsTargetAnOperand(%struct.TYPE_18__* %262, %struct.TYPE_18__* %263, i32 %264)
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %286

267:                                              ; preds = %261, %255
  %268 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %269 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %268, i32 0, i32 0
  %270 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = call i8* @AcpiDmGetCompoundSymbol(i32 %271)
  %273 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %274 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %273, i32 0, i32 0
  %275 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %274, i32 0, i32 2
  store i8* %272, i8** %275, align 8
  %276 = load i32, i32* @ACPI_PARSEOP_COMPOUND_ASSIGNMENT, align 4
  %277 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %278 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %277, i32 0, i32 0
  %279 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %278, i32 0, i32 4
  %280 = load i32, i32* %279, align 8
  %281 = or i32 %280, %276
  store i32 %281, i32* %279, align 8
  %282 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %283 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %282, i32 0, i32 0
  %284 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %283, i32 0, i32 2
  store i8* null, i8** %284, align 8
  %285 = load i32, i32* @TRUE, align 4
  store i32 %285, i32* %3, align 4
  br label %421

286:                                              ; preds = %261
  br label %314

287:                                              ; preds = %247, %247, %247, %247, %247
  %288 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %289 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %290 = load i32, i32* @TRUE, align 4
  %291 = call i32 @AcpiDmIsTargetAnOperand(%struct.TYPE_18__* %288, %struct.TYPE_18__* %289, i32 %290)
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %312

293:                                              ; preds = %287
  %294 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %295 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %294, i32 0, i32 0
  %296 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 8
  %298 = call i8* @AcpiDmGetCompoundSymbol(i32 %297)
  %299 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %300 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %299, i32 0, i32 0
  %301 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %300, i32 0, i32 2
  store i8* %298, i8** %301, align 8
  %302 = load i32, i32* @ACPI_PARSEOP_COMPOUND_ASSIGNMENT, align 4
  %303 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %304 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %303, i32 0, i32 0
  %305 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %304, i32 0, i32 4
  %306 = load i32, i32* %305, align 8
  %307 = or i32 %306, %302
  store i32 %307, i32* %305, align 8
  %308 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %309 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %308, i32 0, i32 0
  %310 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %309, i32 0, i32 2
  store i8* null, i8** %310, align 8
  %311 = load i32, i32* @TRUE, align 4
  store i32 %311, i32* %3, align 4
  br label %421

312:                                              ; preds = %287
  br label %314

313:                                              ; preds = %247
  br label %314

314:                                              ; preds = %313, %312, %286
  %315 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %316 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %315, i32 0, i32 0
  %317 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %316, i32 0, i32 5
  %318 = load %struct.TYPE_16__*, %struct.TYPE_16__** %317, align 8
  %319 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %318, i32 0, i32 0
  %320 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 4
  switch i32 %321, label %330 [
    i32 148, label %322
    i32 128, label %322
    i32 132, label %322
    i32 142, label %322
    i32 133, label %322
    i32 131, label %322
    i32 130, label %322
    i32 147, label %322
    i32 145, label %322
    i32 144, label %322
    i32 139, label %322
    i32 138, label %322
    i32 137, label %322
    i32 136, label %322
    i32 134, label %322
  ]

322:                                              ; preds = %314, %314, %314, %314, %314, %314, %314, %314, %314, %314, %314, %314, %314, %314, %314
  %323 = load i32, i32* @ACPI_PARSEOP_ASSIGNMENT, align 4
  %324 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %325 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %324, i32 0, i32 0
  %326 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %325, i32 0, i32 4
  %327 = load i32, i32* %326, align 8
  %328 = or i32 %327, %323
  store i32 %328, i32* %326, align 8
  %329 = call i32 @AcpiOsPrintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0))
  br label %331

330:                                              ; preds = %314
  br label %331

331:                                              ; preds = %330, %322
  %332 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %333 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %332, i32 0, i32 0
  %334 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %333, i32 0, i32 2
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i8** %334, align 8
  %335 = load i32, i32* @TRUE, align 4
  store i32 %335, i32* %3, align 4
  br label %421

336:                                              ; preds = %146, %146
  %337 = load i32, i32* @TRUE, align 4
  store i32 %337, i32* %3, align 4
  br label %421

338:                                              ; preds = %146
  %339 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %340 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %339, i32 0, i32 0
  %341 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %340, i32 0, i32 3
  %342 = load %struct.TYPE_18__*, %struct.TYPE_18__** %341, align 8
  store %struct.TYPE_18__* %342, %struct.TYPE_18__** %9, align 8
  %343 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %344 = call i32 @AcpiDmIsValidTarget(%struct.TYPE_18__* %343)
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %346, label %360

346:                                              ; preds = %338
  %347 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %348 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %349 = call i32 @AcpiDmPromoteTarget(%struct.TYPE_18__* %347, %struct.TYPE_18__* %348)
  %350 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %351 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %350, i32 0, i32 0
  %352 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %351, i32 0, i32 2
  %353 = load i8*, i8** %352, align 8
  %354 = icmp ne i8* %353, null
  br i1 %354, label %359, label %355

355:                                              ; preds = %346
  %356 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %357 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %356, i32 0, i32 0
  %358 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %357, i32 0, i32 2
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0), i8** %358, align 8
  br label %359

359:                                              ; preds = %355, %346
  br label %360

360:                                              ; preds = %359, %338
  %361 = load i32, i32* @TRUE, align 4
  store i32 %361, i32* %3, align 4
  br label %421

362:                                              ; preds = %146
  %363 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %364 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %365 = call i32 @AcpiDmIsOptimizationIgnored(%struct.TYPE_18__* %363, %struct.TYPE_18__* %364)
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %367, label %369

367:                                              ; preds = %362
  %368 = load i32, i32* @FALSE, align 4
  store i32 %368, i32* %3, align 4
  br label %421

369:                                              ; preds = %362
  %370 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %371 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %370, i32 0, i32 0
  %372 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %371, i32 0, i32 3
  %373 = load %struct.TYPE_18__*, %struct.TYPE_18__** %372, align 8
  store %struct.TYPE_18__* %373, %struct.TYPE_18__** %9, align 8
  %374 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %375 = icmp ne %struct.TYPE_18__* %374, null
  br i1 %375, label %378, label %376

376:                                              ; preds = %369
  %377 = load i32, i32* @FALSE, align 4
  store i32 %377, i32* %3, align 4
  br label %421

378:                                              ; preds = %369
  %379 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %380 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %381 = call i32 @AcpiDmPromoteTarget(%struct.TYPE_18__* %379, %struct.TYPE_18__* %380)
  %382 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %383 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %382, i32 0, i32 0
  %384 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %383, i32 0, i32 2
  %385 = load i8*, i8** %384, align 8
  %386 = icmp ne i8* %385, null
  br i1 %386, label %391, label %387

387:                                              ; preds = %378
  %388 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %389 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %388, i32 0, i32 0
  %390 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %389, i32 0, i32 2
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0), i8** %390, align 8
  br label %391

391:                                              ; preds = %387, %378
  %392 = load i32, i32* @TRUE, align 4
  store i32 %392, i32* %3, align 4
  br label %421

393:                                              ; preds = %146
  %394 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %395 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %394, i32 0, i32 0
  %396 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %395, i32 0, i32 3
  %397 = load %struct.TYPE_18__*, %struct.TYPE_18__** %396, align 8
  store %struct.TYPE_18__* %397, %struct.TYPE_18__** %9, align 8
  %398 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %399 = icmp ne %struct.TYPE_18__* %398, null
  br i1 %399, label %402, label %400

400:                                              ; preds = %393
  %401 = load i32, i32* @FALSE, align 4
  store i32 %401, i32* %3, align 4
  br label %421

402:                                              ; preds = %393
  %403 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %404 = call i32 @AcpiDmIsValidTarget(%struct.TYPE_18__* %403)
  %405 = icmp ne i32 %404, 0
  br i1 %405, label %406, label %413

406:                                              ; preds = %402
  %407 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %408 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %409 = call i32 @AcpiDmPromoteTarget(%struct.TYPE_18__* %407, %struct.TYPE_18__* %408)
  %410 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %411 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %410, i32 0, i32 0
  %412 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %411, i32 0, i32 2
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0), i8** %412, align 8
  br label %415

413:                                              ; preds = %402
  %414 = call i32 @AcpiOsPrintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i64 0, i64 0))
  br label %415

415:                                              ; preds = %413, %406
  %416 = load i32, i32* @TRUE, align 4
  store i32 %416, i32* %3, align 4
  br label %421

417:                                              ; preds = %146
  br label %418

418:                                              ; preds = %417, %246
  %419 = call i32 @AcpiOsPrintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0))
  %420 = load i32, i32* @TRUE, align 4
  store i32 %420, i32* %3, align 4
  br label %421

421:                                              ; preds = %418, %415, %400, %391, %376, %367, %360, %336, %331, %293, %267, %240, %199, %172, %133, %124, %106, %72, %70, %54, %20, %13
  %422 = load i32, i32* %3, align 4
  ret i32 %422
}

declare dso_local %struct.TYPE_18__* @AcpiPsGetArg(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @AcpiOsPrintf(i8*) #1

declare dso_local i32 @AcpiDmIsValidTarget(%struct.TYPE_18__*) #1

declare dso_local i32 @AcpiDmPromoteTarget(%struct.TYPE_18__*, %struct.TYPE_18__*) #1

declare dso_local i32 @AcpiDmIsTargetAnOperand(%struct.TYPE_18__*, %struct.TYPE_18__*, i32) #1

declare dso_local i8* @AcpiDmGetCompoundSymbol(i32) #1

declare dso_local i32 @AcpiDmIsOptimizationIgnored(%struct.TYPE_18__*, %struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
