; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/MAC/extr_memac.c_MemacInit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/MAC/extr_memac.c_MemacInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.memac_cfg = type { i32, %struct.memac_cfg*, %struct.TYPE_7__, i8*, i8*, i32, %struct.TYPE_8__*, i32, i32, i32, i64 }
%struct.TYPE_7__ = type { %struct.memac_cfg*, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@g_MemacRegs = common dso_local global %struct.TYPE_8__* null, align 8
@E_INVALID_HANDLE = common dso_local global i32 0, align 4
@E_INVALID_STATE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@CheckInitParameters = common dso_local global i32 0, align 4
@e_ENET_SPEED_10000 = common dso_local global i64 0, align 8
@e_FM_MAC_1G = common dso_local global i64 0, align 8
@e_FM_MAC_10G = common dso_local global i64 0, align 8
@MAJOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"settings Mac max frame length is FAILED\00", align 1
@HASH_TABLE_SIZE = common dso_local global i32 0, align 4
@E_NO_MEMORY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"allocation hash table is FAILED\00", align 1
@e_FM_MOD_10G_MAC = common dso_local global i32 0, align 4
@e_FM_MOD_1G_MAC = common dso_local global i32 0, align 4
@e_FM_INTR_TYPE_ERR = common dso_local global i32 0, align 4
@MemacErrException = common dso_local global i32 0, align 4
@e_FM_INTR_TYPE_NORMAL = common dso_local global i32 0, align 4
@MemacException = common dso_local global i32 0, align 4
@E_OK = common dso_local global i64 0, align 8
@CMD_CFG_CRC_FWD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @MemacInit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @MemacInit(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.memac_cfg*, align 8
  %4 = alloca %struct.memac_cfg*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %11 = load i64, i64* %2, align 8
  %12 = inttoptr i64 %11 to %struct.memac_cfg*
  store %struct.memac_cfg* %12, %struct.memac_cfg** %3, align 8
  %13 = load i32, i32* @FALSE, align 4
  store i32 %13, i32* %10, align 4
  %14 = load %struct.memac_cfg*, %struct.memac_cfg** %3, align 8
  %15 = getelementptr inbounds %struct.memac_cfg, %struct.memac_cfg* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp eq i32 %16, 3
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load %struct.memac_cfg*, %struct.memac_cfg** %3, align 8
  %20 = getelementptr inbounds %struct.memac_cfg, %struct.memac_cfg* %19, i32 0, i32 6
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  store %struct.TYPE_8__* %21, %struct.TYPE_8__** @g_MemacRegs, align 8
  br label %22

22:                                               ; preds = %18, %1
  %23 = load %struct.memac_cfg*, %struct.memac_cfg** %3, align 8
  %24 = load i32, i32* @E_INVALID_HANDLE, align 4
  %25 = call i32 @SANITY_CHECK_RETURN_ERROR(%struct.memac_cfg* %23, i32 %24)
  %26 = load %struct.memac_cfg*, %struct.memac_cfg** %3, align 8
  %27 = getelementptr inbounds %struct.memac_cfg, %struct.memac_cfg* %26, i32 0, i32 1
  %28 = load %struct.memac_cfg*, %struct.memac_cfg** %27, align 8
  %29 = load i32, i32* @E_INVALID_STATE, align 4
  %30 = call i32 @SANITY_CHECK_RETURN_ERROR(%struct.memac_cfg* %28, i32 %29)
  %31 = load %struct.memac_cfg*, %struct.memac_cfg** %3, align 8
  %32 = getelementptr inbounds %struct.memac_cfg, %struct.memac_cfg* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load %struct.memac_cfg*, %struct.memac_cfg** %33, align 8
  %35 = load i32, i32* @E_INVALID_HANDLE, align 4
  %36 = call i32 @SANITY_CHECK_RETURN_ERROR(%struct.memac_cfg* %34, i32 %35)
  %37 = load %struct.memac_cfg*, %struct.memac_cfg** %3, align 8
  %38 = getelementptr inbounds %struct.memac_cfg, %struct.memac_cfg* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load %struct.memac_cfg*, %struct.memac_cfg** %39, align 8
  %41 = load %struct.memac_cfg*, %struct.memac_cfg** %3, align 8
  %42 = getelementptr inbounds %struct.memac_cfg, %struct.memac_cfg* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 2
  %44 = call i32 @FM_GetRevision(%struct.memac_cfg* %40, %struct.TYPE_9__* %43)
  %45 = load %struct.memac_cfg*, %struct.memac_cfg** %3, align 8
  %46 = getelementptr inbounds %struct.memac_cfg, %struct.memac_cfg* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp eq i32 %49, 6
  br i1 %50, label %51, label %60

51:                                               ; preds = %22
  %52 = load %struct.memac_cfg*, %struct.memac_cfg** %3, align 8
  %53 = getelementptr inbounds %struct.memac_cfg, %struct.memac_cfg* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %56, 4
  br i1 %57, label %58, label %60

58:                                               ; preds = %51
  %59 = load i32, i32* @TRUE, align 4
  store i32 %59, i32* %10, align 4
  br label %60

60:                                               ; preds = %58, %51, %22
  %61 = load %struct.memac_cfg*, %struct.memac_cfg** %3, align 8
  %62 = load i32, i32* @CheckInitParameters, align 4
  %63 = call i32 @CHECK_INIT_PARAMETERS(%struct.memac_cfg* %61, i32 %62)
  %64 = load %struct.memac_cfg*, %struct.memac_cfg** %3, align 8
  %65 = getelementptr inbounds %struct.memac_cfg, %struct.memac_cfg* %64, i32 0, i32 1
  %66 = load %struct.memac_cfg*, %struct.memac_cfg** %65, align 8
  store %struct.memac_cfg* %66, %struct.memac_cfg** %4, align 8
  %67 = load %struct.memac_cfg*, %struct.memac_cfg** %3, align 8
  %68 = getelementptr inbounds %struct.memac_cfg, %struct.memac_cfg* %67, i32 0, i32 8
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @ENET_SPEED_FROM_MODE(i32 %69)
  %71 = load i64, i64* @e_ENET_SPEED_10000, align 8
  %72 = icmp slt i64 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %60
  %74 = load i64, i64* @e_FM_MAC_1G, align 8
  br label %77

75:                                               ; preds = %60
  %76 = load i64, i64* @e_FM_MAC_10G, align 8
  br label %77

77:                                               ; preds = %75, %73
  %78 = phi i64 [ %74, %73 ], [ %76, %75 ]
  store i64 %78, i64* %8, align 8
  %79 = load %struct.memac_cfg*, %struct.memac_cfg** %4, align 8
  %80 = getelementptr inbounds %struct.memac_cfg, %struct.memac_cfg* %79, i32 0, i32 10
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %77
  %84 = load %struct.memac_cfg*, %struct.memac_cfg** %3, align 8
  %85 = getelementptr inbounds %struct.memac_cfg, %struct.memac_cfg* %84, i32 0, i32 6
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %85, align 8
  %87 = call i32 @fman_memac_reset(%struct.TYPE_8__* %86)
  br label %88

88:                                               ; preds = %83, %77
  %89 = load %struct.memac_cfg*, %struct.memac_cfg** %3, align 8
  %90 = getelementptr inbounds %struct.memac_cfg, %struct.memac_cfg* %89, i32 0, i32 9
  %91 = load i32, i32* %90, align 8
  %92 = load i64, i64* %7, align 8
  %93 = call i32 @MAKE_ENET_ADDR_FROM_UINT64(i32 %91, i64 %92)
  %94 = load %struct.memac_cfg*, %struct.memac_cfg** %3, align 8
  %95 = getelementptr inbounds %struct.memac_cfg, %struct.memac_cfg* %94, i32 0, i32 6
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %95, align 8
  %97 = load i64, i64* %7, align 8
  %98 = inttoptr i64 %97 to i32*
  %99 = call i32 @fman_memac_add_addr_in_paddr(%struct.TYPE_8__* %96, i32* %98, i32 0)
  %100 = load %struct.memac_cfg*, %struct.memac_cfg** %3, align 8
  %101 = getelementptr inbounds %struct.memac_cfg, %struct.memac_cfg* %100, i32 0, i32 8
  %102 = load i32, i32* %101, align 4
  %103 = call i64 @ENET_INTERFACE_FROM_MODE(i32 %102)
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %5, align 4
  %105 = load %struct.memac_cfg*, %struct.memac_cfg** %3, align 8
  %106 = getelementptr inbounds %struct.memac_cfg, %struct.memac_cfg* %105, i32 0, i32 8
  %107 = load i32, i32* %106, align 4
  %108 = call i64 @ENET_SPEED_FROM_MODE(i32 %107)
  %109 = trunc i64 %108 to i32
  store i32 %109, i32* %6, align 4
  %110 = load %struct.memac_cfg*, %struct.memac_cfg** %3, align 8
  %111 = getelementptr inbounds %struct.memac_cfg, %struct.memac_cfg* %110, i32 0, i32 6
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %111, align 8
  %113 = load %struct.memac_cfg*, %struct.memac_cfg** %3, align 8
  %114 = getelementptr inbounds %struct.memac_cfg, %struct.memac_cfg* %113, i32 0, i32 1
  %115 = load %struct.memac_cfg*, %struct.memac_cfg** %114, align 8
  %116 = load i32, i32* %5, align 4
  %117 = load i32, i32* %6, align 4
  %118 = load i32, i32* %10, align 4
  %119 = load %struct.memac_cfg*, %struct.memac_cfg** %3, align 8
  %120 = getelementptr inbounds %struct.memac_cfg, %struct.memac_cfg* %119, i32 0, i32 7
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @fman_memac_init(%struct.TYPE_8__* %112, %struct.memac_cfg* %115, i32 %116, i32 %117, i32 %118, i32 %121)
  %123 = load i64, i64* %2, align 8
  %124 = call i32 @MemacInitInternalPhy(i64 %123)
  %125 = load %struct.memac_cfg*, %struct.memac_cfg** %3, align 8
  %126 = getelementptr inbounds %struct.memac_cfg, %struct.memac_cfg* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 0
  %128 = load %struct.memac_cfg*, %struct.memac_cfg** %127, align 8
  %129 = load i64, i64* %8, align 8
  %130 = load %struct.memac_cfg*, %struct.memac_cfg** %3, align 8
  %131 = getelementptr inbounds %struct.memac_cfg, %struct.memac_cfg* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.memac_cfg*, %struct.memac_cfg** %4, align 8
  %135 = getelementptr inbounds %struct.memac_cfg, %struct.memac_cfg* %134, i32 0, i32 5
  %136 = load i32, i32* %135, align 8
  %137 = call i64 @FmSetMacMaxFrame(%struct.memac_cfg* %128, i64 %129, i32 %133, i32 %136)
  store i64 %137, i64* %9, align 8
  %138 = load i64, i64* %9, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %88
  %141 = load i32, i32* @MAJOR, align 4
  %142 = load i64, i64* %9, align 8
  %143 = call i32 @RETURN_ERROR(i32 %141, i64 %142, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %144

144:                                              ; preds = %140, %88
  %145 = load i32, i32* @HASH_TABLE_SIZE, align 4
  %146 = call i8* @AllocHashTable(i32 %145)
  %147 = load %struct.memac_cfg*, %struct.memac_cfg** %3, align 8
  %148 = getelementptr inbounds %struct.memac_cfg, %struct.memac_cfg* %147, i32 0, i32 4
  store i8* %146, i8** %148, align 8
  %149 = load %struct.memac_cfg*, %struct.memac_cfg** %3, align 8
  %150 = getelementptr inbounds %struct.memac_cfg, %struct.memac_cfg* %149, i32 0, i32 4
  %151 = load i8*, i8** %150, align 8
  %152 = icmp ne i8* %151, null
  br i1 %152, label %159, label %153

153:                                              ; preds = %144
  %154 = load %struct.memac_cfg*, %struct.memac_cfg** %3, align 8
  %155 = call i32 @FreeInitResources(%struct.memac_cfg* %154)
  %156 = load i32, i32* @MAJOR, align 4
  %157 = load i64, i64* @E_NO_MEMORY, align 8
  %158 = call i32 @RETURN_ERROR(i32 %156, i64 %157, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %159

159:                                              ; preds = %153, %144
  %160 = load i32, i32* @HASH_TABLE_SIZE, align 4
  %161 = call i8* @AllocHashTable(i32 %160)
  %162 = load %struct.memac_cfg*, %struct.memac_cfg** %3, align 8
  %163 = getelementptr inbounds %struct.memac_cfg, %struct.memac_cfg* %162, i32 0, i32 3
  store i8* %161, i8** %163, align 8
  %164 = load %struct.memac_cfg*, %struct.memac_cfg** %3, align 8
  %165 = getelementptr inbounds %struct.memac_cfg, %struct.memac_cfg* %164, i32 0, i32 3
  %166 = load i8*, i8** %165, align 8
  %167 = icmp ne i8* %166, null
  br i1 %167, label %174, label %168

168:                                              ; preds = %159
  %169 = load %struct.memac_cfg*, %struct.memac_cfg** %3, align 8
  %170 = call i32 @FreeInitResources(%struct.memac_cfg* %169)
  %171 = load i32, i32* @MAJOR, align 4
  %172 = load i64, i64* @E_NO_MEMORY, align 8
  %173 = call i32 @RETURN_ERROR(i32 %171, i64 %172, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %174

174:                                              ; preds = %168, %159
  %175 = load %struct.memac_cfg*, %struct.memac_cfg** %3, align 8
  %176 = getelementptr inbounds %struct.memac_cfg, %struct.memac_cfg* %175, i32 0, i32 2
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 0
  %178 = load %struct.memac_cfg*, %struct.memac_cfg** %177, align 8
  %179 = load i64, i64* %8, align 8
  %180 = load i64, i64* @e_FM_MAC_10G, align 8
  %181 = icmp eq i64 %179, %180
  br i1 %181, label %182, label %184

182:                                              ; preds = %174
  %183 = load i32, i32* @e_FM_MOD_10G_MAC, align 4
  br label %186

184:                                              ; preds = %174
  %185 = load i32, i32* @e_FM_MOD_1G_MAC, align 4
  br label %186

186:                                              ; preds = %184, %182
  %187 = phi i32 [ %183, %182 ], [ %185, %184 ]
  %188 = load %struct.memac_cfg*, %struct.memac_cfg** %3, align 8
  %189 = getelementptr inbounds %struct.memac_cfg, %struct.memac_cfg* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = load i32, i32* @e_FM_INTR_TYPE_ERR, align 4
  %192 = load i32, i32* @MemacErrException, align 4
  %193 = load %struct.memac_cfg*, %struct.memac_cfg** %3, align 8
  %194 = call i32 @FmRegisterIntr(%struct.memac_cfg* %178, i32 %187, i32 %190, i32 %191, i32 %192, %struct.memac_cfg* %193)
  %195 = load %struct.memac_cfg*, %struct.memac_cfg** %3, align 8
  %196 = getelementptr inbounds %struct.memac_cfg, %struct.memac_cfg* %195, i32 0, i32 2
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i32 0, i32 0
  %198 = load %struct.memac_cfg*, %struct.memac_cfg** %197, align 8
  %199 = load i64, i64* %8, align 8
  %200 = load i64, i64* @e_FM_MAC_10G, align 8
  %201 = icmp eq i64 %199, %200
  br i1 %201, label %202, label %204

202:                                              ; preds = %186
  %203 = load i32, i32* @e_FM_MOD_10G_MAC, align 4
  br label %206

204:                                              ; preds = %186
  %205 = load i32, i32* @e_FM_MOD_1G_MAC, align 4
  br label %206

206:                                              ; preds = %204, %202
  %207 = phi i32 [ %203, %202 ], [ %205, %204 ]
  %208 = load %struct.memac_cfg*, %struct.memac_cfg** %3, align 8
  %209 = getelementptr inbounds %struct.memac_cfg, %struct.memac_cfg* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = load i32, i32* @e_FM_INTR_TYPE_NORMAL, align 4
  %212 = load i32, i32* @MemacException, align 4
  %213 = load %struct.memac_cfg*, %struct.memac_cfg** %3, align 8
  %214 = call i32 @FmRegisterIntr(%struct.memac_cfg* %198, i32 %207, i32 %210, i32 %211, i32 %212, %struct.memac_cfg* %213)
  %215 = load %struct.memac_cfg*, %struct.memac_cfg** %4, align 8
  %216 = call i32 @XX_Free(%struct.memac_cfg* %215)
  %217 = load %struct.memac_cfg*, %struct.memac_cfg** %3, align 8
  %218 = getelementptr inbounds %struct.memac_cfg, %struct.memac_cfg* %217, i32 0, i32 1
  store %struct.memac_cfg* null, %struct.memac_cfg** %218, align 8
  %219 = load i64, i64* @E_OK, align 8
  ret i64 %219
}

declare dso_local i32 @SANITY_CHECK_RETURN_ERROR(%struct.memac_cfg*, i32) #1

declare dso_local i32 @FM_GetRevision(%struct.memac_cfg*, %struct.TYPE_9__*) #1

declare dso_local i32 @CHECK_INIT_PARAMETERS(%struct.memac_cfg*, i32) #1

declare dso_local i64 @ENET_SPEED_FROM_MODE(i32) #1

declare dso_local i32 @fman_memac_reset(%struct.TYPE_8__*) #1

declare dso_local i32 @MAKE_ENET_ADDR_FROM_UINT64(i32, i64) #1

declare dso_local i32 @fman_memac_add_addr_in_paddr(%struct.TYPE_8__*, i32*, i32) #1

declare dso_local i64 @ENET_INTERFACE_FROM_MODE(i32) #1

declare dso_local i32 @fman_memac_init(%struct.TYPE_8__*, %struct.memac_cfg*, i32, i32, i32, i32) #1

declare dso_local i32 @MemacInitInternalPhy(i64) #1

declare dso_local i64 @FmSetMacMaxFrame(%struct.memac_cfg*, i64, i32, i32) #1

declare dso_local i32 @RETURN_ERROR(i32, i64, i8*) #1

declare dso_local i8* @AllocHashTable(i32) #1

declare dso_local i32 @FreeInitResources(%struct.memac_cfg*) #1

declare dso_local i32 @FmRegisterIntr(%struct.memac_cfg*, i32, i32, i32, i32, %struct.memac_cfg*) #1

declare dso_local i32 @XX_Free(%struct.memac_cfg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
