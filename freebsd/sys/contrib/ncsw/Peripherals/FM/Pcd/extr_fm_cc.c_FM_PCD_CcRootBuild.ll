; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_cc.c_FM_PCD_CcRootBuild.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_cc.c_FM_PCD_CcRootBuild.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_46__ = type { i32, i64, i32, i32, i32, %struct.TYPE_49__*, i32, i32, %struct.TYPE_46__*, %struct.TYPE_49__, i32, i64, %struct.TYPE_52__*, %struct.TYPE_48__*, i32, %struct.TYPE_51__, i32, %struct.TYPE_46__* }
%struct.TYPE_49__ = type { i64, i64, %struct.TYPE_57__, %struct.TYPE_54__, i64 }
%struct.TYPE_57__ = type { i64, %struct.TYPE_56__ }
%struct.TYPE_56__ = type { %struct.TYPE_55__ }
%struct.TYPE_55__ = type { i64 }
%struct.TYPE_54__ = type { %struct.TYPE_53__ }
%struct.TYPE_53__ = type { i32 }
%struct.TYPE_52__ = type { i32, i32, i32 }
%struct.TYPE_48__ = type { i64, %struct.TYPE_46__*, %struct.TYPE_46__ }
%struct.TYPE_51__ = type { %struct.TYPE_50__ }
%struct.TYPE_50__ = type { i64 }
%struct.TYPE_58__ = type { i32, i32, %struct.TYPE_49__*, i32 }
%struct.TYPE_47__ = type { i32, i32 }

@E_OK = common dso_local global i64 0, align 8
@E_INVALID_HANDLE = common dso_local global i32 0, align 4
@FM_PCD_MAX_NUM_OF_CC_GROUPS = common dso_local global i32 0, align 4
@MAJOR = common dso_local global i32 0, align 4
@E_INVALID_VALUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"numOfGrps should not exceed %d\00", align 1
@E_NO_MEMORY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"PCD tree structure\00", align 1
@FM_PCD_MAX_NUM_OF_CC_UNITS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [54 x i8] c"numOfDistinctionUnits (group %d) should not exceed %d\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"numOfEntries can not be larger than %d\00", align 1
@E_CONFLICT = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [55 x i8] c"numOfEntries per group must be set in descending order\00", align 1
@NO_MSG = common dso_local global i8* null, align 8
@e_FM_PCD_CC_STATS_MODE_NONE = common dso_local global i32 0, align 4
@E_INVALID_STATE = common dso_local global i64 0, align 8
@e_FM_PCD_CC = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [29 x i8] c"MURAM allocation for CC Tree\00", align 1
@UPDATE_CC_WITH_TREE = common dso_local global i32 0, align 4
@FM_PCD_CC_AD_ENTRY_SIZE = common dso_local global i32 0, align 4
@FM_PCD_CC_TREE_ADDR_ALIGN = common dso_local global i32 0, align 4
@TRACE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [27 x i8] c"FmPcdLockTryLockAll failed\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"No memory\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"FM CC lock\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_46__* @FM_PCD_CcRootBuild(%struct.TYPE_46__* %0, %struct.TYPE_46__* %1) #0 {
  %3 = alloca %struct.TYPE_46__*, align 8
  %4 = alloca %struct.TYPE_46__*, align 8
  %5 = alloca %struct.TYPE_46__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_46__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_46__*, align 8
  %14 = alloca %struct.TYPE_48__*, align 8
  %15 = alloca %struct.TYPE_46__*, align 8
  %16 = alloca %struct.TYPE_46__*, align 8
  %17 = alloca %struct.TYPE_58__, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_47__*, align 8
  %21 = alloca %struct.TYPE_46__, align 8
  %22 = alloca %struct.TYPE_46__*, align 8
  store %struct.TYPE_46__* %0, %struct.TYPE_46__** %4, align 8
  store %struct.TYPE_46__* %1, %struct.TYPE_46__** %5, align 8
  %23 = load %struct.TYPE_46__*, %struct.TYPE_46__** %4, align 8
  %24 = bitcast %struct.TYPE_46__* %23 to i32*
  store i32* %24, i32** %6, align 8
  %25 = load i64, i64* @E_OK, align 8
  store i64 %25, i64* %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %26 = load %struct.TYPE_46__*, %struct.TYPE_46__** %4, align 8
  %27 = load i32, i32* @E_INVALID_HANDLE, align 4
  %28 = call i32 @SANITY_CHECK_RETURN_VALUE(%struct.TYPE_46__* %26, i32 %27, i32* null)
  %29 = load %struct.TYPE_46__*, %struct.TYPE_46__** %5, align 8
  %30 = load i32, i32* @E_INVALID_HANDLE, align 4
  %31 = call i32 @SANITY_CHECK_RETURN_VALUE(%struct.TYPE_46__* %29, i32 %30, i32* null)
  %32 = load %struct.TYPE_46__*, %struct.TYPE_46__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @FM_PCD_MAX_NUM_OF_CC_GROUPS, align 4
  %36 = icmp sgt i32 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %2
  %38 = load i32, i32* @MAJOR, align 4
  %39 = load i64, i64* @E_INVALID_VALUE, align 8
  %40 = load i32, i32* @FM_PCD_MAX_NUM_OF_CC_GROUPS, align 4
  %41 = sext i32 %40 to i64
  %42 = inttoptr i64 %41 to i8*
  %43 = call i32 @REPORT_ERROR(i32 %38, i64 %39, i8* %42)
  store %struct.TYPE_46__* null, %struct.TYPE_46__** %3, align 8
  br label %581

