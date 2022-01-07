; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_cc.c_FM_PCD_HashTableSet.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_cc.c_FM_PCD_HashTableSet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_36__ = type { i32, i32, i64, i32, i32, %struct.TYPE_36__*, i32, %struct.TYPE_32__, %struct.TYPE_30__, i64, i8*, %struct.TYPE_31__ }
%struct.TYPE_32__ = type { i32, i64, i32, i32, i8*, %struct.TYPE_28__*, %struct.TYPE_31__ }
%struct.TYPE_28__ = type { %struct.TYPE_34__ }
%struct.TYPE_34__ = type { %struct.TYPE_35__, i8*, i32 }
%struct.TYPE_35__ = type { %struct.TYPE_33__ }
%struct.TYPE_33__ = type { %struct.TYPE_36__* }
%struct.TYPE_30__ = type { %struct.TYPE_29__, i8* }
%struct.TYPE_29__ = type { i32, i32, i64, i32, i32 }
%struct.TYPE_31__ = type { i64, i32 }

@FALSE = common dso_local global i8* null, align 8
@E_INVALID_HANDLE = common dso_local global i32 0, align 4
@E_NULL_POINTER = common dso_local global i32 0, align 4
@MINOR = common dso_local global i32 0, align 4
@E_INVALID_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Max number of keys must be higher then 0\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Hash result mask must differ from 0\00", align 1
@e_FM_PCD_INVALID = common dso_local global i64 0, align 8
@MAJOR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [107 x i8] c"Next PCD Engine for on-miss entry is invalid. On-miss entry is always required. You can use e_FM_PCD_DONE.\00", align 1
@E_NO_MEMORY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"p_ExactMatchCcNodeParam\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"p_IndxHashCcNodeParam\00", align 1
@INFO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [94 x i8] c"'maxNumOfKeys' is not a multiple of hash number of ways, so number of ways will be rounded up\00", align 1
@e_FM_PCD_CC_STATS_MODE_FRAME = common dso_local global i64 0, align 8
@e_FM_PCD_CC_STATS_MODE_BYTE_AND_FRAME = common dso_local global i64 0, align 8
@FM_PCD_CC_STATS_COUNTER_SIZE = common dso_local global i32 0, align 4
@FM_PCD_CC_AD_TABLE_ALIGN = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [52 x i8] c"MURAM allocation for statistics table for hash miss\00", align 1
@TRUE = common dso_local global i8* null, align 8
@e_FM_PCD_EXTRACT_NON_HDR = common dso_local global i8* null, align 8
@e_FM_PCD_EXTRACT_FROM_KEY = common dso_local global i32 0, align 4
@e_FM_PCD_ACTION_EXACT_MATCH = common dso_local global i32 0, align 4
@e_FM_PCD_CC = common dso_local global i32 0, align 4
@NO_MSG = common dso_local global i8* null, align 8
@e_FM_PCD_EXTRACT_FROM_HASH = common dso_local global i32 0, align 4
@e_FM_PCD_ACTION_INDEXED_LOOKUP = common dso_local global i32 0, align 4
@e_FM_PCD_CC_STATS_MODE_NONE = common dso_local global i64 0, align 8
@e_FM_PCD_CC_STATS_MODE_RMON = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_36__* @FM_PCD_HashTableSet(%struct.TYPE_36__* %0, %struct.TYPE_36__* %1) #0 {
  %3 = alloca %struct.TYPE_36__*, align 8
  %4 = alloca %struct.TYPE_36__*, align 8
  %5 = alloca %struct.TYPE_36__*, align 8
  %6 = alloca %struct.TYPE_36__*, align 8
  %7 = alloca %struct.TYPE_36__*, align 8
  %8 = alloca %struct.TYPE_36__*, align 8
  %9 = alloca %struct.TYPE_36__*, align 8
  %10 = alloca %struct.TYPE_36__*, align 8
  %11 = alloca %struct.TYPE_28__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store %struct.TYPE_36__* %0, %struct.TYPE_36__** %4, align 8
  store %struct.TYPE_36__* %1, %struct.TYPE_36__** %5, align 8
  store %struct.TYPE_36__* null, %struct.TYPE_36__** %10, align 8
  store i32 0, i32* %16, align 4
  %19 = load i8*, i8** @FALSE, align 8
  %20 = ptrtoint i8* %19 to i32
  store i32 %20, i32* %17, align 4
  %21 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %22 = load i32, i32* @E_INVALID_HANDLE, align 4
  %23 = call i32 @SANITY_CHECK_RETURN_VALUE(%struct.TYPE_36__* %21, i32 %22, i32* null)
  %24 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %25 = load i32, i32* @E_NULL_POINTER, align 4
  %26 = call i32 @SANITY_CHECK_RETURN_VALUE(%struct.TYPE_36__* %24, i32 %25, i32* null)
  %27 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %2
  %32 = load i32, i32* @MINOR, align 4
  %33 = load i32, i32* @E_INVALID_VALUE, align 4
  %34 = call i32 @REPORT_ERROR(i32 %32, i32 %33, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_36__* null, %struct.TYPE_36__** %3, align 8
  br label %379

35:                                               ; preds = %2
  %36 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load i32, i32* @MINOR, align 4
  %42 = load i32, i32* @E_INVALID_VALUE, align 4
  %43 = call i32 @REPORT_ERROR(i32 %41, i32 %42, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_36__* null, %struct.TYPE_36__** %3, align 8
  br label %379

44:                                               ; preds = %35
  %45 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %45, i32 0, i32 11
  %47 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @e_FM_PCD_INVALID, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %44
  %52 = load i32, i32* @MAJOR, align 4
  %53 = load i32, i32* @E_INVALID_VALUE, align 4
  %54 = call i32 @REPORT_ERROR(i32 %52, i32 %53, i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.2, i64 0, i64 0))
  store %struct.TYPE_36__* null, %struct.TYPE_36__** %3, align 8
  br label %379

55:                                               ; preds = %44
  %56 = call i64 @XX_Malloc(i32 160)
  %57 = inttoptr i64 %56 to %struct.TYPE_36__*
  store %struct.TYPE_36__* %57, %struct.TYPE_36__** %8, align 8
  %58 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %59 = icmp ne %struct.TYPE_36__* %58, null
  br i1 %59, label %64, label %60

60:                                               ; preds = %55
  %61 = load i32, i32* @MAJOR, align 4
  %62 = load i32, i32* @E_NO_MEMORY, align 4
  %63 = call i32 @REPORT_ERROR(i32 %61, i32 %62, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  store %struct.TYPE_36__* null, %struct.TYPE_36__** %3, align 8
  br label %379

64:                                               ; preds = %55
  %65 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %66 = call i32 @memset(%struct.TYPE_36__* %65, i32 0, i32 160)
  %67 = call i64 @XX_Malloc(i32 160)
  %68 = inttoptr i64 %67 to %struct.TYPE_36__*
  store %struct.TYPE_36__* %68, %struct.TYPE_36__** %7, align 8
  %69 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %70 = icmp ne %struct.TYPE_36__* %69, null
  br i1 %70, label %77, label %71

71:                                               ; preds = %64
  %72 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %73 = call i32 @XX_Free(%struct.TYPE_36__* %72)
  %74 = load i32, i32* @MAJOR, align 4
  %75 = load i32, i32* @E_NO_MEMORY, align 4
  %76 = call i32 @REPORT_ERROR(i32 %74, i32 %75, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  store %struct.TYPE_36__* null, %struct.TYPE_36__** %3, align 8
  br label %379

77:                                               ; preds = %64
  %78 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %79 = call i32 @memset(%struct.TYPE_36__* %78, i32 0, i32 160)
  %80 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = ashr i32 %82, 4
  store i32 %83, i32* %15, align 4
  br label %84

84:                                               ; preds = %87, %77
  %85 = load i32, i32* %15, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %84
  %88 = load i32, i32* %16, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %16, align 4
  %90 = load i32, i32* %15, align 4
  %91 = ashr i32 %90, 1
  store i32 %91, i32* %15, align 4
  br label %84

92:                                               ; preds = %84
  %93 = load i32, i32* %16, align 4
  %94 = shl i32 1, %93
  store i32 %94, i32* %13, align 4
  %95 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* %13, align 4
  %99 = call i64 @DIV_CEIL(i32 %97, i32 %98)
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %14, align 4
  %101 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* %13, align 4
  %105 = srem i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %92
  %108 = load i32, i32* @INFO, align 4
  %109 = call i32 @DBG(i32 %108, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.5, i64 0, i64 0))
  br label %110

110:                                              ; preds = %107, %92
  %111 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @e_FM_PCD_CC_STATS_MODE_FRAME, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %122, label %116

116:                                              ; preds = %110
  %117 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @e_FM_PCD_CC_STATS_MODE_BYTE_AND_FRAME, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %154

122:                                              ; preds = %116, %110
  %123 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %124 = call i32 @FmPcdGetMuramHandle(%struct.TYPE_36__* %123)
  %125 = load i32, i32* @FM_PCD_CC_STATS_COUNTER_SIZE, align 4
  %126 = mul nsw i32 2, %125
  %127 = load i32, i32* @FM_PCD_CC_AD_TABLE_ALIGN, align 4
  %128 = call i64 @FM_MURAM_AllocMem(i32 %124, i32 %126, i32 %127)
  %129 = inttoptr i64 %128 to %struct.TYPE_36__*
  store %struct.TYPE_36__* %129, %struct.TYPE_36__** %10, align 8
  %130 = load %struct.TYPE_36__*, %struct.TYPE_36__** %10, align 8
  %131 = icmp ne %struct.TYPE_36__* %130, null
  br i1 %131, label %140, label %132

132:                                              ; preds = %122
  %133 = load i32, i32* @MAJOR, align 4
  %134 = load i32, i32* @E_NO_MEMORY, align 4
  %135 = call i32 @REPORT_ERROR(i32 %133, i32 %134, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0))
  %136 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %137 = call i32 @XX_Free(%struct.TYPE_36__* %136)
  %138 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %139 = call i32 @XX_Free(%struct.TYPE_36__* %138)
  store %struct.TYPE_36__* null, %struct.TYPE_36__** %3, align 8
  br label %379

140:                                              ; preds = %122
  %141 = load %struct.TYPE_36__*, %struct.TYPE_36__** %10, align 8
  %142 = load i32, i32* @FM_PCD_CC_STATS_COUNTER_SIZE, align 4
  %143 = mul nsw i32 2, %142
  %144 = call i32 @memset(%struct.TYPE_36__* %141, i32 0, i32 %143)
  %145 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %145, i32 0, i32 11
  %147 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  store i32 %148, i32* %17, align 4
  %149 = load i8*, i8** @TRUE, align 8
  %150 = ptrtoint i8* %149 to i32
  %151 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %151, i32 0, i32 11
  %153 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %152, i32 0, i32 1
  store i32 %150, i32* %153, align 8
  br label %154

154:                                              ; preds = %140, %116
  %155 = load i8*, i8** @e_FM_PCD_EXTRACT_NON_HDR, align 8
  %156 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %157 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %156, i32 0, i32 8
  %158 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %157, i32 0, i32 1
  store i8* %155, i8** %158, align 8
  %159 = load i32, i32* @e_FM_PCD_EXTRACT_FROM_KEY, align 4
  %160 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %161 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %160, i32 0, i32 8
  %162 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %162, i32 0, i32 4
  store i32 %159, i32* %163, align 4
  %164 = load i32, i32* @e_FM_PCD_ACTION_EXACT_MATCH, align 4
  %165 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %166 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %165, i32 0, i32 8
  %167 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %167, i32 0, i32 3
  store i32 %164, i32* %168, align 8
  %169 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %170 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %169, i32 0, i32 8
  %171 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %171, i32 0, i32 2
  store i64 0, i64* %172, align 8
  %173 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 8
  %176 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %177 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %176, i32 0, i32 8
  %178 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %178, i32 0, i32 0
  store i32 %175, i32* %179, align 8
  %180 = load i32, i32* %14, align 4
  %181 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %182 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %181, i32 0, i32 7
  %183 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %182, i32 0, i32 0
  store i32 %180, i32* %183, align 8
  %184 = load i8*, i8** @FALSE, align 8
  %185 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %186 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %185, i32 0, i32 7
  %187 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %186, i32 0, i32 4
  store i8* %184, i8** %187, align 8
  %188 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %188, i32 0, i32 2
  %190 = load i64, i64* %189, align 8
  %191 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %192 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %191, i32 0, i32 7
  %193 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %192, i32 0, i32 1
  store i64 %190, i64* %193, align 8
  %194 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %195 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %194, i32 0, i32 7
  %196 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %195, i32 0, i32 2
  store i32 0, i32* %196, align 8
  %197 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %198 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %197, i32 0, i32 3
  %199 = load i32, i32* %198, align 8
  %200 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %201 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %200, i32 0, i32 7
  %202 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %201, i32 0, i32 3
  store i32 %199, i32* %202, align 4
  %203 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %204 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %203, i32 0, i32 7
  %205 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %204, i32 0, i32 6
  %206 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %207 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %206, i32 0, i32 11
  %208 = bitcast %struct.TYPE_31__* %205 to i8*
  %209 = bitcast %struct.TYPE_31__* %207 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %208, i8* align 8 %209, i64 16, i1 false)
  %210 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %211 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %210, i32 0, i32 7
  %212 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %211, i32 0, i32 5
  %213 = load %struct.TYPE_28__*, %struct.TYPE_28__** %212, align 8
  store %struct.TYPE_28__* %213, %struct.TYPE_28__** %11, align 8
  store i32 0, i32* %12, align 4
  br label %214

