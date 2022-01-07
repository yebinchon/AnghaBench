; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslopt.c_OptOptimizeNamePath.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslopt.c_OptOptimizeNamePath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_35__ = type { %struct.TYPE_33__, %struct.TYPE_29__ }
%struct.TYPE_33__ = type { i32, i64, i64, %struct.TYPE_32__, %struct.TYPE_35__*, %struct.TYPE_35__*, i32*, %struct.TYPE_35__*, i32 }
%struct.TYPE_32__ = type { i8* }
%struct.TYPE_29__ = type { i32, %struct.TYPE_28__* }
%struct.TYPE_28__ = type { %struct.TYPE_27__ }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_34__ = type { %struct.TYPE_31__* }
%struct.TYPE_31__ = type { %struct.TYPE_30__ }
%struct.TYPE_30__ = type { i32* }
%struct.TYPE_26__ = type { i8*, i8* }

@AslGbl_ReferenceOptimizationFlag = common dso_local global i32 0, align 4
@return_VOID = common dso_local global i32 0, align 4
@ACPI_DB_OPTIMIZATIONS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"PATH OPTIMIZE: Line %5d ParentOp [%12.12s] ThisOp [%12.12s] \00", align 1
@AML_NAMED = common dso_local global i32 0, align 4
@AML_CREATE = common dso_local global i32 0, align 4
@OP_IS_NAME_DECLARATION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"******* NAME DECLARATION\0A\00", align 1
@ACPI_NAMESEG_SIZE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"NAMESEG %4.4s\0A\00", align 1
@AcpiGbl_RootNode = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"NAME\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"REFERENCE\0A\00", align 1
@ACPI_ALLOCATE_LOCAL_BUFFER = common dso_local global i8* null, align 8
@FALSE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"Getting Target NamePath\00", align 1
@ASL_NO_ABORT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [25 x i8] c"Getting Current NamePath\00", align 1
@ACPI_UINT32_MAX = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [23 x i8] c"Externalizing NamePath\00", align 1
@.str.8 = private unnamed_addr constant [76 x i8] c"CURRENT SCOPE: (%2u) %-37s FULL PATH TO NAME: (%2u) %-32s ACTUAL AML:%-32s\0A\00", align 1
@OptTotal = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [34 x i8] c" REDUCED BY %2u (TOTAL SAVED %2u)\00", align 1
@AML_ALIAS_OP = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [17 x i8] c" ALREADY OPTIMAL\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @OptOptimizeNamePath(%struct.TYPE_35__* %0, i32 %1, %struct.TYPE_34__* %2, i8* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_35__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_34__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_26__, align 8
  %13 = alloca %struct.TYPE_26__, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_35__*, align 8
  store %struct.TYPE_35__* %0, %struct.TYPE_35__** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_34__* %2, %struct.TYPE_34__** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32* %4, i32** %10, align 8
  store i8* null, i8** %17, align 8
  %20 = call i32 @ACPI_FUNCTION_TRACE(void (%struct.TYPE_35__*, i32, %struct.TYPE_34__*, i8*, i32*)* @OptOptimizeNamePath)
  %21 = load i32, i32* @AslGbl_ReferenceOptimizationFlag, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %5
  %24 = load i32, i32* @return_VOID, align 4
  br label %25

25:                                               ; preds = %23, %5
  %26 = load i32*, i32** %10, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %40

28:                                               ; preds = %25
  %29 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %30 = icmp ne %struct.TYPE_34__* %29, null
  br i1 %30, label %31, label %40

31:                                               ; preds = %28
  %32 = load i8*, i8** %9, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %40

34:                                               ; preds = %31
  %35 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_28__*, %struct.TYPE_28__** %37, align 8
  %39 = icmp ne %struct.TYPE_28__* %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %34, %31, %28, %25
  %41 = load i32, i32* @return_VOID, align 4
  br label %42

42:                                               ; preds = %40, %34
  %43 = load i32, i32* @ACPI_DB_OPTIMIZATIONS, align 4
  %44 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %45, i32 0, i32 8
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_28__*, %struct.TYPE_28__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @AcpiPsGetOpcodeName(i32 %54)
  %56 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @AcpiPsGetOpcodeName(i32 %59)
  %61 = call i32 @ACPI_DEBUG_PRINT_RAW(i32 %60)
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @AML_NAMED, align 4
  %64 = load i32, i32* @AML_CREATE, align 4
  %65 = or i32 %63, %64
  %66 = and i32 %62, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %81, label %68

