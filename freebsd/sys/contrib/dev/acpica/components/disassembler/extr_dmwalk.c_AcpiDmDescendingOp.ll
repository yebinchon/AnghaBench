; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/disassembler/extr_dmwalk.c_AcpiDmDescendingOp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/disassembler/extr_dmwalk.c_AcpiDmDescendingOp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_41__ = type { %struct.TYPE_40__, %struct.TYPE_39__, %struct.TYPE_37__ }
%struct.TYPE_40__ = type { i32, i64, i32, i64, %struct.TYPE_38__, %struct.TYPE_41__*, %struct.TYPE_41__* }
%struct.TYPE_38__ = type { i32 }
%struct.TYPE_39__ = type { %struct.TYPE_41__* }
%struct.TYPE_37__ = type { i32 }
%struct.TYPE_42__ = type { i64, i64, i64, i64, i32, i64, i32, i32, %struct.TYPE_36__* }
%struct.TYPE_36__ = type { %struct.TYPE_35__ }
%struct.TYPE_35__ = type { i32 }
%struct.TYPE_43__ = type { i64, i32 }

@AcpiGbl_CaptureComments = common dso_local global i64 0, align 8
@AML_COMMENT_STANDARD = common dso_local global i32 0, align 4
@AcpiGbl_DmOpt_Listing = common dso_local global i64 0, align 8
@AML_CLASS_NAMED_OBJECT = common dso_local global i64 0, align 8
@AML_CLASS_CONTROL = common dso_local global i64 0, align 8
@AML_CLASS_CREATE = common dso_local global i64 0, align 8
@AML_CLASS_EXECUTE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@DB_BYTE_DISPLAY = common dso_local global i32 0, align 4
@ACPI_PARSEOP_IGNORE = common dso_local global i32 0, align 4
@AE_CTRL_DEPTH = common dso_local global i32 0, align 4
@ACPI_DASM_IGNORE_SINGLE = common dso_local global i64 0, align 8
@AE_OK = common dso_local global i32 0, align 4
@ACPI_PARSEOP_PARAMETER_LIST = common dso_local global i32 0, align 4
@AcpiGbl_DmEmitExternalOpcodes = common dso_local global i32 0, align 4
@AML_ZERO_OP = common dso_local global i64 0, align 8
@AML_EXTERNAL_OP = common dso_local global i64 0, align 8
@AcpiGbl_DmOpt_Verbose = common dso_local global i64 0, align 8
@AcpiGbl_CmSingleStep = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"%5.5X/%4.4X: \00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"AML Offset %5.5X, Opcode %4.4X: \00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"{\0A\00", align 1
@BLOCK_BRACE = common dso_local global i32 0, align 4
@ACPI_PARSEOP_ELSEIF = common dso_local global i32 0, align 4
@AML_INT_BYTELIST_OP = common dso_local global i64 0, align 8
@AcpiGbl_IgnoreNoopOperator = common dso_local global i32 0, align 4
@ACPI_DASM_LNOT_PREFIX = common dso_local global i64 0, align 8
@AML_INT_CONNECTION_OP = common dso_local global i64 0, align 8
@AML_RETURN_OP = common dso_local global i32 0, align 4
@AML_HAS_ARGS = common dso_local global i32 0, align 4
@BLOCK_PAREN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@AMLCOMMENT_INLINE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [2 x i8] c" \00", align 1
@AML_NAMED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [3 x i8] c", \00", align 1
@AML_INT_NAMEDFIELD_OP = common dso_local global i32 0, align 4
@AML_NAMECOMMENT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [31 x i8] c"*** Unhandled named opcode %X\0A\00", align 1
@AcpiDmAscendingOp = common dso_local global i32 0, align 4
@ACPI_DASM_RESOURCE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_41__*, i64, i8*)* @AcpiDmDescendingOp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AcpiDmDescendingOp(%struct.TYPE_41__* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_41__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_42__*, align 8
  %9 = alloca %struct.TYPE_43__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_41__*, align 8
  %12 = alloca %struct.TYPE_41__*, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_41__* %0, %struct.TYPE_41__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_42__*
  store %struct.TYPE_42__* %15, %struct.TYPE_42__** %8, align 8
  %16 = load i64, i64* @AcpiGbl_CaptureComments, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %36

18:                                               ; preds = %3
  %19 = load %struct.TYPE_41__*, %struct.TYPE_41__** %5, align 8
  %20 = call i32 @ASL_CV_LABEL_FILENODE(%struct.TYPE_41__* %19)
  %21 = load i64, i64* %6, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %18
  %24 = load %struct.TYPE_41__*, %struct.TYPE_41__** %5, align 8
  %25 = call i64 @ASL_CV_FILE_HAS_SWITCHED(%struct.TYPE_41__* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load i64, i64* %6, align 8
  %29 = load %struct.TYPE_41__*, %struct.TYPE_41__** %5, align 8
  %30 = call i32 @ASL_CV_SWITCH_FILES(i64 %28, %struct.TYPE_41__* %29)
  br label %31

31:                                               ; preds = %27, %23, %18
  %32 = load %struct.TYPE_41__*, %struct.TYPE_41__** %5, align 8
  %33 = load i32, i32* @AML_COMMENT_STANDARD, align 4
  %34 = load i64, i64* %6, align 8
  %35 = call i32 @ASL_CV_PRINT_ONE_COMMENT(%struct.TYPE_41__* %32, i32 %33, i8* null, i64 %34)
  br label %36

36:                                               ; preds = %31, %3
  %37 = load %struct.TYPE_41__*, %struct.TYPE_41__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call %struct.TYPE_43__* @AcpiPsGetOpcodeInfo(i32 %40)
  store %struct.TYPE_43__* %41, %struct.TYPE_43__** %9, align 8
  %42 = load i64, i64* @AcpiGbl_DmOpt_Listing, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %133

44:                                               ; preds = %36
  %45 = load %struct.TYPE_43__*, %struct.TYPE_43__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @AML_CLASS_NAMED_OBJECT, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %74, label %50

50:                                               ; preds = %44
  %51 = load %struct.TYPE_43__*, %struct.TYPE_43__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @AML_CLASS_CONTROL, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %74, label %56

56:                                               ; preds = %50
  %57 = load %struct.TYPE_43__*, %struct.TYPE_43__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @AML_CLASS_CREATE, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %74, label %62

62:                                               ; preds = %56
  %63 = load %struct.TYPE_43__*, %struct.TYPE_43__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @AML_CLASS_EXECUTE, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %132

68:                                               ; preds = %62
  %69 = load %struct.TYPE_41__*, %struct.TYPE_41__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %70, i32 0, i32 5
  %72 = load %struct.TYPE_41__*, %struct.TYPE_41__** %71, align 8
  %73 = icmp ne %struct.TYPE_41__* %72, null
  br i1 %73, label %132, label %74

74:                                               ; preds = %68, %56, %50, %44
  %75 = load i64, i64* @AcpiGbl_DmOpt_Listing, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %125

77:                                               ; preds = %74
  %78 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %125

82:                                               ; preds = %77
  %83 = load %struct.TYPE_41__*, %struct.TYPE_41__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp sgt i64 %86, %89
  br i1 %90, label %91, label %114

91:                                               ; preds = %82
  %92 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %93 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = add nsw i64 %95, %98
  %100 = load %struct.TYPE_41__*, %struct.TYPE_41__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = sub nsw i64 %103, %106
  %108 = load i32, i32* @DB_BYTE_DISPLAY, align 4
  %109 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = call i32 @AcpiUtDumpBuffer(i64 %99, i64 %107, i32 %108, i64 %111)
  %113 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %114

114:                                              ; preds = %91, %82
  %115 = load %struct.TYPE_41__*, %struct.TYPE_41__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = sub nsw i64 %118, %121
  %123 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %123, i32 0, i32 2
  store i64 %122, i64* %124, align 8
  br label %125

125:                                              ; preds = %114, %77, %74
  %126 = load %struct.TYPE_41__*, %struct.TYPE_41__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %130, i32 0, i32 0
  store i64 %129, i64* %131, align 8
  br label %132

132:                                              ; preds = %125, %68, %62
  br label %133

133:                                              ; preds = %132, %36
  %134 = load %struct.TYPE_41__*, %struct.TYPE_41__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @ACPI_PARSEOP_IGNORE, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %133
  %142 = load i32, i32* @AE_CTRL_DEPTH, align 4
  store i32 %142, i32* %4, align 4
  br label %763

143:                                              ; preds = %133
  %144 = load %struct.TYPE_41__*, %struct.TYPE_41__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %145, i32 0, i32 3
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @ACPI_DASM_IGNORE_SINGLE, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %150, label %152

150:                                              ; preds = %143
  %151 = load i32, i32* @AE_OK, align 4
  store i32 %151, i32* %4, align 4
  br label %763

152:                                              ; preds = %143
  %153 = load %struct.TYPE_41__*, %struct.TYPE_41__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = icmp eq i32 %156, 142
  br i1 %157, label %158, label %207

158:                                              ; preds = %152
  %159 = load %struct.TYPE_41__*, %struct.TYPE_41__** %5, align 8
  %160 = call %struct.TYPE_41__* @AcpiPsGetDepthNext(i32* null, %struct.TYPE_41__* %159)
  store %struct.TYPE_41__* %160, %struct.TYPE_41__** %11, align 8
  %161 = load %struct.TYPE_41__*, %struct.TYPE_41__** %11, align 8
  %162 = icmp ne %struct.TYPE_41__* %161, null
  br i1 %162, label %163, label %206

163:                                              ; preds = %158
  %164 = load i32, i32* @ACPI_PARSEOP_PARAMETER_LIST, align 4
  %165 = load %struct.TYPE_41__*, %struct.TYPE_41__** %11, align 8
  %166 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 8
  %169 = or i32 %168, %164
  store i32 %169, i32* %167, align 8
  %170 = load i32, i32* @AcpiGbl_DmEmitExternalOpcodes, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %205, label %172

172:                                              ; preds = %163
  %173 = load %struct.TYPE_41__*, %struct.TYPE_41__** %11, align 8
  %174 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = sext i32 %176 to i64
  %178 = load i64, i64* @AML_ZERO_OP, align 8
  %179 = icmp eq i64 %177, %178
  br i1 %179, label %180, label %204

180:                                              ; preds = %172
  %181 = load %struct.TYPE_41__*, %struct.TYPE_41__** %11, align 8
  %182 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %182, i32 0, i32 5
  %184 = load %struct.TYPE_41__*, %struct.TYPE_41__** %183, align 8
  store %struct.TYPE_41__* %184, %struct.TYPE_41__** %12, align 8
  %185 = load %struct.TYPE_41__*, %struct.TYPE_41__** %12, align 8
  %186 = icmp ne %struct.TYPE_41__* %185, null
  br i1 %186, label %187, label %203

187:                                              ; preds = %180
  %188 = load %struct.TYPE_41__*, %struct.TYPE_41__** %12, align 8
  %189 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = sext i32 %191 to i64
  %193 = load i64, i64* @AML_EXTERNAL_OP, align 8
  %194 = icmp eq i64 %192, %193
  br i1 %194, label %195, label %203

195:                                              ; preds = %187
  %196 = load i32, i32* @ACPI_PARSEOP_IGNORE, align 4
  %197 = load %struct.TYPE_41__*, %struct.TYPE_41__** %5, align 8
  %198 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 8
  %201 = or i32 %200, %196
  store i32 %201, i32* %199, align 8
  %202 = load i32, i32* @AE_CTRL_DEPTH, align 4
  store i32 %202, i32* %4, align 4
  br label %763

203:                                              ; preds = %187, %180
  br label %204

204:                                              ; preds = %203, %172
  br label %205

205:                                              ; preds = %204, %163
  br label %206

206:                                              ; preds = %205, %158
  br label %207

207:                                              ; preds = %206, %152
  %208 = load i64, i64* %6, align 8
  %209 = icmp eq i64 %208, 0
  br i1 %209, label %210, label %265

210:                                              ; preds = %207
  %211 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %212 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %211, i32 0, i32 8
  %213 = load %struct.TYPE_36__*, %struct.TYPE_36__** %212, align 8
  %214 = icmp ne %struct.TYPE_36__* %213, null
  br i1 %214, label %215, label %250

215:                                              ; preds = %210
  %216 = load %struct.TYPE_41__*, %struct.TYPE_41__** %5, align 8
  %217 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %217, i32 0, i32 1
  %219 = load i64, i64* %218, align 8
  %220 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %221 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %220, i32 0, i32 8
  %222 = load %struct.TYPE_36__*, %struct.TYPE_36__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = call i64 @ACPI_PTR_DIFF(i64 %219, i32 %225)
  store i64 %226, i64* %13, align 8
  %227 = load i64, i64* @AcpiGbl_DmOpt_Verbose, align 8
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %249

229:                                              ; preds = %215
  %230 = load i64, i64* @AcpiGbl_CmSingleStep, align 8
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %240

232:                                              ; preds = %229
  %233 = load i64, i64* %13, align 8
  %234 = load %struct.TYPE_41__*, %struct.TYPE_41__** %5, align 8
  %235 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = sext i32 %237 to i64
  %239 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i64 %233, i64 %238)
  br label %248

240:                                              ; preds = %229
  %241 = load i64, i64* %13, align 8
  %242 = load %struct.TYPE_41__*, %struct.TYPE_41__** %5, align 8
  %243 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = sext i32 %245 to i64
  %247 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i64 %241, i64 %246)
  br label %248