214:                                              ; preds = %264, %154
  %215 = load i32, i32* %12, align 4
  %216 = load i32, i32* %13, align 4
  %217 = icmp slt i32 %215, %216
  br i1 %217, label %218, label %267

218:                                              ; preds = %214
  %219 = call i64 @XX_Malloc(i32 160)
  %220 = inttoptr i64 %219 to %struct.TYPE_36__*
  store %struct.TYPE_36__* %220, %struct.TYPE_36__** %9, align 8
  %221 = load %struct.TYPE_36__*, %struct.TYPE_36__** %9, align 8
  %222 = icmp ne %struct.TYPE_36__* %221, null
  br i1 %222, label %224, label %223

223:                                              ; preds = %218
  br label %267

224:                                              ; preds = %218
  %225 = load %struct.TYPE_36__*, %struct.TYPE_36__** %9, align 8
  %226 = call i32 @memset(%struct.TYPE_36__* %225, i32 0, i32 160)
  %227 = load i8*, i8** @TRUE, align 8
  %228 = load %struct.TYPE_36__*, %struct.TYPE_36__** %9, align 8
  %229 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %228, i32 0, i32 10
  store i8* %227, i8** %229, align 8
  %230 = load %struct.TYPE_36__*, %struct.TYPE_36__** %10, align 8
  %231 = load %struct.TYPE_36__*, %struct.TYPE_36__** %9, align 8
  %232 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %231, i32 0, i32 5
  store %struct.TYPE_36__* %230, %struct.TYPE_36__** %232, align 8
  %233 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %234 = load %struct.TYPE_36__*, %struct.TYPE_36__** %9, align 8
  %235 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %236 = call i64 @MatchTableSet(%struct.TYPE_36__* %233, %struct.TYPE_36__* %234, %struct.TYPE_36__* %235)
  store i64 %236, i64* %18, align 8
  %237 = load i64, i64* %18, align 8
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %240