44:                                               ; preds = %2
  %45 = call i64 @XX_Malloc(i32 168)
  %46 = inttoptr i64 %45 to %struct.TYPE_46__*
  store %struct.TYPE_46__* %46, %struct.TYPE_46__** %11, align 8
  %47 = load %struct.TYPE_46__*, %struct.TYPE_46__** %11, align 8
  %48 = icmp ne %struct.TYPE_46__* %47, null
  br i1 %48, label %53, label %49

49:                                               ; preds = %44
  %50 = load i32, i32* @MAJOR, align 4
  %51 = load i64, i64* @E_NO_MEMORY, align 8
  %52 = call i32 @REPORT_ERROR(i32 %50, i64 %51, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_46__* null, %struct.TYPE_46__** %3, align 8
  br label %581

53:                                               ; preds = %44
  %54 = load %struct.TYPE_46__*, %struct.TYPE_46__** %11, align 8
  %55 = call i32 @memset(%struct.TYPE_46__* %54, i32 0, i32 168)
  %56 = load %struct.TYPE_46__*, %struct.TYPE_46__** %4, align 8
  %57 = load %struct.TYPE_46__*, %struct.TYPE_46__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %57, i32 0, i32 17
  store %struct.TYPE_46__* %56, %struct.TYPE_46__** %58, align 8
  %59 = load i32, i32* @FM_PCD_MAX_NUM_OF_CC_GROUPS, align 4
  %60 = sext i32 %59 to i64
  %61 = mul i64 %60, 168
  %62 = trunc i64 %61 to i32
  %63 = call i64 @XX_Malloc(i32 %62)
  %64 = inttoptr i64 %63 to %struct.TYPE_46__*
  store %struct.TYPE_46__* %64, %struct.TYPE_46__** %15, align 8
  %65 = load %struct.TYPE_46__*, %struct.TYPE_46__** %15, align 8
  %66 = load i32, i32* @FM_PCD_MAX_NUM_OF_CC_GROUPS, align 4
  %67 = sext i32 %66 to i64
  %68 = mul i64 %67, 168
  %69 = trunc i64 %68 to i32
  %70 = call i32 @memset(%struct.TYPE_46__* %65, i32 0, i32 %69)
  %71 = load %struct.TYPE_46__*, %struct.TYPE_46__** %11, align 8
  %72 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %71, i32 0, i32 16
  %73 = call i32 @INIT_LIST(i32* %72)
  store i32 0, i32* %12, align 4
  %74 = load %struct.TYPE_46__*, %struct.TYPE_46__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %74, i32 0, i32 14
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @FmPcdGetNetEnvId(i32 %76)
  %78 = load %struct.TYPE_46__*, %struct.TYPE_46__** %11, align 8
  %79 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %78, i32 0, i32 7
  store i32 %77, i32* %79, align 4
  store i32 0, i32* %8, align 4
  br label %80

80:                                               ; preds = %357, %53
  %81 = load i32, i32* %8, align 4
  %82 = load %struct.TYPE_46__*, %struct.TYPE_46__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp slt i32 %81, %84
  br i1 %85, label %86, label %360

86:                                               ; preds = %80
  %87 = load %struct.TYPE_46__*, %struct.TYPE_46__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %87, i32 0, i32 13
  %89 = load %struct.TYPE_48__*, %struct.TYPE_48__** %88, align 8
  %90 = load i32, i32* %8, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %89, i64 %91
  store %struct.TYPE_48__* %92, %struct.TYPE_48__** %14, align 8
  %93 = load %struct.TYPE_48__*, %struct.TYPE_48__** %14, align 8
  %94 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i32, i32* @FM_PCD_MAX_NUM_OF_CC_UNITS, align 4
  %97 = sext i32 %96 to i64
  %98 = icmp sgt i64 %95, %97
  br i1 %98, label %99, label %112

99:                                               ; preds = %86
  %100 = load %struct.TYPE_46__*, %struct.TYPE_46__** %11, align 8
  %101 = load i32*, i32** %6, align 8
  %102 = call i32 @DeleteTree(%struct.TYPE_46__* %100, i32* %101)
  %103 = load %struct.TYPE_46__*, %struct.TYPE_46__** %15, align 8
  %104 = call i32 @XX_Free(%struct.TYPE_46__* %103)
  %105 = load i32, i32* @MAJOR, align 4
  %106 = load i64, i64* @E_INVALID_VALUE, align 8
  %107 = load i32, i32* %8, align 4
  %108 = load i32, i32* @FM_PCD_MAX_NUM_OF_CC_UNITS, align 4
  %109 = sext i32 %108 to i64
  %110 = inttoptr i64 %109 to i8*
  %111 = call i32 @REPORT_ERROR(i32 %105, i64 %106, i8* %110)
  store %struct.TYPE_46__* null, %struct.TYPE_46__** %3, align 8
  br label %581

112:                                              ; preds = %86
  %113 = load i32, i32* %12, align 4
  %114 = load %struct.TYPE_46__*, %struct.TYPE_46__** %11, align 8
  %115 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %114, i32 0, i32 12
  %116 = load %struct.TYPE_52__*, %struct.TYPE_52__** %115, align 8
  %117 = load i32, i32* %8, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %119, i32 0, i32 0
  store i32 %113, i32* %120, align 4
  %121 = load %struct.TYPE_48__*, %struct.TYPE_48__** %14, align 8
  %122 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = trunc i64 %123 to i32
  %125 = shl i32 1, %124
  %126 = load %struct.TYPE_46__*, %struct.TYPE_46__** %11, align 8
  %127 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %126, i32 0, i32 12
  %128 = load %struct.TYPE_52__*, %struct.TYPE_52__** %127, align 8
  %129 = load i32, i32* %8, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %131, i32 0, i32 1
  store i32 %125, i32* %132, align 4
  %133 = load %struct.TYPE_46__*, %struct.TYPE_46__** %11, align 8
  %134 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %133, i32 0, i32 12
  %135 = load %struct.TYPE_52__*, %struct.TYPE_52__** %134, align 8
  %136 = load i32, i32* %8, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* %12, align 4
  %142 = add nsw i32 %141, %140
  store i32 %142, i32* %12, align 4
  %143 = load i32, i32* %12, align 4
  %144 = load i32, i32* @FM_PCD_MAX_NUM_OF_CC_GROUPS, align 4
  %145 = icmp sgt i32 %143, %144
  br i1 %145, label %146, label %158

146:                                              ; preds = %112
  %147 = load %struct.TYPE_46__*, %struct.TYPE_46__** %11, align 8
  %148 = load i32*, i32** %6, align 8
  %149 = call i32 @DeleteTree(%struct.TYPE_46__* %147, i32* %148)
  %150 = load %struct.TYPE_46__*, %struct.TYPE_46__** %15, align 8
  %151 = call i32 @XX_Free(%struct.TYPE_46__* %150)
  %152 = load i32, i32* @MAJOR, align 4
  %153 = load i64, i64* @E_INVALID_VALUE, align 8
  %154 = load i32, i32* @FM_PCD_MAX_NUM_OF_CC_GROUPS, align 4
  %155 = sext i32 %154 to i64
  %156 = inttoptr i64 %155 to i8*
  %157 = call i32 @REPORT_ERROR(i32 %152, i64 %153, i8* %156)
  store %struct.TYPE_46__* null, %struct.TYPE_46__** %3, align 8
  br label %581

158:                                              ; preds = %112
  %159 = load i32, i32* %18, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %182

161:                                              ; preds = %158
  %162 = load %struct.TYPE_46__*, %struct.TYPE_46__** %11, align 8
  %163 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %162, i32 0, i32 12
  %164 = load %struct.TYPE_52__*, %struct.TYPE_52__** %163, align 8
  %165 = load i32, i32* %8, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %164, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* %18, align 4
  %171 = icmp sgt i32 %169, %170
  br i1 %171, label %172, label %181

172:                                              ; preds = %161
  %173 = load %struct.TYPE_46__*, %struct.TYPE_46__** %11, align 8
  %174 = load i32*, i32** %6, align 8
  %175 = call i32 @DeleteTree(%struct.TYPE_46__* %173, i32* %174)
  %176 = load %struct.TYPE_46__*, %struct.TYPE_46__** %15, align 8
  %177 = call i32 @XX_Free(%struct.TYPE_46__* %176)
  %178 = load i32, i32* @MAJOR, align 4
  %179 = load i64, i64* @E_CONFLICT, align 8
  %180 = call i32 @REPORT_ERROR(i32 %178, i64 %179, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0))
  store %struct.TYPE_46__* null, %struct.TYPE_46__** %3, align 8
  br label %581

