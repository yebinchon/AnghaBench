; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/disassembler/extr_dmopcode.c_AcpiDmDisassembleOneOp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/disassembler/extr_dmopcode.c_AcpiDmDisassembleOneOp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_40__ = type { i32, %struct.TYPE_36__* }
%struct.TYPE_36__ = type { %struct.TYPE_35__ }
%struct.TYPE_35__ = type { i32* }
%struct.TYPE_42__ = type { i64, i32, %struct.TYPE_41__* }
%struct.TYPE_41__ = type { %struct.TYPE_38__, %struct.TYPE_34__ }
%struct.TYPE_38__ = type { i32, i32, i32, %struct.TYPE_37__, i32 }
%struct.TYPE_37__ = type { i32, i32, %struct.TYPE_41__*, i32 }
%struct.TYPE_34__ = type { i32*, i32 }
%struct.TYPE_33__ = type { i8* }
%struct.TYPE_39__ = type { i8* }

@.str = private unnamed_addr constant [14 x i8] c"<NULL OP PTR>\00", align 1
@ACPI_PARSEOP_ELSEIF = common dso_local global i32 0, align 4
@AcpiGbl_CstyleDisassembly = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"LNotEqual\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"LLessEqual\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"LGreaterEqual\00", align 1
@ACPI_PARSEOP_IGNORE = common dso_local global i32 0, align 4
@ACPI_DASM_LNOT_PREFIX = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"0x%2.2X\00", align 1
@ACPI_DASM_EISAID = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"0x%4.4X\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"0x%8.8X\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"0x%8.8X%8.8X\00", align 1
@ACPI_UINT16_MAX = common dso_local global i32 0, align 4
@ACPI_DASM_HID_STRING = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [10 x i8] c" /* %s */\00", align 1
@AcpiGbl_NoResourceDisassembly = common dso_local global i32 0, align 4
@ACPI_DASM_RESOURCE = common dso_local global i8* null, align 8
@.str.10 = private unnamed_addr constant [17 x i8] c"ResourceTemplate\00", align 1
@AE_AML_NO_RESOURCE_END_TAG = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [63 x i8] c"/**** Is ResourceTemplate, but EndTag not at buffer end ****/ \00", align 1
@ACPI_DASM_UUID = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [9 x i8] c"ToUUID (\00", align 1
@ACPI_DASM_UNICODE = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [10 x i8] c"Unicode (\00", align 1
@ACPI_DASM_STRING = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [7 x i8] c"Buffer\00", align 1
@ACPI_DASM_PLD_METHOD = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [8 x i8] c"ToPLD (\00", align 1
@ACPI_DASM_BUFFER = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [2 x i8] c",\00", align 1
@AML_NAMECOMMENT = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [9 x i8] c"%*.s  %u\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"Offset (0x%.2X)\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"    ,   %u\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"AccessAs (%s, \00", align 1
@AcpiGbl_AccessTypes = common dso_local global i8** null, align 8
@.str.22 = private unnamed_addr constant [11 x i8] c" (0x%2.2X)\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c")\00", align 1
@AML_COMMENT_END_NODE = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [13 x i8] c"Connection (\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@AMLCOMMENT_INLINE = common dso_local global i32 0, align 4
@ACPI_DASM_SWITCH = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [7 x i8] c"Switch\00", align 1
@ACPI_DASM_CASE = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [5 x i8] c"Case\00", align 1
@AcpiGbl_DmEmitExternalOpcodes = common dso_local global i32 0, align 4
@ACPI_RESULTS_FRAME_OBJ_NUM = common dso_local global i64 0, align 8
@AML_INT_RETURN_VALUE_OP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AcpiDmDisassembleOneOp(%struct.TYPE_40__* %0, %struct.TYPE_42__* %1, %struct.TYPE_41__* %2) #0 {
  %4 = alloca %struct.TYPE_40__*, align 8
  %5 = alloca %struct.TYPE_42__*, align 8
  %6 = alloca %struct.TYPE_41__*, align 8
  %7 = alloca %struct.TYPE_33__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_41__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_39__*, align 8
  store %struct.TYPE_40__* %0, %struct.TYPE_40__** %4, align 8
  store %struct.TYPE_42__* %1, %struct.TYPE_42__** %5, align 8
  store %struct.TYPE_41__* %2, %struct.TYPE_41__** %6, align 8
  store %struct.TYPE_33__* null, %struct.TYPE_33__** %7, align 8
  %14 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %15 = icmp ne %struct.TYPE_41__* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %3
  %17 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %533

