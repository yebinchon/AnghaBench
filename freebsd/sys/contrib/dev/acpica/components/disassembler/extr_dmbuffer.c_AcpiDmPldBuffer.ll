; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/disassembler/extr_dmbuffer.c_AcpiDmPldBuffer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/disassembler/extr_dmbuffer.c_AcpiDmPldBuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@ACPI_PLD_REV1_BUFFER_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@ACPI_PLD_OUTPUT08 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"PLD_Revision\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"PLD_IgnoreColor\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"PLD_Red\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"PLD_Green\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"PLD_Blue\00", align 1
@ACPI_PLD_OUTPUT16 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c"PLD_Width\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"PLD_Height\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"PLD_UserVisible\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"PLD_Dock\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"PLD_Lid\00", align 1
@ACPI_PLD_OUTPUTSTR = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [10 x i8] c"PLD_Panel\00", align 1
@AcpiGbl_PldPanelList = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [21 x i8] c"PLD_VerticalPosition\00", align 1
@AcpiGbl_PldVerticalPositionList = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [23 x i8] c"PLD_HorizontalPosition\00", align 1
@AcpiGbl_PldHorizontalPositionList = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [10 x i8] c"PLD_Shape\00", align 1
@AcpiGbl_PldShapeList = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [21 x i8] c"PLD_GroupOrientation\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"PLD_GroupToken\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"PLD_GroupPosition\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"PLD_Bay\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"PLD_Ejectable\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"PLD_EjectRequired\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"PLD_CabinetNumber\00", align 1
@.str.22 = private unnamed_addr constant [19 x i8] c"PLD_CardCageNumber\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"PLD_Reference\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"PLD_Rotation\00", align 1
@ACPI_PLD_REV2_BUFFER_SIZE = common dso_local global i64 0, align 8
@.str.25 = private unnamed_addr constant [10 x i8] c"PLD_Order\00", align 1
@.str.26 = private unnamed_addr constant [19 x i8] c"PLD_VerticalOffset\00", align 1
@ACPI_PLD_OUTPUT16P = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [21 x i8] c"PLD_HorizontalOffset\00", align 1
@ACPI_PLD_OUTPUT08P = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32*, i64)* @AcpiDmPldBuffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @AcpiDmPldBuffer(i64 %0, i32* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i64, i64* %6, align 8
  %10 = load i64, i64* @ACPI_PLD_REV1_BUFFER_SIZE, align 8
  %11 = icmp slt i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  br label %235

13:                                               ; preds = %3
  %14 = load i32*, i32** %5, align 8
  %15 = load i64, i64* %6, align 8
  %16 = call i32 @AcpiDecodePldBuffer(i32* %14, i64 %15, %struct.TYPE_4__** %7)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = call i64 @ACPI_FAILURE(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  br label %235

21:                                               ; preds = %13
  %22 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @ACPI_PLD_OUTPUT08, align 4
  %24 = sext i32 %23 to i64
  %25 = inttoptr i64 %24 to i8*
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 26
  %28 = load i32, i32* %27, align 4
  %29 = call i32 (i8*, ...) @AcpiOsPrintf(i8* %25, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* @ACPI_PLD_OUTPUT08, align 4
  %31 = sext i32 %30 to i64
  %32 = inttoptr i64 %31 to i8*
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 25
  %35 = load i32, i32* %34, align 4
  %36 = call i32 (i8*, ...) @AcpiOsPrintf(i8* %32, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* @ACPI_PLD_OUTPUT08, align 4
  %38 = sext i32 %37 to i64
  %39 = inttoptr i64 %38 to i8*
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 24
  %42 = load i32, i32* %41, align 4
  %43 = call i32 (i8*, ...) @AcpiOsPrintf(i8* %39, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* @ACPI_PLD_OUTPUT08, align 4
  %45 = sext i32 %44 to i64
  %46 = inttoptr i64 %45 to i8*
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 23
  %49 = load i32, i32* %48, align 4
  %50 = call i32 (i8*, ...) @AcpiOsPrintf(i8* %46, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* @ACPI_PLD_OUTPUT08, align 4
  %52 = sext i32 %51 to i64
  %53 = inttoptr i64 %52 to i8*
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 22
  %56 = load i32, i32* %55, align 4
  %57 = call i32 (i8*, ...) @AcpiOsPrintf(i8* %53, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* @ACPI_PLD_OUTPUT16, align 4
  %59 = sext i32 %58 to i64
  %60 = inttoptr i64 %59 to i8*
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 21
  %63 = load i32, i32* %62, align 4
  %64 = call i32 (i8*, ...) @AcpiOsPrintf(i8* %60, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* @ACPI_PLD_OUTPUT16, align 4
  %66 = sext i32 %65 to i64
  %67 = inttoptr i64 %66 to i8*
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 20
  %70 = load i32, i32* %69, align 4
  %71 = call i32 (i8*, ...) @AcpiOsPrintf(i8* %67, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* @ACPI_PLD_OUTPUT08, align 4
  %73 = sext i32 %72 to i64
  %74 = inttoptr i64 %73 to i8*
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 19
  %77 = load i32, i32* %76, align 4
  %78 = call i32 (i8*, ...) @AcpiOsPrintf(i8* %74, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i32 %77)
  %79 = load i32, i32* @ACPI_PLD_OUTPUT08, align 4
  %80 = sext i32 %79 to i64
  %81 = inttoptr i64 %80 to i8*
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 18
  %84 = load i32, i32* %83, align 4
  %85 = call i32 (i8*, ...) @AcpiOsPrintf(i8* %81, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i32 %84)
  %86 = load i32, i32* @ACPI_PLD_OUTPUT08, align 4
  %87 = sext i32 %86 to i64
  %88 = inttoptr i64 %87 to i8*
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 17
  %91 = load i32, i32* %90, align 4
  %92 = call i32 (i8*, ...) @AcpiOsPrintf(i8* %88, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i32 %91)
  %93 = load i32, i32* @ACPI_PLD_OUTPUTSTR, align 4
  %94 = sext i32 %93 to i64
  %95 = inttoptr i64 %94 to i8*
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 16
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @AcpiGbl_PldPanelList, align 4
  %100 = call i32 @AcpiDmFindNameByIndex(i32 %98, i32 %99)
  %101 = call i32 (i8*, ...) @AcpiOsPrintf(i8* %95, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i32 %100)
  %102 = load i32, i32* @ACPI_PLD_OUTPUTSTR, align 4
  %103 = sext i32 %102 to i64
  %104 = inttoptr i64 %103 to i8*
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 15
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @AcpiGbl_PldVerticalPositionList, align 4
  %109 = call i32 @AcpiDmFindNameByIndex(i32 %107, i32 %108)
  %110 = call i32 (i8*, ...) @AcpiOsPrintf(i8* %104, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i32 %109)
  %111 = load i32, i32* @ACPI_PLD_OUTPUTSTR, align 4
  %112 = sext i32 %111 to i64
  %113 = inttoptr i64 %112 to i8*
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 14
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @AcpiGbl_PldHorizontalPositionList, align 4
  %118 = call i32 @AcpiDmFindNameByIndex(i32 %116, i32 %117)
  %119 = call i32 (i8*, ...) @AcpiOsPrintf(i8* %113, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0), i32 %118)
  %120 = load i32, i32* @ACPI_PLD_OUTPUTSTR, align 4
  %121 = sext i32 %120 to i64
  %122 = inttoptr i64 %121 to i8*
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 13
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @AcpiGbl_PldShapeList, align 4
  %127 = call i32 @AcpiDmFindNameByIndex(i32 %125, i32 %126)
  %128 = call i32 (i8*, ...) @AcpiOsPrintf(i8* %122, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i32 %127)
  %129 = load i32, i32* @ACPI_PLD_OUTPUT08, align 4
  %130 = sext i32 %129 to i64
  %131 = inttoptr i64 %130 to i8*
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 12
  %134 = load i32, i32* %133, align 4
  %135 = call i32 (i8*, ...) @AcpiOsPrintf(i8* %131, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i64 0, i64 0), i32 %134)
  %136 = load i32, i32* @ACPI_PLD_OUTPUT08, align 4
  %137 = sext i32 %136 to i64
  %138 = inttoptr i64 %137 to i8*
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 11
  %141 = load i32, i32* %140, align 4
  %142 = call i32 (i8*, ...) @AcpiOsPrintf(i8* %138, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0), i32 %141)
  %143 = load i32, i32* @ACPI_PLD_OUTPUT08, align 4
  %144 = sext i32 %143 to i64
  %145 = inttoptr i64 %144 to i8*
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 10
  %148 = load i32, i32* %147, align 4
  %149 = call i32 (i8*, ...) @AcpiOsPrintf(i8* %145, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i64 0, i64 0), i32 %148)
  %150 = load i32, i32* @ACPI_PLD_OUTPUT08, align 4
  %151 = sext i32 %150 to i64
  %152 = inttoptr i64 %151 to i8*
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 9
  %155 = load i32, i32* %154, align 4
  %156 = call i32 (i8*, ...) @AcpiOsPrintf(i8* %152, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0), i32 %155)
  %157 = load i32, i32* @ACPI_PLD_OUTPUT08, align 4
  %158 = sext i32 %157 to i64
  %159 = inttoptr i64 %158 to i8*
  %160 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 8
  %162 = load i32, i32* %161, align 4
  %163 = call i32 (i8*, ...) @AcpiOsPrintf(i8* %159, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i64 0, i64 0), i32 %162)
  %164 = load i32, i32* @ACPI_PLD_OUTPUT08, align 4
  %165 = sext i32 %164 to i64
  %166 = inttoptr i64 %165 to i8*
  %167 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 7
  %169 = load i32, i32* %168, align 4
  %170 = call i32 (i8*, ...) @AcpiOsPrintf(i8* %166, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i64 0, i64 0), i32 %169)
  %171 = load i32, i32* @ACPI_PLD_OUTPUT08, align 4
  %172 = sext i32 %171 to i64
  %173 = inttoptr i64 %172 to i8*
  %174 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 6
  %176 = load i32, i32* %175, align 4
  %177 = call i32 (i8*, ...) @AcpiOsPrintf(i8* %173, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i64 0, i64 0), i32 %176)
  %178 = load i32, i32* @ACPI_PLD_OUTPUT08, align 4
  %179 = sext i32 %178 to i64
  %180 = inttoptr i64 %179 to i8*
  %181 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 5
  %183 = load i32, i32* %182, align 4
  %184 = call i32 (i8*, ...) @AcpiOsPrintf(i8* %180, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.22, i64 0, i64 0), i32 %183)
  %185 = load i32, i32* @ACPI_PLD_OUTPUT08, align 4
  %186 = sext i32 %185 to i64
  %187 = inttoptr i64 %186 to i8*
  %188 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 4
  %190 = load i32, i32* %189, align 4
  %191 = call i32 (i8*, ...) @AcpiOsPrintf(i8* %187, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i64 0, i64 0), i32 %190)
  %192 = load i32, i32* @ACPI_PLD_OUTPUT08, align 4
  %193 = sext i32 %192 to i64
  %194 = inttoptr i64 %193 to i8*
  %195 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 3
  %197 = load i32, i32* %196, align 4
  %198 = call i32 (i8*, ...) @AcpiOsPrintf(i8* %194, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i64 0, i64 0), i32 %197)
  %199 = load i64, i64* %6, align 8
  %200 = load i64, i64* @ACPI_PLD_REV2_BUFFER_SIZE, align 8
  %201 = icmp sge i64 %199, %200
  br i1 %201, label %202, label %224