181:                                              ; preds = %161
  br label %182

182:                                              ; preds = %181, %158
  %183 = load %struct.TYPE_46__*, %struct.TYPE_46__** %11, align 8
  %184 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %183, i32 0, i32 12
  %185 = load %struct.TYPE_52__*, %struct.TYPE_52__** %184, align 8
  %186 = load i32, i32* %8, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %185, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  store i32 %190, i32* %18, align 4
  %191 = load %struct.TYPE_46__*, %struct.TYPE_46__** %11, align 8
  %192 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %191, i32 0, i32 7
  %193 = load i32, i32* %192, align 4
  %194 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %17, i32 0, i32 3
  store i32 %193, i32* %194, align 8
  %195 = load %struct.TYPE_48__*, %struct.TYPE_48__** %14, align 8
  %196 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = trunc i64 %197 to i32
  %199 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %17, i32 0, i32 0
  store i32 %198, i32* %199, align 8
  %200 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %17, i32 0, i32 2
  %201 = load %struct.TYPE_49__*, %struct.TYPE_49__** %200, align 8
  %202 = load %struct.TYPE_48__*, %struct.TYPE_48__** %14, align 8
  %203 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %202, i32 0, i32 2
  %204 = load %struct.TYPE_48__*, %struct.TYPE_48__** %14, align 8
  %205 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = mul i64 4, %206
  %208 = trunc i64 %207 to i32
  %209 = call i32 @memcpy(%struct.TYPE_49__* %201, %struct.TYPE_46__* %203, i32 %208)
  %210 = load i32*, i32** %6, align 8
  %211 = call i64 @PcdGetUnitsVector(i32* %210, %struct.TYPE_58__* %17)
  store i64 %211, i64* %7, align 8
  %212 = load i64, i64* %7, align 8
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %224

214:                                              ; preds = %182
  %215 = load %struct.TYPE_46__*, %struct.TYPE_46__** %11, align 8
  %216 = load i32*, i32** %6, align 8
  %217 = call i32 @DeleteTree(%struct.TYPE_46__* %215, i32* %216)
  %218 = load %struct.TYPE_46__*, %struct.TYPE_46__** %15, align 8
  %219 = call i32 @XX_Free(%struct.TYPE_46__* %218)
  %220 = load i32, i32* @MAJOR, align 4
  %221 = load i64, i64* %7, align 8
  %222 = load i8*, i8** @NO_MSG, align 8
  %223 = call i32 @REPORT_ERROR(i32 %220, i64 %221, i8* %222)
  store %struct.TYPE_46__* null, %struct.TYPE_46__** %3, align 8
  br label %581