18:                                               ; preds = %3
  %19 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @ACPI_PARSEOP_ELSEIF, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  br label %533

27:                                               ; preds = %18
  %28 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  switch i32 %31, label %61 [
    i32 150, label %32
    i32 151, label %35
  ]

32:                                               ; preds = %27
  %33 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %34 = call i32 @AcpiDmMatchKeyword(%struct.TYPE_41__* %33)
  br label %533

35:                                               ; preds = %27
  %36 = load i32, i32* @AcpiGbl_CstyleDisassembly, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %51, label %38

38:                                               ; preds = %35
  %39 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  switch i32 %42, label %49 [
    i32 135, label %43
    i32 134, label %45
    i32 133, label %47
  ]

43:                                               ; preds = %38
  %44 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %50

45:                                               ; preds = %38
  %46 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %50

47:                                               ; preds = %38
  %48 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  br label %50

49:                                               ; preds = %38
  br label %50

50:                                               ; preds = %49, %47, %45, %43
  br label %51

51:                                               ; preds = %50, %35
  %52 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %53, i32 0, i32 1
  store i32 0, i32* %54, align 4
  %55 = load i32, i32* @ACPI_PARSEOP_IGNORE, align 4
  %56 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = or i32 %59, %55
  store i32 %60, i32* %58, align 8
  br label %533

61:                                               ; preds = %27
  br label %62

62:                                               ; preds = %61
  %63 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = call %struct.TYPE_33__* @AcpiPsGetOpcodeInfo(i32 %66)
  store %struct.TYPE_33__* %67, %struct.TYPE_33__** %7, align 8
  %68 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  switch i32 %71, label %528 [
    i32 132, label %72
    i32 148, label %109
    i32 128, label %117
    i32 147, label %141
    i32 131, label %165
    i32 130, label %173
    i32 149, label %203
    i32 137, label %278
    i32 138, label %285
    i32 136, label %317
    i32 143, label %347
    i32 140, label %347
    i32 141, label %387
    i32 142, label %469
    i32 139, label %473
    i32 129, label %488
    i32 144, label %502
    i32 146, label %516
    i32 145, label %519
  ]

72:                                               ; preds = %62
  %73 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %75, i32 0, i32 2
  %77 = load %struct.TYPE_41__*, %struct.TYPE_41__** %76, align 8
  store %struct.TYPE_41__* %77, %struct.TYPE_41__** %10, align 8
  %78 = load %struct.TYPE_41__*, %struct.TYPE_41__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = icmp eq i32 %81, 135
  br i1 %82, label %95, label %83

83:                                               ; preds = %72
  %84 = load %struct.TYPE_41__*, %struct.TYPE_41__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = icmp eq i32 %87, 134
  br i1 %88, label %95, label %89

89:                                               ; preds = %83
  %90 = load %struct.TYPE_41__*, %struct.TYPE_41__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = icmp eq i32 %93, 133
  br i1 %94, label %95, label %103

95:                                               ; preds = %89, %83, %72
  %96 = load %struct.TYPE_41__*, %struct.TYPE_41__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %97, i32 0, i32 1
  store i32 151, i32* %98, align 4
  %99 = load i32, i32* @ACPI_DASM_LNOT_PREFIX, align 4
  %100 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %101, i32 0, i32 1
  store i32 %99, i32* %102, align 4
  br label %108

103:                                              ; preds = %89
  %104 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %104, i32 0, i32 0
  %106 = load i8*, i8** %105, align 8
  %107 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %106)
  br label %108

108:                                              ; preds = %103, %95
  br label %533

109:                                              ; preds = %62
  %110 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %111, i32 0, i32 3
  %113 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = sext i32 %114 to i64
  %116 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i64 %115)
  br label %533

117:                                              ; preds = %62
  %118 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @ACPI_DASM_EISAID, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %132

124:                                              ; preds = %117
  %125 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %126, i32 0, i32 3
  %128 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = sext i32 %129 to i64
  %131 = call i32 @AcpiDmDecompressEisaId(i64 %130)
  br label %140