239:                                              ; preds = %224
  br label %267

240:                                              ; preds = %224
  %241 = load i32, i32* @e_FM_PCD_CC, align 4
  %242 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %243 = load i32, i32* %12, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %242, i64 %244
  %246 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %246, i32 0, i32 2
  store i32 %241, i32* %247, align 8
  %248 = load i8*, i8** @FALSE, align 8
  %249 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %250 = load i32, i32* %12, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %249, i64 %251
  %253 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %253, i32 0, i32 1
  store i8* %248, i8** %254, align 8
  %255 = load %struct.TYPE_36__*, %struct.TYPE_36__** %9, align 8
  %256 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %257 = load i32, i32* %12, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %256, i64 %258
  %260 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %261, i32 0, i32 0
  %263 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %262, i32 0, i32 0
  store %struct.TYPE_36__* %255, %struct.TYPE_36__** %263, align 8
  br label %264

264:                                              ; preds = %240
  %265 = load i32, i32* %12, align 4
  %266 = add nsw i32 %265, 1
  store i32 %266, i32* %12, align 4
  br label %214

267:                                              ; preds = %239, %223, %214
  %268 = load i32, i32* %12, align 4
  %269 = load i32, i32* %13, align 4
  %270 = icmp slt i32 %268, %269
  br i1 %270, label %271, label %304