202:                                              ; preds = %21
  %203 = load i32, i32* @ACPI_PLD_OUTPUT08, align 4
  %204 = sext i32 %203 to i64
  %205 = inttoptr i64 %204 to i8*
  %206 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %207 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = call i32 (i8*, ...) @AcpiOsPrintf(i8* %205, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i64 0, i64 0), i32 %208)
  %210 = load i32, i32* @ACPI_PLD_OUTPUT16, align 4
  %211 = sext i32 %210 to i64
  %212 = inttoptr i64 %211 to i8*
  %213 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 4
  %216 = call i32 (i8*, ...) @AcpiOsPrintf(i8* %212, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.26, i64 0, i64 0), i32 %215)
  %217 = load i32, i32* @ACPI_PLD_OUTPUT16P, align 4
  %218 = sext i32 %217 to i64
  %219 = inttoptr i64 %218 to i8*
  %220 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %221 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = call i32 (i8*, ...) @AcpiOsPrintf(i8* %219, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.27, i64 0, i64 0), i32 %222)
  br label %232

224:                                              ; preds = %21
  %225 = load i32, i32* @ACPI_PLD_OUTPUT08P, align 4
  %226 = sext i32 %225 to i64
  %227 = inttoptr i64 %226 to i8*
  %228 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %229 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = call i32 (i8*, ...) @AcpiOsPrintf(i8* %227, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i64 0, i64 0), i32 %230)
  br label %232

232:                                              ; preds = %224, %202
  %233 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %234 = call i32 @ACPI_FREE(%struct.TYPE_4__* %233)
  br label %235

235:                                              ; preds = %232, %20, %12
  ret void
}

declare dso_local i32 @AcpiDecodePldBuffer(i32*, i64, %struct.TYPE_4__**) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @AcpiOsPrintf(i8*, ...) #1

declare dso_local i32 @AcpiDmFindNameByIndex(i32, i32) #1

declare dso_local i32 @ACPI_FREE(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
