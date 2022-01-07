; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpi_support/extr_acpi_hp.c_acpi_hp_get_cmi_block.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpi_support/extr_acpi_hp.c_acpi_hp_get_cmi_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__*, i32*, i32 }

@ACPI_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ACPI_TYPE_PACKAGE = common dso_local global i64 0, align 8
@ACPI_TYPE_STRING = common dso_local global i64 0, align 8
@ACPI_TYPE_INTEGER = common dso_local global i64 0, align 8
@ACPI_HP_CMI_DETAIL_PATHS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@ACPI_HP_CMI_DETAIL_ENUMS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c")\00", align 1
@ACPI_HP_CMI_DETAIL_FLAGS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c" [ReadOnly]\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [8 x i8] c" [NOUI]\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c" [RPP]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i8*, i64, i64*, i32)* @acpi_hp_get_cmi_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_hp_get_cmi_block(i32 %0, i8* %1, i32 %2, i8* %3, i64 %4, i64* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_10__*, align 8
  %17 = alloca %struct.TYPE_11__, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i64 %4, i64* %13, align 8
  store i64* %5, i64** %14, align 8
  store i32 %6, i32* %15, align 4
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %28 = load i32, i32* @ACPI_ALLOCATE_BUFFER, align 4
  %29 = sext i32 %28 to i64
  %30 = inttoptr i64 %29 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %30, %struct.TYPE_10__** %27, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 1
  store i32* null, i32** %31, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 2
  store i32 0, i32* %32, align 8
  store i32 255, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  %33 = load i32, i32* %20, align 4
  %34 = zext i32 %33 to i64
  %35 = call i8* @llvm.stacksave()
  store i8* %35, i8** %23, align 8
  %36 = alloca i8, i64 %34, align 16
  store i64 %34, i64* %24, align 8
  store i32 0, i32* %19, align 4
  %37 = load i8*, i8** %12, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 0
  store i8 0, i8* %38, align 1
  %39 = load i32, i32* %9, align 4
  %40 = load i8*, i8** %10, align 8
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @ACPI_WMI_GET_BLOCK(i32 %39, i8* %40, i32 %41, %struct.TYPE_11__* %17)
  %43 = call i64 @ACPI_FAILURE(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %7
  %46 = call i32 @acpi_hp_free_buffer(%struct.TYPE_11__* %17)
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %8, align 4
  store i32 1, i32* %26, align 4
  br label %489

49:                                               ; preds = %7
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %50, align 8
  store %struct.TYPE_10__* %51, %struct.TYPE_10__** %16, align 8
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %53 = icmp ne %struct.TYPE_10__* %52, null
  br i1 %53, label %54, label %60

54:                                               ; preds = %49
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @ACPI_TYPE_PACKAGE, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %54, %49
  %61 = call i32 @acpi_hp_free_buffer(%struct.TYPE_11__* %17)
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %8, align 4
  store i32 1, i32* %26, align 4
  br label %489

64:                                               ; preds = %54
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp slt i32 %68, 8
  br i1 %69, label %150, label %70

70:                                               ; preds = %64
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i64 0
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @ACPI_TYPE_STRING, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %150, label %80

80:                                               ; preds = %70
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i64 1
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @ACPI_TYPE_STRING, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %150, label %90

90:                                               ; preds = %80
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i64 2
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @ACPI_TYPE_STRING, align 8
  %99 = icmp ne i64 %97, %98
  br i1 %99, label %150, label %100

100:                                              ; preds = %90
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 1
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i64 3
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  %109 = icmp ne i64 %107, %108
  br i1 %109, label %150, label %110

110:                                              ; preds = %100
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 1
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i64 4
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  %119 = icmp ne i64 %117, %118
  br i1 %119, label %150, label %120

120:                                              ; preds = %110
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 1
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i64 5
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  %129 = icmp ne i64 %127, %128
  br i1 %129, label %150, label %130

130:                                              ; preds = %120
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 1
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i64 6
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  %139 = icmp ne i64 %137, %138
  br i1 %139, label %150, label %140

140:                                              ; preds = %130
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 1
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i64 7
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  %149 = icmp ne i64 %147, %148
  br i1 %149, label %150, label %154

150:                                              ; preds = %140, %130, %120, %110, %100, %90, %80, %70, %64
  %151 = call i32 @acpi_hp_free_buffer(%struct.TYPE_11__* %17)
  %152 = load i32, i32* @EINVAL, align 4
  %153 = sub nsw i32 0, %152
  store i32 %153, i32* %8, align 4
  store i32 1, i32* %26, align 4
  br label %489

154:                                              ; preds = %140
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 1
  %158 = load %struct.TYPE_12__*, %struct.TYPE_12__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i64 7
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = add nsw i32 8, %162
  store i32 %163, i32* %22, align 4
  %164 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = load i32, i32* %22, align 4
  %169 = icmp sle i32 %167, %168
  br i1 %169, label %170, label %174

170:                                              ; preds = %154
  %171 = call i32 @acpi_hp_free_buffer(%struct.TYPE_11__* %17)
  %172 = load i32, i32* @EINVAL, align 4
  %173 = sub nsw i32 0, %172
  store i32 %173, i32* %8, align 4
  store i32 1, i32* %26, align 4
  br label %489

174:                                              ; preds = %154
  %175 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i32 0, i32 1
  %178 = load %struct.TYPE_12__*, %struct.TYPE_12__** %177, align 8
  %179 = load i32, i32* %22, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %178, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  %185 = icmp eq i64 %183, %184
  br i1 %185, label %186, label %200

186:                                              ; preds = %174
  %187 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i32 0, i32 1
  %190 = load %struct.TYPE_12__*, %struct.TYPE_12__** %189, align 8
  %191 = load i32, i32* %22, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %190, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = add nsw i32 1, %196
  %198 = load i32, i32* %22, align 4
  %199 = add nsw i32 %198, %197
  store i32 %199, i32* %22, align 4
  br label %200

200:                                              ; preds = %186, %174
  %201 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = load i32, i32* %22, align 4
  %206 = add nsw i32 %205, 1
  %207 = icmp sle i32 %204, %206
  br i1 %207, label %233, label %208

208:                                              ; preds = %200
  %209 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %210 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %209, i32 0, i32 1
  %211 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %210, i32 0, i32 1
  %212 = load %struct.TYPE_12__*, %struct.TYPE_12__** %211, align 8
  %213 = load i32, i32* %22, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %212, i64 %214
  %216 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = load i64, i64* @ACPI_TYPE_STRING, align 8
  %219 = icmp ne i64 %217, %218
  br i1 %219, label %233, label %220

220:                                              ; preds = %208
  %221 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %222 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %221, i32 0, i32 1
  %223 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %222, i32 0, i32 1
  %224 = load %struct.TYPE_12__*, %struct.TYPE_12__** %223, align 8
  %225 = load i32, i32* %22, align 4
  %226 = add nsw i32 %225, 1
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %224, i64 %227
  %229 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %228, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  %232 = icmp ne i64 %230, %231
  br i1 %232, label %233, label %237

233:                                              ; preds = %220, %208, %200
  %234 = call i32 @acpi_hp_free_buffer(%struct.TYPE_11__* %17)
  %235 = load i32, i32* @EINVAL, align 4
  %236 = sub nsw i32 0, %235
  store i32 %236, i32* %8, align 4
  store i32 1, i32* %26, align 4
  br label %489

237:                                              ; preds = %220
  %238 = load i32, i32* %22, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %25, align 4
  %240 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %241 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %240, i32 0, i32 1
  %242 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = load i32, i32* %22, align 4
  %245 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %246 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %245, i32 0, i32 1
  %247 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %246, i32 0, i32 1
  %248 = load %struct.TYPE_12__*, %struct.TYPE_12__** %247, align 8
  %249 = load i32, i32* %25, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %248, i64 %250
  %252 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %251, i32 0, i32 1
  %253 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = add nsw i32 %244, %254
  %256 = icmp sle i32 %243, %255
  br i1 %256, label %257, label %261

257:                                              ; preds = %237
  %258 = call i32 @acpi_hp_free_buffer(%struct.TYPE_11__* %17)
  %259 = load i32, i32* @EINVAL, align 4
  %260 = sub nsw i32 0, %259
  store i32 %260, i32* %8, align 4
  store i32 1, i32* %26, align 4
  br label %489

261:                                              ; preds = %237
  %262 = load i32, i32* %15, align 4
  %263 = load i32, i32* @ACPI_HP_CMI_DETAIL_PATHS, align 4
  %264 = and i32 %262, %263
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %289

266:                                              ; preds = %261
  %267 = load i8*, i8** %12, align 8
  %268 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %269 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %268, i32 0, i32 1
  %270 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %269, i32 0, i32 1
  %271 = load %struct.TYPE_12__*, %struct.TYPE_12__** %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %271, i64 2
  %273 = load i32, i32* %20, align 4
  %274 = call i8* @acpi_hp_get_string_from_object(%struct.TYPE_12__* %272, i8* %36, i32 %273)
  %275 = load i64, i64* %13, align 8
  %276 = call i32 @strlcat(i8* %267, i8* %274, i64 %275)
  %277 = load i32, i32* %19, align 4
  %278 = add nsw i32 %277, 48
  store i32 %278, i32* %19, align 4
  br label %279

279:                                              ; preds = %284, %266
  %280 = load i8*, i8** %12, align 8
  %281 = call i32 @strlen(i8* %280)
  %282 = load i32, i32* %19, align 4
  %283 = icmp slt i32 %281, %282
  br i1 %283, label %284, label %288

284:                                              ; preds = %279
  %285 = load i8*, i8** %12, align 8
  %286 = load i64, i64* %13, align 8
  %287 = call i32 @strlcat(i8* %285, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i64 %286)
  br label %279

288:                                              ; preds = %279
  br label %289

289:                                              ; preds = %288, %261
  %290 = load i8*, i8** %12, align 8
  %291 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %292 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %291, i32 0, i32 1
  %293 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %292, i32 0, i32 1
  %294 = load %struct.TYPE_12__*, %struct.TYPE_12__** %293, align 8
  %295 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %294, i64 0
  %296 = load i32, i32* %20, align 4
  %297 = call i8* @acpi_hp_get_string_from_object(%struct.TYPE_12__* %295, i8* %36, i32 %296)
  %298 = load i64, i64* %13, align 8
  %299 = call i32 @strlcat(i8* %290, i8* %297, i64 %298)
  %300 = load i32, i32* %19, align 4
  %301 = add nsw i32 %300, 43
  store i32 %301, i32* %19, align 4
  br label %302

302:                                              ; preds = %307, %289
  %303 = load i8*, i8** %12, align 8
  %304 = call i32 @strlen(i8* %303)
  %305 = load i32, i32* %19, align 4
  %306 = icmp slt i32 %304, %305
  br i1 %306, label %307, label %311

307:                                              ; preds = %302
  %308 = load i8*, i8** %12, align 8
  %309 = load i64, i64* %13, align 8
  %310 = call i32 @strlcat(i8* %308, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i64 %309)
  br label %302

311:                                              ; preds = %302
  %312 = load i8*, i8** %12, align 8
  %313 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %314 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %313, i32 0, i32 1
  %315 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %314, i32 0, i32 1
  %316 = load %struct.TYPE_12__*, %struct.TYPE_12__** %315, align 8
  %317 = load i32, i32* %22, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %316, i64 %318
  %320 = load i32, i32* %20, align 4
  %321 = call i8* @acpi_hp_get_string_from_object(%struct.TYPE_12__* %319, i8* %36, i32 %320)
  %322 = load i64, i64* %13, align 8
  %323 = call i32 @strlcat(i8* %312, i8* %321, i64 %322)
  %324 = load i32, i32* %19, align 4
  %325 = add nsw i32 %324, 21
  store i32 %325, i32* %19, align 4
  br label %326

326:                                              ; preds = %331, %311
  %327 = load i8*, i8** %12, align 8
  %328 = call i32 @strlen(i8* %327)
  %329 = load i32, i32* %19, align 4
  %330 = icmp slt i32 %328, %329
  br i1 %330, label %331, label %335

331:                                              ; preds = %326
  %332 = load i8*, i8** %12, align 8
  %333 = load i64, i64* %13, align 8
  %334 = call i32 @strlcat(i8* %332, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i64 %333)
  br label %326

335:                                              ; preds = %326
  store i32 0, i32* %18, align 4
  br label %336

336:                                              ; preds = %355, %335
  %337 = load i32, i32* %18, align 4
  %338 = load i8*, i8** %12, align 8
  %339 = call i32 @strlen(i8* %338)
  %340 = icmp slt i32 %337, %339
  br i1 %340, label %341, label %358

341:                                              ; preds = %336
  %342 = load i8*, i8** %12, align 8
  %343 = load i32, i32* %18, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds i8, i8* %342, i64 %344
  %346 = load i8, i8* %345, align 1
  %347 = sext i8 %346 to i32
  %348 = icmp eq i32 %347, 92
  br i1 %348, label %349, label %354

349:                                              ; preds = %341
  %350 = load i8*, i8** %12, align 8
  %351 = load i32, i32* %18, align 4
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds i8, i8* %350, i64 %352
  store i8 47, i8* %353, align 1
  br label %354

354:                                              ; preds = %349, %341
  br label %355

355:                                              ; preds = %354
  %356 = load i32, i32* %18, align 4
  %357 = add nsw i32 %356, 1
  store i32 %357, i32* %18, align 4
  br label %336

358:                                              ; preds = %336
  %359 = load i32, i32* %15, align 4
  %360 = load i32, i32* @ACPI_HP_CMI_DETAIL_ENUMS, align 4
  %361 = and i32 %359, %360
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %363, label %422

363:                                              ; preds = %358
  %364 = load i32, i32* %25, align 4
  %365 = add nsw i32 %364, 1
  store i32 %365, i32* %18, align 4
  br label %366

366:                                              ; preds = %418, %363
  %367 = load i32, i32* %18, align 4
  %368 = load i32, i32* %25, align 4
  %369 = add nsw i32 %368, 1
  %370 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %371 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %370, i32 0, i32 1
  %372 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %371, i32 0, i32 1
  %373 = load %struct.TYPE_12__*, %struct.TYPE_12__** %372, align 8
  %374 = load i32, i32* %25, align 4
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %373, i64 %375
  %377 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %376, i32 0, i32 1
  %378 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %377, i32 0, i32 0
  %379 = load i32, i32* %378, align 8
  %380 = add nsw i32 %369, %379
  %381 = icmp slt i32 %367, %380
  br i1 %381, label %382, label %421

382:                                              ; preds = %366
  %383 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %384 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %383, i32 0, i32 1
  %385 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %384, i32 0, i32 1
  %386 = load %struct.TYPE_12__*, %struct.TYPE_12__** %385, align 8
  %387 = load i32, i32* %18, align 4
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %386, i64 %388
  %390 = load i32, i32* %20, align 4
  %391 = call i8* @acpi_hp_get_string_from_object(%struct.TYPE_12__* %389, i8* %36, i32 %390)
  %392 = call i32 @strlen(i8* %36)
  %393 = icmp sgt i32 %392, 1
  br i1 %393, label %402, label %394

394:                                              ; preds = %382
  %395 = call i32 @strlen(i8* %36)
  %396 = icmp eq i32 %395, 1
  br i1 %396, label %397, label %417

397:                                              ; preds = %394
  %398 = getelementptr inbounds i8, i8* %36, i64 0
  %399 = load i8, i8* %398, align 16
  %400 = sext i8 %399 to i32
  %401 = icmp ne i32 %400, 32
  br i1 %401, label %402, label %417

402:                                              ; preds = %397, %382
  %403 = load i32, i32* %21, align 4
  %404 = icmp ne i32 %403, 0
  br i1 %404, label %405, label %409

405:                                              ; preds = %402
  %406 = load i8*, i8** %12, align 8
  %407 = load i64, i64* %13, align 8
  %408 = call i32 @strlcat(i8* %406, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i64 %407)
  br label %413

409:                                              ; preds = %402
  %410 = load i8*, i8** %12, align 8
  %411 = load i64, i64* %13, align 8
  %412 = call i32 @strlcat(i8* %410, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i64 %411)
  br label %413

413:                                              ; preds = %409, %405
  %414 = load i8*, i8** %12, align 8
  %415 = load i64, i64* %13, align 8
  %416 = call i32 @strlcat(i8* %414, i8* %36, i64 %415)
  store i32 1, i32* %21, align 4
  br label %417

417:                                              ; preds = %413, %397, %394
  br label %418

418:                                              ; preds = %417
  %419 = load i32, i32* %18, align 4
  %420 = add nsw i32 %419, 1
  store i32 %420, i32* %18, align 4
  br label %366

421:                                              ; preds = %366
  br label %422

422:                                              ; preds = %421, %358
  %423 = load i32, i32* %21, align 4
  %424 = icmp ne i32 %423, 0
  br i1 %424, label %425, label %429

425:                                              ; preds = %422
  %426 = load i8*, i8** %12, align 8
  %427 = load i64, i64* %13, align 8
  %428 = call i32 @strlcat(i8* %426, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i64 %427)
  br label %429

429:                                              ; preds = %425, %422
  %430 = load i32, i32* %15, align 4
  %431 = load i32, i32* @ACPI_HP_CMI_DETAIL_FLAGS, align 4
  %432 = and i32 %430, %431
  %433 = icmp ne i32 %432, 0
  br i1 %433, label %434, label %477

434:                                              ; preds = %429
  %435 = load i8*, i8** %12, align 8
  %436 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %437 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %436, i32 0, i32 1
  %438 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %437, i32 0, i32 1
  %439 = load %struct.TYPE_12__*, %struct.TYPE_12__** %438, align 8
  %440 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %439, i64 3
  %441 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %440, i32 0, i32 1
  %442 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %441, i32 0, i32 0
  %443 = load i32, i32* %442, align 8
  %444 = icmp ne i32 %443, 0
  %445 = zext i1 %444 to i64
  %446 = select i1 %444, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %447 = load i64, i64* %13, align 8
  %448 = call i32 @strlcat(i8* %435, i8* %446, i64 %447)
  %449 = load i8*, i8** %12, align 8
  %450 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %451 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %450, i32 0, i32 1
  %452 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %451, i32 0, i32 1
  %453 = load %struct.TYPE_12__*, %struct.TYPE_12__** %452, align 8
  %454 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %453, i64 4
  %455 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %454, i32 0, i32 1
  %456 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %455, i32 0, i32 0
  %457 = load i32, i32* %456, align 8
  %458 = icmp ne i32 %457, 0
  %459 = zext i1 %458 to i64
  %460 = select i1 %458, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0)
  %461 = load i64, i64* %13, align 8
  %462 = call i32 @strlcat(i8* %449, i8* %460, i64 %461)
  %463 = load i8*, i8** %12, align 8
  %464 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %465 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %464, i32 0, i32 1
  %466 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %465, i32 0, i32 1
  %467 = load %struct.TYPE_12__*, %struct.TYPE_12__** %466, align 8
  %468 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %467, i64 5
  %469 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %468, i32 0, i32 1
  %470 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %469, i32 0, i32 0
  %471 = load i32, i32* %470, align 8
  %472 = icmp ne i32 %471, 0
  %473 = zext i1 %472 to i64
  %474 = select i1 %472, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %475 = load i64, i64* %13, align 8
  %476 = call i32 @strlcat(i8* %463, i8* %474, i64 %475)
  br label %477