248:                                              ; preds = %240, %232
  br label %249

249:                                              ; preds = %248, %215
  br label %250

250:                                              ; preds = %249, %210
  %251 = load %struct.TYPE_41__*, %struct.TYPE_41__** %5, align 8
  %252 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = icmp eq i32 %254, 131
  br i1 %255, label %256, label %264

256:                                              ; preds = %250
  %257 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %258 = load i32, i32* @AcpiGbl_DmEmitExternalOpcodes, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %262, label %260

260:                                              ; preds = %256
  %261 = call i32 (...) @AcpiDmEmitExternals()
  br label %262

262:                                              ; preds = %260, %256
  %263 = load i32, i32* @AE_OK, align 4
  store i32 %263, i32* %4, align 4
  br label %763

264:                                              ; preds = %250
  br label %325

265:                                              ; preds = %207
  %266 = load %struct.TYPE_41__*, %struct.TYPE_41__** %5, align 8
  %267 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %267, i32 0, i32 6
  %269 = load %struct.TYPE_41__*, %struct.TYPE_41__** %268, align 8
  %270 = call i32 @AcpiDmBlockType(%struct.TYPE_41__* %269)
  %271 = load i32, i32* @BLOCK_BRACE, align 4
  %272 = and i32 %270, %271
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %324

