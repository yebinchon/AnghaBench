; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslload.c_LdNamespace1Begin.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslload.c_LdNamespace1Begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_31__ = type { i32, i64, i32, %struct.TYPE_29__* }
%struct.TYPE_29__ = type { %struct.TYPE_27__ }
%struct.TYPE_27__ = type { i32, i8*, i32, i32, i8*, i32, i64, %struct.TYPE_31__*, %struct.TYPE_29__*, %struct.TYPE_25__, %struct.TYPE_29__*, %struct.TYPE_29__*, i32 }
%struct.TYPE_25__ = type { i8*, i64 }
%struct.TYPE_28__ = type { i32, %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_30__ = type { i64 }

@ACPI_TYPE_ANY = common dso_local global i64 0, align 8
@ACPI_NS_NO_UPSEARCH = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@ACPI_DB_DISPATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"Op %p [%s]\0A\00", align 1
@ACPI_TYPE_LOCAL_REGION_FIELD = common dso_local global i32 0, align 4
@ACPI_TYPE_REGION = common dso_local global i32 0, align 4
@AML_INT_NAMEPATH_OP = common dso_local global i32 0, align 4
@ACPI_IMODE_EXECUTE = common dso_local global i32 0, align 4
@ACPI_NS_SEARCH_PARENT = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i64 0, align 8
@PARSEOP_NAMESEG = common dso_local global i32 0, align 4
@PARSEOP_NAMESTRING = common dso_local global i32 0, align 4
@AML_CLASS_NAMED_OBJECT = common dso_local global i64 0, align 8
@ACPI_NS_DONT_OPEN_SCOPE = common dso_local global i32 0, align 4
@AE_NOT_FOUND = common dso_local global i64 0, align 8
@PARSEOP_PACKAGE = common dso_local global i64 0, align 8
@PARSEOP_VAR_PACKAGE = common dso_local global i64 0, align 8
@OP_NOT_FOUND_DURING_LOAD = common dso_local global i32 0, align 4
@OP_IS_RESOURCE_DESC = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@ACPI_NS_EXTERNAL = common dso_local global i32 0, align 4
@ACPI_IMODE_LOAD_PASS1 = common dso_local global i32 0, align 4
@ACPI_NAMESEG_SIZE = common dso_local global i32 0, align 4
@ASL_ERROR = common dso_local global i32 0, align 4
@ASL_MSG_NOT_FOUND = common dso_local global i32 0, align 4
@ASL_MSG_NAMEPATH_NOT_EXIST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Failure from namespace lookup\00", align 1
@ANOBJ_IS_EXTERNAL = common dso_local global i32 0, align 4
@AslGbl_TableSignature = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"DSDT\00", align 1
@PARSEOP_METHOD = common dso_local global i32 0, align 4
@ASL_MSG_CROSS_TABLE_SCOPE = common dso_local global i32 0, align 4
@AslGbl_MsgBuffer = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [34 x i8] c"%s [%s], changing type to [Scope]\00", align 1
@ASL_REMARK = common dso_local global i32 0, align 4
@ASL_MSG_SCOPE_TYPE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"%s [%s]\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"Loading name: %s, (%s)\0A\00", align 1
@ACPI_NS_ERROR_IF_FOUND = common dso_local global i32 0, align 4
@AML_NAMED = common dso_local global i32 0, align 4
@AML_CREATE = common dso_local global i32 0, align 4
@AML_EXTERNAL_OP = common dso_local global i32 0, align 4
@ACPI_NS_PREFIX_MUST_EXIST = common dso_local global i32 0, align 4
@AE_ALREADY_EXISTS = common dso_local global i64 0, align 8
@ASL_MSG_NAME_EXISTS = common dso_local global i32 0, align 4
@ASL_MSG_FOUND_HERE = common dso_local global i32 0, align 4
@AcpiGbl_RootNode = common dso_local global %struct.TYPE_31__* null, align 8
@ASL_EXTERNAL_METHOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_29__*, i32, i8*)* @LdNamespace1Begin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @LdNamespace1Begin(%struct.TYPE_29__* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_29__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_28__*, align 8
  %9 = alloca %struct.TYPE_31__*, align 8
  %10 = alloca %struct.TYPE_29__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_29__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_30__*, align 8
  %20 = alloca %struct.TYPE_29__*, align 8
  store %struct.TYPE_29__* %0, %struct.TYPE_29__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = bitcast i8* %21 to %struct.TYPE_28__*
  store %struct.TYPE_28__* %22, %struct.TYPE_28__** %8, align 8
  %23 = load i64, i64* @ACPI_TYPE_ANY, align 8
  store i64 %23, i64* %13, align 8
  %24 = load i32, i32* @ACPI_NS_NO_UPSEARCH, align 4
  store i32 %24, i32* %15, align 4
  %25 = load i64, i64* @FALSE, align 8
  store i64 %25, i64* %18, align 8
  %26 = call i32 @ACPI_FUNCTION_NAME(i64 (%struct.TYPE_29__*, i32, i8*)* @LdNamespace1Begin)
  %27 = load i32, i32* @ACPI_DB_DISPATCH, align 4
  %28 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %29 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %30, i32 0, i32 12
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @ACPI_DEBUG_PRINT(i32 %32)
  %34 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  switch i32 %37, label %83 [
    i32 133, label %38
    i32 135, label %44
    i32 134, label %44
    i32 132, label %50
  ]

38:                                               ; preds = %3
  %39 = load i32, i32* @ACPI_TYPE_LOCAL_REGION_FIELD, align 4
  %40 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %41 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %42 = call i64 @LdLoadFieldElements(i32 %39, %struct.TYPE_29__* %40, %struct.TYPE_28__* %41)
  store i64 %42, i64* %11, align 8
  %43 = load i64, i64* %11, align 8
  store i64 %43, i64* %4, align 8
  br label %703

44:                                               ; preds = %3, %3
  %45 = load i32, i32* @ACPI_TYPE_REGION, align 4
  %46 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %47 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %48 = call i64 @LdLoadFieldElements(i32 %45, %struct.TYPE_29__* %46, %struct.TYPE_28__* %47)
  store i64 %48, i64* %11, align 8
  %49 = load i64, i64* %11, align 8
  store i64 %49, i64* %4, align 8
  br label %703

50:                                               ; preds = %3
  %51 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %52, i32 0, i32 11
  %54 = load %struct.TYPE_29__*, %struct.TYPE_29__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @AML_INT_NAMEPATH_OP, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %50
  br label %84

61:                                               ; preds = %50
  %62 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %63, i32 0, i32 11
  %65 = load %struct.TYPE_29__*, %struct.TYPE_29__** %64, align 8
  store %struct.TYPE_29__* %65, %struct.TYPE_29__** %16, align 8
  %66 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.TYPE_29__*, %struct.TYPE_29__** %16, align 8
  %70 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %70, i32 0, i32 1
  %72 = load i8*, i8** %71, align 8
  %73 = load i64, i64* @ACPI_TYPE_ANY, align 8
  %74 = load i32, i32* @ACPI_IMODE_EXECUTE, align 4
  %75 = load i32, i32* @ACPI_NS_SEARCH_PARENT, align 4
  %76 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %77 = call i64 @AcpiNsLookup(i32 %68, i8* %72, i64 %73, i32 %74, i32 %75, %struct.TYPE_28__* %76, %struct.TYPE_31__** %9)
  store i64 %77, i64* %11, align 8
  %78 = load i64, i64* %11, align 8
  %79 = call i64 @ACPI_FAILURE(i64 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %61
  br label %84

82:                                               ; preds = %61
  br label %84

83:                                               ; preds = %3
  br label %84

84:                                               ; preds = %83, %82, %81, %60
  %85 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %86, i32 0, i32 7
  %88 = load %struct.TYPE_31__*, %struct.TYPE_31__** %87, align 8
  %89 = icmp ne %struct.TYPE_31__* %88, null
  br i1 %89, label %90, label %92

90:                                               ; preds = %84
  %91 = load i64, i64* @AE_OK, align 8
  store i64 %91, i64* %4, align 8
  br label %703

92:                                               ; preds = %84
  %93 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @PARSEOP_NAMESEG, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %106, label %99

99:                                               ; preds = %92
  %100 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @PARSEOP_NAMESTRING, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %170

106:                                              ; preds = %99, %92
  %107 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %108, i32 0, i32 8
  %110 = load %struct.TYPE_29__*, %struct.TYPE_29__** %109, align 8
  store %struct.TYPE_29__* %110, %struct.TYPE_29__** %20, align 8
  %111 = load %struct.TYPE_29__*, %struct.TYPE_29__** %20, align 8
  %112 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i8* @AcpiPsGetOpcodeInfo(i32 %114)
  %116 = bitcast i8* %115 to %struct.TYPE_30__*
  store %struct.TYPE_30__* %116, %struct.TYPE_30__** %19, align 8
  %117 = load %struct.TYPE_30__*, %struct.TYPE_30__** %19, align 8
  %118 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @AML_CLASS_NAMED_OBJECT, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %124

122:                                              ; preds = %106
  %123 = load i64, i64* @AE_OK, align 8
  store i64 %123, i64* %4, align 8
  br label %703

124:                                              ; preds = %106
  %125 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %129, i32 0, i32 9
  %131 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %130, i32 0, i32 0
  %132 = load i8*, i8** %131, align 8
  %133 = load i64, i64* @ACPI_TYPE_ANY, align 8
  %134 = load i32, i32* @ACPI_IMODE_EXECUTE, align 4
  %135 = load i32, i32* @ACPI_NS_SEARCH_PARENT, align 4
  %136 = load i32, i32* @ACPI_NS_DONT_OPEN_SCOPE, align 4
  %137 = or i32 %135, %136
  %138 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %139 = call i64 @AcpiNsLookup(i32 %127, i8* %132, i64 %133, i32 %134, i32 %137, %struct.TYPE_28__* %138, %struct.TYPE_31__** %9)
  store i64 %139, i64* %11, align 8
  %140 = load i64, i64* %11, align 8
  %141 = load i64, i64* @AE_NOT_FOUND, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %168

143:                                              ; preds = %124
  %144 = load %struct.TYPE_29__*, %struct.TYPE_29__** %20, align 8
  %145 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = sext i32 %147 to i64
  %149 = load i64, i64* @PARSEOP_PACKAGE, align 8
  %150 = icmp ne i64 %148, %149
  br i1 %150, label %151, label %166

151:                                              ; preds = %143
  %152 = load %struct.TYPE_29__*, %struct.TYPE_29__** %20, align 8
  %153 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = sext i32 %155 to i64
  %157 = load i64, i64* @PARSEOP_VAR_PACKAGE, align 8
  %158 = icmp ne i64 %156, %157
  br i1 %158, label %159, label %166

159:                                              ; preds = %151
  %160 = load i32, i32* @OP_NOT_FOUND_DURING_LOAD, align 4
  %161 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 4
  %165 = or i32 %164, %160
  store i32 %165, i32* %163, align 4
  br label %166

166:                                              ; preds = %159, %151, %143
  %167 = load i64, i64* @AE_OK, align 8
  store i64 %167, i64* %4, align 8
  br label %703

168:                                              ; preds = %124
  %169 = load i64, i64* %11, align 8
  store i64 %169, i64* %4, align 8
  br label %703

170:                                              ; preds = %99
  %171 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %172, i32 0, i32 4
  %174 = load i8*, i8** %173, align 8
  store i8* %174, i8** %14, align 8
  %175 = load i8*, i8** %14, align 8
  %176 = icmp ne i8* %175, null
  br i1 %176, label %179, label %177

177:                                              ; preds = %170
  %178 = load i64, i64* @AE_OK, align 8
  store i64 %178, i64* %4, align 8
  br label %703

179:                                              ; preds = %170
  %180 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  switch i32 %183, label %424 [
    i32 129, label %184
    i32 130, label %217
    i32 131, label %233
    i32 128, label %252
  ]

184:                                              ; preds = %179
  %185 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %186, i32 0, i32 11
  %188 = load %struct.TYPE_29__*, %struct.TYPE_29__** %187, align 8
  store %struct.TYPE_29__* %188, %struct.TYPE_29__** %16, align 8
  %189 = load %struct.TYPE_29__*, %struct.TYPE_29__** %16, align 8
  %190 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %190, i32 0, i32 10
  %192 = load %struct.TYPE_29__*, %struct.TYPE_29__** %191, align 8
  store %struct.TYPE_29__* %192, %struct.TYPE_29__** %16, align 8
  %193 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %194 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %194, i32 0, i32 3
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* @OP_IS_RESOURCE_DESC, align 4
  %198 = and i32 %196, %197
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %202

200:                                              ; preds = %184
  %201 = load i64, i64* @TRUE, align 8
  store i64 %201, i64* %18, align 8
  br label %202

202:                                              ; preds = %200, %184
  store i64 1, i64* %12, align 8
  store i32 1, i32* %17, align 4
  br label %203

203:                                              ; preds = %213, %202
  %204 = load i32, i32* %17, align 4
  %205 = load %struct.TYPE_29__*, %struct.TYPE_29__** %16, align 8
  %206 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %206, i32 0, i32 5
  %208 = load i32, i32* %207, align 8
  %209 = icmp slt i32 %204, %208
  br i1 %209, label %210, label %216

210:                                              ; preds = %203
  %211 = load i64, i64* %12, align 8
  %212 = add nsw i64 %211, 1
  store i64 %212, i64* %12, align 8
  br label %213

213:                                              ; preds = %210
  %214 = load i32, i32* %17, align 4
  %215 = mul nsw i32 %214, 2
  store i32 %215, i32* %17, align 4
  br label %203

216:                                              ; preds = %203
  br label %430

217:                                              ; preds = %179
  %218 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %219 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %219, i32 0, i32 11
  %221 = load %struct.TYPE_29__*, %struct.TYPE_29__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %222, i32 0, i32 10
  %224 = load %struct.TYPE_29__*, %struct.TYPE_29__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %225, i32 0, i32 9
  %227 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %226, i32 0, i32 1
  %228 = load i64, i64* %227, align 8
  store i64 %228, i64* %13, align 8
  %229 = load i64, i64* @ACPI_TYPE_ANY, align 8
  store i64 %229, i64* %12, align 8
  %230 = load i32, i32* @ACPI_NS_EXTERNAL, align 4
  %231 = load i32, i32* %15, align 4
  %232 = or i32 %231, %230
  store i32 %232, i32* %15, align 4
  br label %430

233:                                              ; preds = %179
  %234 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %235 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %235, i32 0, i32 3
  %237 = load i32, i32* %236, align 4
  %238 = load i32, i32* @OP_IS_RESOURCE_DESC, align 4
  %239 = icmp eq i32 %237, %238
  br i1 %239, label %240, label %246

240:                                              ; preds = %233
  %241 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %242 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %243 = call i64 @LdLoadResourceElements(%struct.TYPE_29__* %241, %struct.TYPE_28__* %242)
  store i64 %243, i64* %11, align 8
  %244 = load i64, i64* %11, align 8
  %245 = call i32 @return_ACPI_STATUS(i64 %244)
  br label %246

246:                                              ; preds = %240, %233
  %247 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %248 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = call i64 @AslMapNamedOpcodeToDataType(i32 %250)
  store i64 %251, i64* %12, align 8
  br label %430

252:                                              ; preds = %179
  %253 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %254 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = load i8*, i8** %14, align 8
  %257 = load i64, i64* @ACPI_TYPE_ANY, align 8
  %258 = load i32, i32* @ACPI_IMODE_EXECUTE, align 4
  %259 = load i32, i32* @ACPI_NS_SEARCH_PARENT, align 4
  %260 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %261 = call i64 @AcpiNsLookup(i32 %255, i8* %256, i64 %257, i32 %258, i32 %259, %struct.TYPE_28__* %260, %struct.TYPE_31__** %9)
  store i64 %261, i64* %11, align 8
  %262 = load i64, i64* %11, align 8
  %263 = call i64 @ACPI_FAILURE(i64 %262)
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %265, label %318

265:                                              ; preds = %252
  %266 = load i64, i64* %11, align 8
  %267 = load i64, i64* @AE_NOT_FOUND, align 8
  %268 = icmp eq i64 %266, %267
  br i1 %268, label %269, label %311

269:                                              ; preds = %265
  %270 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %271 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  %273 = load i8*, i8** %14, align 8
  %274 = load i32, i32* @ACPI_IMODE_LOAD_PASS1, align 4
  %275 = load i32, i32* %15, align 4
  %276 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %277 = call i64 @AcpiNsLookup(i32 %272, i8* %273, i64 140, i32 %274, i32 %275, %struct.TYPE_28__* %276, %struct.TYPE_31__** %9)
  store i64 %277, i64* %11, align 8
  %278 = load i64, i64* %11, align 8
  %279 = call i64 @ACPI_FAILURE(i64 %278)
  %280 = icmp ne i64 %279, 0
  br i1 %280, label %281, label %284

281:                                              ; preds = %269
  %282 = load i64, i64* %11, align 8
  %283 = call i32 @return_ACPI_STATUS(i64 %282)
  br label %284

284:                                              ; preds = %281, %269
  %285 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %286 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %285, i32 0, i32 0
  %287 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %286, i32 0, i32 1
  %288 = load i8*, i8** %287, align 8
  %289 = call i32 @strlen(i8* %288)
  %290 = load i32, i32* @ACPI_NAMESEG_SIZE, align 4
  %291 = icmp eq i32 %289, %290
  br i1 %291, label %292, label %301

292:                                              ; preds = %284
  %293 = load i32, i32* @ASL_ERROR, align 4
  %294 = load i32, i32* @ASL_MSG_NOT_FOUND, align 4
  %295 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %296 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %297 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %296, i32 0, i32 0
  %298 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %297, i32 0, i32 1
  %299 = load i8*, i8** %298, align 8
  %300 = call i32 @AslError(i32 %293, i32 %294, %struct.TYPE_29__* %295, i8* %299)
  br label %310

301:                                              ; preds = %284
  %302 = load i32, i32* @ASL_ERROR, align 4
  %303 = load i32, i32* @ASL_MSG_NAMEPATH_NOT_EXIST, align 4
  %304 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %305 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %306 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %305, i32 0, i32 0
  %307 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %306, i32 0, i32 1
  %308 = load i8*, i8** %307, align 8
  %309 = call i32 @AslError(i32 %302, i32 %303, %struct.TYPE_29__* %304, i8* %308)
  br label %310

310:                                              ; preds = %301, %292
  br label %667

311:                                              ; preds = %265
  %312 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %313 = load i64, i64* %11, align 8
  %314 = load i64, i64* @FALSE, align 8
  %315 = call i32 @AslCoreSubsystemError(%struct.TYPE_29__* %312, i64 %313, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i64 %314)
  %316 = load i64, i64* %11, align 8
  %317 = call i32 @return_ACPI_STATUS(i64 %316)
  br label %361

318:                                              ; preds = %252
  %319 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %320 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 8
  %322 = load i32, i32* @ANOBJ_IS_EXTERNAL, align 4
  %323 = and i32 %321, %322
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %360

325:                                              ; preds = %318
  %326 = load i32, i32* @AslGbl_TableSignature, align 4
  %327 = call i32 @ACPI_COMPARE_NAMESEG(i32 %326, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %360

329:                                              ; preds = %325
  %330 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %331 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %330, i32 0, i32 0
  %332 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %331, i32 0, i32 8
  %333 = load %struct.TYPE_29__*, %struct.TYPE_29__** %332, align 8
  store %struct.TYPE_29__* %333, %struct.TYPE_29__** %10, align 8
  br label %334

334:                                              ; preds = %346, %329
  %335 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %336 = icmp ne %struct.TYPE_29__* %335, null
  br i1 %336, label %337, label %344

337:                                              ; preds = %334
  %338 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %339 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %338, i32 0, i32 0
  %340 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %339, i32 0, i32 2
  %341 = load i32, i32* %340, align 8
  %342 = load i32, i32* @PARSEOP_METHOD, align 4
  %343 = icmp ne i32 %341, %342
  br label %344

344:                                              ; preds = %337, %334
  %345 = phi i1 [ false, %334 ], [ %343, %337 ]
  br i1 %345, label %346, label %351

346:                                              ; preds = %344
  %347 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %348 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %347, i32 0, i32 0
  %349 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %348, i32 0, i32 8
  %350 = load %struct.TYPE_29__*, %struct.TYPE_29__** %349, align 8
  store %struct.TYPE_29__* %350, %struct.TYPE_29__** %10, align 8
  br label %334

351:                                              ; preds = %344
  %352 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %353 = icmp ne %struct.TYPE_29__* %352, null
  br i1 %353, label %359, label %354

354:                                              ; preds = %351
  %355 = load i32, i32* @ASL_ERROR, align 4
  %356 = load i32, i32* @ASL_MSG_CROSS_TABLE_SCOPE, align 4
  %357 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %358 = call i32 @AslError(i32 %355, i32 %356, %struct.TYPE_29__* %357, i8* null)
  br label %359

359:                                              ; preds = %354, %351
  br label %360

360:                                              ; preds = %359, %325, %318
  br label %361

361:                                              ; preds = %360, %311
  %362 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %363 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %362, i32 0, i32 1
  %364 = load i64, i64* %363, align 8
  switch i64 %364, label %394 [
    i64 140, label %365
    i64 142, label %365
    i64 139, label %365
    i64 138, label %365
    i64 136, label %365
    i64 141, label %366
    i64 137, label %366
    i64 143, label %366
  ]

365:                                              ; preds = %361, %361, %361, %361, %361
  br label %422

366:                                              ; preds = %361, %361, %361
  %367 = load i8*, i8** @AslGbl_MsgBuffer, align 8
  %368 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %369 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %368, i32 0, i32 0
  %370 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %369, i32 0, i32 1
  %371 = load i8*, i8** %370, align 8
  %372 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %373 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %372, i32 0, i32 1
  %374 = load i64, i64* %373, align 8
  %375 = call i8* @AcpiUtGetTypeName(i64 %374)
  %376 = call i32 @sprintf(i8* %367, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i8* %371, i8* %375)
  %377 = load i32, i32* @ASL_REMARK, align 4
  %378 = load i32, i32* @ASL_MSG_SCOPE_TYPE, align 4
  %379 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %380 = load i8*, i8** @AslGbl_MsgBuffer, align 8
  %381 = call i32 @AslError(i32 %377, i32 %378, %struct.TYPE_29__* %379, i8* %380)
  %382 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %383 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %382, i32 0, i32 1
  store i64 140, i64* %383, align 8
  %384 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %385 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %386 = call i64 @AcpiDsScopeStackPush(%struct.TYPE_31__* %384, i32 140, %struct.TYPE_28__* %385)
  store i64 %386, i64* %11, align 8
  %387 = load i64, i64* %11, align 8
  %388 = call i64 @ACPI_FAILURE(i64 %387)
  %389 = icmp ne i64 %388, 0
  br i1 %389, label %390, label %393

390:                                              ; preds = %366
  %391 = load i64, i64* %11, align 8
  %392 = call i32 @return_ACPI_STATUS(i64 %391)
  br label %393

393:                                              ; preds = %390, %366
  br label %422

394:                                              ; preds = %361
  %395 = load i8*, i8** @AslGbl_MsgBuffer, align 8
  %396 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %397 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %396, i32 0, i32 0
  %398 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %397, i32 0, i32 1
  %399 = load i8*, i8** %398, align 8
  %400 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %401 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %400, i32 0, i32 1
  %402 = load i64, i64* %401, align 8
  %403 = call i8* @AcpiUtGetTypeName(i64 %402)
  %404 = call i32 @sprintf(i8* %395, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* %399, i8* %403)
  %405 = load i32, i32* @ASL_ERROR, align 4
  %406 = load i32, i32* @ASL_MSG_SCOPE_TYPE, align 4
  %407 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %408 = load i8*, i8** @AslGbl_MsgBuffer, align 8
  %409 = call i32 @AslError(i32 %405, i32 %406, %struct.TYPE_29__* %407, i8* %408)
  %410 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %411 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %410, i32 0, i32 1
  store i64 140, i64* %411, align 8
  %412 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %413 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %414 = call i64 @AcpiDsScopeStackPush(%struct.TYPE_31__* %412, i32 140, %struct.TYPE_28__* %413)
  store i64 %414, i64* %11, align 8
  %415 = load i64, i64* %11, align 8
  %416 = call i64 @ACPI_FAILURE(i64 %415)
  %417 = icmp ne i64 %416, 0
  br i1 %417, label %418, label %421

418:                                              ; preds = %394
  %419 = load i64, i64* %11, align 8
  %420 = call i32 @return_ACPI_STATUS(i64 %419)
  br label %421

421:                                              ; preds = %418, %394
  br label %422

422:                                              ; preds = %421, %393, %365
  %423 = load i64, i64* @AE_OK, align 8
  store i64 %423, i64* %11, align 8
  br label %667

424:                                              ; preds = %179
  %425 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %426 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %425, i32 0, i32 0
  %427 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %426, i32 0, i32 0
  %428 = load i32, i32* %427, align 8
  %429 = call i64 @AslMapNamedOpcodeToDataType(i32 %428)
  store i64 %429, i64* %12, align 8
  br label %430

430:                                              ; preds = %424, %246, %217, %216
  %431 = load i32, i32* @ACPI_DB_DISPATCH, align 4
  %432 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %433 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %432, i32 0, i32 0
  %434 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %433, i32 0, i32 1
  %435 = load i8*, i8** %434, align 8
  %436 = load i64, i64* %12, align 8
  %437 = call i8* @AcpiUtGetTypeName(i64 %436)
  %438 = ptrtoint i8* %437 to i32
  %439 = call i32 @ACPI_DEBUG_PRINT(i32 %438)
  %440 = load i32, i32* @ACPI_NS_ERROR_IF_FOUND, align 4
  %441 = load i32, i32* %15, align 4
  %442 = or i32 %441, %440
  store i32 %442, i32* %15, align 4
  %443 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %444 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %443, i32 0, i32 0
  %445 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %444, i32 0, i32 0
  %446 = load i32, i32* %445, align 8
  %447 = call i8* @AcpiPsGetOpcodeInfo(i32 %446)
  %448 = bitcast i8* %447 to %struct.TYPE_26__*
  %449 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %450 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %449, i32 0, i32 1
  store %struct.TYPE_26__* %448, %struct.TYPE_26__** %450, align 8
  %451 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %452 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %451, i32 0, i32 1
  %453 = load %struct.TYPE_26__*, %struct.TYPE_26__** %452, align 8
  %454 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %453, i32 0, i32 0
  %455 = load i32, i32* %454, align 4
  %456 = load i32, i32* @AML_NAMED, align 4
  %457 = and i32 %455, %456
  %458 = icmp ne i32 %457, 0
  br i1 %458, label %468, label %459

459:                                              ; preds = %430
  %460 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %461 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %460, i32 0, i32 1
  %462 = load %struct.TYPE_26__*, %struct.TYPE_26__** %461, align 8
  %463 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %462, i32 0, i32 0
  %464 = load i32, i32* %463, align 4
  %465 = load i32, i32* @AML_CREATE, align 4
  %466 = and i32 %464, %465
  %467 = icmp ne i32 %466, 0
  br i1 %467, label %468, label %479

468:                                              ; preds = %459, %430
  %469 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %470 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %469, i32 0, i32 0
  %471 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %470, i32 0, i32 0
  %472 = load i32, i32* %471, align 8
  %473 = load i32, i32* @AML_EXTERNAL_OP, align 4
  %474 = icmp ne i32 %472, %473
  br i1 %474, label %475, label %479

475:                                              ; preds = %468
  %476 = load i32, i32* @ACPI_NS_PREFIX_MUST_EXIST, align 4
  %477 = load i32, i32* %15, align 4
  %478 = or i32 %477, %476
  store i32 %478, i32* %15, align 4
  br label %479

479:                                              ; preds = %475, %468, %459
  %480 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %481 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %480, i32 0, i32 0
  %482 = load i32, i32* %481, align 8
  %483 = load i8*, i8** %14, align 8
  %484 = load i64, i64* %12, align 8
  %485 = load i32, i32* @ACPI_IMODE_LOAD_PASS1, align 4
  %486 = load i32, i32* %15, align 4
  %487 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %488 = call i64 @AcpiNsLookup(i32 %482, i8* %483, i64 %484, i32 %485, i32 %486, %struct.TYPE_28__* %487, %struct.TYPE_31__** %9)
  store i64 %488, i64* %11, align 8
  %489 = load i64, i64* %11, align 8
  %490 = call i64 @ACPI_FAILURE(i64 %489)
  %491 = icmp ne i64 %490, 0
  br i1 %491, label %492, label %647

492:                                              ; preds = %479
  %493 = load i64, i64* %11, align 8
  %494 = load i64, i64* @AE_ALREADY_EXISTS, align 8
  %495 = icmp eq i64 %493, %494
  br i1 %495, label %496, label %632

496:                                              ; preds = %492
  %497 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %498 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %497, i32 0, i32 1
  %499 = load i64, i64* %498, align 8
  %500 = icmp eq i64 %499, 140
  br i1 %500, label %501, label %506

501:                                              ; preds = %496
  %502 = load i64, i64* %12, align 8
  %503 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %504 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %503, i32 0, i32 1
  store i64 %502, i64* %504, align 8
  %505 = load i64, i64* @AE_OK, align 8
  store i64 %505, i64* %11, align 8
  br label %631

506:                                              ; preds = %496
  %507 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %508 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %507, i32 0, i32 0
  %509 = load i32, i32* %508, align 8
  %510 = load i32, i32* @ANOBJ_IS_EXTERNAL, align 4
  %511 = and i32 %509, %510
  %512 = icmp ne i32 %511, 0
  br i1 %512, label %513, label %547

513:                                              ; preds = %506
  %514 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %515 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %514, i32 0, i32 0
  %516 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %515, i32 0, i32 2
  %517 = load i32, i32* %516, align 8
  %518 = icmp ne i32 %517, 130
  br i1 %518, label %519, label %547

519:                                              ; preds = %513
  %520 = load i32, i32* @ANOBJ_IS_EXTERNAL, align 4
  %521 = xor i32 %520, -1
  %522 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %523 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %522, i32 0, i32 0
  %524 = load i32, i32* %523, align 8
  %525 = and i32 %524, %521
  store i32 %525, i32* %523, align 8
  %526 = load i64, i64* %12, align 8
  %527 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %528 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %527, i32 0, i32 1
  store i64 %526, i64* %528, align 8
  %529 = load i64, i64* %12, align 8
  %530 = call i64 @AcpiNsOpensScope(i64 %529)
  %531 = icmp ne i64 %530, 0
  br i1 %531, label %532, label %545

532:                                              ; preds = %519
  %533 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %534 = load i64, i64* %12, align 8
  %535 = trunc i64 %534 to i32
  %536 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %537 = call i64 @AcpiDsScopeStackPush(%struct.TYPE_31__* %533, i32 %535, %struct.TYPE_28__* %536)
  store i64 %537, i64* %11, align 8
  %538 = load i64, i64* %11, align 8
  %539 = call i64 @ACPI_FAILURE(i64 %538)
  %540 = icmp ne i64 %539, 0
  br i1 %540, label %541, label %544

541:                                              ; preds = %532
  %542 = load i64, i64* %11, align 8
  %543 = call i32 @return_ACPI_STATUS(i64 %542)
  br label %544

544:                                              ; preds = %541, %532
  br label %545

545:                                              ; preds = %544, %519
  %546 = load i64, i64* @AE_OK, align 8
  store i64 %546, i64* %11, align 8
  br label %630

547:                                              ; preds = %513, %506
  %548 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %549 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %548, i32 0, i32 0
  %550 = load i32, i32* %549, align 8
  %551 = load i32, i32* @ANOBJ_IS_EXTERNAL, align 4
  %552 = and i32 %550, %551
  %553 = icmp ne i32 %552, 0
  br i1 %553, label %562, label %554

554:                                              ; preds = %547
  %555 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %556 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %555, i32 0, i32 0
  %557 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %556, i32 0, i32 2
  %558 = load i32, i32* %557, align 8
  %559 = icmp eq i32 %558, 130
  br i1 %559, label %560, label %562

560:                                              ; preds = %554
  %561 = load i64, i64* @AE_OK, align 8
  store i64 %561, i64* %11, align 8
  br label %629

562:                                              ; preds = %554, %547
  %563 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %564 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %563, i32 0, i32 0
  %565 = load i32, i32* %564, align 8
  %566 = load i32, i32* @ANOBJ_IS_EXTERNAL, align 4
  %567 = and i32 %565, %566
  %568 = icmp ne i32 %567, 0
  br i1 %568, label %569, label %607

569:                                              ; preds = %562
  %570 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %571 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %570, i32 0, i32 0
  %572 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %571, i32 0, i32 2
  %573 = load i32, i32* %572, align 8
  %574 = icmp eq i32 %573, 130
  br i1 %574, label %575, label %607

575:                                              ; preds = %569
  %576 = load i64, i64* %12, align 8
  %577 = load i64, i64* @ACPI_TYPE_ANY, align 8
  %578 = icmp eq i64 %576, %577
  br i1 %578, label %579, label %607

579:                                              ; preds = %575
  %580 = load i64, i64* %13, align 8
  %581 = call i64 @AcpiNsOpensScope(i64 %580)
  %582 = icmp ne i64 %581, 0
  br i1 %582, label %583, label %588

583:                                              ; preds = %579
  %584 = load i64, i64* %13, align 8
  %585 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %586 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %585, i32 0, i32 1
  store i64 %584, i64* %586, align 8
  %587 = load i64, i64* @AE_OK, align 8
  store i64 %587, i64* %11, align 8
  br label %606

588:                                              ; preds = %579
  %589 = load i8*, i8** @AslGbl_MsgBuffer, align 8
  %590 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %591 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %590, i32 0, i32 0
  %592 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %591, i32 0, i32 1
  %593 = load i8*, i8** %592, align 8
  %594 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %595 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %594, i32 0, i32 1
  %596 = load i64, i64* %595, align 8
  %597 = call i8* @AcpiUtGetTypeName(i64 %596)
  %598 = call i32 @sprintf(i8* %589, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* %593, i8* %597)
  %599 = load i32, i32* @ASL_ERROR, align 4
  %600 = load i32, i32* @ASL_MSG_SCOPE_TYPE, align 4
  %601 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %602 = load i8*, i8** @AslGbl_MsgBuffer, align 8
  %603 = call i32 @AslError(i32 %599, i32 %600, %struct.TYPE_29__* %601, i8* %602)
  %604 = load i64, i64* @AE_OK, align 8
  %605 = call i32 @return_ACPI_STATUS(i64 %604)
  br label %606

606:                                              ; preds = %588, %583
  br label %628

607:                                              ; preds = %575, %569, %562
  %608 = load i32, i32* @ASL_ERROR, align 4
  %609 = load i32, i32* @ASL_MSG_NAME_EXISTS, align 4
  %610 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %611 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %612 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %611, i32 0, i32 0
  %613 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %612, i32 0, i32 1
  %614 = load i8*, i8** %613, align 8
  %615 = load i32, i32* @ASL_MSG_FOUND_HERE, align 4
  %616 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %617 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %616, i32 0, i32 3
  %618 = load %struct.TYPE_29__*, %struct.TYPE_29__** %617, align 8
  %619 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %620 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %619, i32 0, i32 3
  %621 = load %struct.TYPE_29__*, %struct.TYPE_29__** %620, align 8
  %622 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %621, i32 0, i32 0
  %623 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %622, i32 0, i32 1
  %624 = load i8*, i8** %623, align 8
  %625 = call i32 @AslDualParseOpError(i32 %608, i32 %609, %struct.TYPE_29__* %610, i8* %614, i32 %615, %struct.TYPE_29__* %618, i8* %624)
  %626 = load i64, i64* @AE_OK, align 8
  %627 = call i32 @return_ACPI_STATUS(i64 %626)
  br label %628

628:                                              ; preds = %607, %606
  br label %629

629:                                              ; preds = %628, %560
  br label %630

630:                                              ; preds = %629, %545
  br label %631

631:                                              ; preds = %630, %501
  br label %646

632:                                              ; preds = %492
  %633 = load i64, i64* @AE_NOT_FOUND, align 8
  %634 = icmp ne i64 %633, 0
  br i1 %634, label %635, label %638

635:                                              ; preds = %632
  %636 = load %struct.TYPE_31__*, %struct.TYPE_31__** @AcpiGbl_RootNode, align 8
  store %struct.TYPE_31__* %636, %struct.TYPE_31__** %9, align 8
  %637 = load i64, i64* @AE_OK, align 8
  store i64 %637, i64* %11, align 8
  br label %645

638:                                              ; preds = %632
  %639 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %640 = load i64, i64* %11, align 8
  %641 = load i64, i64* @FALSE, align 8
  %642 = call i32 @AslCoreSubsystemError(%struct.TYPE_29__* %639, i64 %640, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i64 %641)
  %643 = load i64, i64* %11, align 8
  %644 = call i32 @return_ACPI_STATUS(i64 %643)
  br label %645

645:                                              ; preds = %638, %635
  br label %646

646:                                              ; preds = %645, %631
  br label %647

647:                                              ; preds = %646, %479
  %648 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %649 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %650 = call i32 @LdCheckSpecialNames(%struct.TYPE_31__* %648, %struct.TYPE_29__* %649)
  %651 = load i64, i64* %18, align 8
  %652 = icmp ne i64 %651, 0
  br i1 %652, label %653, label %666

653:                                              ; preds = %647
  %654 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %655 = load i64, i64* %12, align 8
  %656 = trunc i64 %655 to i32
  %657 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %658 = call i64 @AcpiDsScopeStackPush(%struct.TYPE_31__* %654, i32 %656, %struct.TYPE_28__* %657)
  store i64 %658, i64* %11, align 8
  %659 = load i64, i64* %11, align 8
  %660 = call i64 @ACPI_FAILURE(i64 %659)
  %661 = icmp ne i64 %660, 0
  br i1 %661, label %662, label %665

662:                                              ; preds = %653
  %663 = load i64, i64* %11, align 8
  %664 = call i32 @return_ACPI_STATUS(i64 %663)
  br label %665

665:                                              ; preds = %662, %653
  br label %666

666:                                              ; preds = %665, %647
  br label %667

667:                                              ; preds = %666, %422, %310
  %668 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %669 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %670 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %669, i32 0, i32 0
  %671 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %670, i32 0, i32 7
  store %struct.TYPE_31__* %668, %struct.TYPE_31__** %671, align 8
  %672 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %673 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %674 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %673, i32 0, i32 3
  store %struct.TYPE_29__* %672, %struct.TYPE_29__** %674, align 8
  %675 = load i64, i64* %13, align 8
  %676 = load i64, i64* @ACPI_TYPE_ANY, align 8
  %677 = icmp ne i64 %675, %676
  br i1 %677, label %678, label %685

678:                                              ; preds = %667
  %679 = load i64, i64* %13, align 8
  %680 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %681 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %680, i32 0, i32 1
  store i64 %679, i64* %681, align 8
  %682 = load i32, i32* @ASL_EXTERNAL_METHOD, align 4
  %683 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %684 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %683, i32 0, i32 2
  store i32 %682, i32* %684, align 8
  br label %685

685:                                              ; preds = %678, %667
  %686 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %687 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %686, i32 0, i32 0
  %688 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %687, i32 0, i32 2
  %689 = load i32, i32* %688, align 8
  %690 = load i32, i32* @PARSEOP_METHOD, align 4
  %691 = icmp eq i32 %689, %690
  br i1 %691, label %692, label %700

692:                                              ; preds = %685
  %693 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %694 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %693, i32 0, i32 0
  %695 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %694, i32 0, i32 6
  %696 = load i64, i64* %695, align 8
  %697 = trunc i64 %696 to i32
  %698 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %699 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %698, i32 0, i32 2
  store i32 %697, i32* %699, align 8
  br label %700

700:                                              ; preds = %692, %685
  %701 = load i64, i64* %11, align 8
  %702 = call i32 @return_ACPI_STATUS(i64 %701)
  br label %703

703:                                              ; preds = %700, %177, %168, %166, %122, %90, %44, %38
  %704 = load i64, i64* %4, align 8
  ret i64 %704
}

declare dso_local i32 @ACPI_FUNCTION_NAME(i64 (%struct.TYPE_29__*, i32, i8*)*) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i64 @LdLoadFieldElements(i32, %struct.TYPE_29__*, %struct.TYPE_28__*) #1

declare dso_local i64 @AcpiNsLookup(i32, i8*, i64, i32, i32, %struct.TYPE_28__*, %struct.TYPE_31__**) #1

declare dso_local i64 @ACPI_FAILURE(i64) #1

declare dso_local i8* @AcpiPsGetOpcodeInfo(i32) #1

declare dso_local i64 @LdLoadResourceElements(%struct.TYPE_29__*, %struct.TYPE_28__*) #1

declare dso_local i32 @return_ACPI_STATUS(i64) #1

declare dso_local i64 @AslMapNamedOpcodeToDataType(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @AslError(i32, i32, %struct.TYPE_29__*, i8*) #1

declare dso_local i32 @AslCoreSubsystemError(%struct.TYPE_29__*, i64, i8*, i64) #1

declare dso_local i32 @ACPI_COMPARE_NAMESEG(i32, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #1

declare dso_local i8* @AcpiUtGetTypeName(i64) #1

declare dso_local i64 @AcpiDsScopeStackPush(%struct.TYPE_31__*, i32, %struct.TYPE_28__*) #1

declare dso_local i64 @AcpiNsOpensScope(i64) #1

declare dso_local i32 @AslDualParseOpError(i32, i32, %struct.TYPE_29__*, i8*, i32, %struct.TYPE_29__*, i8*) #1

declare dso_local i32 @LdCheckSpecialNames(%struct.TYPE_31__*, %struct.TYPE_29__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