132:                                              ; preds = %117
  %133 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %134, i32 0, i32 3
  %136 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = sext i32 %137 to i64
  %139 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i64 %138)
  br label %140

140:                                              ; preds = %132, %124
  br label %533

141:                                              ; preds = %62
  %142 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @ACPI_DASM_EISAID, align 4
  %147 = icmp eq i32 %145, %146
  br i1 %147, label %148, label %156

148:                                              ; preds = %141
  %149 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %150, i32 0, i32 3
  %152 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = sext i32 %153 to i64
  %155 = call i32 @AcpiDmDecompressEisaId(i64 %154)
  br label %164

156:                                              ; preds = %141
  %157 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %158, i32 0, i32 3
  %160 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = sext i32 %161 to i64
  %163 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i64 %162)
  br label %164

164:                                              ; preds = %156, %148
  br label %533

165:                                              ; preds = %62
  %166 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %167, i32 0, i32 3
  %169 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = call i8* @ACPI_FORMAT_UINT64(i32 %170)
  %172 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i8* %171)
  br label %533

173:                                              ; preds = %62
  %174 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %175, i32 0, i32 3
  %177 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %176, i32 0, i32 3
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* @ACPI_UINT16_MAX, align 4
  %180 = call i32 @AcpiUtPrintString(i32 %178, i32 %179)
  %181 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %182 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* @ACPI_DASM_HID_STRING, align 4
  %186 = icmp eq i32 %184, %185
  br i1 %186, label %187, label %202

187:                                              ; preds = %173
  %188 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %189 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %189, i32 0, i32 3
  %191 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %190, i32 0, i32 3
  %192 = load i32, i32* %191, align 8
  %193 = call %struct.TYPE_39__* @AcpiAhMatchHardwareId(i32 %192)
  store %struct.TYPE_39__* %193, %struct.TYPE_39__** %13, align 8
  %194 = load %struct.TYPE_39__*, %struct.TYPE_39__** %13, align 8
  %195 = icmp ne %struct.TYPE_39__* %194, null
  br i1 %195, label %196, label %201

196:                                              ; preds = %187
  %197 = load %struct.TYPE_39__*, %struct.TYPE_39__** %13, align 8
  %198 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %197, i32 0, i32 0
  %199 = load i8*, i8** %198, align 8
  %200 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* %199)
  br label %201

201:                                              ; preds = %196, %187
  br label %202

202:                                              ; preds = %201, %173
  br label %533

203:                                              ; preds = %62
  %204 = load i32, i32* @AcpiGbl_NoResourceDisassembly, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %228, label %206

206:                                              ; preds = %203
  %207 = load %struct.TYPE_40__*, %struct.TYPE_40__** %4, align 8
  %208 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %209 = call i32 @AcpiDmIsResourceTemplate(%struct.TYPE_40__* %207, %struct.TYPE_41__* %208)
  store i32 %209, i32* %11, align 4
  %210 = load i32, i32* %11, align 4
  %211 = call i32 @ACPI_SUCCESS(i32 %210)
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %220

213:                                              ; preds = %206
  %214 = load i8*, i8** @ACPI_DASM_RESOURCE, align 8
  %215 = ptrtoint i8* %214 to i32
  %216 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %217 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %217, i32 0, i32 1
  store i32 %215, i32* %218, align 4
  %219 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0))
  br label %533

220:                                              ; preds = %206
  %221 = load i32, i32* %11, align 4
  %222 = load i32, i32* @AE_AML_NO_RESOURCE_END_TAG, align 4
  %223 = icmp eq i32 %221, %222
  br i1 %223, label %224, label %226

224:                                              ; preds = %220
  %225 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.11, i64 0, i64 0))
  br label %226

226:                                              ; preds = %224, %220
  br label %227

227:                                              ; preds = %226
  br label %228

228:                                              ; preds = %227, %203
  %229 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %230 = call i32 @AcpiDmIsUuidBuffer(%struct.TYPE_41__* %229)
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %238

232:                                              ; preds = %228
  %233 = load i32, i32* @ACPI_DASM_UUID, align 4
  %234 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %235 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %235, i32 0, i32 1
  store i32 %233, i32* %236, align 4
  %237 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0))
  br label %277

238:                                              ; preds = %228
  %239 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %240 = call i32 @AcpiDmIsUnicodeBuffer(%struct.TYPE_41__* %239)
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %248