274:                                              ; preds = %265
  %275 = load %struct.TYPE_41__*, %struct.TYPE_41__** %5, align 8
  %276 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %275, i32 0, i32 0
  %277 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %276, i32 0, i32 2
  %278 = load i32, i32* %277, align 8
  %279 = load i32, i32* @ACPI_PARSEOP_PARAMETER_LIST, align 4
  %280 = and i32 %278, %279
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %324, label %282

282:                                              ; preds = %274
  %283 = load %struct.TYPE_41__*, %struct.TYPE_41__** %5, align 8
  %284 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %283, i32 0, i32 0
  %285 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %284, i32 0, i32 2
  %286 = load i32, i32* %285, align 8
  %287 = load i32, i32* @ACPI_PARSEOP_ELSEIF, align 4
  %288 = and i32 %286, %287
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %324, label %290

290:                                              ; preds = %282
  %291 = load %struct.TYPE_41__*, %struct.TYPE_41__** %5, align 8
  %292 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %291, i32 0, i32 0
  %293 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 8
  %295 = sext i32 %294 to i64
  %296 = load i64, i64* @AML_INT_BYTELIST_OP, align 8
  %297 = icmp ne i64 %295, %296
  br i1 %297, label %298, label %324

298:                                              ; preds = %290
  %299 = load %struct.TYPE_41__*, %struct.TYPE_41__** %5, align 8
  %300 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %299, i32 0, i32 0
  %301 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 8
  switch i32 %302, label %315 [
    i32 136, label %303
  ]

303:                                              ; preds = %298
  %304 = load i32, i32* @AcpiGbl_IgnoreNoopOperator, align 4
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %314

306:                                              ; preds = %303
  %307 = load i32, i32* @ACPI_PARSEOP_IGNORE, align 4
  %308 = load %struct.TYPE_41__*, %struct.TYPE_41__** %5, align 8
  %309 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %308, i32 0, i32 0
  %310 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %309, i32 0, i32 2
  %311 = load i32, i32* %310, align 8
  %312 = or i32 %311, %307
  store i32 %312, i32* %310, align 8
  %313 = load i32, i32* @AE_OK, align 4
  store i32 %313, i32* %4, align 4
  br label %763

314:                                              ; preds = %303
  br label %315

315:                                              ; preds = %298, %314
  %316 = load i64, i64* %6, align 8
  %317 = call i32 @AcpiDmIndent(i64 %316)
  br label %318

318:                                              ; preds = %315
  %319 = load i64, i64* %6, align 8
  %320 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %321 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %320, i32 0, i32 3
  store i64 %319, i64* %321, align 8
  %322 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %323 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %322, i32 0, i32 4
  store i32 0, i32* %323, align 8
  br label %324

324:                                              ; preds = %318, %290, %282, %274, %265
  br label %325

325:                                              ; preds = %324, %264
  %326 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %327 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %326, i32 0, i32 4
  %328 = load i32, i32* %327, align 8
  %329 = add nsw i32 %328, 1
  store i32 %329, i32* %327, align 8
  %330 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %331 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %330, i32 0, i32 4
  %332 = load i32, i32* %331, align 8
  %333 = icmp sgt i32 %332, 12
  br i1 %333, label %334, label %343

334:                                              ; preds = %325
  %335 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %336 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %335, i32 0, i32 4
  store i32 0, i32* %336, align 8
  %337 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %338 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %339 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %338, i32 0, i32 3
  %340 = load i64, i64* %339, align 8
  %341 = add nsw i64 %340, 1
  %342 = call i32 @AcpiDmIndent(i64 %341)
  br label %343

343:                                              ; preds = %334, %325
  %344 = load %struct.TYPE_41__*, %struct.TYPE_41__** %5, align 8
  %345 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %346 = call i64 @AcpiDmCheckForSymbolicOpcode(%struct.TYPE_41__* %344, %struct.TYPE_42__* %345)
  %347 = icmp ne i64 %346, 0
  br i1 %347, label %348, label %350

348:                                              ; preds = %343
  %349 = load i32, i32* @AE_OK, align 4
  store i32 %349, i32* %4, align 4
  br label %763

