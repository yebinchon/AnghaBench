; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_manip.c_CreateReassCommonTable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_manip.c_CreateReassCommonTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_13__, i64 }
%struct.TYPE_13__ = type { i64, i32, i32, i32, i32, %struct.TYPE_14__*, i8*, i8*, i32, i8* }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_16__ = type { i32, i64, i32 }

@E_OK = common dso_local global i64 0, align 8
@MAJOR = common dso_local global i32 0, align 4
@E_NOT_AVAILABLE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"Timestamp scale\00", align 1
@FM_PCD_MANIP_REASM_COMMON_PARAM_TABLE_SIZE = common dso_local global i32 0, align 4
@FM_PCD_MANIP_REASM_COMMON_PARAM_TABLE_ALIGN = common dso_local global i32 0, align 4
@E_NO_MEMORY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [51 x i8] c"MURAM alloc for Reassembly common parameters table\00", align 1
@e_FM_PCD_MANIP_TIME_OUT_BETWEEN_FRAMES = common dso_local global i64 0, align 8
@FM_PCD_MANIP_REASM_TIME_OUT_BETWEEN_FRAMES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [57 x i8] c"MURAM alloc for Reassembly frame descriptor indexes pool\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Memory allocation FAILED\00", align 1
@FM_PCD_MANIP_REASM_LIODN_MASK = common dso_local global i32 0, align 4
@FM_PCD_MANIP_REASM_LIODN_SHIFT = common dso_local global i64 0, align 8
@FM_PCD_MANIP_REASM_ELIODN_MASK = common dso_local global i32 0, align 4
@FM_PCD_MANIP_REASM_ELIODN_SHIFT = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [41 x i8] c"MURAM alloc for Reassembly timeout table\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"port registration\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_15__*)* @CreateReassCommonTable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @CreateReassCommonTable(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %2, align 8
  store i32 0, i32* %3, align 4
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %13, %struct.TYPE_16__** %8, align 8
  %14 = load i64, i64* @E_OK, align 8
  store i64 %14, i64* %9, align 8
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @FmGetTimeStampScale(i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %1
  %22 = load i32, i32* @MAJOR, align 4
  %23 = load i64, i64* @E_NOT_AVAILABLE, align 8
  %24 = call i32 @RETURN_ERROR(i32 %22, i64 %23, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %21, %1
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @FM_PCD_MANIP_REASM_COMMON_PARAM_TABLE_SIZE, align 4
  %30 = load i32, i32* @FM_PCD_MANIP_REASM_COMMON_PARAM_TABLE_ALIGN, align 4
  %31 = call i64 @FM_MURAM_AllocMem(i32 %28, i32 %29, i32 %30)
  %32 = inttoptr i64 %31 to %struct.TYPE_14__*
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 5
  store %struct.TYPE_14__* %32, %struct.TYPE_14__** %35, align 8
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 5
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %38, align 8
  %40 = icmp ne %struct.TYPE_14__* %39, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %25
  %42 = load i32, i32* @MAJOR, align 4
  %43 = load i64, i64* @E_NO_MEMORY, align 8
  %44 = call i32 @RETURN_ERROR(i32 %42, i64 %43, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  br label %45

45:                                               ; preds = %41, %25
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 5
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %48, align 8
  %50 = load i32, i32* @FM_PCD_MANIP_REASM_COMMON_PARAM_TABLE_SIZE, align 4
  %51 = call i32 @MemSet8(%struct.TYPE_14__* %49, i32 0, i32 %50)
  store i32 0, i32* %3, align 4
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @e_FM_PCD_MANIP_TIME_OUT_BETWEEN_FRAMES, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %45
  %59 = load i32, i32* @FM_PCD_MANIP_REASM_TIME_OUT_BETWEEN_FRAMES, align 4
  %60 = load i32, i32* %3, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %58, %45
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %3, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %3, align 4
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 5
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %3, align 4
  %76 = call i32 @WRITE_UINT32(i32 %74, i32 %75)
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %80, 129
  store i32 %81, i32* %7, align 4
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* %7, align 4
  %86 = mul nsw i32 %85, 2
  %87 = call i64 @FM_MURAM_AllocMem(i32 %84, i32 %86, i32 256)
  %88 = call i8* @PTR_TO_UINT(i64 %87)
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 9
  store i8* %88, i8** %91, align 8
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 9
  %95 = load i8*, i8** %94, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %101, label %97

97:                                               ; preds = %62
  %98 = load i32, i32* @MAJOR, align 4
  %99 = load i64, i64* @E_NO_MEMORY, align 8
  %100 = call i32 @RETURN_ERROR(i32 %98, i64 %99, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0))
  br label %101

101:                                              ; preds = %97, %62
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 9
  %105 = load i8*, i8** %104, align 8
  %106 = call %struct.TYPE_14__* @UINT_TO_PTR(i8* %105)
  %107 = load i32, i32* %7, align 4
  %108 = mul nsw i32 %107, 2
  %109 = call i32 @MemSet8(%struct.TYPE_14__* %106, i32 0, i32 %108)
  store i32 0, i32* %4, align 4
  br label %110

110:                                              ; preds = %129, %101
  %111 = load i32, i32* %4, align 4
  %112 = load i32, i32* %7, align 4
  %113 = sub nsw i32 %112, 1
  %114 = icmp slt i32 %111, %113
  br i1 %114, label %115, label %132

115:                                              ; preds = %110
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 9
  %119 = load i8*, i8** %118, align 8
  %120 = call %struct.TYPE_14__* @UINT_TO_PTR(i8* %119)
  %121 = load i32, i32* %4, align 4
  %122 = shl i32 %121, 1
  %123 = call i64 @PTR_MOVE(%struct.TYPE_14__* %120, i32 %122)
  %124 = inttoptr i64 %123 to i32*
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* %4, align 4
  %127 = add nsw i32 %126, 1
  %128 = call i32 @WRITE_UINT16(i32 %125, i32 %127)
  br label %129

129:                                              ; preds = %115
  %130 = load i32, i32* %4, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %4, align 4
  br label %110

132:                                              ; preds = %110
  %133 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 9
  %136 = load i8*, i8** %135, align 8
  %137 = call %struct.TYPE_14__* @UINT_TO_PTR(i8* %136)
  %138 = call i64 @XX_VirtToPhys(%struct.TYPE_14__* %137)
  %139 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = sub nsw i64 %138, %141
  %143 = trunc i64 %142 to i32
  store i32 %143, i32* %3, align 4
  %144 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 5
  %147 = load %struct.TYPE_14__*, %struct.TYPE_14__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %147, i32 0, i32 4
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* %3, align 4
  %151 = call i32 @WRITE_UINT32(i32 %149, i32 %150)
  %152 = load i32, i32* %7, align 4
  %153 = mul nsw i32 %152, 64
  %154 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %155 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 8
  %157 = load i32, i32* %156, align 8
  %158 = call i64 @XX_MallocSmart(i32 %153, i32 %157, i32 64)
  %159 = call i8* @PTR_TO_UINT(i64 %158)
  %160 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %161, i32 0, i32 7
  store i8* %159, i8** %162, align 8
  %163 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %164 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %164, i32 0, i32 7
  %166 = load i8*, i8** %165, align 8
  %167 = icmp ne i8* %166, null
  br i1 %167, label %172, label %168

168:                                              ; preds = %132
  %169 = load i32, i32* @MAJOR, align 4
  %170 = load i64, i64* @E_NO_MEMORY, align 8
  %171 = call i32 @RETURN_ERROR(i32 %169, i64 %170, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %172

172:                                              ; preds = %168, %132
  %173 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %174 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %174, i32 0, i32 7
  %176 = load i8*, i8** %175, align 8
  %177 = call %struct.TYPE_14__* @UINT_TO_PTR(i8* %176)
  %178 = load i32, i32* %7, align 4
  %179 = mul nsw i32 %178, 64
  %180 = call i32 @MemSet8(%struct.TYPE_14__* %177, i32 0, i32 %179)
  %181 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %182 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %182, i32 0, i32 7
  %184 = load i8*, i8** %183, align 8
  %185 = call %struct.TYPE_14__* @UINT_TO_PTR(i8* %184)
  %186 = call i64 @XX_VirtToPhys(%struct.TYPE_14__* %185)
  %187 = trunc i64 %186 to i32
  store i32 %187, i32* %6, align 4
  %188 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %189 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 8
  %192 = load i32, i32* @FM_PCD_MANIP_REASM_LIODN_MASK, align 4
  %193 = and i32 %191, %192
  %194 = load i64, i64* @FM_PCD_MANIP_REASM_LIODN_SHIFT, align 8
  %195 = trunc i64 %194 to i32
  %196 = shl i32 %193, %195
  %197 = load i32, i32* %6, align 4
  %198 = or i32 %197, %196
  store i32 %198, i32* %6, align 4
  %199 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %200 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %200, i32 0, i32 3
  %202 = load i32, i32* %201, align 8
  %203 = load i32, i32* @FM_PCD_MANIP_REASM_ELIODN_MASK, align 4
  %204 = and i32 %202, %203
  %205 = load i64, i64* @FM_PCD_MANIP_REASM_ELIODN_SHIFT, align 8
  %206 = trunc i64 %205 to i32
  %207 = shl i32 %204, %206
  %208 = load i32, i32* %6, align 4
  %209 = or i32 %208, %207
  store i32 %209, i32* %6, align 4
  %210 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %211 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %211, i32 0, i32 5
  %213 = load %struct.TYPE_14__*, %struct.TYPE_14__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %213, i32 0, i32 3
  %215 = load i32, i32* %214, align 4
  %216 = load i32, i32* %6, align 4
  %217 = ashr i32 %216, 32
  %218 = call i32 @WRITE_UINT32(i32 %215, i32 %217)
  %219 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %220 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %220, i32 0, i32 5
  %222 = load %struct.TYPE_14__*, %struct.TYPE_14__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %222, i32 0, i32 2
  %224 = load i32, i32* %223, align 4
  %225 = load i32, i32* %6, align 4
  %226 = call i32 @WRITE_UINT32(i32 %224, i32 %225)
  %227 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %228 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = load i32, i32* %7, align 4
  %231 = mul nsw i32 %230, 8
  %232 = call i64 @FM_MURAM_AllocMem(i32 %229, i32 %231, i32 8)
  %233 = call i8* @PTR_TO_UINT(i64 %232)
  %234 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %235 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %235, i32 0, i32 6
  store i8* %233, i8** %236, align 8
  %237 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %238 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %238, i32 0, i32 6
  %240 = load i8*, i8** %239, align 8
  %241 = icmp ne i8* %240, null
  br i1 %241, label %246, label %242

242:                                              ; preds = %172
  %243 = load i32, i32* @MAJOR, align 4
  %244 = load i64, i64* @E_NO_MEMORY, align 8
  %245 = call i32 @RETURN_ERROR(i32 %243, i64 %244, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  br label %246

246:                                              ; preds = %242, %172
  %247 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %248 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %248, i32 0, i32 6
  %250 = load i8*, i8** %249, align 8
  %251 = call %struct.TYPE_14__* @UINT_TO_PTR(i8* %250)
  %252 = load i32, i32* %7, align 4
  %253 = mul nsw i32 %252, 8
  %254 = call i32 @MemSet8(%struct.TYPE_14__* %251, i32 0, i32 %253)
  %255 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %256 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %255, i32 0, i32 0
  %257 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %256, i32 0, i32 6
  %258 = load i8*, i8** %257, align 8
  %259 = call %struct.TYPE_14__* @UINT_TO_PTR(i8* %258)
  %260 = call i64 @XX_VirtToPhys(%struct.TYPE_14__* %259)
  %261 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %262 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %261, i32 0, i32 1
  %263 = load i64, i64* %262, align 8
  %264 = sub nsw i64 %260, %263
  %265 = trunc i64 %264 to i32
  store i32 %265, i32* %3, align 4
  %266 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %267 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %267, i32 0, i32 5
  %269 = load %struct.TYPE_14__*, %struct.TYPE_14__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 4
  %272 = load i32, i32* %3, align 4
  %273 = call i32 @WRITE_UINT32(i32 %271, i32 %272)
  store i32 0, i32* %3, align 4
  %274 = load i32, i32* %5, align 4
  %275 = shl i32 1, %274
  %276 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %277 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %276, i32 0, i32 0
  %278 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %277, i32 0, i32 4
  %279 = load i32, i32* %278, align 4
  %280 = mul nsw i32 %275, %279
  %281 = load i32, i32* %3, align 4
  %282 = or i32 %281, %280
  store i32 %282, i32* %3, align 4
  %283 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %284 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %283, i32 0, i32 0
  %285 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %284, i32 0, i32 5
  %286 = load %struct.TYPE_14__*, %struct.TYPE_14__** %285, align 8
  %287 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 4
  %289 = load i32, i32* %3, align 4
  %290 = call i32 @WRITE_UINT32(i32 %288, i32 %289)
  %291 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %292 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %293 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %292, i32 0, i32 0
  %294 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %293, i32 0, i32 5
  %295 = load %struct.TYPE_14__*, %struct.TYPE_14__** %294, align 8
  %296 = call i64 @FmPcdRegisterReassmPort(%struct.TYPE_16__* %291, %struct.TYPE_14__* %295)
  store i64 %296, i64* %9, align 8
  %297 = load i64, i64* %9, align 8
  %298 = load i64, i64* @E_OK, align 8
  %299 = icmp ne i64 %297, %298
  br i1 %299, label %300, label %312

300:                                              ; preds = %246
  %301 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %302 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 8
  %304 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %305 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %304, i32 0, i32 0
  %306 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %305, i32 0, i32 5
  %307 = load %struct.TYPE_14__*, %struct.TYPE_14__** %306, align 8
  %308 = call i32 @FM_MURAM_FreeMem(i32 %303, %struct.TYPE_14__* %307)
  %309 = load i32, i32* @MAJOR, align 4
  %310 = load i64, i64* %9, align 8
  %311 = call i32 @RETURN_ERROR(i32 %309, i64 %310, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  br label %312

312:                                              ; preds = %300, %246
  %313 = load i64, i64* %9, align 8
  ret i64 %313
}

declare dso_local i32 @FmGetTimeStampScale(i32) #1

declare dso_local i32 @RETURN_ERROR(i32, i64, i8*) #1

declare dso_local i64 @FM_MURAM_AllocMem(i32, i32, i32) #1

declare dso_local i32 @MemSet8(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @WRITE_UINT32(i32, i32) #1

declare dso_local i8* @PTR_TO_UINT(i64) #1

declare dso_local %struct.TYPE_14__* @UINT_TO_PTR(i8*) #1

declare dso_local i32 @WRITE_UINT16(i32, i32) #1

declare dso_local i64 @PTR_MOVE(%struct.TYPE_14__*, i32) #1

declare dso_local i64 @XX_VirtToPhys(%struct.TYPE_14__*) #1

declare dso_local i64 @XX_MallocSmart(i32, i32, i32) #1

declare dso_local i64 @FmPcdRegisterReassmPort(%struct.TYPE_16__*, %struct.TYPE_14__*) #1

declare dso_local i32 @FM_MURAM_FreeMem(i32, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