242:                                              ; preds = %238
  %243 = load i32, i32* @ACPI_DASM_UNICODE, align 4
  %244 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %245 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %245, i32 0, i32 1
  store i32 %243, i32* %246, align 4
  %247 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0))
  br label %276

248:                                              ; preds = %238
  %249 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %250 = call i32 @AcpiDmIsStringBuffer(%struct.TYPE_41__* %249)
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %258

252:                                              ; preds = %248
  %253 = load i32, i32* @ACPI_DASM_STRING, align 4
  %254 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %255 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %255, i32 0, i32 1
  store i32 %253, i32* %256, align 4
  %257 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0))
  br label %275

258:                                              ; preds = %248
  %259 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %260 = call i32 @AcpiDmIsPldBuffer(%struct.TYPE_41__* %259)
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %268

262:                                              ; preds = %258
  %263 = load i32, i32* @ACPI_DASM_PLD_METHOD, align 4
  %264 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %265 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %264, i32 0, i32 0
  %266 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %265, i32 0, i32 1
  store i32 %263, i32* %266, align 4
  %267 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0))
  br label %274

268:                                              ; preds = %258
  %269 = load i32, i32* @ACPI_DASM_BUFFER, align 4
  %270 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %271 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %270, i32 0, i32 0
  %272 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %271, i32 0, i32 1
  store i32 %269, i32* %272, align 4
  %273 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0))
  br label %274

274:                                              ; preds = %268, %262
  br label %275

275:                                              ; preds = %274, %252
  br label %276

276:                                              ; preds = %275, %242
  br label %277

277:                                              ; preds = %276, %232
  br label %533

278:                                              ; preds = %62
  %279 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %280 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %279, i32 0, i32 0
  %281 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %280, i32 0, i32 3
  %282 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %281, i32 0, i32 1
  %283 = load i32, i32* %282, align 4
  %284 = call i32 @AcpiDmNamestring(i32 %283)
  br label %533

285:                                              ; preds = %62
  %286 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %287 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %286, i32 0, i32 1
  %288 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %287, i32 0, i32 1
  %289 = load i32, i32* %288, align 8
  %290 = call i64 @AcpiDmDumpName(i32 %289)
  store i64 %290, i64* %9, align 8
  %291 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  %292 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %293 = load i32, i32* @AML_NAMECOMMENT, align 4
  %294 = call i32 @ASL_CV_PRINT_ONE_COMMENT(%struct.TYPE_41__* %292, i32 %293, i32* null, i32 0)
  %295 = load i64, i64* %9, align 8
  %296 = sub i64 5, %295
  %297 = trunc i64 %296 to i32
  %298 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %299 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %298, i32 0, i32 0
  %300 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %299, i32 0, i32 3
  %301 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 8
  %303 = sext i32 %302 to i64
  %304 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0), i32 %297, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i64 %303)
  %305 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %306 = call i32 @AcpiDmCommaIfFieldMember(%struct.TYPE_41__* %305)
  %307 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %308 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %307, i32 0, i32 0
  %309 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %308, i32 0, i32 3
  %310 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 8
  %312 = sext i32 %311 to i64
  %313 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %314 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %313, i32 0, i32 0
  %315 = load i64, i64* %314, align 8
  %316 = add i64 %315, %312
  store i64 %316, i64* %314, align 8
  br label %533

317:                                              ; preds = %62
  %318 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %319 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %318, i32 0, i32 0
  %320 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %319, i32 0, i32 3
  %321 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 8
  %323 = sext i32 %322 to i64
  store i64 %323, i64* %8, align 8
  %324 = load i64, i64* %8, align 8
  %325 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %326 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %325, i32 0, i32 0
  %327 = load i64, i64* %326, align 8
  %328 = add i64 %327, %324
  store i64 %328, i64* %326, align 8
  %329 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %330 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %329, i32 0, i32 0
  %331 = load i64, i64* %330, align 8
  %332 = urem i64 %331, 8
  %333 = icmp eq i64 %332, 0
  br i1 %333, label %334, label %341

334:                                              ; preds = %317
  %335 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %336 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %335, i32 0, i32 0
  %337 = load i64, i64* %336, align 8
  %338 = trunc i64 %337 to i32
  %339 = call i8* @ACPI_DIV_8(i32 %338)
  %340 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i64 0, i64 0), i8* %339)
  br label %344