350:                                              ; preds = %343
  %351 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %352 = load %struct.TYPE_41__*, %struct.TYPE_41__** %5, align 8
  %353 = call i32 @AcpiDmDisassembleOneOp(i32* null, %struct.TYPE_42__* %351, %struct.TYPE_41__* %352)
  %354 = load %struct.TYPE_41__*, %struct.TYPE_41__** %5, align 8
  %355 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %354, i32 0, i32 0
  %356 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %355, i32 0, i32 3
  %357 = load i64, i64* %356, align 8
  %358 = load i64, i64* @ACPI_DASM_LNOT_PREFIX, align 8
  %359 = icmp eq i64 %357, %358
  br i1 %359, label %368, label %360

360:                                              ; preds = %350
  %361 = load %struct.TYPE_41__*, %struct.TYPE_41__** %5, align 8
  %362 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %361, i32 0, i32 0
  %363 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %362, i32 0, i32 0
  %364 = load i32, i32* %363, align 8
  %365 = sext i32 %364 to i64
  %366 = load i64, i64* @AML_INT_CONNECTION_OP, align 8
  %367 = icmp eq i64 %365, %366
  br i1 %367, label %368, label %370

368:                                              ; preds = %360, %350
  %369 = load i32, i32* @AE_OK, align 4
  store i32 %369, i32* %4, align 4
  br label %763

370:                                              ; preds = %360
  %371 = load %struct.TYPE_41__*, %struct.TYPE_41__** %5, align 8
  %372 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %371, i32 0, i32 0
  %373 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %372, i32 0, i32 0
  %374 = load i32, i32* %373, align 8
  %375 = icmp eq i32 %374, 137
  br i1 %375, label %383, label %376

376:                                              ; preds = %370
  %377 = load %struct.TYPE_41__*, %struct.TYPE_41__** %5, align 8
  %378 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %377, i32 0, i32 0
  %379 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %378, i32 0, i32 0
  %380 = load i32, i32* %379, align 8
  %381 = load i32, i32* @AML_RETURN_OP, align 4
  %382 = icmp eq i32 %380, %381
  br i1 %382, label %383, label %388

383:                                              ; preds = %376, %370
  %384 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %385 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %384, i32 0, i32 5
  %386 = load i64, i64* %385, align 8
  %387 = add nsw i64 %386, -1
  store i64 %387, i64* %385, align 8
  br label %388

388:                                              ; preds = %383, %376
  %389 = load %struct.TYPE_41__*, %struct.TYPE_41__** %5, align 8
  %390 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %389, i32 0, i32 0
  %391 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %390, i32 0, i32 0
  %392 = load i32, i32* %391, align 8
  %393 = sext i32 %392 to i64
  %394 = load i64, i64* @AML_EXTERNAL_OP, align 8
  %395 = icmp eq i64 %393, %394
  br i1 %395, label %396, label %404

396:                                              ; preds = %388
  %397 = load i32, i32* @ACPI_PARSEOP_IGNORE, align 4
  %398 = load %struct.TYPE_41__*, %struct.TYPE_41__** %5, align 8
  %399 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %398, i32 0, i32 0
  %400 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %399, i32 0, i32 2
  %401 = load i32, i32* %400, align 8
  %402 = or i32 %401, %397
  store i32 %402, i32* %400, align 8
  %403 = load i32, i32* @AE_CTRL_DEPTH, align 4
  store i32 %403, i32* %4, align 4
  br label %763

404:                                              ; preds = %388
  %405 = load %struct.TYPE_43__*, %struct.TYPE_43__** %9, align 8
  %406 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %405, i32 0, i32 1
  %407 = load i32, i32* %406, align 8
  %408 = load i32, i32* @AML_HAS_ARGS, align 4
  %409 = and i32 %407, %408
  %410 = icmp ne i32 %409, 0
  br i1 %410, label %417, label %411

411:                                              ; preds = %404
  %412 = load %struct.TYPE_41__*, %struct.TYPE_41__** %5, align 8
  %413 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %412, i32 0, i32 0
  %414 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %413, i32 0, i32 0
  %415 = load i32, i32* %414, align 8
  %416 = icmp eq i32 %415, 144
  br i1 %416, label %417, label %761

417:                                              ; preds = %411, %404
  %418 = load %struct.TYPE_41__*, %struct.TYPE_41__** %5, align 8
  %419 = call i32 @AcpiDmBlockType(%struct.TYPE_41__* %418)
  %420 = load i32, i32* @BLOCK_PAREN, align 4
  %421 = and i32 %419, %420
  %422 = icmp ne i32 %421, 0
  br i1 %422, label %423, label %435

423:                                              ; preds = %417
  %424 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %425 = load %struct.TYPE_41__*, %struct.TYPE_41__** %5, align 8
  %426 = call i32 @AcpiDmBlockType(%struct.TYPE_41__* %425)
  %427 = load i32, i32* @BLOCK_BRACE, align 4
  %428 = and i32 %426, %427
  %429 = icmp ne i32 %428, 0
  br i1 %429, label %434, label %430

430:                                              ; preds = %423
  %431 = load %struct.TYPE_41__*, %struct.TYPE_41__** %5, align 8
  %432 = load i32, i32* @AMLCOMMENT_INLINE, align 4
  %433 = call i32 @ASL_CV_PRINT_ONE_COMMENT(%struct.TYPE_41__* %431, i32 %432, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i64 0)
  br label %434

434:                                              ; preds = %430, %423
  br label %435

435:                                              ; preds = %434, %417
  %436 = load %struct.TYPE_43__*, %struct.TYPE_43__** %9, align 8
  %437 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %436, i32 0, i32 1
  %438 = load i32, i32* %437, align 8
  %439 = load i32, i32* @AML_NAMED, align 4
  %440 = and i32 %438, %439
  %441 = icmp ne i32 %440, 0
  br i1 %441, label %442, label %586

442:                                              ; preds = %435
  %443 = load %struct.TYPE_41__*, %struct.TYPE_41__** %5, align 8
  %444 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %443, i32 0, i32 0
  %445 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %444, i32 0, i32 0
  %446 = load i32, i32* %445, align 8
  switch i32 %446, label %463 [
    i32 149, label %447
  ]

447:                                              ; preds = %442
  %448 = load %struct.TYPE_41__*, %struct.TYPE_41__** %5, align 8
  %449 = call %struct.TYPE_41__* @AcpiPsGetDepthNext(i32* null, %struct.TYPE_41__* %448)
  store %struct.TYPE_41__* %449, %struct.TYPE_41__** %11, align 8
  %450 = load i32, i32* @ACPI_PARSEOP_IGNORE, align 4
  %451 = load %struct.TYPE_41__*, %struct.TYPE_41__** %11, align 8
  %452 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %451, i32 0, i32 0
  %453 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %452, i32 0, i32 2
  %454 = load i32, i32* %453, align 8
  %455 = or i32 %454, %450
  store i32 %455, i32* %453, align 8
  %456 = load %struct.TYPE_41__*, %struct.TYPE_41__** %11, align 8
  %457 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %456, i32 0, i32 0
  %458 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %457, i32 0, i32 4
  %459 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %458, i32 0, i32 0
  %460 = load i32, i32* %459, align 8
  %461 = call i32 @AcpiDmNamestring(i32 %460)
  %462 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  br label %463