224:                                              ; preds = %182
  %225 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %17, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = load %struct.TYPE_46__*, %struct.TYPE_46__** %11, align 8
  %228 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %227, i32 0, i32 12
  %229 = load %struct.TYPE_52__*, %struct.TYPE_52__** %228, align 8
  %230 = load i32, i32* %8, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %229, i64 %231
  %233 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %232, i32 0, i32 2
  store i32 %226, i32* %233, align 4
  store i32 0, i32* %9, align 4
  br label %234

234:                                              ; preds = %353, %224
  %235 = load i32, i32* %9, align 4
  %236 = load %struct.TYPE_46__*, %struct.TYPE_46__** %11, align 8
  %237 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %236, i32 0, i32 12
  %238 = load %struct.TYPE_52__*, %struct.TYPE_52__** %237, align 8
  %239 = load i32, i32* %8, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %238, i64 %240
  %242 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 4
  %244 = icmp slt i32 %235, %243
  br i1 %244, label %245, label %356

245:                                              ; preds = %234
  %246 = load %struct.TYPE_46__*, %struct.TYPE_46__** %4, align 8
  %247 = load %struct.TYPE_48__*, %struct.TYPE_48__** %14, align 8
  %248 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %247, i32 0, i32 1
  %249 = load %struct.TYPE_46__*, %struct.TYPE_46__** %248, align 8
  %250 = load i32, i32* %9, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %249, i64 %251
  %253 = load i32, i32* @e_FM_PCD_CC_STATS_MODE_NONE, align 4
  %254 = call i64 @ValidateNextEngineParams(%struct.TYPE_46__* %246, %struct.TYPE_46__* %252, i32 %253)
  store i64 %254, i64* %7, align 8
  %255 = load i64, i64* %7, align 8
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %267

257:                                              ; preds = %245
  %258 = load %struct.TYPE_46__*, %struct.TYPE_46__** %11, align 8
  %259 = load i32*, i32** %6, align 8
  %260 = call i32 @DeleteTree(%struct.TYPE_46__* %258, i32* %259)
  %261 = load %struct.TYPE_46__*, %struct.TYPE_46__** %15, align 8
  %262 = call i32 @XX_Free(%struct.TYPE_46__* %261)
  %263 = load i32, i32* @MAJOR, align 4
  %264 = load i64, i64* %7, align 8
  %265 = load i8*, i8** @NO_MSG, align 8
  %266 = call i32 @REPORT_ERROR(i32 %263, i64 %264, i8* %265)
  store %struct.TYPE_46__* null, %struct.TYPE_46__** %3, align 8
  br label %581

267:                                              ; preds = %245
  %268 = load %struct.TYPE_48__*, %struct.TYPE_48__** %14, align 8
  %269 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %268, i32 0, i32 1
  %270 = load %struct.TYPE_46__*, %struct.TYPE_46__** %269, align 8
  %271 = load i32, i32* %9, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %270, i64 %272
  %274 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %273, i32 0, i32 11
  %275 = load i64, i64* %274, align 8
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %277, label %298

277:                                              ; preds = %267
  %278 = load %struct.TYPE_48__*, %struct.TYPE_48__** %14, align 8
  %279 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %278, i32 0, i32 1
  %280 = load %struct.TYPE_46__*, %struct.TYPE_46__** %279, align 8
  %281 = load i32, i32* %9, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %280, i64 %282
  %284 = call i64 @FmPcdManipCheckParamsForCcNextEngine(%struct.TYPE_46__* %283, i32* %19)
  store i64 %284, i64* %7, align 8
  %285 = load i64, i64* %7, align 8
  %286 = icmp ne i64 %285, 0
  br i1 %286, label %287, label %297

287:                                              ; preds = %277
  %288 = load %struct.TYPE_46__*, %struct.TYPE_46__** %11, align 8
  %289 = load i32*, i32** %6, align 8
  %290 = call i32 @DeleteTree(%struct.TYPE_46__* %288, i32* %289)
  %291 = load %struct.TYPE_46__*, %struct.TYPE_46__** %15, align 8
  %292 = call i32 @XX_Free(%struct.TYPE_46__* %291)
  %293 = load i32, i32* @MAJOR, align 4
  %294 = load i64, i64* @E_INVALID_STATE, align 8
  %295 = load i8*, i8** @NO_MSG, align 8
  %296 = call i32 @REPORT_ERROR(i32 %293, i64 %294, i8* %295)
  store %struct.TYPE_46__* null, %struct.TYPE_46__** %3, align 8
  br label %581

297:                                              ; preds = %277
  br label %298

298:                                              ; preds = %297, %267
  %299 = load %struct.TYPE_46__*, %struct.TYPE_46__** %15, align 8
  %300 = load i32, i32* %10, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %299, i64 %301
  store %struct.TYPE_46__* %302, %struct.TYPE_46__** %16, align 8
  %303 = load %struct.TYPE_46__*, %struct.TYPE_46__** %16, align 8
  %304 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %303, i32 0, i32 9
  %305 = load %struct.TYPE_48__*, %struct.TYPE_48__** %14, align 8
  %306 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %305, i32 0, i32 1
  %307 = load %struct.TYPE_46__*, %struct.TYPE_46__** %306, align 8
  %308 = load i32, i32* %9, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %307, i64 %309
  %311 = call i32 @memcpy(%struct.TYPE_49__* %304, %struct.TYPE_46__* %310, i32 4)
  %312 = load %struct.TYPE_46__*, %struct.TYPE_46__** %16, align 8
  %313 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %312, i32 0, i32 9
  %314 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %313, i32 0, i32 0
  %315 = load i64, i64* %314, align 8
  %316 = load i64, i64* @e_FM_PCD_CC, align 8
  %317 = icmp eq i64 %315, %316
  br i1 %317, label %318, label %344

