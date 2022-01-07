; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_manip.c_CreateReassTable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_manip.c_CreateReassTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_12__, %struct.TYPE_15__* }
%struct.TYPE_12__ = type { i32, i32, i32, i32, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i64, i64, i32, i64, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i64, i64, i32*, i64, i64, i64*, %struct.TYPE_13__*, %struct.TYPE_13__* }
%struct.TYPE_15__ = type { i32, i64 }

@e_FM_PCD_MANIP_SIX_WAYS_HASH = common dso_local global i32 0, align 4
@MAJOR = common dso_local global i32 0, align 4
@E_INVALID_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"num of ways\00", align 1
@E_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"header type\00", align 1
@FM_PCD_MANIP_REASM_TABLE_SIZE = common dso_local global i32 0, align 4
@FM_PCD_MANIP_REASM_TABLE_ALIGN = common dso_local global i32 0, align 4
@E_NO_MEMORY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [53 x i8] c"MURAM alloc for Reassembly specific parameters table\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Memory allocation FAILED\00", align 1
@FM_PCD_MANIP_REASM_LIODN_MASK = common dso_local global i32 0, align 4
@FM_PCD_MANIP_REASM_LIODN_SHIFT = common dso_local global i64 0, align 8
@FM_PCD_MANIP_REASM_ELIODN_MASK = common dso_local global i32 0, align 4
@FM_PCD_MANIP_REASM_ELIODN_SHIFT = common dso_local global i64 0, align 8
@E_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i32)* @CreateReassTable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CreateReassTable(%struct.TYPE_14__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64*, align 8
  %19 = alloca i64*, align 8
  %20 = alloca %struct.TYPE_13__**, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store i32 %1, i32* %4, align 4
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  store %struct.TYPE_15__* %23, %struct.TYPE_15__** %5, align 8
  %24 = load i32, i32* %4, align 4
  switch i32 %24, label %110 [
    i32 129, label %25
    i32 128, label %52
    i32 130, label %87
  ]

25:                                               ; preds = %2
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 5
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 7
  store %struct.TYPE_13__** %29, %struct.TYPE_13__*** %20, align 8
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 5
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  store i64* %33, i64** %18, align 8
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 5
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 1
  store i64* %37, i64** %19, align 8
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 5
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 5
  %42 = load i64*, i64** %41, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 0
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %16, align 8
  store i64 0, i64* %17, align 8
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 5
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %8, align 4
  store i32 11, i32* %11, align 4
  br label %114

52:                                               ; preds = %2
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 5
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 6
  store %struct.TYPE_13__** %56, %struct.TYPE_13__*** %20, align 8
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 5
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 3
  store i64* %60, i64** %18, align 8
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 5
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 4
  store i64* %64, i64** %19, align 8
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 5
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 5
  %69 = load i64*, i64** %68, align 8
  %70 = getelementptr inbounds i64, i64* %69, i64 1
  %71 = load i64, i64* %70, align 8
  store i64 %71, i64* %16, align 8
  store i64 0, i64* %17, align 8
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 5
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 2
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 1
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %8, align 4
  store i32 36, i32* %11, align 4
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* @e_FM_PCD_MANIP_SIX_WAYS_HASH, align 4
  %81 = icmp sgt i32 %79, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %52
  %83 = load i32, i32* @MAJOR, align 4
  %84 = load i32, i32* @E_INVALID_VALUE, align 4
  %85 = call i32 @RETURN_ERROR(i32 %83, i32 %84, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %86

86:                                               ; preds = %82, %52
  br label %114

87:                                               ; preds = %2
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 4
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 4
  store %struct.TYPE_13__** %91, %struct.TYPE_13__*** %20, align 8
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 4
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 0
  store i64* %95, i64** %18, align 8
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 4
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 1
  store i64* %99, i64** %19, align 8
  store i64 0, i64* %16, align 8
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 4
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  store i64 %104, i64* %17, align 8
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 4
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  store i32 %109, i32* %8, align 4
  store i32 4, i32* %11, align 4
  br label %114

110:                                              ; preds = %2
  %111 = load i32, i32* @MAJOR, align 4
  %112 = load i32, i32* @E_NOT_SUPPORTED, align 4
  %113 = call i32 @RETURN_ERROR(i32 %111, i32 %112, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  br label %114

114:                                              ; preds = %110, %87, %86, %25
  %115 = load i32, i32* %11, align 4
  %116 = add nsw i32 %115, 2
  store i32 %116, i32* %11, align 4
  %117 = load i32, i32* %11, align 4
  %118 = call i32 @ROUND_UP(i32 %117, i32 8)
  store i32 %118, i32* %12, align 4
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @FM_PCD_MANIP_REASM_TABLE_SIZE, align 4
  %123 = load i32, i32* @FM_PCD_MANIP_REASM_TABLE_ALIGN, align 4
  %124 = call i64 @FM_MURAM_AllocMem(i32 %121, i32 %122, i32 %123)
  %125 = inttoptr i64 %124 to %struct.TYPE_13__*
  %126 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %20, align 8
  store %struct.TYPE_13__* %125, %struct.TYPE_13__** %126, align 8
  %127 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %20, align 8
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %127, align 8
  %129 = icmp ne %struct.TYPE_13__* %128, null
  br i1 %129, label %134, label %130

130:                                              ; preds = %114
  %131 = load i32, i32* @MAJOR, align 4
  %132 = load i32, i32* @E_NO_MEMORY, align 4
  %133 = call i32 @RETURN_ERROR(i32 %131, i32 %132, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0))
  br label %134

134:                                              ; preds = %130, %114
  %135 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %20, align 8
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %135, align 8
  %137 = call i32 @memset(%struct.TYPE_13__* %136, i32 0, i32 36)
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @XX_VirtToPhys(i32 %141)
  %143 = sext i32 %142 to i64
  %144 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = sub nsw i64 %143, %146
  %148 = trunc i64 %147 to i32
  store i32 %148, i32* %6, align 4
  %149 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %20, align 8
  %150 = load %struct.TYPE_13__*, %struct.TYPE_13__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 8
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* %6, align 4
  %154 = call i32 @WRITE_UINT32(i32 %152, i32 %153)
  %155 = load i32, i32* %8, align 4
  %156 = load i32, i32* %12, align 4
  %157 = mul nsw i32 %155, %156
  %158 = load i32, i32* %9, align 4
  %159 = call i32 @NEXT_POWER_OF_2(i32 %157, i32 %158)
  %160 = load i32, i32* %9, align 4
  %161 = load i32, i32* %10, align 4
  %162 = call i32 @LOG2(i32 %160, i32 %161)
  %163 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %20, align 8
  %164 = load %struct.TYPE_13__*, %struct.TYPE_13__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %164, i32 0, i32 7
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* %8, align 4
  %168 = shl i32 %167, 8
  %169 = load i32, i32* %10, align 4
  %170 = or i32 %168, %169
  %171 = sext i32 %170 to i64
  %172 = call i32 @WRITE_UINT16(i32 %166, i64 %171)
  %173 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %174 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = mul nsw i32 %176, 2
  store i32 %177, i32* %14, align 4
  %178 = load i32, i32* %14, align 4
  %179 = load i32, i32* %8, align 4
  %180 = sdiv i32 %178, %179
  store i32 %180, i32* %13, align 4
  %181 = load i32, i32* %13, align 4
  %182 = load i32, i32* %13, align 4
  %183 = call i32 @NEXT_POWER_OF_2(i32 %181, i32 %182)
  %184 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %20, align 8
  %185 = load %struct.TYPE_13__*, %struct.TYPE_13__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %185, i32 0, i32 6
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* %13, align 4
  %189 = sub nsw i32 %188, 1
  %190 = sext i32 %189 to i64
  %191 = call i32 @WRITE_UINT16(i32 %187, i64 %190)
  %192 = load i32, i32* %13, align 4
  %193 = load i32, i32* %9, align 4
  %194 = mul nsw i32 %192, %193
  store i32 %194, i32* %7, align 4
  %195 = load i32, i32* %7, align 4
  %196 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %197 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 8
  %200 = load i32, i32* %9, align 4
  %201 = call i32 @XX_MallocSmart(i32 %195, i32 %199, i32 %200)
  %202 = call i64 @PTR_TO_UINT(i32 %201)
  %203 = load i64*, i64** %18, align 8
  store i64 %202, i64* %203, align 8
  %204 = load i64*, i64** %18, align 8
  %205 = load i64, i64* %204, align 8
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %218, label %207

207:                                              ; preds = %134
  %208 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %209 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %20, align 8
  %212 = load %struct.TYPE_13__*, %struct.TYPE_13__** %211, align 8
  %213 = call i32 @FM_MURAM_FreeMem(i32 %210, %struct.TYPE_13__* %212)
  %214 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %20, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %214, align 8
  %215 = load i32, i32* @MAJOR, align 4
  %216 = load i32, i32* @E_NO_MEMORY, align 4
  %217 = call i32 @RETURN_ERROR(i32 %215, i32 %216, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %218

218:                                              ; preds = %207, %134
  %219 = load i64*, i64** %18, align 8
  %220 = load i64, i64* %219, align 8
  %221 = call i32 @UINT_TO_PTR(i64 %220)
  %222 = load i32, i32* %7, align 4
  %223 = call i32 @MemSet8(i32 %221, i32 0, i32 %222)
  %224 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %225 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = load i32, i32* @FM_PCD_MANIP_REASM_LIODN_MASK, align 4
  %229 = and i32 %227, %228
  %230 = load i64, i64* @FM_PCD_MANIP_REASM_LIODN_SHIFT, align 8
  %231 = trunc i64 %230 to i32
  %232 = shl i32 %229, %231
  store i32 %232, i32* %15, align 4
  %233 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %234 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = load i32, i32* @FM_PCD_MANIP_REASM_ELIODN_MASK, align 4
  %238 = and i32 %236, %237
  %239 = load i64, i64* @FM_PCD_MANIP_REASM_ELIODN_SHIFT, align 8
  %240 = trunc i64 %239 to i32
  %241 = shl i32 %238, %240
  %242 = load i32, i32* %15, align 4
  %243 = or i32 %242, %241
  store i32 %243, i32* %15, align 4
  %244 = load i64*, i64** %18, align 8
  %245 = load i64, i64* %244, align 8
  %246 = call i32 @UINT_TO_PTR(i64 %245)
  %247 = call i32 @XX_VirtToPhys(i32 %246)
  %248 = load i32, i32* %15, align 4
  %249 = or i32 %248, %247
  store i32 %249, i32* %15, align 4
  %250 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %20, align 8
  %251 = load %struct.TYPE_13__*, %struct.TYPE_13__** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %251, i32 0, i32 5
  %253 = load i32, i32* %252, align 4
  %254 = load i32, i32* %15, align 4
  %255 = ashr i32 %254, 32
  %256 = call i32 @WRITE_UINT32(i32 %253, i32 %255)
  %257 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %20, align 8
  %258 = load %struct.TYPE_13__*, %struct.TYPE_13__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %258, i32 0, i32 4
  %260 = load i32, i32* %259, align 4
  %261 = load i32, i32* %15, align 4
  %262 = call i32 @WRITE_UINT32(i32 %260, i32 %261)
  %263 = load i32, i32* %13, align 4
  %264 = mul nsw i32 %263, 4
  %265 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %266 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %265, i32 0, i32 0
  %267 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %266, i32 0, i32 2
  %268 = load i32, i32* %267, align 8
  %269 = call i32 @XX_MallocSmart(i32 %264, i32 %268, i32 4)
  %270 = call i64 @PTR_TO_UINT(i32 %269)
  %271 = load i64*, i64** %19, align 8
  store i64 %270, i64* %271, align 8
  %272 = load i64*, i64** %19, align 8
  %273 = load i64, i64* %272, align 8
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %291, label %275

275:                                              ; preds = %218
  %276 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %277 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 8
  %279 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %20, align 8
  %280 = load %struct.TYPE_13__*, %struct.TYPE_13__** %279, align 8
  %281 = call i32 @FM_MURAM_FreeMem(i32 %278, %struct.TYPE_13__* %280)
  %282 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %20, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %282, align 8
  %283 = load i64*, i64** %18, align 8
  %284 = load i64, i64* %283, align 8
  %285 = call i32 @UINT_TO_PTR(i64 %284)
  %286 = call i32 @XX_FreeSmart(i32 %285)
  %287 = load i64*, i64** %18, align 8
  store i64 0, i64* %287, align 8
  %288 = load i32, i32* @MAJOR, align 4
  %289 = load i32, i32* @E_NO_MEMORY, align 4
  %290 = call i32 @RETURN_ERROR(i32 %288, i32 %289, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %291

291:                                              ; preds = %275, %218
  %292 = load i64*, i64** %19, align 8
  %293 = load i64, i64* %292, align 8
  %294 = call i32 @UINT_TO_PTR(i64 %293)
  %295 = load i32, i32* %13, align 4
  %296 = mul nsw i32 %295, 4
  %297 = call i32 @MemSet8(i32 %294, i32 0, i32 %296)
  %298 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %299 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %298, i32 0, i32 0
  %300 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %299, i32 0, i32 1
  %301 = load i32, i32* %300, align 4
  %302 = load i32, i32* @FM_PCD_MANIP_REASM_LIODN_MASK, align 4
  %303 = and i32 %301, %302
  %304 = load i64, i64* @FM_PCD_MANIP_REASM_LIODN_SHIFT, align 8
  %305 = trunc i64 %304 to i32
  %306 = shl i32 %303, %305
  store i32 %306, i32* %15, align 4
  %307 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %308 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %307, i32 0, i32 0
  %309 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %308, i32 0, i32 1
  %310 = load i32, i32* %309, align 4
  %311 = load i32, i32* @FM_PCD_MANIP_REASM_ELIODN_MASK, align 4
  %312 = and i32 %310, %311
  %313 = load i64, i64* @FM_PCD_MANIP_REASM_ELIODN_SHIFT, align 8
  %314 = trunc i64 %313 to i32
  %315 = shl i32 %312, %314
  %316 = load i32, i32* %15, align 4
  %317 = or i32 %316, %315
  store i32 %317, i32* %15, align 4
  %318 = load i64*, i64** %19, align 8
  %319 = load i64, i64* %318, align 8
  %320 = call i32 @UINT_TO_PTR(i64 %319)
  %321 = call i32 @XX_VirtToPhys(i32 %320)
  %322 = load i32, i32* %15, align 4
  %323 = or i32 %322, %321
  store i32 %323, i32* %15, align 4
  %324 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %20, align 8
  %325 = load %struct.TYPE_13__*, %struct.TYPE_13__** %324, align 8
  %326 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %325, i32 0, i32 3
  %327 = load i32, i32* %326, align 4
  %328 = load i32, i32* %15, align 4
  %329 = ashr i32 %328, 32
  %330 = call i32 @WRITE_UINT32(i32 %327, i32 %329)
  %331 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %20, align 8
  %332 = load %struct.TYPE_13__*, %struct.TYPE_13__** %331, align 8
  %333 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %332, i32 0, i32 2
  %334 = load i32, i32* %333, align 4
  %335 = load i32, i32* %15, align 4
  %336 = call i32 @WRITE_UINT32(i32 %334, i32 %335)
  %337 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %20, align 8
  %338 = load %struct.TYPE_13__*, %struct.TYPE_13__** %337, align 8
  %339 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %338, i32 0, i32 1
  %340 = load i32, i32* %339, align 4
  %341 = load i64, i64* %16, align 8
  %342 = call i32 @WRITE_UINT16(i32 %340, i64 %341)
  %343 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %20, align 8
  %344 = load %struct.TYPE_13__*, %struct.TYPE_13__** %343, align 8
  %345 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %344, i32 0, i32 0
  %346 = load i32, i32* %345, align 4
  %347 = load i64, i64* %17, align 8
  %348 = call i32 @WRITE_UINT16(i32 %346, i64 %347)
  %349 = load i32, i32* @E_OK, align 4
  ret i32 %349
}

declare dso_local i32 @RETURN_ERROR(i32, i32, i8*) #1

declare dso_local i32 @ROUND_UP(i32, i32) #1

declare dso_local i64 @FM_MURAM_AllocMem(i32, i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @XX_VirtToPhys(i32) #1

declare dso_local i32 @WRITE_UINT32(i32, i32) #1

declare dso_local i32 @NEXT_POWER_OF_2(i32, i32) #1

declare dso_local i32 @LOG2(i32, i32) #1

declare dso_local i32 @WRITE_UINT16(i32, i64) #1

declare dso_local i64 @PTR_TO_UINT(i32) #1

declare dso_local i32 @XX_MallocSmart(i32, i32, i32) #1

declare dso_local i32 @FM_MURAM_FreeMem(i32, %struct.TYPE_13__*) #1

declare dso_local i32 @MemSet8(i32, i32, i32) #1

declare dso_local i32 @UINT_TO_PTR(i64) #1

declare dso_local i32 @XX_FreeSmart(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