68:                                               ; preds = %42
  %69 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @OP_IS_NAME_DECLARATION, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %68
  %77 = load i32, i32* @ACPI_DB_OPTIMIZATIONS, align 4
  %78 = call i32 @ACPI_DEBUG_PRINT_RAW(i32 ptrtoint ([26 x i8]* @.str.1 to i32))
  %79 = load i32, i32* @return_VOID, align 4
  br label %80

80:                                               ; preds = %76, %68
  br label %81

81:                                               ; preds = %80, %42
  %82 = load i8*, i8** %9, align 8
  %83 = call i64 @strlen(i8* %82)
  store i64 %83, i64* %14, align 8
  %84 = load i64, i64* %14, align 8
  %85 = load i64, i64* @ACPI_NAMESEG_SIZE, align 8
  %86 = icmp sle i64 %84, %85
  br i1 %86, label %87, label %93

87:                                               ; preds = %81
  %88 = load i32, i32* @ACPI_DB_OPTIMIZATIONS, align 4
  %89 = load i8*, i8** %9, align 8
  %90 = ptrtoint i8* %89 to i32
  %91 = call i32 @ACPI_DEBUG_PRINT_RAW(i32 %90)
  %92 = load i32, i32* @return_VOID, align 4
  br label %93

93:                                               ; preds = %87, %81
  %94 = load i32*, i32** @AcpiGbl_RootNode, align 8
  store i32* %94, i32** %15, align 8
  %95 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_31__*, %struct.TYPE_31__** %96, align 8
  %98 = icmp ne %struct.TYPE_31__* %97, null
  br i1 %98, label %99, label %106

99:                                               ; preds = %93
  %100 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_31__*, %struct.TYPE_31__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  store i32* %105, i32** %15, align 8
  br label %106

106:                                              ; preds = %99, %93
  %107 = load i32, i32* %7, align 4
  %108 = load i32, i32* @AML_NAMED, align 4
  %109 = load i32, i32* @AML_CREATE, align 4
  %110 = or i32 %108, %109
  %111 = and i32 %107, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %154

113:                                              ; preds = %106
  %114 = load i32, i32* @ACPI_DB_OPTIMIZATIONS, align 4
  %115 = call i32 @ACPI_DEBUG_PRINT_RAW(i32 ptrtoint ([6 x i8]* @.str.3 to i32))
  %116 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %117, i32 0, i32 7
  %119 = load %struct.TYPE_35__*, %struct.TYPE_35__** %118, align 8
  store %struct.TYPE_35__* %119, %struct.TYPE_35__** %19, align 8
  br label %120

120:                                              ; preds = %132, %113
  %121 = load %struct.TYPE_35__*, %struct.TYPE_35__** %19, align 8
  %122 = icmp ne %struct.TYPE_35__* %121, null
  br i1 %122, label %123, label %130

123:                                              ; preds = %120
  %124 = load %struct.TYPE_35__*, %struct.TYPE_35__** %19, align 8
  %125 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %125, i32 0, i32 6
  %127 = load i32*, i32** %126, align 8
  %128 = icmp ne i32* %127, null
  %129 = xor i1 %128, true
  br label %130

130:                                              ; preds = %123, %120
  %131 = phi i1 [ false, %120 ], [ %129, %123 ]
  br i1 %131, label %132, label %137

132:                                              ; preds = %130
  %133 = load %struct.TYPE_35__*, %struct.TYPE_35__** %19, align 8
  %134 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %134, i32 0, i32 7
  %136 = load %struct.TYPE_35__*, %struct.TYPE_35__** %135, align 8
  store %struct.TYPE_35__* %136, %struct.TYPE_35__** %19, align 8
  br label %120

137:                                              ; preds = %130
  %138 = load %struct.TYPE_35__*, %struct.TYPE_35__** %19, align 8
  %139 = icmp ne %struct.TYPE_35__* %138, null
  br i1 %139, label %140, label %151

