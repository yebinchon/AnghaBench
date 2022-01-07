; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_asloffset.c_LsAmlOffsetWalk.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_asloffset.c_LsAmlOffsetWalk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i64, i32, %struct.TYPE_9__*, %struct.TYPE_7__, %struct.TYPE_9__*, i32, %struct.TYPE_10__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_10__ = type { i64 }

@OP_IS_RESOURCE_DATA = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4
@AslGbl_CurrentAmlOffset = common dso_local global i64 0, align 8
@ACPI_TYPE_LOCAL_RESOURCE = common dso_local global i64 0, align 8
@OP_IS_RESOURCE_DESC = common dso_local global i32 0, align 4
@AML_BUFFER_OP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"%s NO CHILD!\0A\00", align 1
@AslGbl_MsgBuffer = common dso_local global i32 0, align 4
@ACPI_NAMESEG_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LsAmlOffsetWalk(%struct.TYPE_9__* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = call i32 @ACPI_TO_INTEGER(i8* %14)
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %8, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @OP_IS_RESOURCE_DATA, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* @AE_OK, align 4
  store i32 %25, i32* %4, align 4
  br label %400

26:                                               ; preds = %3
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 8
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %29, align 8
  store %struct.TYPE_10__* %30, %struct.TYPE_10__** %9, align 8
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %32 = icmp ne %struct.TYPE_10__* %31, null
  br i1 %32, label %41, label %33

33:                                               ; preds = %26
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @AslGbl_CurrentAmlOffset, align 8
  %39 = add nsw i64 %38, %37
  store i64 %39, i64* @AslGbl_CurrentAmlOffset, align 8
  %40 = load i32, i32* @AE_OK, align 4
  store i32 %40, i32* %4, align 4
  br label %400

41:                                               ; preds = %26
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @ACPI_TYPE_LOCAL_RESOURCE, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %76

47:                                               ; preds = %41
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @OP_IS_RESOURCE_DESC, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %76

55:                                               ; preds = %47
  %56 = load i64, i64* %8, align 8
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %58 = load i64, i64* @AslGbl_CurrentAmlOffset, align 8
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 7
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @AML_BUFFER_OP, align 4
  %68 = call i32 @LsEmitOffsetTableEntry(i64 %56, %struct.TYPE_10__* %57, i64 0, i64 %58, i32 %62, i32 0, i32 %66, i32 %67)
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @AslGbl_CurrentAmlOffset, align 8
  %74 = add nsw i64 %73, %72
  store i64 %74, i64* @AslGbl_CurrentAmlOffset, align 8
  %75 = load i32, i32* @AE_OK, align 4
  store i32 %75, i32* %4, align 4
  br label %400

76:                                               ; preds = %47, %41
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  switch i32 %80, label %391 [
    i32 139, label %81
    i32 133, label %195
    i32 140, label %261
    i32 135, label %310
    i32 142, label %360
    i32 132, label %360
    i32 131, label %360
  ]

81:                                               ; preds = %76
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 4
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %84, align 8
  %86 = icmp ne %struct.TYPE_9__* %85, null
  br i1 %86, label %92, label %87

87:                                               ; preds = %81
  %88 = load i64, i64* %8, align 8
  %89 = load i32, i32* @AslGbl_MsgBuffer, align 4
  %90 = call i32 @FlPrintFile(i64 %88, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %89)
  %91 = load i32, i32* @AE_OK, align 4
  store i32 %91, i32* %4, align 4
  br label %400

92:                                               ; preds = %81
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  store i64 %96, i64* %10, align 8
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 4
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %99, align 8
  store %struct.TYPE_9__* %100, %struct.TYPE_9__** %5, align 8
  %101 = load i64, i64* @AslGbl_CurrentAmlOffset, align 8
  %102 = load i64, i64* %10, align 8
  %103 = add nsw i64 %101, %102
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @ACPI_NAMESEG_SIZE, align 8
  %109 = sub nsw i64 %107, %108
  %110 = add nsw i64 %103, %109
  store i64 %110, i64* %11, align 8
  %111 = load i64, i64* @AslGbl_CurrentAmlOffset, align 8
  %112 = load i64, i64* %10, align 8
  %113 = add nsw i64 %111, %112
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = add nsw i64 %113, %117
  store i64 %118, i64* %12, align 8
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 6
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %121, align 8
  store %struct.TYPE_9__* %122, %struct.TYPE_9__** %5, align 8
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  switch i32 %126, label %189 [
    i32 143, label %127
    i32 129, label %127
    i32 141, label %127
    i32 134, label %127
    i32 137, label %147
    i32 138, label %147
    i32 128, label %147
    i32 136, label %166
    i32 130, label %166
  ]

127:                                              ; preds = %92, %92, %92, %92
  %128 = load i64, i64* %8, align 8
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %130 = load i64, i64* %11, align 8
  %131 = load i64, i64* %12, align 8
  %132 = add nsw i64 %131, 1
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 5
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @LsEmitOffsetTableEntry(i64 %128, %struct.TYPE_10__* %129, i64 %130, i64 %132, i32 %136, i32 %141, i32 %145, i32 139)
  br label %190

147:                                              ; preds = %92, %92, %92
  %148 = load i64, i64* %8, align 8
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %150 = load i64, i64* %11, align 8
  %151 = load i64, i64* %12, align 8
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 5
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @LsEmitOffsetTableEntry(i64 %148, %struct.TYPE_10__* %149, i64 %150, i64 %151, i32 %155, i32 %160, i32 %164, i32 139)
  br label %190

166:                                              ; preds = %92, %92
  %167 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 4
  %170 = load %struct.TYPE_9__*, %struct.TYPE_9__** %169, align 8
  store %struct.TYPE_9__* %170, %struct.TYPE_9__** %13, align 8
  %171 = load i64, i64* %8, align 8
  %172 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %173 = load i64, i64* %11, align 8
  %174 = load i64, i64* %12, align 8
  %175 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 3
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 5
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @LsEmitOffsetTableEntry(i64 %171, %struct.TYPE_10__* %172, i64 %173, i64 %174, i32 %178, i32 %183, i32 %187, i32 139)
  br label %190

189:                                              ; preds = %92
  br label %190

190:                                              ; preds = %189, %166, %147, %127
  %191 = load i64, i64* %10, align 8
  %192 = load i64, i64* @AslGbl_CurrentAmlOffset, align 8
  %193 = add nsw i64 %192, %191
  store i64 %193, i64* @AslGbl_CurrentAmlOffset, align 8
  %194 = load i32, i32* @AE_OK, align 4
  store i32 %194, i32* %4, align 4
  br label %400

195:                                              ; preds = %76
  %196 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %197 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i32 0, i32 2
  %199 = load i64, i64* %198, align 8
  store i64 %199, i64* %10, align 8
  %200 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %201, i32 0, i32 4
  %203 = load %struct.TYPE_9__*, %struct.TYPE_9__** %202, align 8
  store %struct.TYPE_9__* %203, %struct.TYPE_9__** %13, align 8
  %204 = load i64, i64* @AslGbl_CurrentAmlOffset, align 8
  %205 = load i64, i64* %10, align 8
  %206 = add nsw i64 %204, %205
  %207 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %208 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %208, i32 0, i32 2
  %210 = load i64, i64* %209, align 8
  %211 = load i64, i64* @ACPI_NAMESEG_SIZE, align 8
  %212 = sub nsw i64 %210, %211
  %213 = add nsw i64 %206, %212
  store i64 %213, i64* %11, align 8
  %214 = load i64, i64* @AslGbl_CurrentAmlOffset, align 8
  %215 = load i64, i64* %10, align 8
  %216 = add nsw i64 %214, %215
  %217 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %218 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %218, i32 0, i32 2
  %220 = load i64, i64* %219, align 8
  %221 = add nsw i64 %220, 1
  %222 = add nsw i64 %216, %221
  store i64 %222, i64* %12, align 8
  %223 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %224 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %224, i32 0, i32 6
  %226 = load %struct.TYPE_9__*, %struct.TYPE_9__** %225, align 8
  store %struct.TYPE_9__* %226, %struct.TYPE_9__** %13, align 8
  %227 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %228 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %228, i32 0, i32 6
  %230 = load %struct.TYPE_9__*, %struct.TYPE_9__** %229, align 8
  store %struct.TYPE_9__* %230, %struct.TYPE_9__** %13, align 8
  %231 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %232 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  switch i32 %234, label %259 [
    i32 143, label %235
    i32 129, label %235
    i32 141, label %235
    i32 134, label %235
  ]

235:                                              ; preds = %195, %195, %195, %195
  %236 = load i64, i64* %8, align 8
  %237 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %238 = load i64, i64* %11, align 8
  %239 = load i64, i64* %12, align 8
  %240 = add nsw i64 %239, 1
  %241 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %242 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %242, i32 0, i32 3
  %244 = load i32, i32* %243, align 8
  %245 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %246 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %246, i32 0, i32 5
  %248 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %251 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 4
  %254 = call i32 @LsEmitOffsetTableEntry(i64 %236, %struct.TYPE_10__* %237, i64 %238, i64 %240, i32 %244, i32 %249, i32 %253, i32 133)
  %255 = load i64, i64* %10, align 8
  %256 = load i64, i64* @AslGbl_CurrentAmlOffset, align 8
  %257 = add nsw i64 %256, %255
  store i64 %257, i64* @AslGbl_CurrentAmlOffset, align 8
  %258 = load i32, i32* @AE_OK, align 4
  store i32 %258, i32* %4, align 4
  br label %400

259:                                              ; preds = %195
  br label %260

260:                                              ; preds = %259
  br label %392

261:                                              ; preds = %76
  %262 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %263 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %262, i32 0, i32 0
  %264 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %263, i32 0, i32 2
  %265 = load i64, i64* %264, align 8
  store i64 %265, i64* %10, align 8
  %266 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %267 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %267, i32 0, i32 4
  %269 = load %struct.TYPE_9__*, %struct.TYPE_9__** %268, align 8
  store %struct.TYPE_9__* %269, %struct.TYPE_9__** %13, align 8
  %270 = load i64, i64* @AslGbl_CurrentAmlOffset, align 8
  %271 = load i64, i64* %10, align 8
  %272 = add nsw i64 %270, %271
  %273 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %274 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %273, i32 0, i32 0
  %275 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %274, i32 0, i32 2
  %276 = load i64, i64* %275, align 8
  %277 = load i64, i64* @ACPI_NAMESEG_SIZE, align 8
  %278 = sub nsw i64 %276, %277
  %279 = add nsw i64 %272, %278
  store i64 %279, i64* %11, align 8
  %280 = load i64, i64* @AslGbl_CurrentAmlOffset, align 8
  %281 = load i64, i64* %10, align 8
  %282 = add nsw i64 %280, %281
  %283 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %284 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %283, i32 0, i32 0
  %285 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %284, i32 0, i32 2
  %286 = load i64, i64* %285, align 8
  %287 = add nsw i64 %282, %286
  store i64 %287, i64* %12, align 8
  %288 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %289 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %288, i32 0, i32 0
  %290 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %289, i32 0, i32 6
  %291 = load %struct.TYPE_9__*, %struct.TYPE_9__** %290, align 8
  store %struct.TYPE_9__* %291, %struct.TYPE_9__** %13, align 8
  %292 = load i64, i64* %8, align 8
  %293 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %294 = load i64, i64* %11, align 8
  %295 = load i64, i64* %12, align 8
  %296 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %297 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %296, i32 0, i32 0
  %298 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %297, i32 0, i32 3
  %299 = load i32, i32* %298, align 8
  %300 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %301 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %300, i32 0, i32 0
  %302 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %301, i32 0, i32 5
  %303 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 8
  %305 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %306 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %305, i32 0, i32 0
  %307 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %306, i32 0, i32 1
  %308 = load i32, i32* %307, align 4
  %309 = call i32 @LsEmitOffsetTableEntry(i64 %292, %struct.TYPE_10__* %293, i64 %294, i64 %295, i32 %299, i32 %304, i32 %308, i32 140)
  br label %392

310:                                              ; preds = %76
  %311 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %312 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %311, i32 0, i32 0
  %313 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %312, i32 0, i32 2
  %314 = load i64, i64* %313, align 8
  store i64 %314, i64* %10, align 8
  %315 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %316 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %315, i32 0, i32 0
  %317 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %316, i32 0, i32 4
  %318 = load %struct.TYPE_9__*, %struct.TYPE_9__** %317, align 8
  store %struct.TYPE_9__* %318, %struct.TYPE_9__** %13, align 8
  %319 = load i64, i64* @AslGbl_CurrentAmlOffset, align 8
  %320 = load i64, i64* %10, align 8
  %321 = add nsw i64 %319, %320
  %322 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %323 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %322, i32 0, i32 0
  %324 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %323, i32 0, i32 2
  %325 = load i64, i64* %324, align 8
  %326 = load i64, i64* @ACPI_NAMESEG_SIZE, align 8
  %327 = sub nsw i64 %325, %326
  %328 = add nsw i64 %321, %327
  store i64 %328, i64* %11, align 8
  %329 = load i64, i64* @AslGbl_CurrentAmlOffset, align 8
  %330 = load i64, i64* %10, align 8
  %331 = add nsw i64 %329, %330
  %332 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %333 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %332, i32 0, i32 0
  %334 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %333, i32 0, i32 2
  %335 = load i64, i64* %334, align 8
  %336 = add nsw i64 %335, 1
  %337 = add nsw i64 %331, %336
  store i64 %337, i64* %12, align 8
  %338 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %339 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %338, i32 0, i32 0
  %340 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %339, i32 0, i32 6
  %341 = load %struct.TYPE_9__*, %struct.TYPE_9__** %340, align 8
  store %struct.TYPE_9__* %341, %struct.TYPE_9__** %13, align 8
  %342 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %343 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %342, i32 0, i32 0
  %344 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %343, i32 0, i32 6
  %345 = load %struct.TYPE_9__*, %struct.TYPE_9__** %344, align 8
  store %struct.TYPE_9__* %345, %struct.TYPE_9__** %13, align 8
  %346 = load i64, i64* %8, align 8
  %347 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %348 = load i64, i64* %11, align 8
  %349 = load i64, i64* %12, align 8
  %350 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %351 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %350, i32 0, i32 0
  %352 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %351, i32 0, i32 3
  %353 = load i32, i32* %352, align 8
  %354 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %355 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %354, i32 0, i32 0
  %356 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %355, i32 0, i32 5
  %357 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %356, i32 0, i32 0
  %358 = load i32, i32* %357, align 8
  %359 = call i32 @LsEmitOffsetTableEntry(i64 %346, %struct.TYPE_10__* %347, i64 %348, i64 %349, i32 %353, i32 %358, i32 141, i32 135)
  br label %392

360:                                              ; preds = %76, %76, %76
  %361 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %362 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %361, i32 0, i32 0
  %363 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %362, i32 0, i32 2
  %364 = load i64, i64* %363, align 8
  store i64 %364, i64* %10, align 8
  %365 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %366 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %365, i32 0, i32 0
  %367 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %366, i32 0, i32 4
  %368 = load %struct.TYPE_9__*, %struct.TYPE_9__** %367, align 8
  store %struct.TYPE_9__* %368, %struct.TYPE_9__** %13, align 8
  %369 = load i64, i64* @AslGbl_CurrentAmlOffset, align 8
  %370 = load i64, i64* %10, align 8
  %371 = add nsw i64 %369, %370
  %372 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %373 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %372, i32 0, i32 0
  %374 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %373, i32 0, i32 2
  %375 = load i64, i64* %374, align 8
  %376 = load i64, i64* @ACPI_NAMESEG_SIZE, align 8
  %377 = sub nsw i64 %375, %376
  %378 = add nsw i64 %371, %377
  store i64 %378, i64* %11, align 8
  %379 = load i64, i64* %8, align 8
  %380 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %381 = load i64, i64* %11, align 8
  %382 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %383 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %382, i32 0, i32 0
  %384 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %383, i32 0, i32 3
  %385 = load i32, i32* %384, align 8
  %386 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %387 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %386, i32 0, i32 0
  %388 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %387, i32 0, i32 1
  %389 = load i32, i32* %388, align 4
  %390 = call i32 @LsEmitOffsetTableEntry(i64 %379, %struct.TYPE_10__* %380, i64 %381, i64 0, i32 %385, i32 0, i32 0, i32 %389)
  br label %392

391:                                              ; preds = %76
  br label %392

392:                                              ; preds = %391, %360, %310, %261, %260
  %393 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %394 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %393, i32 0, i32 0
  %395 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %394, i32 0, i32 2
  %396 = load i64, i64* %395, align 8
  %397 = load i64, i64* @AslGbl_CurrentAmlOffset, align 8
  %398 = add nsw i64 %397, %396
  store i64 %398, i64* @AslGbl_CurrentAmlOffset, align 8
  %399 = load i32, i32* @AE_OK, align 4
  store i32 %399, i32* %4, align 4
  br label %400

400:                                              ; preds = %392, %235, %190, %87, %55, %33, %24
  %401 = load i32, i32* %4, align 4
  ret i32 %401
}

declare dso_local i32 @ACPI_TO_INTEGER(i8*) #1

declare dso_local i32 @LsEmitOffsetTableEntry(i64, %struct.TYPE_10__*, i64, i64, i32, i32, i32, i32) #1

declare dso_local i32 @FlPrintFile(i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