271:                                              ; preds = %267
  %272 = load i32, i32* %12, align 4
  %273 = sub nsw i32 %272, 1
  store i32 %273, i32* %12, align 4
  br label %274

274:                                              ; preds = %288, %271
  %275 = load i32, i32* %12, align 4
  %276 = icmp sge i32 %275, 0
  br i1 %276, label %277, label %291

277:                                              ; preds = %274
  %278 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %279 = load i32, i32* %12, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %278, i64 %280
  %282 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %281, i32 0, i32 0
  %283 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %282, i32 0, i32 0
  %284 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %283, i32 0, i32 0
  %285 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %284, i32 0, i32 0
  %286 = load %struct.TYPE_36__*, %struct.TYPE_36__** %285, align 8
  %287 = call i32 @FM_PCD_MatchTableDelete(%struct.TYPE_36__* %286)
  br label %288

288:                                              ; preds = %277
  %289 = load i32, i32* %12, align 4
  %290 = add nsw i32 %289, -1
  store i32 %290, i32* %12, align 4
  br label %274

291:                                              ; preds = %274
  %292 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %293 = call i32 @FmPcdGetMuramHandle(%struct.TYPE_36__* %292)
  %294 = load %struct.TYPE_36__*, %struct.TYPE_36__** %10, align 8
  %295 = call i32 @FM_MURAM_FreeMem(i32 %293, %struct.TYPE_36__* %294)
  %296 = load i32, i32* @MAJOR, align 4
  %297 = load i32, i32* @E_NULL_POINTER, align 4
  %298 = load i8*, i8** @NO_MSG, align 8
  %299 = call i32 @REPORT_ERROR(i32 %296, i32 %297, i8* %298)
  %300 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %301 = call i32 @XX_Free(%struct.TYPE_36__* %300)
  %302 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %303 = call i32 @XX_Free(%struct.TYPE_36__* %302)
  store %struct.TYPE_36__* null, %struct.TYPE_36__** %3, align 8
  br label %379