140:                                              ; preds = %137
  %141 = load %struct.TYPE_35__*, %struct.TYPE_35__** %19, align 8
  %142 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %142, i32 0, i32 6
  %144 = load i32*, i32** %143, align 8
  %145 = icmp ne i32* %144, null
  br i1 %145, label %146, label %151

146:                                              ; preds = %140
  %147 = load %struct.TYPE_35__*, %struct.TYPE_35__** %19, align 8
  %148 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %148, i32 0, i32 6
  %150 = load i32*, i32** %149, align 8
  store i32* %150, i32** %15, align 8
  br label %153

151:                                              ; preds = %140, %137
  %152 = load i32*, i32** @AcpiGbl_RootNode, align 8
  store i32* %152, i32** %15, align 8
  br label %153

153:                                              ; preds = %151, %146
  br label %157

154:                                              ; preds = %106
  %155 = load i32, i32* @ACPI_DB_OPTIMIZATIONS, align 4
  %156 = call i32 @ACPI_DEBUG_PRINT_RAW(i32 ptrtoint ([11 x i8]* @.str.4 to i32))
  br label %157

157:                                              ; preds = %154, %153
  %158 = load i8*, i8** @ACPI_ALLOCATE_LOCAL_BUFFER, align 8
  %159 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %12, i32 0, i32 1
  store i8* %158, i8** %159, align 8
  %160 = load i32*, i32** %10, align 8
  %161 = load i32, i32* @FALSE, align 4
  %162 = call i32 @AcpiNsHandleToPathname(i32* %160, %struct.TYPE_26__* %12, i32 %161)
  store i32 %162, i32* %11, align 4
  %163 = load i32, i32* %11, align 4
  %164 = call i64 @ACPI_FAILURE(i32 %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %172

166:                                              ; preds = %157
  %167 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %168 = load i32, i32* %11, align 4
  %169 = load i32, i32* @ASL_NO_ABORT, align 4
  %170 = call i32 @AslCoreSubsystemError(%struct.TYPE_35__* %167, i32 %168, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %169)
  %171 = load i32, i32* @return_VOID, align 4
  br label %172

172:                                              ; preds = %166, %157
  %173 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %12, i32 0, i32 1
  %174 = load i8*, i8** %173, align 8
  %175 = getelementptr inbounds i8, i8* %174, i32 -1
  store i8* %175, i8** %173, align 8
  %176 = load i8*, i8** @ACPI_ALLOCATE_LOCAL_BUFFER, align 8
  %177 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %13, i32 0, i32 1
  store i8* %176, i8** %177, align 8
  %178 = load i32*, i32** %15, align 8
  %179 = load i32, i32* @FALSE, align 4
  %180 = call i32 @AcpiNsHandleToPathname(i32* %178, %struct.TYPE_26__* %13, i32 %179)
  store i32 %180, i32* %11, align 4
  %181 = load i32, i32* %11, align 4
  %182 = call i64 @ACPI_FAILURE(i32 %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %190

184:                                              ; preds = %172
  %185 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %186 = load i32, i32* %11, align 4
  %187 = load i32, i32* @ASL_NO_ABORT, align 4
  %188 = call i32 @AslCoreSubsystemError(%struct.TYPE_35__* %185, i32 %186, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i32 %187)
  %189 = load i32, i32* @return_VOID, align 4
  br label %190

190:                                              ; preds = %184, %172
  %191 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %13, i32 0, i32 1
  %192 = load i8*, i8** %191, align 8
  %193 = getelementptr inbounds i8, i8* %192, i32 -1
  store i8* %193, i8** %191, align 8
  %194 = load i32, i32* @ACPI_UINT32_MAX, align 4
  %195 = load i8*, i8** %9, align 8
  %196 = call i32 @AcpiNsExternalizeName(i32 %194, i8* %195, i32* null, i8** %16)
  store i32 %196, i32* %11, align 4
  %197 = load i32, i32* %11, align 4
  %198 = call i64 @ACPI_FAILURE(i32 %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %206

200:                                              ; preds = %190
  %201 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %202 = load i32, i32* %11, align 4
  %203 = load i32, i32* @ASL_NO_ABORT, align 4
  %204 = call i32 @AslCoreSubsystemError(%struct.TYPE_35__* %201, i32 %202, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32 %203)
  %205 = load i32, i32* @return_VOID, align 4
  br label %206

206:                                              ; preds = %200, %190
  %207 = load i32, i32* @ACPI_DB_OPTIMIZATIONS, align 4
  %208 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %13, i32 0, i32 1
  %209 = load i8*, i8** %208, align 8
  %210 = ptrtoint i8* %209 to i32
  %211 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %13, i32 0, i32 0
  %212 = load i8*, i8** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %12, i32 0, i32 1
  %214 = load i8*, i8** %213, align 8
  %215 = ptrtoint i8* %214 to i32
  %216 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %12, i32 0, i32 0
  %217 = load i8*, i8** %216, align 8
  %218 = load i8*, i8** %16, align 8
  %219 = ptrtoint i8* %218 to i32
  %220 = call i32 @ACPI_DEBUG_PRINT_RAW(i32 %219)
  %221 = load i8*, i8** %16, align 8
  %222 = call i32 @ACPI_FREE(i8* %221)
  %223 = load i32, i32* %7, align 4
  %224 = load i32, i32* @AML_NAMED, align 4
  %225 = load i32, i32* @AML_CREATE, align 4
  %226 = or i32 %224, %225
  %227 = and i32 %223, %226
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %247

229:                                              ; preds = %206
  %230 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %231 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %232 = load i32*, i32** %15, align 8
  %233 = load i32*, i32** %10, align 8
  %234 = load i8*, i8** %9, align 8
  %235 = call i32 @OptOptimizeNameDeclaration(%struct.TYPE_35__* %230, %struct.TYPE_34__* %231, i32* %232, i32* %233, i8* %234, i8** %17)
  store i32 %235, i32* %11, align 4
  %236 = load i32, i32* %11, align 4
  %237 = call i64 @ACPI_FAILURE(i32 %236)
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %246

239:                                              ; preds = %229
  %240 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %241 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %242 = load i32*, i32** %15, align 8
  %243 = load i32*, i32** %10, align 8
  %244 = load i64, i64* %14, align 8
  %245 = call i32 @OptBuildShortestPath(%struct.TYPE_35__* %240, %struct.TYPE_34__* %241, i32* %242, i32* %243, %struct.TYPE_26__* %13, %struct.TYPE_26__* %12, i64 %244, i32 1, i8** %17)
  store i32 %245, i32* %11, align 4
  br label %246

246:                                              ; preds = %239, %229
  br label %264

247:                                              ; preds = %206
  %248 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %249 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %250 = load i32*, i32** %15, align 8
  %251 = load i32*, i32** %10, align 8
  %252 = call i32 @OptSearchToRoot(%struct.TYPE_35__* %248, %struct.TYPE_34__* %249, i32* %250, i32* %251, %struct.TYPE_26__* %12, i8** %17)
  store i32 %252, i32* %11, align 4
  %253 = load i32, i32* %11, align 4
  %254 = call i64 @ACPI_FAILURE(i32 %253)
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %263

256:                                              ; preds = %247
  %257 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %258 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %259 = load i32*, i32** %15, align 8
  %260 = load i32*, i32** %10, align 8
  %261 = load i64, i64* %14, align 8
  %262 = call i32 @OptBuildShortestPath(%struct.TYPE_35__* %257, %struct.TYPE_34__* %258, i32* %259, i32* %260, %struct.TYPE_26__* %13, %struct.TYPE_26__* %12, i64 %261, i32 0, i8** %17)
  store i32 %262, i32* %11, align 4
  br label %263

263:                                              ; preds = %256, %247
  br label %264

264:                                              ; preds = %263, %246
  %265 = load i32, i32* %11, align 4
  %266 = call i64 @ACPI_SUCCESS(i32 %265)
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %268, label %383

268:                                              ; preds = %264
  %269 = load i64, i64* %14, align 8
  %270 = load i8*, i8** %17, align 8
  %271 = call i64 @strlen(i8* %270)
  %272 = sub nsw i64 %269, %271
  store i64 %272, i64* %18, align 8
  %273 = load i64, i64* %18, align 8
  %274 = load i32, i32* @OptTotal, align 4
  %275 = sext i32 %274 to i64
  %276 = add nsw i64 %275, %273
  %277 = trunc i64 %276 to i32
  store i32 %277, i32* @OptTotal, align 4
  %278 = load i32, i32* @ACPI_DB_OPTIMIZATIONS, align 4
  %279 = load i64, i64* %18, align 8
  %280 = trunc i64 %279 to i32
  %281 = load i32, i32* @OptTotal, align 4
  %282 = call i32 @ACPI_DEBUG_PRINT_RAW(i32 %281)
  %283 = load i32, i32* %7, align 4
  %284 = load i32, i32* @AML_NAMED, align 4
  %285 = and i32 %283, %284
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %335

287:                                              ; preds = %268
  %288 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %289 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %288, i32 0, i32 0
  %290 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %289, i32 0, i32 1
  %291 = load i64, i64* %290, align 8
  %292 = load i64, i64* @AML_ALIAS_OP, align 8
  %293 = icmp eq i64 %291, %292
  br i1 %293, label %294, label %317

294:                                              ; preds = %287
  %295 = load i8*, i8** %17, align 8
  %296 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %297 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %296, i32 0, i32 0
  %298 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %297, i32 0, i32 5
  %299 = load %struct.TYPE_35__*, %struct.TYPE_35__** %298, align 8
  %300 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %299, i32 0, i32 0
  %301 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %300, i32 0, i32 4
  %302 = load %struct.TYPE_35__*, %struct.TYPE_35__** %301, align 8
  %303 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %302, i32 0, i32 0
  %304 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %303, i32 0, i32 3
  %305 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %304, i32 0, i32 0
  store i8* %295, i8** %305, align 8
  %306 = load i8*, i8** %17, align 8
  %307 = call i64 @strlen(i8* %306)
  %308 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %309 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %308, i32 0, i32 0
  %310 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %309, i32 0, i32 5
  %311 = load %struct.TYPE_35__*, %struct.TYPE_35__** %310, align 8
  %312 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %311, i32 0, i32 0
  %313 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %312, i32 0, i32 4
  %314 = load %struct.TYPE_35__*, %struct.TYPE_35__** %313, align 8
  %315 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %314, i32 0, i32 0
  %316 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %315, i32 0, i32 2
  store i64 %307, i64* %316, align 8
  br label %334

317:                                              ; preds = %287
  %318 = load i8*, i8** %17, align 8
  %319 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %320 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %319, i32 0, i32 0
  %321 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %320, i32 0, i32 5
  %322 = load %struct.TYPE_35__*, %struct.TYPE_35__** %321, align 8
  %323 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %322, i32 0, i32 0
  %324 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %323, i32 0, i32 3
  %325 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %324, i32 0, i32 0
  store i8* %318, i8** %325, align 8
  %326 = load i8*, i8** %17, align 8
  %327 = call i64 @strlen(i8* %326)
  %328 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %329 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %328, i32 0, i32 0
  %330 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %329, i32 0, i32 5
  %331 = load %struct.TYPE_35__*, %struct.TYPE_35__** %330, align 8
  %332 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %331, i32 0, i32 0
  %333 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %332, i32 0, i32 2
  store i64 %327, i64* %333, align 8
  br label %334

334:                                              ; preds = %317, %294
  br label %382

335:                                              ; preds = %268
  %336 = load i32, i32* %7, align 4
  %337 = load i32, i32* @AML_CREATE, align 4
  %338 = and i32 %336, %337
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %340, label %370

340:                                              ; preds = %335
  %341 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %342 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %341, i32 0, i32 0
  %343 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %342, i32 0, i32 5
  %344 = load %struct.TYPE_35__*, %struct.TYPE_35__** %343, align 8
  store %struct.TYPE_35__* %344, %struct.TYPE_35__** %19, align 8
  br label %345

345:                                              ; preds = %354, %340
  %346 = load %struct.TYPE_35__*, %struct.TYPE_35__** %19, align 8
  %347 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %346, i32 0, i32 0
  %348 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %347, i32 0, i32 0
  %349 = load i32, i32* %348, align 8
  %350 = load i32, i32* @OP_IS_NAME_DECLARATION, align 4
  %351 = and i32 %349, %350
  %352 = icmp ne i32 %351, 0
  %353 = xor i1 %352, true
  br i1 %353, label %354, label %359

354:                                              ; preds = %345
  %355 = load %struct.TYPE_35__*, %struct.TYPE_35__** %19, align 8
  %356 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %355, i32 0, i32 0
  %357 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %356, i32 0, i32 4
  %358 = load %struct.TYPE_35__*, %struct.TYPE_35__** %357, align 8
  store %struct.TYPE_35__* %358, %struct.TYPE_35__** %19, align 8
  br label %345

359:                                              ; preds = %345
  %360 = load i8*, i8** %17, align 8
  %361 = load %struct.TYPE_35__*, %struct.TYPE_35__** %19, align 8
  %362 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %361, i32 0, i32 0
  %363 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %362, i32 0, i32 3
  %364 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %363, i32 0, i32 0
  store i8* %360, i8** %364, align 8
  %365 = load i8*, i8** %17, align 8
  %366 = call i64 @strlen(i8* %365)
  %367 = load %struct.TYPE_35__*, %struct.TYPE_35__** %19, align 8
  %368 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %367, i32 0, i32 0
  %369 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %368, i32 0, i32 2
  store i64 %366, i64* %369, align 8
  br label %381

370:                                              ; preds = %335
  %371 = load i8*, i8** %17, align 8
  %372 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %373 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %372, i32 0, i32 0
  %374 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %373, i32 0, i32 3
  %375 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %374, i32 0, i32 0
  store i8* %371, i8** %375, align 8
  %376 = load i8*, i8** %17, align 8
  %377 = call i64 @strlen(i8* %376)
  %378 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %379 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %378, i32 0, i32 0
  %380 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %379, i32 0, i32 2
  store i64 %377, i64* %380, align 8
  br label %381

381:                                              ; preds = %370, %359
  br label %382

382:                                              ; preds = %381, %334
  br label %386

383:                                              ; preds = %264
  %384 = load i32, i32* @ACPI_DB_OPTIMIZATIONS, align 4
  %385 = call i32 @ACPI_DEBUG_PRINT_RAW(i32 ptrtoint ([17 x i8]* @.str.10 to i32))
  br label %386

386:                                              ; preds = %383, %382
  %387 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %12, i32 0, i32 0
  %388 = load i8*, i8** %387, align 8
  %389 = call i32 @ACPI_FREE(i8* %388)
  %390 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %13, i32 0, i32 0
  %391 = load i8*, i8** %390, align 8
  %392 = call i32 @ACPI_FREE(i8* %391)
  %393 = load i32, i32* @ACPI_DB_OPTIMIZATIONS, align 4
  %394 = call i32 @ACPI_DEBUG_PRINT_RAW(i32 ptrtoint ([2 x i8]* @.str.11 to i32))
  %395 = load i32, i32* @return_VOID, align 4
  ret void
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(void (%struct.TYPE_35__*, i32, %struct.TYPE_34__*, i8*, i32*)*) #1

declare dso_local i32 @ACPI_DEBUG_PRINT_RAW(i32) #1

declare dso_local i32 @AcpiPsGetOpcodeName(i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @AcpiNsHandleToPathname(i32*, %struct.TYPE_26__*, i32) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @AslCoreSubsystemError(%struct.TYPE_35__*, i32, i8*, i32) #1

declare dso_local i32 @AcpiNsExternalizeName(i32, i8*, i32*, i8**) #1

declare dso_local i32 @ACPI_FREE(i8*) #1

declare dso_local i32 @OptOptimizeNameDeclaration(%struct.TYPE_35__*, %struct.TYPE_34__*, i32*, i32*, i8*, i8**) #1

declare dso_local i32 @OptBuildShortestPath(%struct.TYPE_35__*, %struct.TYPE_34__*, i32*, i32*, %struct.TYPE_26__*, %struct.TYPE_26__*, i64, i32, i8**) #1

declare dso_local i32 @OptSearchToRoot(%struct.TYPE_35__*, %struct.TYPE_34__*, i32*, i32*, %struct.TYPE_26__*, i8**) #1

declare dso_local i64 @ACPI_SUCCESS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
