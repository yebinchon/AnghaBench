; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/common/extr_adwalk.c_AcpiDmXrefDescendingOp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/common/extr_adwalk.c_AcpiDmXrefDescendingOp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { %struct.TYPE_41__, %struct.TYPE_38__, %struct.TYPE_33__ }
%struct.TYPE_41__ = type { i64, %struct.TYPE_32__*, %struct.TYPE_35__ }
%struct.TYPE_32__ = type { i32, i64 }
%struct.TYPE_35__ = type { i8*, %struct.TYPE_28__* }
%struct.TYPE_38__ = type { %struct.TYPE_37__*, %struct.TYPE_34__, i32 }
%struct.TYPE_37__ = type { %struct.TYPE_36__ }
%struct.TYPE_36__ = type { i64 }
%struct.TYPE_34__ = type { i8* }
%struct.TYPE_33__ = type { i8* }
%struct.TYPE_29__ = type { %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i64, i32 }
%struct.TYPE_31__ = type { i32 }
%struct.TYPE_30__ = type { %struct.TYPE_40__, %struct.TYPE_39__ }
%struct.TYPE_40__ = type { i32 }
%struct.TYPE_39__ = type { i64 }

@AML_NAMED = common dso_local global i32 0, align 4
@AML_CREATE = common dso_local global i32 0, align 4
@AML_INT_NAMEPATH_OP = common dso_local global i64 0, align 8
@AML_NOTIFY_OP = common dso_local global i64 0, align 8
@AML_ALIAS_OP = common dso_local global i64 0, align 8
@ACPI_TYPE_ANY = common dso_local global i64 0, align 8
@AML_SCOPE_OP = common dso_local global i64 0, align 8
@AML_EXTERNAL_OP = common dso_local global i64 0, align 8
@ACPI_TYPE_BUFFER = common dso_local global i64 0, align 8
@ACPI_IMODE_EXECUTE = common dso_local global i32 0, align 4
@ACPI_NS_SEARCH_PARENT = common dso_local global i32 0, align 4
@ACPI_NS_DONT_OPEN_SCOPE = common dso_local global i32 0, align 4
@ANOBJ_IS_EXTERNAL = common dso_local global i32 0, align 4
@AE_NOT_FOUND = common dso_local global i64 0, align 8
@AML_CONDITIONAL_REF_OF_OP = common dso_local global i64 0, align 8
@ACPI_TYPE_METHOD = common dso_local global i64 0, align 8
@AE_NO_MEMORY = common dso_local global i64 0, align 8
@ACPI_EXT_RESOLVED_REFERENCE = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_28__*, i32, i8*)* @AcpiDmXrefDescendingOp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @AcpiDmXrefDescendingOp(%struct.TYPE_28__* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_28__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_29__*, align 8
  %9 = alloca %struct.TYPE_31__*, align 8
  %10 = alloca %struct.TYPE_27__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TYPE_28__*, align 8
  %16 = alloca %struct.TYPE_32__*, align 8
  %17 = alloca %struct.TYPE_30__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = bitcast i8* %21 to %struct.TYPE_29__*
  store %struct.TYPE_29__* %22, %struct.TYPE_29__** %8, align 8
  store i8* null, i8** %14, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %20, align 4
  %23 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_27__*, %struct.TYPE_27__** %24, align 8
  store %struct.TYPE_27__* %25, %struct.TYPE_27__** %10, align 8
  %26 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call %struct.TYPE_31__* @AcpiPsGetOpcodeInfo(i64 %29)
  store %struct.TYPE_31__* %30, %struct.TYPE_31__** %9, align 8
  %31 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i64 @AslMapNamedOpcodeToDataType(i32 %34)
  store i64 %35, i64* %11, align 8
  %36 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @AML_NAMED, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %64, label %42

42:                                               ; preds = %3
  %43 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @AML_CREATE, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %64, label %49

49:                                               ; preds = %42
  %50 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @AML_INT_NAMEPATH_OP, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %64

56:                                               ; preds = %49
  %57 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @AML_NOTIFY_OP, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %56
  br label %307

64:                                               ; preds = %56, %49, %42, %3
  %65 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @AML_NAMED, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %124

71:                                               ; preds = %64
  %72 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @AML_ALIAS_OP, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %103

78:                                               ; preds = %71
  %79 = load i64, i64* @ACPI_TYPE_ANY, align 8
  store i64 %79, i64* %11, align 8
  %80 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_28__*, %struct.TYPE_28__** %83, align 8
  store %struct.TYPE_28__* %84, %struct.TYPE_28__** %15, align 8
  %85 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %86 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_28__*, %struct.TYPE_28__** %88, align 8
  store %struct.TYPE_28__* %89, %struct.TYPE_28__** %15, align 8
  %90 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %91 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @AML_INT_NAMEPATH_OP, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %102

96:                                               ; preds = %78
  %97 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %98 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %99, i32 0, i32 0
  %101 = load i8*, i8** %100, align 8
  store i8* %101, i8** %14, align 8
  br label %102

102:                                              ; preds = %96, %78
  br label %123

103:                                              ; preds = %71
  %104 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @AML_SCOPE_OP, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %117, label %110

110:                                              ; preds = %103
  %111 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @AML_EXTERNAL_OP, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %122

117:                                              ; preds = %110, %103
  %118 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %119, i32 0, i32 0
  %121 = load i8*, i8** %120, align 8
  store i8* %121, i8** %14, align 8
  br label %122

122:                                              ; preds = %117, %110
  br label %123

123:                                              ; preds = %122, %102
  br label %176

124:                                              ; preds = %64
  %125 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %126 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @AML_CREATE, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %151

131:                                              ; preds = %124
  %132 = load i64, i64* @ACPI_TYPE_BUFFER, align 8
  store i64 %132, i64* %11, align 8
  %133 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %135, i32 0, i32 1
  %137 = load %struct.TYPE_28__*, %struct.TYPE_28__** %136, align 8
  store %struct.TYPE_28__* %137, %struct.TYPE_28__** %15, align 8
  %138 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %139 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @AML_INT_NAMEPATH_OP, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %150

144:                                              ; preds = %131
  %145 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %146 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %146, i32 0, i32 2
  %148 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %147, i32 0, i32 0
  %149 = load i8*, i8** %148, align 8
  store i8* %149, i8** %14, align 8
  br label %150

150:                                              ; preds = %144, %131
  br label %175

151:                                              ; preds = %124
  %152 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @AML_NOTIFY_OP, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %158, label %168

158:                                              ; preds = %151
  %159 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %160, i32 0, i32 2
  %162 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %161, i32 0, i32 1
  %163 = load %struct.TYPE_28__*, %struct.TYPE_28__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %165, i32 0, i32 0
  %167 = load i8*, i8** %166, align 8
  store i8* %167, i8** %14, align 8
  br label %174

168:                                              ; preds = %151
  %169 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %170, i32 0, i32 2
  %172 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %171, i32 0, i32 0
  %173 = load i8*, i8** %172, align 8
  store i8* %173, i8** %14, align 8
  br label %174

174:                                              ; preds = %168, %158
  br label %175

175:                                              ; preds = %174, %150
  br label %176

176:                                              ; preds = %175, %123
  %177 = load i8*, i8** %14, align 8
  %178 = icmp ne i8* %177, null
  br i1 %178, label %180, label %179

179:                                              ; preds = %176
  br label %307

180:                                              ; preds = %176
  store %struct.TYPE_32__* null, %struct.TYPE_32__** %16, align 8
  %181 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %182 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 8
  %184 = load i8*, i8** %14, align 8
  %185 = load i64, i64* @ACPI_TYPE_ANY, align 8
  %186 = load i32, i32* @ACPI_IMODE_EXECUTE, align 4
  %187 = load i32, i32* @ACPI_NS_SEARCH_PARENT, align 4
  %188 = load i32, i32* @ACPI_NS_DONT_OPEN_SCOPE, align 4
  %189 = or i32 %187, %188
  %190 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %191 = call i64 @AcpiNsLookup(i32 %183, i8* %184, i64 %185, i32 %186, i32 %189, %struct.TYPE_27__* %190, %struct.TYPE_32__** %16)
  store i64 %191, i64* %13, align 8
  %192 = load i64, i64* %13, align 8
  %193 = call i64 @ACPI_SUCCESS(i64 %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %204

195:                                              ; preds = %180
  %196 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %197 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = load i32, i32* @ANOBJ_IS_EXTERNAL, align 4
  %200 = and i32 %198, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %204

202:                                              ; preds = %195
  %203 = load i64, i64* @AE_NOT_FOUND, align 8
  store i64 %203, i64* %13, align 8
  br label %204

204:                                              ; preds = %202, %195, %180
  %205 = load i64, i64* %13, align 8
  %206 = call i64 @ACPI_FAILURE(i64 %205)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %247

208:                                              ; preds = %204
  %209 = load i64, i64* %13, align 8
  %210 = load i64, i64* @AE_NOT_FOUND, align 8
  %211 = icmp eq i64 %209, %210
  br i1 %211, label %212, label %246

212:                                              ; preds = %208
  %213 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %214 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %213, i32 0, i32 1
  %215 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %214, i32 0, i32 0
  %216 = load %struct.TYPE_37__*, %struct.TYPE_37__** %215, align 8
  %217 = icmp ne %struct.TYPE_37__* %216, null
  br i1 %217, label %218, label %228

218:                                              ; preds = %212
  %219 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %220 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %219, i32 0, i32 1
  %221 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %220, i32 0, i32 0
  %222 = load %struct.TYPE_37__*, %struct.TYPE_37__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = load i64, i64* @AML_CONDITIONAL_REF_OF_OP, align 8
  %227 = icmp eq i64 %225, %226
  br i1 %227, label %245, label %228

228:                                              ; preds = %218, %212
  %229 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %230 = icmp ne %struct.TYPE_32__* %229, null
  br i1 %230, label %231, label %237

231:                                              ; preds = %228
  %232 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %233 = load i64, i64* %11, align 8
  %234 = trunc i64 %233 to i32
  %235 = load i32, i32* %20, align 4
  %236 = call i32 @AcpiDmAddNodeToExternalList(%struct.TYPE_32__* %232, i32 %234, i32 7, i32 %235)
  br label %244

237:                                              ; preds = %228
  %238 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %239 = load i8*, i8** %14, align 8
  %240 = load i64, i64* %11, align 8
  %241 = trunc i64 %240 to i32
  %242 = load i32, i32* %20, align 4
  %243 = call i32 @AcpiDmAddOpToExternalList(%struct.TYPE_28__* %238, i8* %239, i32 %241, i32 7, i32 %242)
  br label %244

244:                                              ; preds = %237, %231
  br label %245

245:                                              ; preds = %244, %218
  br label %246

246:                                              ; preds = %245, %208
  br label %306

247:                                              ; preds = %204
  %248 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %249 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %248, i32 0, i32 1
  %250 = load i64, i64* %249, align 8
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %300

252:                                              ; preds = %247
  %253 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %254 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %253, i32 0, i32 0
  %255 = load i64, i64* %254, align 8
  %256 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %257 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %256, i32 0, i32 1
  %258 = load i64, i64* %257, align 8
  %259 = icmp ne i64 %255, %258
  br i1 %259, label %260, label %300

260:                                              ; preds = %252
  %261 = load i64, i64* %11, align 8
  store i64 %261, i64* %12, align 8
  %262 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %263 = call %struct.TYPE_30__* @AcpiNsGetAttachedObject(%struct.TYPE_32__* %262)
  store %struct.TYPE_30__* %263, %struct.TYPE_30__** %17, align 8
  %264 = load %struct.TYPE_30__*, %struct.TYPE_30__** %17, align 8
  %265 = icmp ne %struct.TYPE_30__* %264, null
  br i1 %265, label %266, label %280

266:                                              ; preds = %260
  %267 = load %struct.TYPE_30__*, %struct.TYPE_30__** %17, align 8
  %268 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %267, i32 0, i32 1
  %269 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %268, i32 0, i32 0
  %270 = load i64, i64* %269, align 8
  store i64 %270, i64* %12, align 8
  %271 = load i64, i64* %12, align 8
  %272 = load i64, i64* @ACPI_TYPE_METHOD, align 8
  %273 = icmp eq i64 %271, %272
  br i1 %273, label %274, label %279

274:                                              ; preds = %266
  %275 = load %struct.TYPE_30__*, %struct.TYPE_30__** %17, align 8
  %276 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %275, i32 0, i32 0
  %277 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 8
  store i32 %278, i32* %18, align 4
  br label %279

279:                                              ; preds = %274, %266
  br label %280

280:                                              ; preds = %279, %260
  %281 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %282 = call i8* @AcpiNsGetExternalPathname(%struct.TYPE_32__* %281)
  store i8* %282, i8** %19, align 8
  %283 = load i8*, i8** %19, align 8
  %284 = icmp ne i8* %283, null
  br i1 %284, label %287, label %285

285:                                              ; preds = %280
  %286 = load i64, i64* @AE_NO_MEMORY, align 8
  store i64 %286, i64* %4, align 8
  br label %334

287:                                              ; preds = %280
  %288 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %289 = load i64, i64* %12, align 8
  %290 = trunc i64 %289 to i32
  %291 = load i32, i32* %18, align 4
  %292 = load i32, i32* @ACPI_EXT_RESOLVED_REFERENCE, align 4
  %293 = call i32 @AcpiDmAddNodeToExternalList(%struct.TYPE_32__* %288, i32 %290, i32 %291, i32 %292)
  %294 = load i8*, i8** %19, align 8
  %295 = call i32 @ACPI_FREE(i8* %294)
  %296 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %297 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %298 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %297, i32 0, i32 0
  %299 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %298, i32 0, i32 1
  store %struct.TYPE_32__* %296, %struct.TYPE_32__** %299, align 8
  br label %305

300:                                              ; preds = %252, %247
  %301 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %302 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %303 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %302, i32 0, i32 0
  %304 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %303, i32 0, i32 1
  store %struct.TYPE_32__* %301, %struct.TYPE_32__** %304, align 8
  br label %305

305:                                              ; preds = %300, %287
  br label %306

306:                                              ; preds = %305, %246
  br label %307

307:                                              ; preds = %306, %179, %63
  %308 = load i64, i64* %11, align 8
  %309 = call i64 @AcpiNsOpensScope(i64 %308)
  %310 = icmp ne i64 %309, 0
  br i1 %310, label %311, label %332

311:                                              ; preds = %307
  %312 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %313 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %312, i32 0, i32 0
  %314 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %313, i32 0, i32 1
  %315 = load %struct.TYPE_32__*, %struct.TYPE_32__** %314, align 8
  %316 = icmp ne %struct.TYPE_32__* %315, null
  br i1 %316, label %317, label %331

317:                                              ; preds = %311
  %318 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %319 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %318, i32 0, i32 0
  %320 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %319, i32 0, i32 1
  %321 = load %struct.TYPE_32__*, %struct.TYPE_32__** %320, align 8
  %322 = load i64, i64* %11, align 8
  %323 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %324 = call i64 @AcpiDsScopeStackPush(%struct.TYPE_32__* %321, i64 %322, %struct.TYPE_27__* %323)
  store i64 %324, i64* %13, align 8
  %325 = load i64, i64* %13, align 8
  %326 = call i64 @ACPI_FAILURE(i64 %325)
  %327 = icmp ne i64 %326, 0
  br i1 %327, label %328, label %330

328:                                              ; preds = %317
  %329 = load i64, i64* %13, align 8
  store i64 %329, i64* %4, align 8
  br label %334

330:                                              ; preds = %317
  br label %331

331:                                              ; preds = %330, %311
  br label %332

332:                                              ; preds = %331, %307
  %333 = load i64, i64* @AE_OK, align 8
  store i64 %333, i64* %4, align 8
  br label %334

334:                                              ; preds = %332, %328, %285
  %335 = load i64, i64* %4, align 8
  ret i64 %335
}

declare dso_local %struct.TYPE_31__* @AcpiPsGetOpcodeInfo(i64) #1

declare dso_local i64 @AslMapNamedOpcodeToDataType(i32) #1

declare dso_local i64 @AcpiNsLookup(i32, i8*, i64, i32, i32, %struct.TYPE_27__*, %struct.TYPE_32__**) #1

declare dso_local i64 @ACPI_SUCCESS(i64) #1

declare dso_local i64 @ACPI_FAILURE(i64) #1

declare dso_local i32 @AcpiDmAddNodeToExternalList(%struct.TYPE_32__*, i32, i32, i32) #1

declare dso_local i32 @AcpiDmAddOpToExternalList(%struct.TYPE_28__*, i8*, i32, i32, i32) #1

declare dso_local %struct.TYPE_30__* @AcpiNsGetAttachedObject(%struct.TYPE_32__*) #1

declare dso_local i8* @AcpiNsGetExternalPathname(%struct.TYPE_32__*) #1

declare dso_local i32 @ACPI_FREE(i8*) #1

declare dso_local i64 @AcpiNsOpensScope(i64) #1

declare dso_local i64 @AcpiDsScopeStackPush(%struct.TYPE_32__*, i64, %struct.TYPE_27__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
