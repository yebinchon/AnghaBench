; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslwalks.c_AnOtherSemanticAnalysisWalkBegin.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslwalks.c_AnOtherSemanticAnalysisWalkBegin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64, i64, %struct.TYPE_14__*, %struct.TYPE_14__*, %struct.TYPE_12__, %struct.TYPE_16__*, %struct.TYPE_14__*, i32* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_14__* }
%struct.TYPE_15__ = type { i32, i64 }

@AML_CREATE = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4
@AML_CLASS_EXECUTE = common dso_local global i64 0, align 8
@AML_HAS_RETVAL = common dso_local global i32 0, align 4
@AML_HAS_TARGET = common dso_local global i32 0, align 4
@AML_DIVIDE_OP = common dso_local global i64 0, align 8
@PARSEOP_ZERO = common dso_local global i64 0, align 8
@ASL_ERROR = common dso_local global i32 0, align 4
@ASL_MSG_RESULT_NOT_USED = common dso_local global i32 0, align 4
@AslGbl_DoTypechecking = common dso_local global i32 0, align 4
@PARSEOP_WORDCONST = common dso_local global i32 0, align 4
@PARSEOP_INTEGER = common dso_local global i32 0, align 4
@ACPI_WAIT_FOREVER = common dso_local global i32 0, align 4
@ASL_WARNING = common dso_local global i32 0, align 4
@ASL_MSG_TIMEOUT = common dso_local global i32 0, align 4
@ACPI_ADR_SPACE_GPIO = common dso_local global i32 0, align 4
@ACPI_ADR_SPACE_GSBUS = common dso_local global i32 0, align 4
@ASL_MSG_CONNECTION_INVALID = common dso_local global i32 0, align 4
@PARSEOP_NAMESEG = common dso_local global i32 0, align 4
@ASL_MSG_CONNECTION_MISSING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AnOtherSemanticAnalysisWalkBegin(%struct.TYPE_14__* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %9, align 8
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call %struct.TYPE_15__* @AcpiPsGetOpcodeInfo(i64 %15)
  store %struct.TYPE_15__* %16, %struct.TYPE_15__** %10, align 8
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @AML_CREATE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %3
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %25 = call i32 @AnValidateCreateBufferField(%struct.TYPE_14__* %24)
  %26 = load i32, i32* @AE_OK, align 4
  store i32 %26, i32* %4, align 4
  br label %339

27:                                               ; preds = %3
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @AML_CLASS_EXECUTE, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %137

33:                                               ; preds = %27
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @AML_HAS_RETVAL, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %137

40:                                               ; preds = %33
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %42 = call i32 @AnIsResultUsed(%struct.TYPE_14__* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %137, label %44

44:                                               ; preds = %40
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @AML_HAS_TARGET, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %120

51:                                               ; preds = %44
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 3
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %54, align 8
  store %struct.TYPE_14__* %55, %struct.TYPE_14__** %8, align 8
  br label %56

56:                                               ; preds = %62, %51
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 2
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %59, align 8
  %61 = icmp ne %struct.TYPE_14__* %60, null
  br i1 %61, label %62, label %68

62:                                               ; preds = %56
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  store %struct.TYPE_14__* %63, %struct.TYPE_14__** %9, align 8
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 2
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %66, align 8
  store %struct.TYPE_14__* %67, %struct.TYPE_14__** %8, align 8
  br label %56

68:                                               ; preds = %56
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @AML_DIVIDE_OP, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %102

75:                                               ; preds = %68
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @PARSEOP_ZERO, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %101

82:                                               ; preds = %75
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %84 = icmp ne %struct.TYPE_14__* %83, null
  br i1 %84, label %85, label %101

85:                                               ; preds = %82
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @PARSEOP_ZERO, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %101

92:                                               ; preds = %85
  %93 = load i32, i32* @ASL_ERROR, align 4
  %94 = load i32, i32* @ASL_MSG_RESULT_NOT_USED, align 4
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 7
  %99 = load i32*, i32** %98, align 8
  %100 = call i32 @AslError(i32 %93, i32 %94, %struct.TYPE_14__* %95, i32* %99)
  br label %101

101:                                              ; preds = %92, %85, %82, %75
  br label %119

102:                                              ; preds = %68
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @PARSEOP_ZERO, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %118

109:                                              ; preds = %102
  %110 = load i32, i32* @ASL_ERROR, align 4
  %111 = load i32, i32* @ASL_MSG_RESULT_NOT_USED, align 4
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 7
  %116 = load i32*, i32** %115, align 8
  %117 = call i32 @AslError(i32 %110, i32 %111, %struct.TYPE_14__* %112, i32* %116)
  br label %118

118:                                              ; preds = %109, %102
  br label %119

119:                                              ; preds = %118, %101
  br label %136

120:                                              ; preds = %44
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  switch i64 %124, label %126 [
    i64 133, label %125
    i64 128, label %125
    i64 130, label %125
  ]

125:                                              ; preds = %120, %120, %120
  br label %135

126:                                              ; preds = %120
  %127 = load i32, i32* @ASL_ERROR, align 4
  %128 = load i32, i32* @ASL_MSG_RESULT_NOT_USED, align 4
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 7
  %133 = load i32*, i32** %132, align 8
  %134 = call i32 @AslError(i32 %127, i32 %128, %struct.TYPE_14__* %129, i32* %133)
  br label %135

135:                                              ; preds = %126, %125
  br label %136

136:                                              ; preds = %135, %119
  br label %137

137:                                              ; preds = %136, %40, %33, %27
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  switch i64 %141, label %336 [
    i64 129, label %142
    i64 133, label %149
    i64 128, label %149
    i64 132, label %196
    i64 131, label %245
  ]

142:                                              ; preds = %137
  %143 = load i32, i32* @AslGbl_DoTypechecking, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %142
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %147 = call i32 @AnAnalyzeStoreOperator(%struct.TYPE_14__* %146)
  br label %148

148:                                              ; preds = %145, %142
  br label %337

149:                                              ; preds = %137, %137
  %150 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 3
  %153 = load %struct.TYPE_14__*, %struct.TYPE_14__** %152, align 8
  store %struct.TYPE_14__* %153, %struct.TYPE_14__** %8, align 8
  %154 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 2
  %157 = load %struct.TYPE_14__*, %struct.TYPE_14__** %156, align 8
  store %struct.TYPE_14__* %157, %struct.TYPE_14__** %8, align 8
  %158 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = load i32, i32* @PARSEOP_WORDCONST, align 4
  %163 = sext i32 %162 to i64
  %164 = icmp eq i64 %161, %163
  br i1 %164, label %173, label %165

165:                                              ; preds = %149
  %166 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %167 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = load i32, i32* @PARSEOP_INTEGER, align 4
  %171 = sext i32 %170 to i64
  %172 = icmp eq i64 %169, %171
  br i1 %172, label %173, label %182

173:                                              ; preds = %165, %149
  %174 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %175 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %175, i32 0, i32 4
  %177 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* @ACPI_WAIT_FOREVER, align 4
  %180 = icmp sge i32 %178, %179
  br i1 %180, label %181, label %182

181:                                              ; preds = %173
  br label %337

182:                                              ; preds = %173, %165
  %183 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %184 = call i32 @AnIsResultUsed(%struct.TYPE_14__* %183)
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %195, label %186

186:                                              ; preds = %182
  %187 = load i32, i32* @ASL_WARNING, align 4
  %188 = load i32, i32* @ASL_MSG_TIMEOUT, align 4
  %189 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %190 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %191, i32 0, i32 7
  %193 = load i32*, i32** %192, align 8
  %194 = call i32 @AslError(i32 %187, i32 %188, %struct.TYPE_14__* %189, i32* %193)
  br label %195

195:                                              ; preds = %186, %182
  br label %337

196:                                              ; preds = %137
  %197 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %198 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %198, i32 0, i32 6
  %200 = load %struct.TYPE_14__*, %struct.TYPE_14__** %199, align 8
  store %struct.TYPE_14__* %200, %struct.TYPE_14__** %8, align 8
  %201 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %202 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %202, i32 0, i32 3
  %204 = load %struct.TYPE_14__*, %struct.TYPE_14__** %203, align 8
  store %struct.TYPE_14__* %204, %struct.TYPE_14__** %8, align 8
  %205 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %206 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %206, i32 0, i32 5
  %208 = load %struct.TYPE_16__*, %struct.TYPE_16__** %207, align 8
  store %struct.TYPE_16__* %208, %struct.TYPE_16__** %11, align 8
  %209 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %210 = icmp ne %struct.TYPE_16__* %209, null
  br i1 %210, label %212, label %211

211:                                              ; preds = %196
  br label %337

212:                                              ; preds = %196
  %213 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %214 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %213, i32 0, i32 0
  %215 = load %struct.TYPE_14__*, %struct.TYPE_14__** %214, align 8
  store %struct.TYPE_14__* %215, %struct.TYPE_14__** %8, align 8
  %216 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %217 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %217, i32 0, i32 3
  %219 = load %struct.TYPE_14__*, %struct.TYPE_14__** %218, align 8
  store %struct.TYPE_14__* %219, %struct.TYPE_14__** %8, align 8
  %220 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %221 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %221, i32 0, i32 2
  %223 = load %struct.TYPE_14__*, %struct.TYPE_14__** %222, align 8
  store %struct.TYPE_14__* %223, %struct.TYPE_14__** %8, align 8
  %224 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %225 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %225, i32 0, i32 4
  %227 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = load i32, i32* @ACPI_ADR_SPACE_GPIO, align 4
  %230 = icmp ne i32 %228, %229
  br i1 %230, label %231, label %244

231:                                              ; preds = %212
  %232 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %233 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %233, i32 0, i32 4
  %235 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = load i32, i32* @ACPI_ADR_SPACE_GSBUS, align 4
  %238 = icmp ne i32 %236, %237
  br i1 %238, label %239, label %244

239:                                              ; preds = %231
  %240 = load i32, i32* @ASL_ERROR, align 4
  %241 = load i32, i32* @ASL_MSG_CONNECTION_INVALID, align 4
  %242 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %243 = call i32 @AslError(i32 %240, i32 %241, %struct.TYPE_14__* %242, i32* null)
  br label %244

244:                                              ; preds = %239, %231, %212
  br label %337

245:                                              ; preds = %137
  %246 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %247 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %247, i32 0, i32 3
  %249 = load %struct.TYPE_14__*, %struct.TYPE_14__** %248, align 8
  store %struct.TYPE_14__* %249, %struct.TYPE_14__** %8, align 8
  %250 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %251 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %251, i32 0, i32 5
  %253 = load %struct.TYPE_16__*, %struct.TYPE_16__** %252, align 8
  store %struct.TYPE_16__* %253, %struct.TYPE_16__** %11, align 8
  %254 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %255 = icmp ne %struct.TYPE_16__* %254, null
  br i1 %255, label %257, label %256

256:                                              ; preds = %245
  br label %337

257:                                              ; preds = %245
  %258 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %259 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %258, i32 0, i32 0
  %260 = load %struct.TYPE_14__*, %struct.TYPE_14__** %259, align 8
  store %struct.TYPE_14__* %260, %struct.TYPE_14__** %8, align 8
  %261 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %262 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %261, i32 0, i32 0
  %263 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %262, i32 0, i32 3
  %264 = load %struct.TYPE_14__*, %struct.TYPE_14__** %263, align 8
  store %struct.TYPE_14__* %264, %struct.TYPE_14__** %8, align 8
  %265 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %266 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %265, i32 0, i32 0
  %267 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %266, i32 0, i32 2
  %268 = load %struct.TYPE_14__*, %struct.TYPE_14__** %267, align 8
  store %struct.TYPE_14__* %268, %struct.TYPE_14__** %8, align 8
  %269 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %270 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %269, i32 0, i32 0
  %271 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %270, i32 0, i32 4
  %272 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  %274 = load i32, i32* @ACPI_ADR_SPACE_GPIO, align 4
  %275 = icmp ne i32 %273, %274
  br i1 %275, label %276, label %285

276:                                              ; preds = %257
  %277 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %278 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %277, i32 0, i32 0
  %279 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %278, i32 0, i32 4
  %280 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 8
  %282 = load i32, i32* @ACPI_ADR_SPACE_GSBUS, align 4
  %283 = icmp ne i32 %281, %282
  br i1 %283, label %284, label %285

284:                                              ; preds = %276
  br label %337

285:                                              ; preds = %276, %257
  %286 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %287 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %286, i32 0, i32 0
  %288 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %287, i32 0, i32 3
  %289 = load %struct.TYPE_14__*, %struct.TYPE_14__** %288, align 8
  store %struct.TYPE_14__* %289, %struct.TYPE_14__** %8, align 8
  %290 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %291 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %290, i32 0, i32 0
  %292 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %291, i32 0, i32 2
  %293 = load %struct.TYPE_14__*, %struct.TYPE_14__** %292, align 8
  store %struct.TYPE_14__* %293, %struct.TYPE_14__** %8, align 8
  %294 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %295 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %294, i32 0, i32 0
  %296 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %295, i32 0, i32 2
  %297 = load %struct.TYPE_14__*, %struct.TYPE_14__** %296, align 8
  store %struct.TYPE_14__* %297, %struct.TYPE_14__** %8, align 8
  %298 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %299 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %298, i32 0, i32 0
  %300 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %299, i32 0, i32 2
  %301 = load %struct.TYPE_14__*, %struct.TYPE_14__** %300, align 8
  store %struct.TYPE_14__* %301, %struct.TYPE_14__** %8, align 8
  %302 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %303 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %302, i32 0, i32 0
  %304 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %303, i32 0, i32 2
  %305 = load %struct.TYPE_14__*, %struct.TYPE_14__** %304, align 8
  store %struct.TYPE_14__* %305, %struct.TYPE_14__** %8, align 8
  br label %306

306:                                              ; preds = %330, %285
  %307 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %308 = icmp ne %struct.TYPE_14__* %307, null
  br i1 %308, label %309, label %335

309:                                              ; preds = %306
  %310 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %311 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %310, i32 0, i32 0
  %312 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %311, i32 0, i32 1
  %313 = load i64, i64* %312, align 8
  %314 = icmp eq i64 %313, 132
  br i1 %314, label %315, label %316

315:                                              ; preds = %309
  br label %335

316:                                              ; preds = %309
  %317 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %318 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %317, i32 0, i32 0
  %319 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %318, i32 0, i32 1
  %320 = load i64, i64* %319, align 8
  %321 = load i32, i32* @PARSEOP_NAMESEG, align 4
  %322 = sext i32 %321 to i64
  %323 = icmp eq i64 %320, %322
  br i1 %323, label %324, label %329

324:                                              ; preds = %316
  %325 = load i32, i32* @ASL_ERROR, align 4
  %326 = load i32, i32* @ASL_MSG_CONNECTION_MISSING, align 4
  %327 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %328 = call i32 @AslError(i32 %325, i32 %326, %struct.TYPE_14__* %327, i32* null)
  br label %335

329:                                              ; preds = %316
  br label %330

330:                                              ; preds = %329
  %331 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %332 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %331, i32 0, i32 0
  %333 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %332, i32 0, i32 2
  %334 = load %struct.TYPE_14__*, %struct.TYPE_14__** %333, align 8
  store %struct.TYPE_14__* %334, %struct.TYPE_14__** %8, align 8
  br label %306

335:                                              ; preds = %324, %315, %306
  br label %337

336:                                              ; preds = %137
  br label %337

337:                                              ; preds = %336, %335, %284, %256, %244, %211, %195, %181, %148
  %338 = load i32, i32* @AE_OK, align 4
  store i32 %338, i32* %4, align 4
  br label %339

339:                                              ; preds = %337, %23
  %340 = load i32, i32* %4, align 4
  ret i32 %340
}

declare dso_local %struct.TYPE_15__* @AcpiPsGetOpcodeInfo(i64) #1

declare dso_local i32 @AnValidateCreateBufferField(%struct.TYPE_14__*) #1

declare dso_local i32 @AnIsResultUsed(%struct.TYPE_14__*) #1

declare dso_local i32 @AslError(i32, i32, %struct.TYPE_14__*, i32*) #1

declare dso_local i32 @AnAnalyzeStoreOperator(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