341:                                              ; preds = %317
  %342 = load i64, i64* %8, align 8
  %343 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i64 0, i64 0), i64 %342)
  br label %344

344:                                              ; preds = %341, %334
  %345 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %346 = call i32 @AcpiDmCommaIfFieldMember(%struct.TYPE_41__* %345)
  br label %533

347:                                              ; preds = %62, %62
  %348 = load i8**, i8*** @AcpiGbl_AccessTypes, align 8
  %349 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %350 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %349, i32 0, i32 0
  %351 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %350, i32 0, i32 3
  %352 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %351, i32 0, i32 0
  %353 = load i32, i32* %352, align 8
  %354 = and i32 %353, 7
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds i8*, i8** %348, i64 %355
  %357 = load i8*, i8** %356, align 8
  %358 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), i8* %357)
  %359 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %360 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %359, i32 0, i32 0
  %361 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %360, i32 0, i32 3
  %362 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %361, i32 0, i32 0
  %363 = load i32, i32* %362, align 8
  %364 = ashr i32 %363, 8
  %365 = call i32 @AcpiDmDecodeAttribute(i32 %364)
  %366 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %367 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %366, i32 0, i32 0
  %368 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %367, i32 0, i32 2
  %369 = load i32, i32* %368, align 8
  %370 = icmp eq i32 %369, 140
  br i1 %370, label %371, label %380

371:                                              ; preds = %347
  %372 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %373 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %372, i32 0, i32 0
  %374 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %373, i32 0, i32 3
  %375 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %374, i32 0, i32 0
  %376 = load i32, i32* %375, align 8
  %377 = ashr i32 %376, 16
  %378 = and i32 %377, 255
  %379 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i64 0, i64 0), i32 %378)
  br label %380

380:                                              ; preds = %371, %347
  %381 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0))
  %382 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %383 = call i32 @AcpiDmCommaIfFieldMember(%struct.TYPE_41__* %382)
  %384 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %385 = load i32, i32* @AML_COMMENT_END_NODE, align 4
  %386 = call i32 @ASL_CV_PRINT_ONE_COMMENT(%struct.TYPE_41__* %384, i32 %385, i32* null, i32 0)
  br label %533

387:                                              ; preds = %62
  %388 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i64 0, i64 0))
  %389 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %390 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %389, i32 0, i32 0
  %391 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %390, i32 0, i32 3
  %392 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %391, i32 0, i32 2
  %393 = load %struct.TYPE_41__*, %struct.TYPE_41__** %392, align 8
  store %struct.TYPE_41__* %393, %struct.TYPE_41__** %10, align 8
  %394 = load %struct.TYPE_41__*, %struct.TYPE_41__** %10, align 8
  %395 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %394, i32 0, i32 0
  %396 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %395, i32 0, i32 2
  %397 = load i32, i32* %396, align 8
  %398 = icmp eq i32 %397, 142
  br i1 %398, label %399, label %439

399:                                              ; preds = %387
  %400 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0))
  %401 = load %struct.TYPE_41__*, %struct.TYPE_41__** %10, align 8
  %402 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %401, i32 0, i32 1
  %403 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %402, i32 0, i32 0
  %404 = load i32*, i32** %403, align 8
  store i32* %404, i32** %12, align 8
  %405 = load %struct.TYPE_41__*, %struct.TYPE_41__** %10, align 8
  %406 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %405, i32 0, i32 0
  %407 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %406, i32 0, i32 3
  %408 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %407, i32 0, i32 0
  %409 = load i32, i32* %408, align 8
  %410 = sext i32 %409 to i64
  store i64 %410, i64* %9, align 8
  %411 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %412 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %411, i32 0, i32 1
  %413 = load i32, i32* %412, align 8
  %414 = add nsw i32 %413, 1
  store i32 %414, i32* %412, align 8
  %415 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %416 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %417 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %416, i32 0, i32 2
  store %struct.TYPE_41__* %415, %struct.TYPE_41__** %417, align 8
  %418 = load i8*, i8** @ACPI_DASM_RESOURCE, align 8
  %419 = ptrtoint i8* %418 to i32
  %420 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %421 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %420, i32 0, i32 0
  %422 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %421, i32 0, i32 1
  store i32 %419, i32* %422, align 4
  %423 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %424 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %425 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %424, i32 0, i32 0
  %426 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %425, i32 0, i32 4
  %427 = load i32, i32* %426, align 8
  %428 = load i32*, i32** %12, align 8
  %429 = load i64, i64* %9, align 8
  %430 = call i32 @AcpiDmResourceTemplate(%struct.TYPE_42__* %423, i32 %427, i32* %428, i64 %429)
  %431 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %432 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %431, i32 0, i32 1
  %433 = load i32, i32* %432, align 8
  %434 = sub nsw i32 %433, 1
  store i32 %434, i32* %432, align 8
  %435 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %436 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %435, i32 0, i32 1
  %437 = load i32, i32* %436, align 8
  %438 = call i32 @AcpiDmIndent(i32 %437)
  br label %446