463:                                              ; preds = %442, %447
  %464 = load %struct.TYPE_41__*, %struct.TYPE_41__** %5, align 8
  %465 = call i64 @AcpiPsGetName(%struct.TYPE_41__* %464)
  store i64 %465, i64* %10, align 8
  %466 = load %struct.TYPE_41__*, %struct.TYPE_41__** %5, align 8
  %467 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %466, i32 0, i32 2
  %468 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %467, i32 0, i32 0
  %469 = load i32, i32* %468, align 8
  %470 = icmp ne i32 %469, 0
  br i1 %470, label %471, label %477

471:                                              ; preds = %463
  %472 = load %struct.TYPE_41__*, %struct.TYPE_41__** %5, align 8
  %473 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %472, i32 0, i32 2
  %474 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %473, i32 0, i32 0
  %475 = load i32, i32* %474, align 8
  %476 = call i32 @AcpiDmNamestring(i32 %475)
  br label %480

477:                                              ; preds = %463
  %478 = load i64, i64* %10, align 8
  %479 = call i32 @AcpiDmDumpName(i64 %478)
  br label %480

480:                                              ; preds = %477, %471
  %481 = load %struct.TYPE_41__*, %struct.TYPE_41__** %5, align 8
  %482 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %481, i32 0, i32 0
  %483 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %482, i32 0, i32 0
  %484 = load i32, i32* %483, align 8
  %485 = load i32, i32* @AML_INT_NAMEDFIELD_OP, align 4
  %486 = icmp ne i32 %484, %485
  br i1 %486, label %487, label %494

487:                                              ; preds = %480
  %488 = load i64, i64* @AcpiGbl_DmOpt_Verbose, align 8
  %489 = icmp ne i64 %488, 0
  br i1 %489, label %490, label %493

490:                                              ; preds = %487
  %491 = load %struct.TYPE_41__*, %struct.TYPE_41__** %5, align 8
  %492 = call i32 @AcpiPsDisplayObjectPathname(i32* null, %struct.TYPE_41__* %491)
  br label %493

493:                                              ; preds = %490, %487
  br label %494

494:                                              ; preds = %493, %480
  br label %495

495:                                              ; preds = %494
  %496 = load %struct.TYPE_41__*, %struct.TYPE_41__** %5, align 8
  %497 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %496, i32 0, i32 0
  %498 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %497, i32 0, i32 0
  %499 = load i32, i32* %498, align 8
  switch i32 %499, label %579 [
    i32 139, label %500
    i32 137, label %508
    i32 132, label %515
    i32 134, label %518
    i32 133, label %539
    i32 138, label %570
    i32 146, label %570
    i32 144, label %573
    i32 149, label %573
    i32 131, label %575
    i32 145, label %575
    i32 130, label %575
  ]

500:                                              ; preds = %495
  %501 = load %struct.TYPE_41__*, %struct.TYPE_41__** %5, align 8
  %502 = call i32 @AcpiDmMethodFlags(%struct.TYPE_41__* %501)
  %503 = load %struct.TYPE_41__*, %struct.TYPE_41__** %5, align 8
  %504 = load i64, i64* %6, align 8
  %505 = call i32 @ASL_CV_CLOSE_PAREN(%struct.TYPE_41__* %503, i64 %504)
  %506 = load %struct.TYPE_41__*, %struct.TYPE_41__** %5, align 8
  %507 = call i32 @AcpiDmPredefinedDescription(%struct.TYPE_41__* %506)
  br label %585

508:                                              ; preds = %495
  %509 = load %struct.TYPE_41__*, %struct.TYPE_41__** %5, align 8
  %510 = call i32 @AcpiDmCheckForHardwareId(%struct.TYPE_41__* %509)
  %511 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %512 = load %struct.TYPE_41__*, %struct.TYPE_41__** %5, align 8
  %513 = load i32, i32* @AML_NAMECOMMENT, align 4
  %514 = call i32 @ASL_CV_PRINT_ONE_COMMENT(%struct.TYPE_41__* %512, i32 %513, i8* null, i64 0)
  br label %585

515:                                              ; preds = %495
  %516 = load %struct.TYPE_41__*, %struct.TYPE_41__** %5, align 8
  %517 = call i32 @AcpiDmRegionFlags(%struct.TYPE_41__* %516)
  br label %585

518:                                              ; preds = %495
  %519 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %520 = load %struct.TYPE_41__*, %struct.TYPE_41__** %5, align 8
  %521 = call %struct.TYPE_41__* @AcpiPsGetDepthNext(i32* null, %struct.TYPE_41__* %520)
  store %struct.TYPE_41__* %521, %struct.TYPE_41__** %11, align 8
  %522 = load i32, i32* @ACPI_PARSEOP_PARAMETER_LIST, align 4
  %523 = load %struct.TYPE_41__*, %struct.TYPE_41__** %11, align 8
  %524 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %523, i32 0, i32 0
  %525 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %524, i32 0, i32 2
  %526 = load i32, i32* %525, align 8
  %527 = or i32 %526, %522
  store i32 %527, i32* %525, align 8
  %528 = load %struct.TYPE_41__*, %struct.TYPE_41__** %11, align 8
  %529 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %528, i32 0, i32 0
  %530 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %529, i32 0, i32 5
  %531 = load %struct.TYPE_41__*, %struct.TYPE_41__** %530, align 8
  store %struct.TYPE_41__* %531, %struct.TYPE_41__** %11, align 8
  %532 = load i32, i32* @ACPI_PARSEOP_PARAMETER_LIST, align 4
  %533 = load %struct.TYPE_41__*, %struct.TYPE_41__** %11, align 8
  %534 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %533, i32 0, i32 0
  %535 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %534, i32 0, i32 2
  %536 = load i32, i32* %535, align 8
  %537 = or i32 %536, %532
  store i32 %537, i32* %535, align 8
  %538 = load i32, i32* @AE_OK, align 4
  store i32 %538, i32* %4, align 4
  br label %763