477:                                              ; preds = %434, %429
  %478 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %479 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %478, i32 0, i32 1
  %480 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %479, i32 0, i32 1
  %481 = load %struct.TYPE_12__*, %struct.TYPE_12__** %480, align 8
  %482 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %481, i64 6
  %483 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %482, i32 0, i32 1
  %484 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %483, i32 0, i32 0
  %485 = load i32, i32* %484, align 8
  %486 = sext i32 %485 to i64
  %487 = load i64*, i64** %14, align 8
  store i64 %486, i64* %487, align 8
  %488 = call i32 @acpi_hp_free_buffer(%struct.TYPE_11__* %17)
  store i32 0, i32* %8, align 4
  store i32 1, i32* %26, align 4
  br label %489

489:                                              ; preds = %477, %257, %233, %170, %150, %60, %45
  %490 = load i8*, i8** %23, align 8
  call void @llvm.stackrestore(i8* %490)
  %491 = load i32, i32* %8, align 4
  ret i32 %491
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @ACPI_FAILURE(i32) #2

declare dso_local i32 @ACPI_WMI_GET_BLOCK(i32, i8*, i32, %struct.TYPE_11__*) #2

declare dso_local i32 @acpi_hp_free_buffer(%struct.TYPE_11__*) #2

declare dso_local i32 @strlcat(i8*, i8*, i64) #2

declare dso_local i8* @acpi_hp_get_string_from_object(%struct.TYPE_12__*, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