304:                                              ; preds = %267
  %305 = load i8*, i8** @e_FM_PCD_EXTRACT_NON_HDR, align 8
  %306 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %307 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %306, i32 0, i32 8
  %308 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %307, i32 0, i32 1
  store i8* %305, i8** %308, align 8
  %309 = load i32, i32* @e_FM_PCD_EXTRACT_FROM_HASH, align 4
  %310 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %311 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %310, i32 0, i32 8
  %312 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %311, i32 0, i32 0
  %313 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %312, i32 0, i32 4
  store i32 %309, i32* %313, align 4
  %314 = load i32, i32* @e_FM_PCD_ACTION_INDEXED_LOOKUP, align 4
  %315 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %316 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %315, i32 0, i32 8
  %317 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %316, i32 0, i32 0
  %318 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %317, i32 0, i32 3
  store i32 %314, i32* %318, align 8
  %319 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %320 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %319, i32 0, i32 1
  %321 = load i32, i32* %320, align 4
  %322 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %323 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %322, i32 0, i32 8
  %324 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %323, i32 0, i32 0
  %325 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %324, i32 0, i32 1
  store i32 %321, i32* %325, align 4
  %326 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %327 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %326, i32 0, i32 9
  %328 = load i64, i64* %327, align 8
  %329 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %330 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %329, i32 0, i32 8
  %331 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %330, i32 0, i32 0
  %332 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %331, i32 0, i32 2
  store i64 %328, i64* %332, align 8
  %333 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %334 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %333, i32 0, i32 8
  %335 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %334, i32 0, i32 0
  %336 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %335, i32 0, i32 0
  store i32 2, i32* %336, align 8
  %337 = load i32, i32* %13, align 4
  %338 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %339 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %338, i32 0, i32 7
  %340 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %339, i32 0, i32 0
  store i32 %337, i32* %340, align 8
  %341 = load i8*, i8** @FALSE, align 8
  %342 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %343 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %342, i32 0, i32 7
  %344 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %343, i32 0, i32 4
  store i8* %341, i8** %344, align 8
  %345 = load i64, i64* @e_FM_PCD_CC_STATS_MODE_NONE, align 8
  %346 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %347 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %346, i32 0, i32 7
  %348 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %347, i32 0, i32 1
  store i64 %345, i64* %348, align 8
  %349 = load i32, i32* %13, align 4
  %350 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %351 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %350, i32 0, i32 7
  %352 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %351, i32 0, i32 2
  store i32 %349, i32* %352, align 8
  %353 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %354 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %353, i32 0, i32 7
  %355 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %354, i32 0, i32 3
  store i32 2, i32* %355, align 4
  %356 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %357 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %358 = call %struct.TYPE_36__* @FM_PCD_MatchTableSet(%struct.TYPE_36__* %356, %struct.TYPE_36__* %357)
  store %struct.TYPE_36__* %358, %struct.TYPE_36__** %6, align 8
  %359 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %360 = icmp ne %struct.TYPE_36__* %359, null
  br i1 %360, label %361, label %373