318:                                              ; preds = %298
  %319 = load %struct.TYPE_46__*, %struct.TYPE_46__** %16, align 8
  %320 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %319, i32 0, i32 9
  %321 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %320, i32 0, i32 4
  %322 = load i64, i64* %321, align 8
  %323 = icmp ne i64 %322, 0
  br i1 %323, label %324, label %344

324:                                              ; preds = %318
  %325 = load %struct.TYPE_46__*, %struct.TYPE_46__** %16, align 8
  %326 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %325, i32 0, i32 9
  %327 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %326, i32 0, i32 3
  %328 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %327, i32 0, i32 0
  %329 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %328, i32 0, i32 0
  %330 = load i32, i32* %329, align 8
  %331 = call i64 @AllocAndFillAdForContLookupManip(i32 %330)
  store i64 %331, i64* %7, align 8
  %332 = load i64, i64* %7, align 8
  %333 = icmp ne i64 %332, 0
  br i1 %333, label %334, label %343

334:                                              ; preds = %324
  %335 = load %struct.TYPE_46__*, %struct.TYPE_46__** %11, align 8
  %336 = load i32*, i32** %6, align 8
  %337 = call i32 @DeleteTree(%struct.TYPE_46__* %335, i32* %336)
  %338 = load %struct.TYPE_46__*, %struct.TYPE_46__** %15, align 8
  %339 = call i32 @XX_Free(%struct.TYPE_46__* %338)
  %340 = load i32, i32* @MAJOR, align 4
  %341 = load i64, i64* @E_NO_MEMORY, align 8
  %342 = call i32 @REPORT_ERROR(i32 %340, i64 %341, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  store %struct.TYPE_46__* null, %struct.TYPE_46__** %3, align 8
  br label %581

343:                                              ; preds = %324
  br label %344

344:                                              ; preds = %343, %318, %298
  %345 = load i32, i32* @UPDATE_CC_WITH_TREE, align 4
  %346 = load i32, i32* %19, align 4
  %347 = or i32 %346, %345
  store i32 %347, i32* %19, align 4
  %348 = load i32, i32* %19, align 4
  %349 = load %struct.TYPE_46__*, %struct.TYPE_46__** %16, align 8
  %350 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %349, i32 0, i32 10
  store i32 %348, i32* %350, align 8
  %351 = load i32, i32* %10, align 4
  %352 = add nsw i32 %351, 1
  store i32 %352, i32* %10, align 4
  br label %353

353:                                              ; preds = %344
  %354 = load i32, i32* %9, align 4
  %355 = add nsw i32 %354, 1
  store i32 %355, i32* %9, align 4
  br label %234

356:                                              ; preds = %234
  br label %357

357:                                              ; preds = %356
  %358 = load i32, i32* %8, align 4
  %359 = add nsw i32 %358, 1
  store i32 %359, i32* %8, align 4
  br label %80

360:                                              ; preds = %80
  %361 = load i32, i32* %10, align 4
  %362 = load %struct.TYPE_46__*, %struct.TYPE_46__** %11, align 8
  %363 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %362, i32 0, i32 2
  store i32 %361, i32* %363, align 8
  %364 = load %struct.TYPE_46__*, %struct.TYPE_46__** %5, align 8
  %365 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %364, i32 0, i32 0
  %366 = load i32, i32* %365, align 8
  %367 = load %struct.TYPE_46__*, %struct.TYPE_46__** %11, align 8
  %368 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %367, i32 0, i32 0
  store i32 %366, i32* %368, align 8
  %369 = load %struct.TYPE_46__*, %struct.TYPE_46__** %4, align 8
  %370 = call i32 @FmPcdGetMuramHandle(%struct.TYPE_46__* %369)
  %371 = load i32, i32* @FM_PCD_MAX_NUM_OF_CC_GROUPS, align 4
  %372 = load i32, i32* @FM_PCD_CC_AD_ENTRY_SIZE, align 4
  %373 = mul nsw i32 %371, %372
  %374 = load i32, i32* @FM_PCD_CC_TREE_ADDR_ALIGN, align 4
  %375 = call i32 @FM_MURAM_AllocMem(i32 %370, i32 %373, i32 %374)
  %376 = call i32 @PTR_TO_UINT(i32 %375)
  %377 = load %struct.TYPE_46__*, %struct.TYPE_46__** %11, align 8
  %378 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %377, i32 0, i32 6
  store i32 %376, i32* %378, align 8
  %379 = load %struct.TYPE_46__*, %struct.TYPE_46__** %11, align 8
  %380 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %379, i32 0, i32 6
  %381 = load i32, i32* %380, align 8
  %382 = icmp ne i32 %381, 0
  br i1 %382, label %392, label %383

383:                                              ; preds = %360
  %384 = load %struct.TYPE_46__*, %struct.TYPE_46__** %11, align 8
  %385 = load i32*, i32** %6, align 8
  %386 = call i32 @DeleteTree(%struct.TYPE_46__* %384, i32* %385)
  %387 = load %struct.TYPE_46__*, %struct.TYPE_46__** %15, align 8
  %388 = call i32 @XX_Free(%struct.TYPE_46__* %387)
  %389 = load i32, i32* @MAJOR, align 4
  %390 = load i64, i64* @E_NO_MEMORY, align 8
  %391 = call i32 @REPORT_ERROR(i32 %389, i64 %390, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  store %struct.TYPE_46__* null, %struct.TYPE_46__** %3, align 8
  br label %581

392:                                              ; preds = %360
  %393 = load %struct.TYPE_46__*, %struct.TYPE_46__** %11, align 8
  %394 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %393, i32 0, i32 6
  %395 = load i32, i32* %394, align 8
  %396 = call %struct.TYPE_46__* @UINT_TO_PTR(i32 %395)
  %397 = load i32, i32* @FM_PCD_MAX_NUM_OF_CC_GROUPS, align 4
  %398 = load i32, i32* @FM_PCD_CC_AD_ENTRY_SIZE, align 4
  %399 = mul nsw i32 %397, %398
  %400 = call i32 @MemSet8(%struct.TYPE_46__* %396, i32 0, i32 %399)
  %401 = load %struct.TYPE_46__*, %struct.TYPE_46__** %11, align 8
  %402 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %401, i32 0, i32 6
  %403 = load i32, i32* %402, align 8
  %404 = call %struct.TYPE_46__* @UINT_TO_PTR(i32 %403)
  store %struct.TYPE_46__* %404, %struct.TYPE_46__** %13, align 8
  store i32 0, i32* %8, align 4
  br label %405

405:                                              ; preds = %481, %392
  %406 = load i32, i32* %8, align 4
  %407 = load i32, i32* %12, align 4
  %408 = icmp slt i32 %406, %407
  br i1 %408, label %409, label %484

409:                                              ; preds = %405
  %410 = load %struct.TYPE_46__*, %struct.TYPE_46__** %15, align 8
  %411 = load i32, i32* %8, align 4
  %412 = sext i32 %411 to i64
  %413 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %410, i64 %412
  store %struct.TYPE_46__* %413, %struct.TYPE_46__** %16, align 8
  %414 = load %struct.TYPE_46__*, %struct.TYPE_46__** %13, align 8
  %415 = load %struct.TYPE_46__*, %struct.TYPE_46__** %16, align 8
  %416 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %415, i32 0, i32 9
  %417 = load i32*, i32** %6, align 8
  %418 = call i32 @NextStepAd(%struct.TYPE_46__* %414, i32* null, %struct.TYPE_49__* %416, i32* %417)
  %419 = load %struct.TYPE_46__*, %struct.TYPE_46__** %13, align 8
  %420 = load i32, i32* @FM_PCD_CC_AD_ENTRY_SIZE, align 4
  %421 = call %struct.TYPE_46__* @PTR_MOVE(%struct.TYPE_46__* %419, i32 %420)
  store %struct.TYPE_46__* %421, %struct.TYPE_46__** %13, align 8
  %422 = load %struct.TYPE_46__*, %struct.TYPE_46__** %11, align 8
  %423 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %422, i32 0, i32 5
  %424 = load %struct.TYPE_49__*, %struct.TYPE_49__** %423, align 8
  %425 = load i32, i32* %8, align 4
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %424, i64 %426
  %428 = load %struct.TYPE_46__*, %struct.TYPE_46__** %16, align 8
  %429 = call i32 @memcpy(%struct.TYPE_49__* %427, %struct.TYPE_46__* %428, i32 168)
  %430 = load %struct.TYPE_46__*, %struct.TYPE_46__** %11, align 8
  %431 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %430, i32 0, i32 5
  %432 = load %struct.TYPE_49__*, %struct.TYPE_49__** %431, align 8
  %433 = load i32, i32* %8, align 4
  %434 = sext i32 %433 to i64
  %435 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %432, i64 %434
  %436 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %435, i32 0, i32 2
  %437 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %436, i32 0, i32 0
  %438 = load i64, i64* %437, align 8
  %439 = load i64, i64* @e_FM_PCD_CC, align 8
  %440 = icmp eq i64 %438, %439
  br i1 %440, label %441, label %480

441:                                              ; preds = %409
  %442 = load %struct.TYPE_46__*, %struct.TYPE_46__** %11, align 8
  %443 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %442, i32 0, i32 5
  %444 = load %struct.TYPE_49__*, %struct.TYPE_49__** %443, align 8
  %445 = load i32, i32* %8, align 4
  %446 = sext i32 %445 to i64
  %447 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %444, i64 %446
  %448 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %447, i32 0, i32 2
  %449 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %448, i32 0, i32 1
  %450 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %449, i32 0, i32 0
  %451 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %450, i32 0, i32 0
  %452 = load i64, i64* %451, align 8
  %453 = inttoptr i64 %452 to %struct.TYPE_47__*
  store %struct.TYPE_47__* %453, %struct.TYPE_47__** %20, align 8
  %454 = load %struct.TYPE_47__*, %struct.TYPE_47__** %20, align 8
  %455 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %454, i32 0, i32 1
  %456 = load %struct.TYPE_46__*, %struct.TYPE_46__** %11, align 8
  %457 = load %struct.TYPE_47__*, %struct.TYPE_47__** %20, align 8
  %458 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %457, i32 0, i32 0
  %459 = load i32, i32* %458, align 4
  %460 = call %struct.TYPE_46__* @FindNodeInfoInReleventLst(i32* %455, %struct.TYPE_46__* %456, i32 %459)
  store %struct.TYPE_46__* %460, %struct.TYPE_46__** %22, align 8
  %461 = load %struct.TYPE_46__*, %struct.TYPE_46__** %22, align 8
  %462 = icmp ne %struct.TYPE_46__* %461, null
  br i1 %462, label %474, label %463

463:                                              ; preds = %441
  %464 = call i32 @memset(%struct.TYPE_46__* %21, i32 0, i32 168)
  %465 = load %struct.TYPE_46__*, %struct.TYPE_46__** %11, align 8
  %466 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %21, i32 0, i32 8
  store %struct.TYPE_46__* %465, %struct.TYPE_46__** %466, align 8
  %467 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %21, i32 0, i32 3
  store i32 1, i32* %467, align 4
  %468 = load %struct.TYPE_47__*, %struct.TYPE_47__** %20, align 8
  %469 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %468, i32 0, i32 1
  %470 = load %struct.TYPE_47__*, %struct.TYPE_47__** %20, align 8
  %471 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %470, i32 0, i32 0
  %472 = load i32, i32* %471, align 4
  %473 = call i32 @EnqueueNodeInfoToRelevantLst(i32* %469, %struct.TYPE_46__* %21, i32 %472)
  br label %479

474:                                              ; preds = %441
  %475 = load %struct.TYPE_46__*, %struct.TYPE_46__** %22, align 8
  %476 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %475, i32 0, i32 3
  %477 = load i32, i32* %476, align 4
  %478 = add nsw i32 %477, 1
  store i32 %478, i32* %476, align 4
  br label %479

479:                                              ; preds = %474, %463
  br label %480

480:                                              ; preds = %479, %409
  br label %481

481:                                              ; preds = %480
  %482 = load i32, i32* %8, align 4
  %483 = add nsw i32 %482, 1
  store i32 %483, i32* %8, align 4
  br label %405

484:                                              ; preds = %405
  %485 = load %struct.TYPE_46__*, %struct.TYPE_46__** %4, align 8
  %486 = load %struct.TYPE_46__*, %struct.TYPE_46__** %11, align 8
  %487 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %486, i32 0, i32 7
  %488 = load i32, i32* %487, align 4
  %489 = call i32 @FmPcdIncNetEnvOwners(%struct.TYPE_46__* %485, i32 %488)
  %490 = load %struct.TYPE_46__*, %struct.TYPE_46__** %11, align 8
  %491 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %490, i32 0, i32 6
  %492 = load i32, i32* %491, align 8
  %493 = call %struct.TYPE_46__* @UINT_TO_PTR(i32 %492)
  store %struct.TYPE_46__* %493, %struct.TYPE_46__** %13, align 8
  %494 = load i32*, i32** %6, align 8
  %495 = call i32 @FmPcdLockTryLockAll(i32* %494)
  %496 = icmp ne i32 %495, 0
  br i1 %496, label %504, label %497

497:                                              ; preds = %484
  %498 = load %struct.TYPE_46__*, %struct.TYPE_46__** %11, align 8
  %499 = call i32 @FM_PCD_CcRootDelete(%struct.TYPE_46__* %498)
  %500 = load %struct.TYPE_46__*, %struct.TYPE_46__** %15, align 8
  %501 = call i32 @XX_Free(%struct.TYPE_46__* %500)
  %502 = load i32, i32* @TRACE, align 4
  %503 = call i32 @DBG(i32 %502, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  store %struct.TYPE_46__* null, %struct.TYPE_46__** %3, align 8
  br label %581

504:                                              ; preds = %484
  store i32 0, i32* %8, align 4
  br label %505

505:                                              ; preds = %555, %504
  %506 = load i32, i32* %8, align 4
  %507 = load i32, i32* %12, align 4
  %508 = icmp slt i32 %506, %507
  br i1 %508, label %509, label %558

509:                                              ; preds = %505
  %510 = load %struct.TYPE_46__*, %struct.TYPE_46__** %11, align 8
  %511 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %510, i32 0, i32 5
  %512 = load %struct.TYPE_49__*, %struct.TYPE_49__** %511, align 8
  %513 = load i32, i32* %8, align 4
  %514 = sext i32 %513 to i64
  %515 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %512, i64 %514
  %516 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %515, i32 0, i32 1
  %517 = load i64, i64* %516, align 8
  %518 = icmp ne i64 %517, 0
  br i1 %518, label %519, label %554

519:                                              ; preds = %509
  %520 = load %struct.TYPE_46__*, %struct.TYPE_46__** %4, align 8
  %521 = load %struct.TYPE_46__*, %struct.TYPE_46__** %11, align 8
  %522 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %521, i32 0, i32 5
  %523 = load %struct.TYPE_49__*, %struct.TYPE_49__** %522, align 8
  %524 = load i32, i32* %8, align 4
  %525 = sext i32 %524 to i64
  %526 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %523, i64 %525
  %527 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %526, i32 0, i32 1
  %528 = load i64, i64* %527, align 8
  %529 = load %struct.TYPE_46__*, %struct.TYPE_46__** %11, align 8
  %530 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %529, i32 0, i32 5
  %531 = load %struct.TYPE_49__*, %struct.TYPE_49__** %530, align 8
  %532 = load i32, i32* %8, align 4
  %533 = sext i32 %532 to i64
  %534 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %531, i64 %533
  %535 = load %struct.TYPE_46__*, %struct.TYPE_46__** %13, align 8
  %536 = load %struct.TYPE_46__*, %struct.TYPE_46__** %11, align 8
  %537 = call i64 @SetRequiredAction(%struct.TYPE_46__* %520, i64 %528, %struct.TYPE_49__* %534, %struct.TYPE_46__* %535, i32 1, %struct.TYPE_46__* %536)
  store i64 %537, i64* %7, align 8
  %538 = load i64, i64* %7, align 8
  %539 = icmp ne i64 %538, 0
  br i1 %539, label %540, label %550

540:                                              ; preds = %519
  %541 = load i32*, i32** %6, align 8
  %542 = call i32 @FmPcdLockUnlockAll(i32* %541)
  %543 = load %struct.TYPE_46__*, %struct.TYPE_46__** %11, align 8
  %544 = call i32 @FM_PCD_CcRootDelete(%struct.TYPE_46__* %543)
  %545 = load %struct.TYPE_46__*, %struct.TYPE_46__** %15, align 8
  %546 = call i32 @XX_Free(%struct.TYPE_46__* %545)
  %547 = load i32, i32* @MAJOR, align 4
  %548 = load i64, i64* @E_NO_MEMORY, align 8
  %549 = call i32 @REPORT_ERROR(i32 %547, i64 %548, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  store %struct.TYPE_46__* null, %struct.TYPE_46__** %3, align 8
  br label %581

550:                                              ; preds = %519
  %551 = load %struct.TYPE_46__*, %struct.TYPE_46__** %13, align 8
  %552 = load i32, i32* @FM_PCD_CC_AD_ENTRY_SIZE, align 4
  %553 = call %struct.TYPE_46__* @PTR_MOVE(%struct.TYPE_46__* %551, i32 %552)
  store %struct.TYPE_46__* %553, %struct.TYPE_46__** %13, align 8
  br label %554

554:                                              ; preds = %550, %509
  br label %555

555:                                              ; preds = %554
  %556 = load i32, i32* %8, align 4
  %557 = add nsw i32 %556, 1
  store i32 %557, i32* %8, align 4
  br label %505

558:                                              ; preds = %505
  %559 = load i32*, i32** %6, align 8
  %560 = call i32 @FmPcdLockUnlockAll(i32* %559)
  %561 = load i32*, i32** %6, align 8
  %562 = call i32 @FmPcdAcquireLock(i32* %561)
  %563 = load %struct.TYPE_46__*, %struct.TYPE_46__** %11, align 8
  %564 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %563, i32 0, i32 4
  store i32 %562, i32* %564, align 8
  %565 = load %struct.TYPE_46__*, %struct.TYPE_46__** %11, align 8
  %566 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %565, i32 0, i32 4
  %567 = load i32, i32* %566, align 8
  %568 = icmp ne i32 %567, 0
  br i1 %568, label %577, label %569

569:                                              ; preds = %558
  %570 = load %struct.TYPE_46__*, %struct.TYPE_46__** %11, align 8
  %571 = call i32 @FM_PCD_CcRootDelete(%struct.TYPE_46__* %570)
  %572 = load %struct.TYPE_46__*, %struct.TYPE_46__** %15, align 8
  %573 = call i32 @XX_Free(%struct.TYPE_46__* %572)
  %574 = load i32, i32* @MAJOR, align 4
  %575 = load i64, i64* @E_NO_MEMORY, align 8
  %576 = call i32 @REPORT_ERROR(i32 %574, i64 %575, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  store %struct.TYPE_46__* null, %struct.TYPE_46__** %3, align 8
  br label %581

577:                                              ; preds = %558
  %578 = load %struct.TYPE_46__*, %struct.TYPE_46__** %15, align 8
  %579 = call i32 @XX_Free(%struct.TYPE_46__* %578)
  %580 = load %struct.TYPE_46__*, %struct.TYPE_46__** %11, align 8
  store %struct.TYPE_46__* %580, %struct.TYPE_46__** %3, align 8
  br label %581

581:                                              ; preds = %577, %569, %540, %497, %383, %334, %287, %257, %214, %172, %146, %99, %49, %37
  %582 = load %struct.TYPE_46__*, %struct.TYPE_46__** %3, align 8
  ret %struct.TYPE_46__* %582
}

declare dso_local i32 @SANITY_CHECK_RETURN_VALUE(%struct.TYPE_46__*, i32, i32*) #1

declare dso_local i32 @REPORT_ERROR(i32, i64, i8*) #1

declare dso_local i64 @XX_Malloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_46__*, i32, i32) #1

declare dso_local i32 @INIT_LIST(i32*) #1

declare dso_local i32 @FmPcdGetNetEnvId(i32) #1

declare dso_local i32 @DeleteTree(%struct.TYPE_46__*, i32*) #1

declare dso_local i32 @XX_Free(%struct.TYPE_46__*) #1

declare dso_local i32 @memcpy(%struct.TYPE_49__*, %struct.TYPE_46__*, i32) #1

declare dso_local i64 @PcdGetUnitsVector(i32*, %struct.TYPE_58__*) #1

declare dso_local i64 @ValidateNextEngineParams(%struct.TYPE_46__*, %struct.TYPE_46__*, i32) #1

declare dso_local i64 @FmPcdManipCheckParamsForCcNextEngine(%struct.TYPE_46__*, i32*) #1

declare dso_local i64 @AllocAndFillAdForContLookupManip(i32) #1

declare dso_local i32 @PTR_TO_UINT(i32) #1

declare dso_local i32 @FM_MURAM_AllocMem(i32, i32, i32) #1

declare dso_local i32 @FmPcdGetMuramHandle(%struct.TYPE_46__*) #1

declare dso_local i32 @MemSet8(%struct.TYPE_46__*, i32, i32) #1

declare dso_local %struct.TYPE_46__* @UINT_TO_PTR(i32) #1

declare dso_local i32 @NextStepAd(%struct.TYPE_46__*, i32*, %struct.TYPE_49__*, i32*) #1

declare dso_local %struct.TYPE_46__* @PTR_MOVE(%struct.TYPE_46__*, i32) #1

declare dso_local %struct.TYPE_46__* @FindNodeInfoInReleventLst(i32*, %struct.TYPE_46__*, i32) #1

declare dso_local i32 @EnqueueNodeInfoToRelevantLst(i32*, %struct.TYPE_46__*, i32) #1

declare dso_local i32 @FmPcdIncNetEnvOwners(%struct.TYPE_46__*, i32) #1

declare dso_local i32 @FmPcdLockTryLockAll(i32*) #1

declare dso_local i32 @FM_PCD_CcRootDelete(%struct.TYPE_46__*) #1

declare dso_local i32 @DBG(i32, i8*) #1

declare dso_local i64 @SetRequiredAction(%struct.TYPE_46__*, i64, %struct.TYPE_49__*, %struct.TYPE_46__*, i32, %struct.TYPE_46__*) #1

declare dso_local i32 @FmPcdLockUnlockAll(i32*) #1

declare dso_local i32 @FmPcdAcquireLock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