539:                                              ; preds = %495
  %540 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %541 = load %struct.TYPE_41__*, %struct.TYPE_41__** %5, align 8
  %542 = call %struct.TYPE_41__* @AcpiPsGetDepthNext(i32* null, %struct.TYPE_41__* %541)
  store %struct.TYPE_41__* %542, %struct.TYPE_41__** %11, align 8
  %543 = load i32, i32* @ACPI_PARSEOP_PARAMETER_LIST, align 4
  %544 = load %struct.TYPE_41__*, %struct.TYPE_41__** %11, align 8
  %545 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %544, i32 0, i32 0
  %546 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %545, i32 0, i32 2
  %547 = load i32, i32* %546, align 8
  %548 = or i32 %547, %543
  store i32 %548, i32* %546, align 8
  %549 = load %struct.TYPE_41__*, %struct.TYPE_41__** %11, align 8
  %550 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %549, i32 0, i32 0
  %551 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %550, i32 0, i32 5
  %552 = load %struct.TYPE_41__*, %struct.TYPE_41__** %551, align 8
  store %struct.TYPE_41__* %552, %struct.TYPE_41__** %11, align 8
  %553 = load i32, i32* @ACPI_PARSEOP_PARAMETER_LIST, align 4
  %554 = load %struct.TYPE_41__*, %struct.TYPE_41__** %11, align 8
  %555 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %554, i32 0, i32 0
  %556 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %555, i32 0, i32 2
  %557 = load i32, i32* %556, align 8
  %558 = or i32 %557, %553
  store i32 %558, i32* %556, align 8
  %559 = load %struct.TYPE_41__*, %struct.TYPE_41__** %11, align 8
  %560 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %559, i32 0, i32 0
  %561 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %560, i32 0, i32 5
  %562 = load %struct.TYPE_41__*, %struct.TYPE_41__** %561, align 8
  store %struct.TYPE_41__* %562, %struct.TYPE_41__** %11, align 8
  %563 = load i32, i32* @ACPI_PARSEOP_PARAMETER_LIST, align 4
  %564 = load %struct.TYPE_41__*, %struct.TYPE_41__** %11, align 8
  %565 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %564, i32 0, i32 0
  %566 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %565, i32 0, i32 2
  %567 = load i32, i32* %566, align 8
  %568 = or i32 %567, %563
  store i32 %568, i32* %566, align 8
  %569 = load i32, i32* @AE_OK, align 4
  store i32 %569, i32* %4, align 4
  br label %763

570:                                              ; preds = %495, %495
  %571 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %572 = load i32, i32* @AE_OK, align 4
  store i32 %572, i32* %4, align 4
  br label %763

573:                                              ; preds = %495, %495
  %574 = load i32, i32* @AE_OK, align 4
  store i32 %574, i32* %4, align 4
  br label %763

575:                                              ; preds = %495, %495, %495
  %576 = load %struct.TYPE_41__*, %struct.TYPE_41__** %5, align 8
  %577 = load i64, i64* %6, align 8
  %578 = call i32 @ASL_CV_CLOSE_PAREN(%struct.TYPE_41__* %576, i64 %577)
  br label %585

579:                                              ; preds = %495
  %580 = load %struct.TYPE_41__*, %struct.TYPE_41__** %5, align 8
  %581 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %580, i32 0, i32 0
  %582 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %581, i32 0, i32 0
  %583 = load i32, i32* %582, align 8
  %584 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i32 %583)
  br label %585

585:                                              ; preds = %579, %575, %515, %508, %500
  br label %749

586:                                              ; preds = %435
  %587 = load %struct.TYPE_41__*, %struct.TYPE_41__** %5, align 8
  %588 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %587, i32 0, i32 0
  %589 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %588, i32 0, i32 0
  %590 = load i32, i32* %589, align 8
  switch i32 %590, label %747 [
    i32 143, label %591
    i32 148, label %591
    i32 141, label %591
    i32 147, label %672
    i32 142, label %716
    i32 129, label %716
    i32 128, label %716
    i32 135, label %730
    i32 140, label %744
  ]

591:                                              ; preds = %586, %586, %586
  %592 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %593 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %592, i32 0, i32 7
  store i32 0, i32* %593, align 4
  %594 = load %struct.TYPE_41__*, %struct.TYPE_41__** %5, align 8
  %595 = call %struct.TYPE_41__* @AcpiPsGetDepthNext(i32* null, %struct.TYPE_41__* %594)
  store %struct.TYPE_41__* %595, %struct.TYPE_41__** %11, align 8
  %596 = load %struct.TYPE_41__*, %struct.TYPE_41__** %11, align 8
  %597 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %596, i32 0, i32 0
  %598 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %597, i32 0, i32 4
  %599 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %598, i32 0, i32 0
  %600 = load i32, i32* %599, align 8
  %601 = call i32 @AcpiDmNamestring(i32 %600)
  %602 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %603 = load i32, i32* @ACPI_PARSEOP_IGNORE, align 4
  %604 = load %struct.TYPE_41__*, %struct.TYPE_41__** %11, align 8
  %605 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %604, i32 0, i32 0
  %606 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %605, i32 0, i32 2
  %607 = load i32, i32* %606, align 8
  %608 = or i32 %607, %603
  store i32 %608, i32* %606, align 8
  %609 = load %struct.TYPE_41__*, %struct.TYPE_41__** %5, align 8
  %610 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %609, i32 0, i32 0
  %611 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %610, i32 0, i32 0
  %612 = load i32, i32* %611, align 8
  switch i32 %612, label %668 [
    i32 148, label %613
    i32 141, label %652
  ]