361:                                              ; preds = %304
  %362 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %363 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %362, i32 0, i32 6
  %364 = load i32, i32* %363, align 8
  %365 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %366 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %365, i32 0, i32 6
  store i32 %364, i32* %366, align 8
  %367 = load %struct.TYPE_36__*, %struct.TYPE_36__** %10, align 8
  %368 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %369 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %368, i32 0, i32 5
  store %struct.TYPE_36__* %367, %struct.TYPE_36__** %369, align 8
  %370 = load i32, i32* %17, align 4
  %371 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %372 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %371, i32 0, i32 4
  store i32 %370, i32* %372, align 4
  br label %373

373:                                              ; preds = %361, %304
  %374 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %375 = call i32 @XX_Free(%struct.TYPE_36__* %374)
  %376 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %377 = call i32 @XX_Free(%struct.TYPE_36__* %376)
  %378 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  store %struct.TYPE_36__* %378, %struct.TYPE_36__** %3, align 8
  br label %379

379:                                              ; preds = %373, %291, %132, %71, %60, %51, %40, %31
  %380 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  ret %struct.TYPE_36__* %380
}

declare dso_local i32 @SANITY_CHECK_RETURN_VALUE(%struct.TYPE_36__*, i32, i32*) #1

declare dso_local i32 @REPORT_ERROR(i32, i32, i8*) #1

declare dso_local i64 @XX_Malloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_36__*, i32, i32) #1

declare dso_local i32 @XX_Free(%struct.TYPE_36__*) #1

declare dso_local i64 @DIV_CEIL(i32, i32) #1

declare dso_local i32 @DBG(i32, i8*) #1

declare dso_local i64 @FM_MURAM_AllocMem(i32, i32, i32) #1

declare dso_local i32 @FmPcdGetMuramHandle(%struct.TYPE_36__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @MatchTableSet(%struct.TYPE_36__*, %struct.TYPE_36__*, %struct.TYPE_36__*) #1

declare dso_local i32 @FM_PCD_MatchTableDelete(%struct.TYPE_36__*) #1

declare dso_local i32 @FM_MURAM_FreeMem(i32, %struct.TYPE_36__*) #1

declare dso_local %struct.TYPE_36__* @FM_PCD_MatchTableSet(%struct.TYPE_36__*, %struct.TYPE_36__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