439:                                              ; preds = %387
  %440 = load %struct.TYPE_41__*, %struct.TYPE_41__** %10, align 8
  %441 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %440, i32 0, i32 0
  %442 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %441, i32 0, i32 3
  %443 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %442, i32 0, i32 1
  %444 = load i32, i32* %443, align 4
  %445 = call i32 @AcpiDmNamestring(i32 %444)
  br label %446

446:                                              ; preds = %439, %399
  %447 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0))
  %448 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %449 = call i32 @AcpiDmCommaIfFieldMember(%struct.TYPE_41__* %448)
  %450 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %451 = load i32, i32* @AML_COMMENT_END_NODE, align 4
  %452 = call i32 @ASL_CV_PRINT_ONE_COMMENT(%struct.TYPE_41__* %450, i32 %451, i32* null, i32 0)
  %453 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %454 = load i32, i32* @AMLCOMMENT_INLINE, align 4
  %455 = call i32 @ASL_CV_PRINT_ONE_COMMENT(%struct.TYPE_41__* %453, i32 %454, i32* null, i32 0)
  %456 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0))
  %457 = load i32, i32* @ACPI_PARSEOP_IGNORE, align 4
  %458 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %459 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %458, i32 0, i32 0
  %460 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %459, i32 0, i32 0
  %461 = load i32, i32* %460, align 8
  %462 = or i32 %461, %457
  store i32 %462, i32* %460, align 8
  %463 = load i32, i32* @ACPI_PARSEOP_IGNORE, align 4
  %464 = load %struct.TYPE_41__*, %struct.TYPE_41__** %10, align 8
  %465 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %464, i32 0, i32 0
  %466 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %465, i32 0, i32 0
  %467 = load i32, i32* %466, align 8
  %468 = or i32 %467, %463
  store i32 %468, i32* %466, align 8
  br label %533

469:                                              ; preds = %62
  %470 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %471 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %472 = call i32 @AcpiDmByteList(%struct.TYPE_42__* %470, %struct.TYPE_41__* %471)
  br label %533

473:                                              ; preds = %62
  %474 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %475 = call %struct.TYPE_41__* @AcpiPsGetDepthNext(i32* null, %struct.TYPE_41__* %474)
  store %struct.TYPE_41__* %475, %struct.TYPE_41__** %6, align 8
  %476 = load i32, i32* @ACPI_PARSEOP_IGNORE, align 4
  %477 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %478 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %477, i32 0, i32 0
  %479 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %478, i32 0, i32 0
  %480 = load i32, i32* %479, align 8
  %481 = or i32 %480, %476
  store i32 %481, i32* %479, align 8
  %482 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %483 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %482, i32 0, i32 0
  %484 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %483, i32 0, i32 3
  %485 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %484, i32 0, i32 1
  %486 = load i32, i32* %485, align 4
  %487 = call i32 @AcpiDmNamestring(i32 %486)
  br label %533

488:                                              ; preds = %62
  %489 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %490 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %489, i32 0, i32 0
  %491 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %490, i32 0, i32 1
  %492 = load i32, i32* %491, align 4
  %493 = load i32, i32* @ACPI_DASM_SWITCH, align 4
  %494 = icmp eq i32 %492, %493
  br i1 %494, label %495, label %497

495:                                              ; preds = %488
  %496 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i64 0, i64 0))
  br label %533

497:                                              ; preds = %488
  %498 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %499 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %498, i32 0, i32 0
  %500 = load i8*, i8** %499, align 8
  %501 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %500)
  br label %533