613:                                              ; preds = %591
  %614 = load %struct.TYPE_41__*, %struct.TYPE_41__** %11, align 8
  %615 = call %struct.TYPE_41__* @AcpiPsGetDepthNext(i32* null, %struct.TYPE_41__* %614)
  store %struct.TYPE_41__* %615, %struct.TYPE_41__** %11, align 8
  %616 = load %struct.TYPE_41__*, %struct.TYPE_41__** %11, align 8
  %617 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %616, i32 0, i32 0
  %618 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %617, i32 0, i32 4
  %619 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %618, i32 0, i32 0
  %620 = load i32, i32* %619, align 8
  %621 = call i32 @AcpiDmNamestring(i32 %620)
  %622 = load i32, i32* @ACPI_PARSEOP_IGNORE, align 4
  %623 = load %struct.TYPE_41__*, %struct.TYPE_41__** %11, align 8
  %624 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %623, i32 0, i32 0
  %625 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %624, i32 0, i32 2
  %626 = load i32, i32* %625, align 8
  %627 = or i32 %626, %622
  store i32 %627, i32* %625, align 8
  %628 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %629 = load %struct.TYPE_41__*, %struct.TYPE_41__** %11, align 8
  %630 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %629, i32 0, i32 0
  %631 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %630, i32 0, i32 5
  %632 = load %struct.TYPE_41__*, %struct.TYPE_41__** %631, align 8
  store %struct.TYPE_41__* %632, %struct.TYPE_41__** %11, align 8
  %633 = load i32, i32* @ACPI_PARSEOP_PARAMETER_LIST, align 4
  %634 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %635 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %634, i32 0, i32 6
  store i32 %633, i32* %635, align 8
  %636 = load %struct.TYPE_41__*, %struct.TYPE_41__** %11, align 8
  %637 = load i32, i32* @AcpiDmAscendingOp, align 4
  %638 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %639 = call i32 @AcpiDmWalkParseTree(%struct.TYPE_41__* %636, i32 (%struct.TYPE_41__*, i64, i8*)* @AcpiDmDescendingOp, i32 %637, %struct.TYPE_42__* %638)
  %640 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %641 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %640, i32 0, i32 6
  store i32 0, i32* %641, align 8
  %642 = load i64, i64* %6, align 8
  %643 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %644 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %643, i32 0, i32 5
  store i64 %642, i64* %644, align 8
  %645 = load i32, i32* @ACPI_PARSEOP_IGNORE, align 4
  %646 = load %struct.TYPE_41__*, %struct.TYPE_41__** %11, align 8
  %647 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %646, i32 0, i32 0
  %648 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %647, i32 0, i32 2
  %649 = load i32, i32* %648, align 8
  %650 = or i32 %649, %645
  store i32 %650, i32* %648, align 8
  %651 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  br label %669

652:                                              ; preds = %591
  %653 = load %struct.TYPE_41__*, %struct.TYPE_41__** %11, align 8
  %654 = call %struct.TYPE_41__* @AcpiPsGetDepthNext(i32* null, %struct.TYPE_41__* %653)
  store %struct.TYPE_41__* %654, %struct.TYPE_41__** %11, align 8
  %655 = load %struct.TYPE_41__*, %struct.TYPE_41__** %11, align 8
  %656 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %655, i32 0, i32 0
  %657 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %656, i32 0, i32 4
  %658 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %657, i32 0, i32 0
  %659 = load i32, i32* %658, align 8
  %660 = call i32 @AcpiDmNamestring(i32 %659)
  %661 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %662 = load i32, i32* @ACPI_PARSEOP_IGNORE, align 4
  %663 = load %struct.TYPE_41__*, %struct.TYPE_41__** %11, align 8
  %664 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %663, i32 0, i32 0
  %665 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %664, i32 0, i32 2
  %666 = load i32, i32* %665, align 8
  %667 = or i32 %666, %662
  store i32 %667, i32* %665, align 8
  br label %669

668:                                              ; preds = %591
  br label %669

669:                                              ; preds = %668, %652, %613
  %670 = load %struct.TYPE_41__*, %struct.TYPE_41__** %11, align 8
  %671 = call i32 @AcpiDmFieldFlags(%struct.TYPE_41__* %670)
  br label %748

672:                                              ; preds = %586
  %673 = load %struct.TYPE_41__*, %struct.TYPE_41__** %5, align 8
  %674 = call %struct.TYPE_41__* @AcpiPsGetDepthNext(i32* null, %struct.TYPE_41__* %673)
  store %struct.TYPE_41__* %674, %struct.TYPE_41__** %11, align 8
  %675 = load %struct.TYPE_41__*, %struct.TYPE_41__** %11, align 8
  %676 = icmp ne %struct.TYPE_41__* %675, null
  br i1 %676, label %679, label %677

677:                                              ; preds = %672
  %678 = load i32, i32* @AE_OK, align 4
  store i32 %678, i32* %4, align 4
  br label %763

679:                                              ; preds = %672
  %680 = load %struct.TYPE_41__*, %struct.TYPE_41__** %5, align 8
  %681 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %680, i32 0, i32 0
  %682 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %681, i32 0, i32 3
  %683 = load i64, i64* %682, align 8
  %684 = load i64, i64* @ACPI_DASM_RESOURCE, align 8
  %685 = icmp eq i64 %683, %684
  br i1 %685, label %686, label %708

686:                                              ; preds = %679
  %687 = load i32, i32* @ACPI_PARSEOP_IGNORE, align 4
  %688 = load %struct.TYPE_41__*, %struct.TYPE_41__** %11, align 8
  %689 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %688, i32 0, i32 0
  %690 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %689, i32 0, i32 2
  %691 = load i32, i32* %690, align 8
  %692 = or i32 %691, %687
  store i32 %692, i32* %690, align 8
  %693 = load %struct.TYPE_41__*, %struct.TYPE_41__** %5, align 8
  %694 = load i64, i64* %6, align 8
  %695 = call i32 @ASL_CV_CLOSE_PAREN(%struct.TYPE_41__* %693, i64 %694)
  %696 = load %struct.TYPE_41__*, %struct.TYPE_41__** %5, align 8
  %697 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %696, i32 0, i32 1
  %698 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %697, i32 0, i32 0
  %699 = load %struct.TYPE_41__*, %struct.TYPE_41__** %698, align 8
  %700 = call i32 @AcpiDmPredefinedDescription(%struct.TYPE_41__* %699)
  %701 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %702 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %703 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %702, i32 0, i32 5
  %704 = load i64, i64* %703, align 8
  %705 = call i32 @AcpiDmIndent(i64 %704)
  %706 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %707 = load i32, i32* @AE_OK, align 4
  store i32 %707, i32* %4, align 4
  br label %763

708:                                              ; preds = %679
  %709 = load i32, i32* @ACPI_PARSEOP_PARAMETER_LIST, align 4
  %710 = load %struct.TYPE_41__*, %struct.TYPE_41__** %11, align 8
  %711 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %710, i32 0, i32 0
  %712 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %711, i32 0, i32 2
  %713 = load i32, i32* %712, align 8
  %714 = or i32 %713, %709
  store i32 %714, i32* %712, align 8
  %715 = load i32, i32* @AE_OK, align 4
  store i32 %715, i32* %4, align 4
  br label %763