502:                                              ; preds = %62
  %503 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %504 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %503, i32 0, i32 0
  %505 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %504, i32 0, i32 1
  %506 = load i32, i32* %505, align 4
  %507 = load i32, i32* @ACPI_DASM_CASE, align 4
  %508 = icmp eq i32 %506, %507
  br i1 %508, label %509, label %511

509:                                              ; preds = %502
  %510 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0))
  br label %533

511:                                              ; preds = %502
  %512 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %513 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %512, i32 0, i32 0
  %514 = load i8*, i8** %513, align 8
  %515 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %514)
  br label %533

516:                                              ; preds = %62
  %517 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %518 = call i32 @AcpiDmConvertToElseIf(%struct.TYPE_41__* %517)
  br label %533

519:                                              ; preds = %62
  %520 = load i32, i32* @AcpiGbl_DmEmitExternalOpcodes, align 4
  %521 = icmp ne i32 %520, 0
  br i1 %521, label %522, label %527

522:                                              ; preds = %519
  %523 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %524 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %525 = call i32 @AcpiPsGetArg(%struct.TYPE_41__* %524, i32 0)
  %526 = call i32 @AcpiDmEmitExternal(%struct.TYPE_41__* %523, i32 %525)
  br label %527

527:                                              ; preds = %522, %519
  br label %533

528:                                              ; preds = %62
  %529 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %530 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %529, i32 0, i32 0
  %531 = load i8*, i8** %530, align 8
  %532 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %531)
  br label %533

533:                                              ; preds = %16, %26, %32, %51, %528, %527, %516, %511, %509, %497, %495, %473, %469, %446, %380, %344, %285, %278, %277, %213, %202, %165, %164, %140, %109, %108
  ret void
}

declare dso_local i32 @AcpiOsPrintf(i8*, ...) #1

declare dso_local i32 @AcpiDmMatchKeyword(%struct.TYPE_41__*) #1

declare dso_local %struct.TYPE_33__* @AcpiPsGetOpcodeInfo(i32) #1

declare dso_local i32 @AcpiDmDecompressEisaId(i64) #1

declare dso_local i8* @ACPI_FORMAT_UINT64(i32) #1

declare dso_local i32 @AcpiUtPrintString(i32, i32) #1

declare dso_local %struct.TYPE_39__* @AcpiAhMatchHardwareId(i32) #1

declare dso_local i32 @AcpiDmIsResourceTemplate(%struct.TYPE_40__*, %struct.TYPE_41__*) #1

declare dso_local i32 @ACPI_SUCCESS(i32) #1

declare dso_local i32 @AcpiDmIsUuidBuffer(%struct.TYPE_41__*) #1

declare dso_local i32 @AcpiDmIsUnicodeBuffer(%struct.TYPE_41__*) #1

declare dso_local i32 @AcpiDmIsStringBuffer(%struct.TYPE_41__*) #1

declare dso_local i32 @AcpiDmIsPldBuffer(%struct.TYPE_41__*) #1

declare dso_local i32 @AcpiDmNamestring(i32) #1

declare dso_local i64 @AcpiDmDumpName(i32) #1

declare dso_local i32 @ASL_CV_PRINT_ONE_COMMENT(%struct.TYPE_41__*, i32, i32*, i32) #1

declare dso_local i32 @AcpiDmCommaIfFieldMember(%struct.TYPE_41__*) #1

declare dso_local i8* @ACPI_DIV_8(i32) #1

declare dso_local i32 @AcpiDmDecodeAttribute(i32) #1

declare dso_local i32 @AcpiDmResourceTemplate(%struct.TYPE_42__*, i32, i32*, i64) #1

declare dso_local i32 @AcpiDmIndent(i32) #1

declare dso_local i32 @AcpiDmByteList(%struct.TYPE_42__*, %struct.TYPE_41__*) #1

declare dso_local %struct.TYPE_41__* @AcpiPsGetDepthNext(i32*, %struct.TYPE_41__*) #1

declare dso_local i32 @AcpiDmConvertToElseIf(%struct.TYPE_41__*) #1

declare dso_local i32 @AcpiDmEmitExternal(%struct.TYPE_41__*, i32) #1

declare dso_local i32 @AcpiPsGetArg(%struct.TYPE_41__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