716:                                              ; preds = %586, %586, %586
  %717 = load %struct.TYPE_41__*, %struct.TYPE_41__** %5, align 8
  %718 = call %struct.TYPE_41__* @AcpiPsGetDepthNext(i32* null, %struct.TYPE_41__* %717)
  store %struct.TYPE_41__* %718, %struct.TYPE_41__** %11, align 8
  %719 = load %struct.TYPE_41__*, %struct.TYPE_41__** %11, align 8
  %720 = icmp ne %struct.TYPE_41__* %719, null
  br i1 %720, label %721, label %728

721:                                              ; preds = %716
  %722 = load i32, i32* @ACPI_PARSEOP_PARAMETER_LIST, align 4
  %723 = load %struct.TYPE_41__*, %struct.TYPE_41__** %11, align 8
  %724 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %723, i32 0, i32 0
  %725 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %724, i32 0, i32 2
  %726 = load i32, i32* %725, align 8
  %727 = or i32 %726, %722
  store i32 %727, i32* %725, align 8
  br label %728

728:                                              ; preds = %721, %716
  %729 = load i32, i32* @AE_OK, align 4
  store i32 %729, i32* %4, align 4
  br label %763

730:                                              ; preds = %586
  %731 = load %struct.TYPE_41__*, %struct.TYPE_41__** %5, align 8
  %732 = call %struct.TYPE_41__* @AcpiPsGetDepthNext(i32* null, %struct.TYPE_41__* %731)
  store %struct.TYPE_41__* %732, %struct.TYPE_41__** %11, align 8
  %733 = load %struct.TYPE_41__*, %struct.TYPE_41__** %11, align 8
  %734 = icmp ne %struct.TYPE_41__* %733, null
  br i1 %734, label %735, label %742

735:                                              ; preds = %730
  %736 = load i32, i32* @ACPI_PARSEOP_PARAMETER_LIST, align 4
  %737 = load %struct.TYPE_41__*, %struct.TYPE_41__** %11, align 8
  %738 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %737, i32 0, i32 0
  %739 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %738, i32 0, i32 2
  %740 = load i32, i32* %739, align 8
  %741 = or i32 %740, %736
  store i32 %741, i32* %739, align 8
  br label %742

742:                                              ; preds = %735, %730
  %743 = load i32, i32* @AE_OK, align 4
  store i32 %743, i32* %4, align 4
  br label %763

744:                                              ; preds = %586
  %745 = load %struct.TYPE_41__*, %struct.TYPE_41__** %5, align 8
  %746 = call i32 @AcpiDmMatchOp(%struct.TYPE_41__* %745)
  br label %748

747:                                              ; preds = %586
  br label %748

748:                                              ; preds = %747, %744, %669
  br label %749

749:                                              ; preds = %748, %585
  %750 = load %struct.TYPE_41__*, %struct.TYPE_41__** %5, align 8
  %751 = call i32 @AcpiDmBlockType(%struct.TYPE_41__* %750)
  %752 = load i32, i32* @BLOCK_BRACE, align 4
  %753 = and i32 %751, %752
  %754 = icmp ne i32 %753, 0
  br i1 %754, label %755, label %760

755:                                              ; preds = %749
  %756 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %757 = load i64, i64* %6, align 8
  %758 = call i32 @AcpiDmIndent(i64 %757)
  %759 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %760

760:                                              ; preds = %755, %749
  br label %761

761:                                              ; preds = %760, %411
  %762 = load i32, i32* @AE_OK, align 4
  store i32 %762, i32* %4, align 4
  br label %763

763:                                              ; preds = %761, %742, %728, %708, %686, %677, %573, %570, %539, %518, %396, %368, %348, %306, %262, %195, %150, %141
  %764 = load i32, i32* %4, align 4
  ret i32 %764
}

declare dso_local i32 @ASL_CV_LABEL_FILENODE(%struct.TYPE_41__*) #1

declare dso_local i64 @ASL_CV_FILE_HAS_SWITCHED(%struct.TYPE_41__*) #1

declare dso_local i32 @ASL_CV_SWITCH_FILES(i64, %struct.TYPE_41__*) #1

declare dso_local i32 @ASL_CV_PRINT_ONE_COMMENT(%struct.TYPE_41__*, i32, i8*, i64) #1

declare dso_local %struct.TYPE_43__* @AcpiPsGetOpcodeInfo(i32) #1

declare dso_local i32 @AcpiOsPrintf(i8*, ...) #1

declare dso_local i32 @AcpiUtDumpBuffer(i64, i64, i32, i64) #1

declare dso_local %struct.TYPE_41__* @AcpiPsGetDepthNext(i32*, %struct.TYPE_41__*) #1

declare dso_local i64 @ACPI_PTR_DIFF(i64, i32) #1

declare dso_local i32 @AcpiDmEmitExternals(...) #1

declare dso_local i32 @AcpiDmBlockType(%struct.TYPE_41__*) #1

declare dso_local i32 @AcpiDmIndent(i64) #1

declare dso_local i64 @AcpiDmCheckForSymbolicOpcode(%struct.TYPE_41__*, %struct.TYPE_42__*) #1

declare dso_local i32 @AcpiDmDisassembleOneOp(i32*, %struct.TYPE_42__*, %struct.TYPE_41__*) #1

declare dso_local i32 @AcpiDmNamestring(i32) #1

declare dso_local i64 @AcpiPsGetName(%struct.TYPE_41__*) #1

declare dso_local i32 @AcpiDmDumpName(i64) #1

declare dso_local i32 @AcpiPsDisplayObjectPathname(i32*, %struct.TYPE_41__*) #1

declare dso_local i32 @AcpiDmMethodFlags(%struct.TYPE_41__*) #1

declare dso_local i32 @ASL_CV_CLOSE_PAREN(%struct.TYPE_41__*, i64) #1

declare dso_local i32 @AcpiDmPredefinedDescription(%struct.TYPE_41__*) #1

declare dso_local i32 @AcpiDmCheckForHardwareId(%struct.TYPE_41__*) #1

declare dso_local i32 @AcpiDmRegionFlags(%struct.TYPE_41__*) #1

declare dso_local i32 @AcpiDmWalkParseTree(%struct.TYPE_41__*, i32 (%struct.TYPE_41__*, i64, i8*)*, i32, %struct.TYPE_42__*) #1

declare dso_local i32 @AcpiDmFieldFlags(%struct.TYPE_41__*) #1

declare dso_local i32 @AcpiDmMatchOp(%struct.TYPE_41__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
